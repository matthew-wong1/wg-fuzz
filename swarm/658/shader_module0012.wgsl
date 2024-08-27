struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<i32> {
    let var_0 = !select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec2<bool>(false, true))), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true)))), false);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -119f, true)), _wgslsmith_f_op_f32(-973f * _wgslsmith_f_op_f32(min(179f, _wgslsmith_f_op_f32(f32(-1f) * -821f))))), _wgslsmith_f_op_f32(abs(1821f)));
    var var_2 = firstTrailingBit(max(35106u, ~(~u_input.d))) >> (_wgslsmith_sub_u32(u_input.a.x, ~countOneBits(_wgslsmith_div_u32(4294967295u, u_input.a.x))) % 32u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-var_1.x), -343f) + vec3<f32>(var_1.x, 109f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(round(-1832f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-197f, -132f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f + var_1.x)))), vec2<bool>(false, any(select(!vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), any(vec2<bool>(false, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) - var_1.x), 171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.d.xz - var_3.d.xx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2456f, -339f))), select(select(vec2<bool>(true, var_3.c.x), vec2<bool>(var_3.c.x, var_0.x), vec2<bool>(false, true)), !var_0, true)))));
    return vec2<i32>(~u_input.b, _wgslsmith_mult_i32(~(-16127i), firstLeadingBit(~u_input.b)));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = -(-func_3() | u_input.c.xy) & min(~u_input.e.xz, _wgslsmith_mod_vec2_i32(~(u_input.c.yw | u_input.e.yw), reverseBits(u_input.e.yz)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(556f, -676f)), _wgslsmith_f_op_f32(-1675f - -1231f)), -1083f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2239f, -1086f) + _wgslsmith_div_vec2_f32(vec2<f32>(-3128f, -511f), vec2<f32>(1661f, 568f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-383f)), -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(277f, 480f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1731f)), 265f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(-453f + var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(var_1.x - -1572f), var_1.x)), u_input.b >= ~max(22221i, 1i))), _wgslsmith_f_op_f32(exp2(var_1.x)), vec2<bool>(true, !(u_input.d >= ~arg_0)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, var_1.x, var_1.x)), vec3<f32>(var_1.x, var_1.x, 989f)))))));
    let var_3 = ~_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, countOneBits(firstLeadingBit(20518i))), func_3().x);
    let var_4 = !(!any(vec4<bool>(var_2.c.x, true, true, var_2.c.x)));
    return vec3<f32>(var_1.x, var_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(100f)))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(531f, -1116f, -748f), vec3<f32>(478f, -2811f, -349f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 1000f, -2015f) + vec3<f32>(1349f, -864f, -1159f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(229f, 1545f, -472f) + vec3<f32>(-927f, 266f, -1000f)), vec3<f32>(968f, -1168f, 1007f)))), 475f, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.d)), vec3<f32>(-516f, _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(1071f * 761f)))));
    let var_1 = vec2<bool>(!var_0.c.x, var_0.c.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-264f * var_0.b), _wgslsmith_f_op_f32(min(387f, 418f))), var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_f_op_f32(min(-645f, 240f)), var_0.a.x);
    let var_3 = var_0;
    let var_4 = -155f;
    return Struct_1(vec3<f32>(-966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0.d.x))), 393f), var_3.d.x, !select(select(var_1, var_1, !var_1), vec2<bool>(false, all(vec3<bool>(var_1.x, var_1.x, true))), var_0.c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wwz - var_2.wwx), vec3<f32>(134f, 559f, 567f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2115f, 1084f, 2316f), vec3<f32>(-250f, -153f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -258f, -760f) + vec3<f32>(-986f, -515f, -274f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) - -906f), 678f), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec3<f32>(-761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) * -507f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1152f * -1455f), _wgslsmith_f_op_f32(489f - 476f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1523f - 1324f) * 852f))));
    let var_1 = var_0.c.x;
    let var_2 = ~u_input.c;
    var_0 = func_1();
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(598f, _wgslsmith_f_op_f32(-816f - -495f), all(select(vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, false, var_0.c.x))))), 321f, var_0.b), _wgslsmith_f_op_f32(-var_0.d.x), var_0.c, var_0.a);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_3.a.x, 554f, var_0.d.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_3.b + var_0.b), func_1().b, _wgslsmith_f_op_f32(1039f * 939f), _wgslsmith_div_f32(1136f, 305f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1562f, var_0.d.x, var_0.a.x, var_0.a.x) * vec4<f32>(var_0.a.x, -1081f, var_3.d.x, 414f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.b, var_0.d.x, var_3.a.x), vec4<f32>(1269f, var_3.d.x, 1023f, var_3.a.x)), var_3.c.x)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -1840f, 422f, 2400f), vec4<f32>(-741f, var_3.d.x, var_0.b, -1000f), vec4<bool>(true, true, var_0.c.x, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -1229f, var_3.a.x, 1682f)))))));
    var var_5 = 1u;
    var var_6 = true;
    var_5 = min(~u_input.d >> ((u_input.d & firstLeadingBit(6166u)) % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.c.wzx, _wgslsmith_mult_vec3_i32(u_input.c.wxw, -(u_input.e.xxx & vec3<i32>(0i, 37526i, var_2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-210f * _wgslsmith_f_op_f32(-var_0.b)), var_4.x, true)))), u_input.c.zy);
}

