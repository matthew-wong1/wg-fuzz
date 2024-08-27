struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(arg_1.d.a, select(arg_1.c, select(select(vec4<bool>(true, true, arg_0.d.b.x, arg_1.d.b.x), select(arg_1.d.b, vec4<bool>(arg_1.d.b.x, arg_0.c.x, arg_0.c.x, arg_1.c.x), false), arg_0.c.x || arg_0.c.x), !arg_1.d.b, all(select(arg_0.c, vec4<bool>(arg_0.d.b.x, arg_0.d.b.x, false, false), true))), !vec4<bool>(any(arg_1.c), true, !arg_1.d.b.x, arg_0.a >= arg_1.a)), ~(-abs(arg_0.d.c & 0i)), arg_1.d.d);
    var_0 = arg_1.d;
    var_0 = arg_1.d;
    var var_1 = Struct_1(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, u_input.b, 0u, 4294967295u), var_0.d) | select(var_0.d, vec4<u32>(0u, 52653u, 1u, var_0.a.x), arg_1.d.b.x)), vec4<bool>(((i32(-1i) * -55493i) & arg_0.d.c) == arg_0.d.c, all(vec3<bool>(!arg_0.d.b.x, true, true)), all(arg_1.c.zyy), true), firstLeadingBit(countOneBits(arg_0.d.c)), vec4<u32>(37223u, 38354u, u_input.b, reverseBits(~u_input.b)));
    let var_2 = Struct_1(vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24634u, var_1.a.x, 29284u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), abs(vec4<u32>(var_1.d.x, u_input.b, arg_0.d.d.x, arg_1.d.d.x) & arg_0.d.a)), ~var_0.d.x), !var_0.b, -(~var_1.c), ~(~select(vec4<u32>(67217u, 50826u, 1043u, 61979u), _wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(4294967295u, 4294967295u, 94157u, arg_0.b.x)), !arg_1.d.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1136f * arg_1.a) + arg_1.a));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(-662f, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 60668u)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), Struct_1(reverseBits(vec4<u32>(u_input.b, 1u, 0u, u_input.b)), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(u_input.a.x, -40916i, -1i), vec4<u32>(u_input.b, 64205u, u_input.b, 66812u) & vec4<u32>(59171u, u_input.b, 70793u, u_input.b))), Struct_2(-327f, abs(~vec3<u32>(u_input.b, 1u, u_input.b)), vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(519u, u_input.b, 2455u, u_input.b) & vec4<u32>(41928u, u_input.b, 0u, u_input.b), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), 2147483647i, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 76435u, u_input.b, 24683u), vec4<u32>(27334u, u_input.b, u_input.b, u_input.b)))))), countOneBits(vec3<u32>(1u, ~u_input.b, u_input.b)) ^ vec3<u32>(4294967295u, ~u_input.b, 85086u), vec4<bool>(true, true, true, true), Struct_1(min((vec4<u32>(0u, u_input.b, u_input.b, 1u) ^ vec4<u32>(1u, 1u, 0u, u_input.b)) & firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 34281u, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), ~vec4<u32>(74354u, u_input.b, 4294967295u, u_input.b))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 9832i, firstLeadingBit(_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 138710u)), select(vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(1u, u_input.b, u_input.b, 4139u), vec4<bool>(false, false, true, false))))));
    let var_1 = 17690i;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -101f) * var_0.a), var_0.b, select(!(!vec4<bool>(var_0.c.x, false, false, true)), !vec4<bool>(true, true, all(vec3<bool>(false, true, true)), -4514i < var_1), !select(select(vec4<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.b.x, true), vec4<bool>(true, false, false, var_0.c.x), vec4<bool>(var_0.c.x, true, true, true)), var_0.d.b, var_0.c.x)), Struct_1(~firstLeadingBit(vec4<u32>(4294967295u, 61710u, 16489u, 4294967295u) & vec4<u32>(var_0.b.x, 1u, 4294967295u, var_0.d.d.x)), select(select(vec4<bool>(var_0.c.x, false, false, true), select(vec4<bool>(var_0.c.x, var_0.d.b.x, var_0.c.x, true), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.d.b.x), var_0.d.b), !vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.d.b.x)), select(vec4<bool>(var_0.d.b.x, false, false, false), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.d.b.x, var_0.c.x), false), select(!var_0.d.b, select(var_0.c, vec4<bool>(var_0.d.b.x, var_0.d.b.x, false, false), var_0.c), var_0.d.b.x)), var_0.d.c, vec4<u32>(~(~0u), 25852u, 0u, ~var_0.b.x)));
    let var_2 = u_input.a;
    var var_3 = var_0.d.d;
    return var_0.d.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.yyz - vec3<f32>(_wgslsmith_f_op_f32(abs(901f)), arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1709f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1950f, var_0.x, 1153f))), _wgslsmith_f_op_vec3_f32(arg_0.www + vec3<f32>(arg_0.x, var_0.x, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wwy)), arg_3)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f - -597f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(1897f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, -707f, _wgslsmith_f_op_f32(1569f + arg_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.zxz)), arg_0.yww, any(vec2<bool>(arg_3, arg_1)))))), arg_0.zww));
    var var_1 = _wgslsmith_div_i32(2618i, ~u_input.a.x) | ~_wgslsmith_mult_i32(~u_input.a.x, func_2());
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1374f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.x, _wgslsmith_div_vec3_u32(arg_2, arg_2), select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(true, arg_1, false, arg_3), arg_1), Struct_1(vec4<u32>(u_input.b, arg_2.x, 29136u, u_input.b), vec4<bool>(true, arg_1, arg_3, false), u_input.a.x, vec4<u32>(u_input.b, arg_2.x, arg_2.x, arg_2.x))), Struct_2(_wgslsmith_f_op_f32(-1062f + -296f), select(arg_2, arg_2, vec3<bool>(true, arg_3, arg_1)), !vec4<bool>(false, false, arg_3, arg_1), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, arg_2.x), vec4<bool>(arg_1, arg_1, true, arg_1), 1621i, vec4<u32>(arg_2.x, 1u, 4294967295u, arg_2.x))))))));
    return !select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1183f + 802f)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-560f)), var_2.x)), false, any(vec2<bool>(!arg_1, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, !all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
    var_0 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)) && true, func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, -393f, -1225f, -1502f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1882f, -1152f, 904f)), u_input.b >= 1u)), !(var_0.x || var_0.x), select(vec3<u32>(1u, 1u, 6960u), _wgslsmith_div_vec3_u32(vec3<u32>(38425u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), all(vec3<bool>(false, var_0.x, true))), var_0.x), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, -492f, -1103f, 396f) - vec4<f32>(124f, -349f, 1371f, -533f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, -1000f, -573f, 381f))), false, vec3<u32>(_wgslsmith_mod_u32(54376u, 1u), u_input.b, 36630u), var_0.x)), select(vec3<bool>(!var_0.x && var_0.x, true, false), vec3<bool>(any(vec2<bool>(false, var_0.x)), true, false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(func_1(vec4<f32>(983f, 1964f, -506f, -1253f), false, vec3<u32>(u_input.b, u_input.b, u_input.b), var_0.x), !var_0.x, !var_0.x), true)), !(!select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.x)), var_0.x)));
    var_0 = !(!(!vec3<bool>(-13718i > u_input.a.x, var_0.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(0u, 19954u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, var_0.x)), ~(~vec2<u32>(1u, 0u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))), u_input.b << (max(_wgslsmith_clamp_u32(~21765u, min(11558u, u_input.b), 1u), 8831u) % 32u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(1u, 1u, u_input.b) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(69342u, u_input.b), vec2<u32>(64317u, 4294967295u)) % 32u)));
}

