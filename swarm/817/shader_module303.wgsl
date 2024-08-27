struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: vec4<i32>;

var<private> global2: u32;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    global3 = select(select(!select(!vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, false, true), !vec3<bool>(false, global3.x, global3.x)), select(select(select(vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, global3.x, global3.x), false), vec3<bool>(true, global3.x, global3.x), true), vec3<bool>(false, select(global3.x, global3.x, true), true), any(select(vec4<bool>(true, false, global3.x, false), vec4<bool>(global3.x, global3.x, false, false), false))), _wgslsmith_div_f32(964f, _wgslsmith_f_op_f32(sign(-1000f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1085f)) * _wgslsmith_f_op_f32(sign(-173f)))), select(select(!(!vec3<bool>(true, global3.x, global3.x)), !(!vec3<bool>(global3.x, false, false)), select(select(vec3<bool>(false, global3.x, true), vec3<bool>(false, true, global3.x), true), select(vec3<bool>(global3.x, false, false), vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false)), vec3<bool>(false, global3.x, true))), vec3<bool>(any(vec4<bool>(global3.x, false, global3.x, true)), true, !(false | global3.x)), !vec3<bool>(!global3.x, global3.x, global3.x && false)), !(!vec3<bool>(true, all(vec4<bool>(global3.x, global3.x, true, global3.x)), global3.x)));
    global2 = 4294967295u;
    global0 = array<vec2<bool>, 10>();
    global3 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(global3.x, true, global3.x)), select(select(vec3<bool>(global3.x, false, false), vec3<bool>(true, false, true), vec3<bool>(false, global3.x, global3.x)), !vec3<bool>(global3.x, global3.x, false), !global3.x), false), select(vec3<bool>(any(vec3<bool>(true, global3.x, true)), !global3.x, !(!global3.x)), select(select(!vec3<bool>(true, global3.x, global3.x), !vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, global3.x, false), vec3<bool>(false, global3.x, true))), select(!vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, true, true), true == global3.x), vec3<bool>(u_input.a <= u_input.c, true, true)), !vec3<bool>(global3.x, false, !global3.x)), true);
    let var_0 = vec4<u32>(32358u | u_input.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(0u, 0u, u_input.c)), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(1u, u_input.a)), u_input.c & (u_input.a & u_input.a)) & ~(~10151u), ~(~(~30957u)) ^ (max(u_input.c, _wgslsmith_div_u32(u_input.c, 4294967295u)) & 0u), 26445u ^ ~(u_input.c ^ ~u_input.c));
    return 24713u;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> bool {
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    global2 = u_input.a ^ func_3();
    global2 = _wgslsmith_mod_u32(abs(u_input.c), abs(arg_1.a.a >> (~arg_1.a.a % 32u)));
    global3 = !select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(61560u <= (20454u << (arg_1.a.a % 32u)), global3.x || any(vec4<bool>(false, false, global3.x, true)), false), !all(vec4<bool>(arg_0, global3.x, true, true)));
    return true;
}

fn func_1() -> vec3<bool> {
    global3 = vec3<bool>(global3.x, !global3.x, all(!(!(!vec4<bool>(false, global3.x, global3.x, global3.x)))));
    global1 = abs(vec4<i32>(2147483647i, u_input.b, abs(u_input.b), global1.x));
    let var_0 = _wgslsmith_mod_i32(global1.x, global1.x);
    let var_1 = !select(vec4<bool>(global3.x, all(vec3<bool>(global3.x, false, global3.x)), select(global3.x, true, global3.x), !global3.x), !vec4<bool>(func_2(global3.x, Struct_2(Struct_1(50965u, var_0, global3.x, vec3<f32>(1450f, 1000f, -1112f)), global3.x, vec2<i32>(2147483647i, global1.x)), 26959i, u_input.c), func_2(global3.x, Struct_2(Struct_1(7808u, 221i, false, vec3<f32>(-632f, -565f, 1346f)), global3.x, vec2<i32>(var_0, global1.x)), global1.x, 34655u), any(vec4<bool>(global3.x, true, false, false)), all(global0[_wgslsmith_index_u32(u_input.c, 10u)])), vec4<bool>(true, any(vec2<bool>(true, false)), !global3.x, global3.x));
    let var_2 = (~max(1u | u_input.a, 29220u) != 0u) || !(153f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(361f)) * 505f));
    return var_1.xxy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(1i);
    global3 = select(!select(!func_1(), select(vec3<bool>(true, true, true), !vec3<bool>(false, global3.x, global3.x), any(global3.yy)), func_1()), !(!vec3<bool>(true, global3.x, true)), global3.x);
    var var_1 = select(true & func_1().x, global3.x, ~abs(_wgslsmith_clamp_u32(4294967295u, 80883u, u_input.c)) >= u_input.a);
    var var_2 = u_input.a;
    let var_3 = vec2<u32>(~42960u, max(firstLeadingBit(u_input.a), 60259u) >> (~u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1401f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1950f, 2754f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) - -852f)))));
}

