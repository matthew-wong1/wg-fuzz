struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = vec3<bool>(true, !any(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, any(vec3<bool>(false, false, true)))), true);
    var var_1 = Struct_1(1i);
    return ~(-1i);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(true, true, any(vec3<bool>(true, true, true)) | !any(vec4<bool>(false, true, true, false))) | false;
    let var_1 = Struct_1(~min(-1i | u_input.b.x, countOneBits(_wgslsmith_sub_i32(-1i, -31881i))));
    let var_2 = var_1;
    var var_3 = Struct_2(-42598i);
    var_3 = Struct_2(~var_3.a);
    return Struct_2(func_3());
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1192f - -1000f) - _wgslsmith_f_op_f32(-856f + -1000f)))));
    var_0 = 2127f;
    var var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1164f + _wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f + 893f)))), -1551f), Struct_1(-2147483647i));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3150f, -1672f, 765f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, _wgslsmith_f_op_f32(step(-685f, 1099f)), _wgslsmith_f_op_f32(step(-1218f, -1020f)))))));
    var var_3 = Struct_1(firstTrailingBit(-1i & u_input.b.x));
    return var_2.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = arg_1.wzx;
    var var_1 = 496f;
    let var_2 = reverseBits(reverseBits(~(~vec3<u32>(1u, 1u, 1u))));
    let var_3 = 26005u;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(arg_0.ww, arg_2))), 1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-463f)) - _wgslsmith_f_op_f32(ceil(arg_0.x)))));
    return -1452f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1005f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-2422f)))), _wgslsmith_f_op_f32(f32(-1f) * -1073f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(361f, -311f, true))), _wgslsmith_f_op_f32(sign(-442f))))), 1131f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, 261f, -1841f, -579f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(274f, 1000f, -231f, 262f) - vec4<f32>(1577f, -1000f, -907f, -1000f)))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(firstTrailingBit(2147483647i)), u_input.b.x)));
    var var_1 = -800f;
    var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -205f)), var_0.x), var_0.x));
    let var_2 = !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))) - 1396f);
    var_1 = -228f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, ~83878u), ~_wgslsmith_div_u32(4294967295u, 1u), min(~2572u, ~1u)), vec3<u32>(select(~0u, 63520u, all(var_2)), 1u, min(0u, 4294967295u) << (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f - -665f)) + _wgslsmith_f_op_f32(abs(var_0.x))) * var_0.x), _wgslsmith_sub_i32(min(i32(-1i) * -2147483647i, u_input.a), u_input.b.x | _wgslsmith_mult_i32(func_3(), func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 2513f));
}

