struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~(~u_input.d.x & abs(~0i));
    let var_1 = true;
    var var_2 = u_input.d.wxw;
    var_2 = u_input.d.xzy << (~vec3<u32>(abs(u_input.a.x), u_input.a.x, firstLeadingBit(_wgslsmith_mult_u32(0u, 0u))) % vec3<u32>(32u));
    let var_3 = select(~u_input.a.wy, _wgslsmith_clamp_vec2_u32(abs(~(vec2<u32>(0u, u_input.a.x) | u_input.a.zz)), ~firstLeadingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(~reverseBits(u_input.a.x), 0u)), vec2<bool>(!var_1 == true, !(!(!var_1))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2711f)) - _wgslsmith_f_op_f32(step(1263f, -222f)))), -101f, 1378f, _wgslsmith_f_op_f32(-763f - _wgslsmith_f_op_f32(-1084f + 1005f)))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(448f * 2390f) + _wgslsmith_f_op_f32(372f - 1000f)), -585f, _wgslsmith_f_op_f32(-1666f * _wgslsmith_f_op_f32(trunc(-1286f))), _wgslsmith_f_op_f32(floor(-301f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-272f, 173f, 1299f, 212f), vec4<f32>(1007f, -1639f, -347f, -721f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))))));
    var var_1 = Struct_3(abs(vec3<i32>(~(-2749i), u_input.d.x, abs(-55290i) >> (u_input.a.x % 32u))));
    var var_2 = vec3<u32>(~1u, arg_0, arg_0);
    var var_3 = select(arg_1, vec2<bool>(true, !arg_1.x), true);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -677f), _wgslsmith_f_op_f32(sign(var_0.x)), -686f, var_0.x));
    return _wgslsmith_f_op_f32(abs(1616f));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = arg_0;
    return ~arg_0.a.d;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    var var_0 = ~vec3<i32>(select(~u_input.d.x, arg_3.a.x, true), _wgslsmith_mult_i32(arg_3.a.x, _wgslsmith_mult_i32(2147483647i, arg_1.x)), 58794i);
    let var_1 = 684f;
    var var_2 = countOneBits(func_4(Struct_2(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * _wgslsmith_f_op_f32(func_2(u_input.a.x, arg_2.b.zy)))), false));
    let var_3 = Struct_1(arg_2.c.xy, select(!select(arg_2.b, select(arg_2.b, vec4<bool>(true, true, false, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)), true), vec4<bool>(true, arg_2.b.x || !arg_2.b.x, arg_2.b.x != true, any(select(arg_2.b.wy, vec2<bool>(true, arg_2.b.x), vec2<bool>(false, true)))), select(select(arg_2.b, arg_2.b, true), !(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x)), !vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x))), ~(~(~vec4<u32>(arg_2.a.x, 1u, arg_2.c.x, arg_2.c.x))), arg_2.d);
    let var_4 = all(vec2<bool>(any(vec3<bool>(false, arg_2.b.x, true)), any(select(arg_2.b.xxx, arg_2.b.wyw, false)))) & true;
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-426f, _wgslsmith_f_op_f32(1000f + arg_0.b))))));
    var_0 = !arg_0.a.b.x;
    var_0 = any(select(!vec4<bool>(false || arg_0.a.b.x, arg_0.a.b.x, true, arg_0.a.b.x), !vec4<bool>(all(arg_0.a.b.wxz), true, false | arg_0.a.b.x, false), arg_0.a.b.x));
    let var_1 = Struct_3(firstLeadingBit(_wgslsmith_div_vec3_i32((u_input.e | u_input.e) ^ u_input.e, u_input.b)));
    var_0 = !select(arg_0.a.b.x, arg_0.a.b.x, any(!func_1(var_1, vec3<i32>(2147483647i, -2147483647i, u_input.d.x), arg_0.a, var_1).b));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f - -1014f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-546f)))))));
    var_0 = false;
    var var_2 = -vec3<i32>(u_input.d.x, ~(~firstLeadingBit(-1781i)), ~(u_input.e.x >> (0u % 32u)));
    var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_2.x, u_input.c.x), select(u_input.b.x, 22466i, true), ~u_input.e.x)), 1i) > _wgslsmith_clamp_i32(func_5(Struct_2(func_1(Struct_3(u_input.e), u_input.e, Struct_1(vec2<u32>(51653u, 0u), vec4<bool>(true, false, true, true), u_input.a, var_2.x), Struct_3(vec3<i32>(-1i, var_2.x, var_2.x))), 2212f)), var_2.x, -6213i);
    var_1 = _wgslsmith_f_op_f32(296f + 399f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_3 = vec2<bool>(select(true, true, false) && true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, abs(func_4(Struct_2(func_1(Struct_3(vec3<i32>(u_input.d.x, var_2.x, -2147483647i)), vec3<i32>(var_2.x, 0i, -1i), Struct_1(u_input.a.wx, vec4<bool>(true, true, true, false), vec4<u32>(u_input.a.x, u_input.a.x, 60495u, 0u), 39693i), Struct_3(vec3<i32>(u_input.d.x, 0i, u_input.b.x))), 602f), true)), u_input.a.zy, 1i);
}

