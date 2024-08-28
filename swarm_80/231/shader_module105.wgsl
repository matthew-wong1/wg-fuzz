struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = Struct_1(arg_2.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -300f, arg_0.x)))), -713f, _wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(select(arg_3, 855f, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 755f)))), firstTrailingBit(~51179u), -775f);
    var var_1 = 0i;
    var var_2 = arg_2;
    let var_3 = var_0;
    var_2 = Struct_1(select(vec4<bool>(any(vec2<bool>(true, false)), arg_2.a.x, !any(vec2<bool>(arg_2.a.x, true)), !any(vec3<bool>(var_3.a.x, true, false))), select(select(var_3.a, var_3.a, var_3.a.x), vec4<bool>(true, true, true, true), select(true, true, !var_0.a.x)), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2.b, var_3.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1898f, var_0.d, -938f)))), false)))), _wgslsmith_add_u32(~_wgslsmith_add_u32(reverseBits(var_3.c), ~33260u), var_2.c), 413f);
    return all(!var_2.a.yz);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, func_3(vec3<bool>(arg_1, arg_1, arg_1), vec2<f32>(105f, -247f), Struct_1(vec4<bool>(false, false, arg_1, arg_1), vec4<f32>(435f, -835f, 782f, -1488f), 20188u, -527f), 302f), true, any(vec4<bool>(true, arg_1, arg_1, false))), select(vec4<bool>(false, false, arg_1, true), select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, false, false, false)), true), !select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, true, arg_1, false), vec4<bool>(true, arg_1, true, arg_1))), !select(!vec4<bool>(arg_1, true, false, arg_1), !select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, true), false)), select(!vec4<bool>(arg_1, arg_0 != -1i, select(true, false, false), false), !select(vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), false), true));
    let var_1 = max(6351i << (~(u_input.a.x >> (~11533u % 32u)) % 32u), arg_0);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1700f * -345f), -978f, false)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(-940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f - -575f)))))));
    let var_3 = Struct_1(!select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, any(var_0.yw), arg_1 && var_0.x, all(vec4<bool>(false, arg_1, true, false))), !var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, -304f, -454f, -445f) + vec4<f32>(726f, -141f, -581f, 453f)))), _wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 118246u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), u_input.a.x), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)));
    let var_4 = var_3;
    return Struct_1(vec4<bool>(any(var_3.a.yyz), true, true, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-705f)), -571f, _wgslsmith_f_op_f32(select(-1636f, -331f, false)), var_3.b.x)), _wgslsmith_f_op_vec4_f32(var_4.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.b * vec4<f32>(var_4.b.x, var_3.d, var_3.d, -2235f)) + _wgslsmith_f_op_vec4_f32(ceil(var_3.b)))))), max(reverseBits(15556u & _wgslsmith_div_u32(u_input.a.x, 48860u)), ~_wgslsmith_div_u32(var_3.c, abs(4294967295u))), 499f);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = func_2(1i, true);
    var var_1 = func_2(max(-2147483647i, _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(33878i, 1i), vec2<i32>(-9027i, 17541i)), 0i)), var_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -627f))) + 818f);
    var var_3 = any(select(select(select(vec2<bool>(true, false), !var_1.a.zz, var_0.a.x), !(!var_0.a.wy), var_1.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), !var_1.a.xx, var_0.a.wy), !(!vec2<bool>(true, var_1.a.x))), false | var_1.a.x));
    var_0 = func_2(i32(-1i) * -40243i, func_2(_wgslsmith_div_i32(-2147483647i, -2147483647i), var_0.a.x).a.x);
    return func_2(_wgslsmith_clamp_i32(reverseBits(4813i), max(25563i, 30039i), i32(-1i) * -1i), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, -958f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_1(arg_0.b.x, 15734u).b.x, _wgslsmith_f_op_f32(step(1542f, -225f))))), -710f, -729f), ~(~(~0u) | ~_wgslsmith_clamp_u32(var_0.c, 1u, arg_0.c)), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(step(920f, -161f))), arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1283f - _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_1.x * -1663f)))), _wgslsmith_f_op_f32(1233f - arg_1.x)));
    var var_3 = 1i;
    let var_4 = Struct_1(func_1(var_1.b.x, u_input.a.x).a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(-507f, 164f, arg_1.x, 179f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, var_1.d, -2101f, -1125f))))))), ~arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -688f));
    return -895f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(u_input.a.x == 59627u, false);
    let var_1 = vec4<f32>(541f, _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(241f + 964f))), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, 1030f, -433f, -439f) + vec4<f32>(2770f, 528f, -433f, 763f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1394f, 603f, 1203f, -1032f))))), 1585f)), _wgslsmith_f_op_f32(min(-1105f, _wgslsmith_f_op_f32(-361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(505f - -1000f) + 2192f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1246f), 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))))), var_1.x, 1u);
}

