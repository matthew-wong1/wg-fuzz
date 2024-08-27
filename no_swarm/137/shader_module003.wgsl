struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec2<bool> {
    return arg_0.yw;
}

fn func_2() -> Struct_5 {
    var var_0 = select(!select(func_3(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1095f, 2232f) * vec2<f32>(-286f, 193f))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(true, true, true)), all(vec2<bool>(true, true))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(true, any(vec3<bool>(true, true, true)), false)), vec2<bool>(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1805f))).x, !(!func_3(vec4<bool>(false, true, true, true), vec2<f32>(321f, 1000f)).x)));
    var_0 = !select(!select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), all(vec2<bool>(var_0.x, var_0.x))), vec2<bool>(all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x), select(vec2<bool>(var_0.x & var_0.x, false), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), vec2<bool>(false, false == var_0.x)));
    var var_1 = i32(-1i) * -1i;
    var var_2 = 16271i;
    let var_3 = vec3<f32>(-281f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2168f), -412f) - _wgslsmith_f_op_f32(min(-316f, -720f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1063f), -1531f)) - 168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -241f)))));
    return Struct_5(!vec2<bool>(~u_input.b > 0u, var_0.x), ~u_input.b, Struct_3(Struct_2(select(vec3<bool>(var_0.x, false, false), !vec3<bool>(true, var_0.x, true), var_0.x), Struct_1(min(0i, -36955i), ~vec4<i32>(u_input.c, 11006i, u_input.c, u_input.c), _wgslsmith_f_op_f32(-var_3.x), -2147483647i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), 1f, all(vec4<bool>(var_0.x, false, false, var_0.x)))), Struct_1(u_input.c, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -49226i), -654f, ~(-2147483647i))), -1846f, Struct_2(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), Struct_1(u_input.a.x, -vec4<i32>(u_input.a.x, -14833i, u_input.a.x, u_input.c), _wgslsmith_f_op_f32(-var_3.x), u_input.c), 875f, Struct_1(min(40733i, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), vec4<i32>(9115i, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(752f * var_3.x), countOneBits(u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -434f)), var_0.x);
}

fn func_1(arg_0: vec4<u32>) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.c.d.c + 1001f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -1908f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.c.d.c, var_0.c.d)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.b, var_0.c.a.d.c, var_0.c.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.b.c, var_0.c.d, 1446f) - vec3<f32>(var_0.c.b, -524f, 406f)), true)) - vec3<f32>(var_0.c.d, _wgslsmith_f_op_f32(-var_0.c.c.b.c), _wgslsmith_f_op_f32(-var_0.c.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.d, var_0.c.a.b.c, var_0.c.d) - vec3<f32>(-443f, -508f, 1980f)))))));
    var var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(var_0.c.b + _wgslsmith_f_op_f32(var_0.c.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.b)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(881f + -398f), _wgslsmith_f_op_f32(floor(var_1.x))))));
    var var_4 = _wgslsmith_f_op_f32(1271f * var_3);
    return max(~(~(~vec2<u32>(arg_0.x, 32716u))), arg_0.xw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~func_1(~vec4<u32>(2835u, u_input.b, u_input.b, 0u))));
    let var_1 = (~vec4<i32>(-1i, 1i, u_input.a.x & u_input.a.x, 0i) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), u_input.b), ~_wgslsmith_mod_u32(u_input.b, u_input.b), 0u | firstTrailingBit(0u), func_2().b) % vec4<u32>(32u))) | ~vec4<i32>(min(26261i, ~u_input.c), u_input.c, _wgslsmith_mult_i32(u_input.a.x & u_input.a.x, u_input.a.x), countOneBits(reverseBits(-78884i)));
    var_0 = select(select(~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 34714u)), _wgslsmith_add_vec2_u32(vec2<u32>(20676u, u_input.b), vec2<u32>(4294967295u, 58531u))), vec2<u32>(min(func_2().b, ~31097u), 4294967295u), false), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, var_0.x) >> (vec2<u32>(10450u, u_input.b) % vec2<u32>(32u))), abs(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, 4294967295u))), vec2<u32>(reverseBits(u_input.b), u_input.b) >> (select(vec2<u32>(0u, 29702u), vec2<u32>(var_0.x, var_0.x), true) % vec2<u32>(32u))), false);
    let var_2 = vec3<bool>(true, true, func_3(vec4<bool>(true, true && any(vec3<bool>(true, false, false)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), false), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(691f, 752f), _wgslsmith_f_op_f32(select(1433f, 1252f, false)))))).x);
    var_0 = firstLeadingBit(~(~(~(~vec2<u32>(var_0.x, 56426u)))));
    var var_3 = Struct_1(-countOneBits(21981i), vec4<i32>(-12154i, -29441i, u_input.a.x, -14528i), -740f, var_1.x);
    let var_4 = func_2().c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, var_4.d.c)), _wgslsmith_f_op_f32(round(-293f)), 1536f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-538f)))))));
}

