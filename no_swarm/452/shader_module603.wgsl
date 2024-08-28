struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = -20520i;
    let var_1 = ~vec4<i32>(firstLeadingBit(arg_3.a), ~_wgslsmith_div_i32(u_input.c, -39428i), -u_input.c, u_input.c);
    var var_2 = vec2<bool>(true, all(vec4<bool>(!any(vec3<bool>(false, true, false)), false, false, true)));
    var var_3 = Struct_3(true);
    var var_4 = -abs(abs(vec2<i32>(var_1.x, firstTrailingBit(arg_1.a))));
    return any(!vec2<bool>(all(vec2<bool>(var_3.a, true)), any(select(vec2<bool>(false, false), vec2<bool>(var_2.x, var_3.a), vec2<bool>(true, var_2.x)))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1384f))), 493f, true));
    let var_1 = select(func_3(u_input.b.x, Struct_1(-18646i), 54971u, Struct_1(abs(u_input.a.x))), !(!func_3(_wgslsmith_div_i32(2147483647i, u_input.b.x), Struct_1(u_input.a.x), ~1u, Struct_1(1i))), true);
    let var_2 = !any(select(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, false)), !vec2<bool>(var_1, false), vec2<bool>(false, var_1))) && ((-max(u_input.b.x, u_input.c) == ~u_input.a.x) | (var_1 | !(var_0 == var_0)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0))));
    var var_4 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a);
    return Struct_3(var_1);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> vec2<bool> {
    let var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, (arg_1.a == false) && true, all(!vec2<bool>(true, arg_1.a))), !select(vec3<bool>(true, arg_1.a, true), !vec3<bool>(arg_1.a, arg_1.a, false), select(vec3<bool>(true, arg_1.a, true), vec3<bool>(false, arg_1.a, false), false))));
    let var_1 = ~arg_2;
    var var_2 = select(firstLeadingBit(-(~(-vec2<i32>(u_input.b.x, -2147483647i)))), max(_wgslsmith_mod_vec2_i32(arg_0.zz, arg_0.yy), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, arg_0.x, u_input.a.x), vec4<i32>(34589i, u_input.a.x, 0i, u_input.c)), -6560i << (arg_2 % 32u)))), ~(-(u_input.c & u_input.c)) > -2147483647i);
    var_2 = vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -43411i, var_2.x), 1i);
    var_2 = arg_0.zy;
    return !vec2<bool>(false, !arg_1.a & true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_1(-2147483647i);
    var var_1 = func_4(u_input.b.zzw, func_2(), firstTrailingBit(firstTrailingBit(select(~arg_1.x, abs(arg_1.x), all(vec4<bool>(false, true, false, false))))));
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(7447i), min(2147483647i, -1i), 0i) >> (vec3<u32>(~59989u, 46212u, reverseBits(arg_1.x)) % vec3<u32>(32u)), u_input.b.zyw), Struct_1(var_0.a), (u_input.b.yyx >> (vec3<u32>(~arg_1.x, arg_1.x >> (24130u % 32u), _wgslsmith_sub_u32(arg_1.x, arg_1.x)) % vec3<u32>(32u))) | vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -7703i, var_0.a, u_input.c), u_input.b), -2147483647i, u_input.c), var_0);
    var var_3 = arg_0.x;
    var_3 = -2438f;
    return _wgslsmith_f_op_f32(arg_0.x + arg_0.x);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = firstLeadingBit(0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1904f, 900f, -633f))))) + vec3<f32>(_wgslsmith_f_op_f32(1334f - 1355f), 1318f, 851f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(514f)))))) - -263f);
    var_3 = 1000f;
    return Struct_2(4636i ^ countOneBits(_wgslsmith_mod_i32(u_input.c, u_input.c) ^ ~(-60124i)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~(-17715i)), min(u_input.a | u_input.a, ~u_input.b.wz))), u_input.b.wzx, Struct_1(firstTrailingBit(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~25333u), ~(~vec2<u32>(6130u, ~1u)));
    var var_1 = true;
    let var_2 = 3280i;
    let var_3 = func_5(Struct_3(914f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(137f, -545f, -1000f), vec4<u32>(var_0, 25320u, 12460u, var_0))))));
    var_1 = _wgslsmith_f_op_f32(floor(339f)) != _wgslsmith_div_f32(-2383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f)));
    let var_4 = -abs(~min(select(u_input.b, vec4<i32>(var_3.a, 0i, var_2, var_3.a), true), -u_input.b));
    var var_5 = !select(vec2<bool>(true, true), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var var_6 = -firstTrailingBit(var_4.wz);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(var_0, 14133u), vec2<u32>(var_0, 4294967295u), vec2<bool>(var_5.x, var_5.x)), vec2<u32>(1u, 38427u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-429f - -624f), -691f, _wgslsmith_f_op_f32(trunc(959f)), _wgslsmith_div_f32(-172f, -1484f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 943f, 834f, -659f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1073f)), -339f, -1169f, _wgslsmith_f_op_f32(2450f + 939f)))), vec4<i32>(_wgslsmith_sub_i32(~u_input.c, func_5(Struct_3(var_5.x)).b.a), 1i, ~func_5(Struct_3(false)).a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.a, var_6.x, -1i, 2147483647i), vec4<i32>(-1i, u_input.c, 2147483647i, var_3.a)), -var_2, var_2 >> (var_0 % 32u))) << (~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, 55074u, 1u), vec4<u32>(var_0, var_0, 0u, 0u)) << (abs(vec4<u32>(var_0, var_0, 59872u, 9056u)) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(~(~vec2<u32>(var_0, var_0) | abs(vec2<u32>(var_0, var_0)))));
}

