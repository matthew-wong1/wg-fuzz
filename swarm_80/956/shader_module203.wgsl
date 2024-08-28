struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: array<vec2<bool>, 25>;

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = global2.a;
    let var_1 = Struct_2(global2.a, vec3<bool>(var_0.a, var_0.c, _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(u_input.b, u_input.a.x)) >= (1303i << (select(global2.a.b, global2.a.b, true) % 32u))));
    let var_2 = 666f;
    global1 = array<vec2<bool>, 25>();
    return Struct_2(global2.a, !(!global2.b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_1(true, ~abs(~9474u), any(select(!vec4<bool>(false, arg_2.x, true, arg_0.b.x), select(vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(false, false, global2.a.c, true), true), arg_2.x)) && true);
    let var_1 = func_2().a;
    let var_2 = all(global2.b.zz);
    var var_3 = ((u_input.a.x | _wgslsmith_add_i32(-19242i, 1i)) >> (~global2.a.b % 32u)) << (var_1.b % 32u);
    var var_4 = global2.a;
    return 0i;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2089f, -1924f, global2.b.x)), -1506f), -286f, -175f)));
    let var_1 = Struct_1(false, 1u, global2.b.x);
    global0 = array<vec4<u32>, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1916f, var_0.x, -730f, -1612f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))))));
    var var_3 = func_2();
    return (2299i >> (0u % 32u)) | _wgslsmith_div_i32(arg_1.x | func_3(func_2(), !global2.b, !global2.b.yx), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32((global2.a.b & ~(global2.a.b & global2.a.b)) & 1u, 57077u);
    var var_1 = any(vec2<bool>((global2.b.x & (global2.b.x && false)) | !(4294967295u < var_0), ~(~1u) > ~var_0));
    let var_2 = Struct_1(global2.a.c, global2.a.b, u_input.c.x <= func_1(true, vec2<i32>(1i, 0i)));
    var var_3 = func_2();
    global0 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(15285i, 2147483647i, var_2.c), ~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32((u_input.a.x ^ -25223i) << (~43929u % 32u), -1i)));
}

