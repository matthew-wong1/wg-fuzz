struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec2<f32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_5 {
    return Struct_5(u_input.a.x, -29349i);
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = _wgslsmith_div_i32(-14494i, -40360i) ^ _wgslsmith_mod_i32(arg_0.a.x, 58429i);
    var var_0 = func_1().a;
    var var_1 = Struct_4(~(-(~(~arg_0.a))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(true, true, true, true), ~(~vec4<u32>(~u_input.a.x, 4294967295u, 1u, u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(65448u, 11899u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(13947u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 10173u, 32886u, 11520u))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 7784u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 1u)), ~vec4<u32>(u_input.a.x, 4294967295u & u_input.a.x, 59295u, u_input.b | 4294967295u)), _wgslsmith_add_i32(1704i, -2147483647i));
    let var_1 = !var_0.a.x;
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    var var_2 = func_1();
    var_2 = Struct_5(1u, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.b, var_2.b), var_2.b << (func_2(Struct_4(vec4<i32>(1i, 38057i, var_0.d, 67380i))) % 32u)));
    var_0 = Struct_2(!var_0.a, ~var_0.c, var_0.c, var_2.b);
    let var_3 = func_1();
    let var_4 = -2147483647i & (_wgslsmith_div_i32(var_0.d, var_0.d) << (9367u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1249f, 933f) - 1120f) - _wgslsmith_f_op_f32(min(-651f, _wgslsmith_f_op_f32(max(-828f, 1000f))))))));
}

