struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -abs(23914i)), reverseBits(abs(-1i) << (u_input.c.x % 32u))), u_input.a, true);
    let var_1 = _wgslsmith_f_op_f32(sign(1f));
    return 5043u & min(u_input.b, _wgslsmith_div_u32(1u, u_input.b));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = 1u;
    var_0 = _wgslsmith_div_u32(4294967295u, 14057u);
    let var_1 = vec2<u32>(1u, u_input.c.x);
    var_0 = 1u;
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, u_input.c.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(26311u, 4294967295u, 1u), vec3<u32>(u_input.c.x, 85536u, var_1.x)))), vec3<u32>(~19667u, func_3(~2147483647i), 1u), reverseBits(~(~vec3<u32>(var_1.x, u_input.b, var_1.x)))), Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1023f, -1004f, 1539f, -907f), vec4<f32>(-1276f, arg_0.x, -288f, 965f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-212f, 1349f, -487f, -1786f), vec4<f32>(227f, -760f, arg_0.x, 159f), true))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, 765f, -465f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, arg_0.x, 1050f, arg_0.x)))), vec3<u32>(~abs(86138u), var_1.x, u_input.c.x << (~var_1.x % 32u)), ~firstTrailingBit(~2147483647i), ~(-(~vec4<i32>(-23735i, -23753i, 1i, u_input.a)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))))), -2147483647i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.b.x) - 117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(exp2(arg_0.x))))) > _wgslsmith_f_op_f32(-var_2.b.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: vec4<u32>) -> u32 {
    var var_0 = abs(u_input.c);
    let var_1 = u_input.a;
    var var_2 = 0u;
    var var_3 = vec4<i32>(-2147483647i, -abs(315i), ~min(firstTrailingBit(var_1), 27963i), arg_2.c.d);
    return u_input.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(arg_2.a, vec3<u32>(arg_2.b.c.x, ~arg_2.b.c.x, 0u)), arg_2.b, !arg_2.c, 43065i);
    var var_2 = var_1.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.b.a, _wgslsmith_f_op_vec3_f32(sign(arg_2.b.b.xxz)), vec3<bool>(var_0, false, false))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.b.a, vec3<f32>(arg_2.b.a.x, -683f, var_2.b.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, var_1.b.a.x, arg_2.b.b.x))))), vec4<f32>(_wgslsmith_div_f32(-1000f, var_1.b.a.x), var_2.b.x, _wgslsmith_f_op_f32(-var_1.b.a.x), arg_2.b.b.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 15712u) << (vec2<u32>(var_2.c.x, u_input.c.x) % vec2<u32>(32u)), firstTrailingBit(abs(vec2<u32>(arg_1, arg_1)))), 3206u, func_4(false, vec4<bool>(func_2(var_1.b.a), true, select(false, var_0, var_1.c.x), true), Struct_5(_wgslsmith_f_op_f32(min(1000f, 1388f)), Struct_4(vec4<u32>(var_2.c.x, var_1.b.c.x, u_input.c.x, var_1.a.x)), Struct_2(vec3<u32>(var_2.c.x, var_1.b.c.x, 1u), var_1.b, vec2<bool>(arg_2.c.x, arg_2.c.x), -375i)), vec4<u32>(var_1.a.x, 0u, 1u, ~0u))), _wgslsmith_mult_i32(u_input.a, abs(~(-35484i)) ^ min(-1i, -var_2.d)), reverseBits(vec4<i32>(min(select(0i, 9756i, var_1.c.x), u_input.a), arg_0.x, -u_input.a, ~(~arg_2.b.e.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = !select(select(!select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), vec4<bool>(arg_1.c.x, true, false, true), vec4<bool>(true, arg_1.c.x, false, arg_1.c.x)), select(select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), vec4<bool>(false, arg_1.c.x, false, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), true), true | arg_1.c.x), !select(!vec4<bool>(arg_1.c.x, true, false, arg_1.c.x), !vec4<bool>(false, arg_1.c.x, true, true), select(vec4<bool>(arg_1.c.x, true, arg_1.c.x, false), vec4<bool>(arg_1.c.x, arg_1.c.x, false, true), true)), false & arg_1.c.x);
    var var_1 = 0i;
    let var_2 = vec4<i32>(min(arg_1.d, -42729i), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(2147483647i << (arg_3.a.x % 32u), arg_0.e.x), _wgslsmith_mult_i32(-19372i, arg_0.e.x ^ arg_1.d)), ~(~(-43354i)), arg_0.e.x);
    var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-126f)))) == _wgslsmith_f_op_f32(abs(-235f))), !(any(vec4<bool>(false, true, var_0.x, arg_1.c.x)) || true) & false, false);
    var var_3 = ~_wgslsmith_add_u32(~u_input.c.x, ~_wgslsmith_mult_u32(4294967295u, 1u)) != ~(~_wgslsmith_mult_u32(5233u, arg_0.c.x));
    return var_0.xy;
}

