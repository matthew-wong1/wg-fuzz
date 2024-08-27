struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(0i, 55226i), vec2<i32>(0i, 26388i), vec2<i32>(1i, 50121i), vec2<i32>(26099i, 36962i), vec2<i32>(10357i, 35752i), vec2<i32>(0i, 43761i), vec2<i32>(-1i, 2147483647i), vec2<i32>(27045i, 0i), vec2<i32>(-2892i, 1i), vec2<i32>(-7857i, 79326i), vec2<i32>(2147483647i, -5332i), vec2<i32>(-12353i, -30415i), vec2<i32>(1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(8238i, -41807i), vec2<i32>(-33458i, 48289i));

var<private> global1: bool = false;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = 1f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1201f))) + var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1787f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))));
    let var_2 = 0u;
    let var_3 = 1808f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * 1f)));
    global1 = var_3;
    return Struct_1(21040i);
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global0 = array<vec2<i32>, 17>();
    var var_0 = 0i;
    global0 = array<vec2<i32>, 17>();
    var_0 = 13672i;
    let var_1 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(-1253f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1138f, -1000f);
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) + vec3<f32>(284f, -112f, 1793f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(false, vec2<u32>(u_input.c.x, u_input.c.x), vec3<i32>(0i, arg_0, 1i)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 1531f))))));
    global2 = min(_wgslsmith_add_i32(u_input.a, 0i) ^ -select(-15367i, abs(u_input.a), true), u_input.a);
    let var_1 = Struct_2(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(4294967295u, u_input.b)));
    var var_2 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    global1 = !any(!(!select(vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, false, true))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~u_input.b));
    let var_1 = true;
    global1 = !func_2(2147483647i, _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(trunc(-1000f))));
    let var_2 = !(!(!(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, var_1)))));
    global0 = array<vec2<i32>, 17>();
    let var_3 = var_2.x;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

