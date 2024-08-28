struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-669f)), _wgslsmith_f_op_f32(ceil(-165f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-107f, -1418f, true))))), true, ~firstTrailingBit(firstTrailingBit(vec2<u32>(66061u, u_input.a))));
    var_0 = Struct_1(vec3<f32>(-141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-147f, 2677f)) - _wgslsmith_f_op_f32(max(598f, var_0.a.x)))), var_0.a.x), any(vec4<bool>(var_0.b, any(vec4<bool>(true, false, var_0.b, true)), var_0.b, !select(true, var_0.b, var_0.b))), reverseBits(~(~_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(u_input.a, 4294967295u)))));
    var var_1 = !(!(!all(vec4<bool>(false, var_0.b, true, var_0.b)) && all(!vec4<bool>(false, var_0.b, true, true))));
    let var_2 = u_input.c;
    let var_3 = firstLeadingBit(max(var_2.zy | vec2<i32>(1i, 1i), var_2.xy) ^ countOneBits(u_input.c.xz));
    return -756f;
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1056f, -777f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, -1041f, 475f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f * 1000f) * _wgslsmith_f_op_f32(floor(1032f))), -823f)), countOneBits(4294967295u << ((u_input.b << (4294967295u % 32u)) % 32u)) >= u_input.a, vec2<u32>(u_input.a, u_input.b) | vec2<u32>(1u, 1u));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~var_0.c), ~reverseBits(var_0.c));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, -3414f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, var_0.a.x, var_0.a.x)))))), false, ~(~vec2<u32>(4294967295u, 16219u)) >> (vec2<u32>(0u, var_1) % vec2<u32>(32u)));
    let var_3 = !vec3<bool>(!(!(var_0.b & true)), false, var_2.b);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(sign(-116f)), var_0.a.yy);
    return _wgslsmith_f_op_vec3_f32(floor(var_2.a));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2494f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - 473f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1103f - 488f)), _wgslsmith_f_op_f32(1416f * _wgslsmith_div_f32(208f, 376f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(452f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1070f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f - 1315f))), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -337f), var_0.x, _wgslsmith_f_op_f32(var_0.x + 295f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(754f, 288f, 996f))), vec3<f32>(_wgslsmith_f_op_f32(select(699f, var_0.x, true)), _wgslsmith_f_op_f32(-1000f - 116f), var_0.x), vec3<bool>(any(vec3<bool>(true, true, false)), false, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -968f)));
    let var_2 = min(firstLeadingBit(vec3<u32>(1u, 74089u, ~u_input.b)), ~abs(vec3<u32>(u_input.a, 46525u, 1158u)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(17682u, 0u, u_input.b), vec3<u32>(4294967295u, u_input.b, 43975u)))) >> (vec3<u32>(abs(~(~0u)), firstTrailingBit(1u & reverseBits(u_input.b)), select(~_wgslsmith_clamp_u32(29950u, 4294967295u, u_input.a), ~(~u_input.b), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))) % vec3<u32>(32u));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x))))) * var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.x)), 860f, true)), 185f)), -1000f);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-584f, 1147f, 949f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1843f, var_1.x), vec3<f32>(var_0.x, -391f, 1000f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(674f, var_1.x, 1948f), vec3<f32>(var_0.x, var_0.x, -1221f), vec3<bool>(false, false, true)))))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.x, var_1.x)), vec3<f32>(-1710f, _wgslsmith_f_op_f32(abs(var_1.x)), var_0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -500f) + vec3<f32>(-2135f, 370f, var_0.x))))), ~(var_2.x & 1u) > abs(~120816u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> Struct_3 {
    var var_0 = select(2147483647i, u_input.c.x, all(!vec2<bool>(u_input.c.x >= -2147483647i, any(vec2<bool>(true, arg_0.b)))));
    var_0 = _wgslsmith_div_i32(68134i, _wgslsmith_sub_i32(~(-13826i), u_input.c.x));
    let var_1 = (_wgslsmith_div_i32(69572i, ~_wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(u_input.c.x, u_input.c.x))) & (16301i | u_input.c.x)) >> (_wgslsmith_mod_u32(arg_0.c.x, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, 796u), vec3<u32>(u_input.b, 1u, 4294967295u)))) % 32u);
    let var_2 = select(select(select(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, false, true), false), !vec3<bool>(false, true, arg_0.b), all(select(vec2<bool>(arg_0.b, true), vec2<bool>(true, false), vec2<bool>(false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.b), vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), ~vec3<u32>(arg_2, 11099u, 0u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, arg_0.c.x) ^ vec4<u32>(arg_2, 1u, arg_0.c.x, arg_0.c.x), max(vec4<u32>(1u, u_input.b, 0u, 0u), vec4<u32>(0u, 0u, u_input.a, 4294967295u)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_0.b, true, arg_0.b)), select(!vec3<bool>(false, arg_0.b, true), vec3<bool>(true, true, true), !arg_0.b), !arg_0.b || arg_0.b), !(!vec3<bool>(-41395i == u_input.c.x, arg_0.b, arg_0.b)));
    return Struct_3(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, 701f), vec2<f32>(-581f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(627f, 449f))), select(vec2<bool>(arg_0.b, true), var_2.zy, vec2<bool>(true, false)))), vec2<f32>(-903f, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1()), vec3<f32>(1f, 1f, 1f))), true, vec2<u32>(u_input.a, ~(~0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1055f, 159f, 1198f, 937f) + vec4<f32>(-1058f, -3006f, -1539f, 328f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-228f, 787f, -275f, 110f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1179f, 1043f, 783f))))), u_input.b | 35763u);
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(35549u, u_input.a), vec2<u32>(u_input.a, u_input.b), vec2<u32>(4294967295u, u_input.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2459f, -1015f, -692f, 2141f)))))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(func_3()), 322f, 1000f)), _wgslsmith_mult_u32(3843u, u_input.a) & _wgslsmith_div_u32(39854u, 112009u));
    let var_2 = 0u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, 710f, var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, 828f, var_1.b.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.b.x, var_1.a)), vec3<f32>(908f, 2740f, var_1.b.x))))), false, ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_2, var_2)), ~reverseBits(vec2<u32>(44829u, 1u))));
    var var_4 = _wgslsmith_dot_vec4_i32(-(max(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)) << (vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a, var_2), ~4294967295u, 0u) % vec4<u32>(32u))), -vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.xx), abs(~45895i), min(~(-20403i), u_input.c.x), 1i));
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) * _wgslsmith_f_op_vec3_f32(func_1()).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(max(var_3.a.x, -1897f))) + var_1.a));
    var_4 = -2147483647i;
    let var_6 = select(u_input.c.zx, -select(-(vec2<i32>(27093i, u_input.c.x) & vec2<i32>(u_input.c.x, u_input.c.x)), max(firstTrailingBit(vec2<i32>(-34882i, u_input.c.x)), vec2<i32>(u_input.c.x, u_input.c.x)), select(!vec2<bool>(var_3.b, false), vec2<bool>(var_3.b, var_3.b), var_3.b)), !(!(!all(vec3<bool>(true, var_3.b, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2)), 0u >> (u_input.b % 32u), ~(-vec2<i32>(-2147483647i ^ var_6.x, -1i)));
}