fn func_6(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 16438u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 8174u, 20146u), vec4<u32>(u_input.b, 45887u, 33602u, u_input.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 25362u, u_input.b, u_input.c.x), vec4<u32>(24048u, 1u, 106658u, u_input.b)) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, u_input.b, 4294967295u, 12762u), _wgslsmith_mult_vec4_u32(vec4<u32>(28252u, 26906u, 39662u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 3370u)))), vec4<u32>(1u, max(countOneBits(u_input.b), ~u_input.b), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~69971u, 1u), firstLeadingBit(~vec2<u32>(u_input.c.x, 4294967295u)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-112f, 503f, -455f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-586f, -666f, 1869f), vec3<f32>(607f, -273f, 2255f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, -617f, 1198f, 708f)), vec4<f32>(281f, 603f, 1000f, 524f))), _wgslsmith_sub_vec3_u32((var_0.wzy << (var_0.wyy % vec3<u32>(32u))) >> (var_0.zzy % vec3<u32>(32u)), var_0.xyy), max(countOneBits(u_input.a), max(0i, 0i ^ u_input.a)), -vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -2147483647i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-21380i, u_input.a, u_input.a), vec3<i32>(u_input.a, 22683i, -20671i)))));
    let var_2 = reverseBits(var_1.a.e);
    var var_3 = vec3<i32>(-(~1i), -1i, ~abs(max(var_1.a.e.x, 0i)));
    var_0 = countOneBits(_wgslsmith_sub_vec4_u32(~(vec4<u32>(31589u, 13035u, var_1.a.c.x, var_1.a.c.x) | vec4<u32>(4294967295u, 4294967295u, 40457u, var_0.x)) << (~vec4<u32>(4294967295u, var_1.a.c.x, 5343u, 6571u) % vec4<u32>(32u)), ~(~vec4<u32>(var_0.x, u_input.b, 1u, u_input.c.x) << (vec4<u32>(8675u, 79805u, u_input.b, 0u) % vec4<u32>(32u)))));
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true), true);
    var var_1 = false;
    var var_2 = func_6(any(func_5(func_1(~vec3<i32>(u_input.a, 11401i, 0i), 1531u, Struct_2(vec3<u32>(u_input.b, 23139u, u_input.b), Struct_1(vec3<f32>(-200f, 272f, 831f), vec4<f32>(1546f, -277f, 716f, -265f), vec3<u32>(u_input.b, u_input.b, 0u), u_input.a, vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), var_0.xx, u_input.a)), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.b, 0u)), func_1(vec3<i32>(0i, u_input.a, -44488i), u_input.c.x, Struct_2(vec3<u32>(u_input.c.x, 1u, u_input.b), Struct_1(vec3<f32>(-1000f, 948f, -1016f), vec4<f32>(2022f, 1427f, 2553f, 140f), vec3<u32>(u_input.c.x, u_input.b, 93089u), u_input.a, vec4<i32>(u_input.a, 2147483647i, -8911i, u_input.a)), vec2<bool>(false, true), u_input.a)), select(var_0.yx, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true)), 17542i | u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f * -757f) - 1131f), Struct_4(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.c.x)))));
    var_1 = any(var_0);
    let var_3 = Struct_5(var_2.a.a.x, Struct_4(_wgslsmith_div_vec4_u32(min(firstLeadingBit(vec4<u32>(u_input.c.x, var_2.a.c.x, 0u, 1u)), vec4<u32>(0u, u_input.b, 0u, u_input.b)), abs(max(vec4<u32>(u_input.b, var_2.a.c.x, var_2.a.c.x, u_input.b), vec4<u32>(u_input.b, 75848u, 16960u, var_2.a.c.x))))), Struct_2(var_2.a.c, Struct_1(var_2.a.a, _wgslsmith_div_vec4_f32(var_2.a.b, _wgslsmith_f_op_vec4_f32(floor(var_2.a.b))), var_2.a.c, -14374i, ~var_2.a.e), select(select(var_0.zz, vec2<bool>(var_0.x, false), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x)), vec2<bool>(func_5(Struct_1(var_2.a.a, vec4<f32>(-458f, -751f, var_2.a.b.x, var_2.a.b.x), vec3<u32>(1u, u_input.c.x, 22044u), 0i, var_2.a.e), Struct_2(vec3<u32>(u_input.b, 4294967295u, 79540u), Struct_1(var_2.a.a, var_2.a.b, var_2.a.c, -6547i, vec4<i32>(-1i, var_2.a.d, u_input.a, var_2.a.e.x)), vec2<bool>(var_0.x, var_0.x), 0i), 1266f, Struct_4(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 0u))).x, true), true), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.xy);
}

