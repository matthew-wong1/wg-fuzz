struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.a))), var_0.a)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1138f * -355f), arg_0.a.x, -102f, _wgslsmith_f_op_f32(-var_0.a.x))))));
    var_0 = var_1;
    var_0 = var_1;
    var var_2 = Struct_1(var_1.a);
    return -2147483647i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-551f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 468f) + -1483f))));
    var var_1 = vec4<i32>(-1i) * -u_input.c;
    let var_2 = -_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -27357i, -1i);
    var_1 = vec4<i32>(52903i, -13291i, 17285i, -_wgslsmith_sub_i32(-var_1.x, func_3(Struct_1(vec4<f32>(788f, -853f, var_0, var_0)), vec4<bool>(arg_0, true, arg_0, arg_0), max(24896u, 4294967295u))));
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 - 346f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(735f - -564f), _wgslsmith_f_op_f32(round(var_0)), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - -1220f)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(true);
    let var_1 = func_2(true);
    let var_2 = _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(290f, var_0.a.x)), var_1.a.x)));
    let var_3 = true;
    let var_4 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(~u_input.b), u_input.c.x, 23100i, u_input.b), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.b), max(-2147483647i, 13680i), _wgslsmith_sub_i32(u_input.c.x, abs(u_input.b)), abs(2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, var_2)), arg_0.a.x, _wgslsmith_div_f32(715f, 599f), 1f)))));
}

fn func_1() -> f32 {
    var var_0 = func_4(func_2(all(vec4<bool>(true, false, true, true))));
    let var_1 = all(select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), !all(vec3<bool>(true, true, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), true), vec4<bool>(false, true, true, false)));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(Struct_1(var_0.a), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(true, true, var_1, var_1), var_1), select(u_input.a.x, u_input.a.x, false)), ~u_input.b, u_input.c.x), u_input.c.zyz) >> (select(~u_input.a, u_input.a | _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(26553u, 4294967295u, u_input.a.x)), u_input.c.x < u_input.b) % vec3<u32>(32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(max(-861f, var_0.a.x)), all(vec2<bool>(var_1, var_1)))), var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))));
    var_2 = u_input.c.xwx;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1215f, 355f, -739f, 421f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1000f, _wgslsmith_f_op_f32(1043f * 246f), -125f))));
    var var_1 = func_2(_wgslsmith_f_op_f32(floor(var_0.a.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1355f, var_0.a.x)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -3010f, -159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 628f) * 1985f))));
    let var_2 = func_2(!select(all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(ceil(-1012f)) == _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_3 = ~(abs(-max(vec3<i32>(u_input.b, u_input.b, u_input.c.x), vec3<i32>(2147483647i, -58641i, u_input.c.x))) ^ u_input.c.xyy);
    var var_4 = func_4(var_0);
    let var_5 = u_input.a.xx;
    var_1 = var_2;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

