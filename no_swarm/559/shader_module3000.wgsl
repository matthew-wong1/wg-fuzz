struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    let var_0 = all(arg_0.zyz);
    var var_1 = -(countOneBits(vec2<i32>(1i, _wgslsmith_clamp_i32(-2147483647i, 70326i, 17981i))) | vec2<i32>(reverseBits(i32(-1i) * -12206i), _wgslsmith_dot_vec2_i32(vec2<i32>(-22166i, -2147483647i), vec2<i32>(2147483647i, 1i)) & abs(-2147483647i)));
    var_1 = vec2<i32>(countOneBits(1i), firstLeadingBit(-(~var_1.x << (33869u % 32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1501f, -1904f, -564f, 262f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-195f, -128f, 1085f, -1000f)), any(vec4<bool>(false, false, arg_0.x, var_0)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1769f, -847f, 709f, -162f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(998f, -1287f, 1020f, -1000f), vec4<f32>(724f, -216f, 417f, -483f))), !var_0))))));
    var var_3 = Struct_3(firstLeadingBit(vec3<i32>(var_1.x >> (u_input.c.x % 32u), -2147483647i >> (~4294967295u % 32u), -33936i)));
    return ~var_3.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-793f + -760f), _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - -1000f) * arg_1.b) + _wgslsmith_f_op_f32(f32(-1f) * -132f)), -1000f));
    let var_1 = -_wgslsmith_div_i32(firstLeadingBit(0i), arg_3.a.x);
    let var_2 = ~func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)).x;
    let var_3 = var_0;
    var var_4 = vec3<f32>(-101f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1499f))));
    return arg_0.x;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = max(_wgslsmith_mult_vec2_i32(min(firstTrailingBit(arg_2.zw), vec2<i32>(2147483647i, 12963i)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3, arg_2.x) >> ((vec2<u32>(u_input.c.x, u_input.a) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(abs(arg_0.a.yy), countOneBits(vec2<i32>(arg_3, arg_0.a.x))))), _wgslsmith_clamp_vec2_i32(arg_2.ww, func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)).xy, vec2<i32>(0i, max(-4193i, 0i >> (u_input.a % 32u)))));
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-4684i, abs(arg_3)), ~arg_2.x >> (_wgslsmith_sub_u32(u_input.c.x, 4294967295u) % 32u)), vec2<i32>(_wgslsmith_clamp_i32(var_0.x, arg_2.x, 14612i) << (4294967295u % 32u), 2147483647i)), -select(arg_2.zy, select(select(arg_2.wz, vec2<i32>(arg_2.x, 0i), vec2<bool>(true, true)), vec2<i32>(-67139i, arg_2.x), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, false), true)));
    var_0 = vec2<i32>(1i, max(2147483647i, _wgslsmith_add_i32(-(i32(-1i) * -1i), -1i)));
    var_0 = abs(~arg_0.a.xz);
    var_0 = ~(-vec2<i32>(arg_3, arg_3) & ~(vec2<i32>(1i, arg_3) >> (u_input.b.zy % vec2<u32>(32u)))) >> (vec2<u32>(countOneBits(u_input.b.x), u_input.b.x | ~countOneBits(52027u)) % vec2<u32>(32u));
    return 55020i;
}

