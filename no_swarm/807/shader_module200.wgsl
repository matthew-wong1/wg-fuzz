struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: array<Struct_3, 18>;

var<private> global3: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(19139u, 26092u, 0u, 3714u), vec4<u32>(38100u, 77253u, 3009u, 4294967295u), vec4<u32>(19049u, 7269u, 18070u, 2193u), vec4<u32>(44267u, 47585u, 1020u, 0u), vec4<u32>(52u, 4294967295u, 1u, 4294967295u), vec4<u32>(1974u, 0u, 10537u, 1u), vec4<u32>(2742u, 4294967295u, 4294967295u, 59088u), vec4<u32>(5188u, 49478u, 4294967295u, 62272u), vec4<u32>(35952u, 0u, 50682u, 1u), vec4<u32>(3375u, 1u, 16220u, 1u), vec4<u32>(12047u, 4294967295u, 0u, 90776u), vec4<u32>(46279u, 4294967295u, 16365u, 28042u), vec4<u32>(0u, 18320u, 0u, 26433u), vec4<u32>(84021u, 45694u, 0u, 1u), vec4<u32>(1u, 13532u, 0u, 2217u), vec4<u32>(0u, 0u, 1u, 55510u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 55353u, 1u), vec4<u32>(0u, 49987u, 56877u, 982u), vec4<u32>(83045u, 0u, 79356u, 26845u), vec4<u32>(1u, 1u, 31899u, 96447u), vec4<u32>(422u, 36745u, 0u, 0u));

var<private> global4: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-1i, -1i, 26459i), vec3<i32>(1i, -6579i, 1i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-36074i, -36085i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(27297i, 1i, 0i), vec3<i32>(i32(-2147483648), -1i, -19800i), vec3<i32>(23899i, 2147483647i, 1i), vec3<i32>(-35689i, -40556i, i32(-2147483648)), vec3<i32>(-5574i, -23085i, -19870i), vec3<i32>(-30728i, -66106i, 0i), vec3<i32>(-26025i, 1i, -33540i), vec3<i32>(i32(-2147483648), 20014i, 0i), vec3<i32>(2147483647i, -15842i, -18838i), vec3<i32>(i32(-2147483648), 2147483647i, 30776i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-11357i, -293i, i32(-2147483648)), vec3<i32>(-25180i, -47709i, i32(-2147483648)), vec3<i32>(-7251i, 0i, 1i), vec3<i32>(42808i, 2147483647i, 32811i), vec3<i32>(-43477i, 37726i, 0i), vec3<i32>(-7068i, 0i, 1i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(71861i, -1i, 9083i), vec3<i32>(-1448i, -4487i, 0i), vec3<i32>(-12661i, i32(-2147483648), 0i), vec3<i32>(2340i, 1i, i32(-2147483648)), vec3<i32>(-50261i, -87728i, -69319i), vec3<i32>(-8396i, -25564i, 927i), vec3<i32>(1i, 0i, 48629i), vec3<i32>(-29162i, 49086i, 1i), vec3<i32>(2147483647i, 18314i, i32(-2147483648)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 18>();
    let var_0 = u_input.d;
    var var_1 = u_input.a;
    global3 = array<vec4<u32>, 23>();
    global0 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(var_1.x), 70044u, 35407u), vec3<u32>(0u, u_input.a.x, min(1u, 84192u))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, 431f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.xz, var_1.zy) & var_1.x, 5u)])));
}

