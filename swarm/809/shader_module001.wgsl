struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-4213i, 6490i, 23246i), 9308u, i32(-2147483648));

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 32> = array<u32, 32>(53127u, 0u, 67647u, 0u, 25000u, 1u, 0u, 73301u, 15093u, 1805u, 14374u, 4294967295u, 27332u, 6455u, 68595u, 0u, 1u, 4294967295u, 18772u, 1u, 0u, 57573u, 6841u, 105284u, 22129u, 48607u, 26439u, 13329u, 26167u, 0u, 45973u, 19380u);

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<vec4<i32>, 22>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 32>();
    global4 = array<vec4<i32>, 22>();
    var var_0 = global3[_wgslsmith_index_u32(select(~_wgslsmith_mult_u32(global0.b, global2[_wgslsmith_index_u32(max(firstLeadingBit(global0.b), 8597u), 32u)]), ~29508u, true == (all(vec4<bool>(global1.x, true, true, global1.x)) && false)), 23u)];
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -221f), -400f, all(vec4<bool>(global1.x, global1.x, true, global1.x)))) - 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1688f * _wgslsmith_f_op_f32(trunc(130f))), -1410f, true)))));
    var_0 = Struct_1(max(var_0.a, vec3<i32>(var_0.c, i32(-1i) * -30075i, select(u_input.c, 0i, global1.x)) ^ vec3<i32>(2147483647i, global0.a.x, global0.c)), ~37363u, u_input.a);
    let var_2 = ~abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d.x, 14779u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(global0.b, 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35662u, 32u)], 32u)], 0u, 0u)), vec4<u32>(var_0.b, var_0.b, 4294967295u, 4294967295u)), u_input.b));
    global2 = array<u32, 32>();
    var var_3 = Struct_2(vec2<u32>(reverseBits(0u), 4294967295u), vec2<f32>(_wgslsmith_div_f32(-440f, -1384f), _wgslsmith_f_op_f32(floor(var_1))), var_1, _wgslsmith_dot_vec4_u32(min(var_2, ~vec4<u32>(4293u, global2[_wgslsmith_index_u32(var_2.x, 32u)], 1u, 1u)), ~vec4<u32>(~4294967295u, 18947u, select(var_2.x, 1u, global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_2.x, 32u)], var_0.b), var_2.wy))), global0.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_3.b, var_3.e.x);
}

