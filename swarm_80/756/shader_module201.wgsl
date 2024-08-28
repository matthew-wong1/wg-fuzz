struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f * 807f)), _wgslsmith_f_op_f32(-303f - -1000f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 773f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2258f)))), vec2<f32>(-1333f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f))))))), true));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-786f, -243f), vec2<f32>(179f, var_0.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1131f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 3001f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 2733f), vec2<f32>(527f, var_0.x))), vec2<bool>(true, true)))) + vec2<f32>(_wgslsmith_f_op_f32(round(-542f)), -501f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-874f, var_0.x)))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1000f - var_0.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -430f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(397f, -1306f), vec2<f32>(-1092f, var_0.x))))))));
    let var_1 = ~u_input.a.wxy;
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x));
    return !vec3<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(round(568f)))));
    let var_1 = arg_1;
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1089f, -1076f))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_1.c + arg_1.a.x)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c, 270f)), _wgslsmith_f_op_f32(562f * 376f), -1050f, _wgslsmith_f_op_f32(f32(-1f) * -1196f)), var_1.a))));
    let var_4 = !all(select(func_3(), !(!vec3<bool>(arg_1.d.x, false, false)), var_2.x));
    return abs(2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = -926f;
    let var_1 = Struct_2(arg_1.a, true, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0 * 273f), _wgslsmith_f_op_f32(ceil(405f)), arg_1.c, var_0))), firstLeadingBit(vec2<i32>(~(-1i), -15025i)), _wgslsmith_f_op_f32(round(arg_1.c)), func_3()), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * _wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(-653f, arg_1.a.x, -1313f, 1000f)))), ~firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.e, vec2<i32>(arg_1.b.x, u_input.d))), -502f, select(!vec3<bool>(true, arg_1.d.x, true), arg_1.d, !func_3())), vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.xzw), vec3<u32>(min(50023u, u_input.a.x), 4294967295u, ~u_input.a.x)), u_input.a.x, 4294967295u, 4294967295u));
    let var_2 = arg_1.d.x;
    var var_3 = 21978i;
    let var_4 = var_1.d.a.wz;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(arg_1.a.xwy, var_1.a.zzx, var_2)), _wgslsmith_div_vec3_f32(var_1.c.a.xyx, arg_1.a.xww))), arg_1.a.xzy, arg_1.d)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -1960f, var_1.a.x))) * arg_1.a.www);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, firstTrailingBit(max(vec2<i32>(23491i, -60069i), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-13465i, u_input.d), vec2<i32>(2147483647i, u_input.b.x)), _wgslsmith_mult_vec2_i32(u_input.b, arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x)))))), arg_1.d);
    var var_1 = true;
    var var_2 = true;
    let var_3 = Struct_1(var_0.a, abs(-abs(~arg_1.b)), -1010f, var_0.d);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(step(var_0.a, arg_1.a))) * _wgslsmith_f_op_vec4_f32(floor(var_3.a)))), true, var_3, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3.a))), ~(~var_0.b), arg_3.x, vec3<bool>(!(true && var_0.d.x), _wgslsmith_div_f32(325f, arg_3.x) >= _wgslsmith_div_f32(var_3.c, arg_3.x), var_3.d.x)), vec4<u32>(4294967295u, abs(_wgslsmith_mod_u32(36509u, 1u)), 10430u, arg_2));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -281f), -1770f)) + 1487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f))));
    var var_2 = select(arg_0.xww, vec3<bool>(!arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, true, var_1.x < var_1.x)), !(!arg_0.x | (arg_1 <= 2147483647i))), false);
    let var_3 = func_5(var_2.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-993f, 1314f), _wgslsmith_f_op_f32(sign(137f)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -492f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1173f, -1682f, -611f) * vec4<f32>(476f, 208f, var_1.x, -449f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(605f, var_1.x, 1017f, -1684f) * vec4<f32>(var_1.x, var_1.x, var_1.x, 227f)))), u_input.e, var_1.x, !vec3<bool>(true, true, true && var_2.x)), _wgslsmith_div_u32(~abs(~1u), u_input.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(~func_2(u_input.a, Struct_1(vec4<f32>(var_1.x, -1208f, -1017f, var_1.x), vec2<i32>(u_input.d, 12257i), var_1.x, arg_0.zzy)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, -784f))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), u_input.e), _wgslsmith_f_op_f32(ceil(var_1.x)), vec3<bool>(var_2.x, var_2.x, var_2.x)))))));
    let var_4 = func_5(_wgslsmith_f_op_f32(var_1.x * var_3.a.x) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.x, var_3.c) + _wgslsmith_f_op_f32(f32(-1f) * -731f)), var_1.x)), var_3, ~45880u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(694f, -1213f, var_3.a.x))), _wgslsmith_f_op_vec3_f32(trunc(var_3.a.zzz)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.xww)))));
    return _wgslsmith_f_op_f32(-var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(-1419f, _wgslsmith_f_op_f32(-827f * 1506f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, true), u_input.d)))))));
    let var_1 = Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(u_input.e.x, func_5(true, Struct_1(vec4<f32>(var_0.x, -1036f, 793f, var_0.x), vec2<i32>(1i, u_input.b.x), -152f, vec3<bool>(true, true, false)), u_input.c.x, var_0.wyx))).x - -1168f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x)))))), func_5(false, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -145f, -1000f) - _wgslsmith_f_op_vec4_f32(-var_0)), abs(~u_input.e), _wgslsmith_div_f32(-1682f, _wgslsmith_f_op_f32(-var_0.x)), vec3<bool>(true, true, var_0.x >= -606f)), u_input.a.x, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(428f))), var_0.x)).d.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1036f)), var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_f_op_f32(round(var_0.x)), -1597f)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_i32(u_input.e.x, 15029i), func_5(false, Struct_1(vec4<f32>(-376f, 2816f, var_0.x, -1006f), u_input.e, 527f, vec3<bool>(true, true, true)), 1u, vec3<f32>(var_0.x, -1948f, var_0.x)))).x), vec3<bool>(true, func_5(true, func_5(true, Struct_1(var_0, vec2<i32>(u_input.b.x, 1357i), var_0.x, vec3<bool>(false, true, false)), 23234u, var_0.ywz), ~3573u, var_0.wzx).d.x, true)), func_5(func_3().x, func_5(select(func_3().x, true, true), func_5(true, Struct_1(vec4<f32>(var_0.x, var_0.x, 1439f, var_0.x), u_input.e, var_0.x, vec3<bool>(false, false, true)), reverseBits(u_input.a.x), var_0.yxx), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 33533u, u_input.a.x, u_input.c.x), u_input.a) | u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 204f, 1066f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 407f, 2177f), vec3<f32>(var_0.x, -166f, -333f)))), 1u, var_0.xxz), u_input.a);
    var var_2 = var_1;
    var var_3 = -countOneBits(vec2<i32>(_wgslsmith_add_i32(var_1.d.b.x, var_2.c.b.x) << (47344u % 32u), var_2.d.b.x));
    let var_4 = var_2.c;
    var var_5 = Struct_1(var_2.a, _wgslsmith_mod_vec2_i32(var_1.d.b, vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.d.b.x, 23062i, 27786i, -23685i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1971i, 46520i, -2147483647i, -1i), vec4<i32>(var_1.c.b.x, u_input.e.x, -2147483647i, 2147483647i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-43329i, var_4.b.x, 2147483647i, 50463i), vec4<i32>(var_2.c.b.x, 2147483647i, var_1.d.b.x, 2147483647i) << (var_1.e % vec4<u32>(32u))))), var_2.a.x, !var_1.d.d);
    let var_6 = _wgslsmith_mult_vec2_i32(var_4.b, reverseBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_4.b.x, -1i), vec2<i32>(u_input.e.x, u_input.e.x)))));
    var_5 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.a.x), -391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-947f, 733f))), 1076f), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-5623i, var_2.c.b.x), vec2<i32>(u_input.b.x, var_6.x)), var_2.d)).x, _wgslsmith_f_op_f32(round(-934f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c.a.x - var_2.d.c), var_5.a.x, false & var_2.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-988f, var_0.x)) * -376f))), ~firstLeadingBit(_wgslsmith_sub_vec2_i32(-var_5.b, var_5.b)), -617f, !var_2.c.d);
    var_3 = -vec2<i32>(min(-13985i, _wgslsmith_dot_vec2_i32(var_1.d.b, abs(var_6))), _wgslsmith_sub_i32(-1i, -4940i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(var_1.c.b.x << (var_1.e.x % 32u), func_5(false, var_2.c, var_1.e.x, vec3<f32>(var_0.x, var_5.a.x, var_4.a.x)))).x)));
}

