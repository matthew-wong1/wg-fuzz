struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<f32> = vec4<f32>(1383f, -334f, 596f, -483f);

var<private> global2: vec2<u32> = vec2<u32>(68269u, 34067u);

var<private> global3: array<u32, 31> = array<u32, 31>(38653u, 40165u, 11731u, 1u, 1u, 6278u, 17841u, 3773u, 4294967295u, 0u, 78517u, 1u, 61015u, 71694u, 0u, 27814u, 7309u, 4294967295u, 1u, 139755u, 1u, 117078u, 1u, 24637u, 50753u, 0u, 30746u, 103086u, 45914u, 50835u, 4294967295u);

var<private> global4: array<Struct_3, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = global4[_wgslsmith_index_u32(u_input.e.x, 29u)];
    global2 = ~select(u_input.e, abs(vec2<u32>(50445u, global2.x)), vec2<bool>(var_1.a.c < var_1.a.b, true)) >> (select(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, global3[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_mod_vec2_u32(u_input.e, vec2<u32>(var_1.a.c, global2.x))), (u_input.e & u_input.e) | abs(u_input.e)), vec2<u32>(~u_input.d >> (53064u % 32u), ~firstLeadingBit(4294967295u)), vec2<bool>(~11528u <= _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d, 31u)], 1u), true)) % vec2<u32>(32u));
    global3 = array<u32, 31>();
    global2 = ~u_input.e;
    let var_2 = Struct_5(var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.a.a.b, var_1.a.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -114f), global1.x, _wgslsmith_f_op_f32(select(1237f, var_1.b.x, false))), vec4<f32>(_wgslsmith_div_f32(global1.x, 420f), _wgslsmith_f_op_f32(floor(1066f)), -357f, 216f)), vec4<f32>(-536f, _wgslsmith_f_op_f32(-global1.x), var_1.b.x, 810f)));
}