fn func_2() -> Struct_1 {
    var var_0 = (~(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -32491i, 24325i, 0i), vec4<i32>(-2147483647i, 46863i, -2147483647i, 9052i)) >> (min(vec4<u32>(7477u, 7963u, 4294967295u, 1u), u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, 1u, ~80673u, _wgslsmith_add_u32(~1u, u_input.a)) % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u));
    var var_1 = func_5(Struct_3(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), min(var_0.xw, vec2<i32>(2819i, -31228i))), firstTrailingBit(27498i))), 1462f, vec4<i32>(func_4(func_3(vec4<bool>(true, true, false, false)), Struct_2(vec2<f32>(977f, -202f), 1000f), u_input.c.x, Struct_3(vec3<i32>(-20094i, var_0.x, var_0.x))) << (((u_input.a & 0u) << (_wgslsmith_add_u32(u_input.c.x, 10483u) % 32u)) % 32u), ~_wgslsmith_add_i32(~var_0.x, _wgslsmith_add_i32(var_0.x, -4558i)), firstLeadingBit(~var_0.x << ((u_input.c.x ^ u_input.a) % 32u)), var_0.x), _wgslsmith_mod_i32(reverseBits(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.x, var_0.x), -vec2<i32>(var_0.x, 18141i))));
    var_0 = vec4<i32>(countOneBits(~(_wgslsmith_mult_i32(var_0.x, -1i) >> (select(0u, u_input.b.x, false) % 32u))), ~func_3(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).x, 1i, ~(-1i >> (firstTrailingBit(u_input.a) % 32u)));
    var var_2 = _wgslsmith_add_vec2_i32(var_0.xx >> (firstTrailingBit(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(39825u, u_input.a, u_input.a), u_input.b.zxw))) % vec2<u32>(32u)), ~(~var_0.zx));
    var_0 = vec4<i32>(abs(2147483647i), ~(-firstTrailingBit(1i)), _wgslsmith_dot_vec3_i32(~func_3(vec4<bool>(true, true, true, true)), firstLeadingBit((var_0.wwy & var_0.zww) & (var_0.wyy >> (vec3<u32>(u_input.a, 0u, 63628u) % vec3<u32>(32u))))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 14794i, ~firstLeadingBit(-2147483647i)), var_0.xzw & -func_3(vec4<bool>(true, true, true, false))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1181f)) * _wgslsmith_f_op_f32(select(414f, -1556f, false))), _wgslsmith_f_op_f32(ceil(-994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f + 113f) + _wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1695f - -1124f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(round(arg_1.a.x))) - arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.b, -186f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x + 923f)), all(vec4<bool>(true, true, true, true)))) * arg_1.a.x));
    let var_1 = arg_1.b;
    let var_2 = func_2();
    var var_3 = Struct_3(vec3<i32>(46268i ^ _wgslsmith_div_i32(func_4(vec3<i32>(-25859i, -1i, -11915i), Struct_2(var_2.a.wy, -1598f), 0u, Struct_3(vec3<i32>(0i, -1i, -17613i))), -4802i), ~_wgslsmith_add_i32(select(2147483647i, 1i, true), 1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -2147483647i, -21830i, 34943i), vec4<i32>(-1i, 23961i, 2147483647i, 0i)), -_wgslsmith_mult_i32(12825i, 1i))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1142f, 286f)), -503f)), _wgslsmith_div_f32(1072f, arg_1.b)));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-120f)), _wgslsmith_f_op_f32(select(arg_1.a.x, 384f, false)), arg_1.b, _wgslsmith_f_op_f32(arg_1.b * 632f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-304f - arg_1.b), arg_1.a.x, 1000f, _wgslsmith_f_op_f32(arg_1.b + 1775f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(626f, arg_1.a.x, arg_1.a.x, 523f), vec4<f32>(arg_1.b, arg_1.a.x, 1258f, arg_1.b))))))));
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(755f, 210f, arg_2.x)) * _wgslsmith_f_op_f32(var_0.a.x * 1000f)));
    return Struct_3(min(abs(~(-vec3<i32>(-23731i, 0i, -11890i))), -abs(vec3<i32>(-21429i, -39855i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(1u, 2813u), _wgslsmith_clamp_u32(~1u, 4294967295u, ~(countOneBits(26340u) << (max(0u, u_input.a) % 32u))), 15744u, 1u);
    let var_1 = func_6(var_0.x, func_1(var_0.x, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(-399f, 717f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1197f * _wgslsmith_div_f32(1498f, -200f)))), select(select(vec3<bool>(true, true, all(vec2<bool>(false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), !vec3<bool>(all(vec2<bool>(false, true)), true, true), false));
    var_0 = vec4<u32>(abs(u_input.a), u_input.b.x, 12862u, var_0.x);
    var_0 = ~vec4<u32>(var_0.x ^ var_0.x, firstTrailingBit(20636u), ~var_0.x, ~_wgslsmith_mod_u32(2508u >> (1u % 32u), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(46192u, 4294967295u, 0u, var_0.x)), vec4<u32>(_wgslsmith_add_u32(abs(0u), 16776u), u_input.c.x | var_0.x, u_input.b.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 357f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-139f)))))));
}

