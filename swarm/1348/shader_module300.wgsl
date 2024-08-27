struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    global0 = ~u_input.b;
    global0 = _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i ^ arg_0, -u_input.d.x, abs(u_input.d.x), arg_0), u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~10052i, -2147483647i, abs(u_input.b.x), -188i), u_input.b)));
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -303f, -229f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, -1000f, 427f)))))))));
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(-var_0.xx), Struct_1(arg_2.a, vec2<u32>(18347u, _wgslsmith_div_u32(4294967295u, 4294967295u)), arg_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(var_0.x * var_0.x))), vec4<i32>(arg_0, 0i, 17798i, -2147483647i) ^ abs(vec4<i32>(-1738i, u_input.a.x, u_input.d.x, arg_0)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_div_vec2_u32(max(_wgslsmith_div_vec2_u32(vec2<u32>(23416u, 40067u), vec2<u32>(4294967295u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(37525u, 14032u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-937f)) - arg_2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(727f, var_0.x)))), (-vec4<i32>(u_input.b.x, arg_0, 0i, global0.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | ~abs(vec4<i32>(38123i, 0i, 7594i, 0i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2639f * _wgslsmith_f_op_f32(select(var_0.x, 1000f, true))), arg_1.a, _wgslsmith_f_op_f32(floor(-2117f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(401f, 2141f, -204f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(671f, var_0.x, arg_1.a), vec3<f32>(1119f, -1209f, -877f), false))))), ~firstLeadingBit(1u), u_input.b);
    let var_2 = vec2<i32>(-2147483647i, ~abs(global0.x));
    return vec2<u32>(26002u, _wgslsmith_clamp_u32(~(~0u), ~var_1.a.b.b.x, abs(28905u)));
}

fn func_2() -> Struct_5 {
    global0 = u_input.b;
    var var_0 = Struct_5(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1604f)) - _wgslsmith_f_op_f32(min(-969f, -261f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f))), Struct_1(-1390f, func_3(-37223i, Struct_2(1000f), Struct_2(234f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1391f))), 853f, u_input.b)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-288f, 258f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1113f)))), ~(vec2<u32>(1u, 1u) | select(vec2<u32>(1u, 0u), vec2<u32>(4686u, 48123u), vec2<bool>(true, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(118f, -366f) + _wgslsmith_f_op_f32(trunc(363f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1876f))))), u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f + -2755f) - -1569f), -732f, 505f)), _wgslsmith_dot_vec2_u32(vec2<u32>(~21542u, ~_wgslsmith_clamp_u32(18536u, 0u, 1u)), ~abs(vec2<u32>(1u, 1u))), u_input.b);
    let var_1 = Struct_4(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a.x), var_0.a.a.x)))), Struct_1(var_0.a.b.c, ~(~var_0.a.b.b), var_0.b.c, _wgslsmith_f_op_f32(-var_0.a.b.c), u_input.b));
    let var_2 = (global0.xz << (~var_0.b.b % vec2<u32>(32u))) >> ((~_wgslsmith_add_vec2_u32(var_1.b.b, var_0.b.b ^ vec2<u32>(32773u, 1u)) << (var_0.a.b.b % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = vec4<u32>(countOneBits(var_1.b.b.x), 20702u, firstLeadingBit(4294967295u), ~(~var_0.d));
    return Struct_5(var_0.a, Struct_1(125f, ~select(vec2<u32>(4294967295u, var_0.b.b.x), var_1.b.b, false) ^ ~vec2<u32>(var_1.b.b.x, var_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-198f, -206f)) + _wgslsmith_f_op_f32(var_1.b.d * var_0.c.x))), 1560f, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) - var_0.c), var_0.a.b.b.x, vec4<i32>(-2147483647i, _wgslsmith_mult_i32(8298i, _wgslsmith_mod_i32(var_1.b.e.x, 1i)), abs(-_wgslsmith_mod_i32(u_input.c, -2147483647i)), _wgslsmith_sub_i32(firstTrailingBit(min(var_1.b.e.x, var_0.b.e.x)), select(countOneBits(var_2.x), select(-2147483647i, 0i, false), true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = vec2<i32>(1i, -(_wgslsmith_clamp_i32(~(-2147483647i), u_input.c, ~1i) | arg_1.b.e.x));
    global0 = ~abs(vec4<i32>(firstLeadingBit(arg_0.a.x), var_0.x, _wgslsmith_mod_i32(1i, firstLeadingBit(-1i)), _wgslsmith_sub_i32(1i, 0i)));
    global0 = reverseBits(u_input.b);
    global0 = (arg_1.b.e & (_wgslsmith_clamp_vec4_i32(u_input.b, -u_input.b, arg_0.a) & vec4<i32>(arg_0.a.x, arg_1.b.e.x, _wgslsmith_dot_vec3_i32(arg_1.a.b.e.wxz, u_input.a), arg_0.a.x))) & vec4<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), 0i), i32(-1i) * -1i, i32(-1i) * -1i, 0i);
    var_0 = vec2<i32>(_wgslsmith_add_i32(~u_input.d.x, arg_1.a.b.e.x), ~_wgslsmith_dot_vec4_i32(arg_0.a >> (vec4<u32>(1u, arg_1.d, arg_1.b.b.x, arg_1.a.b.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(arg_0.a, u_input.b))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-54483i), 34324i), ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(21079i, global0.x), vec2<i32>(u_input.d.x, -11060i), vec2<i32>(arg_0.a.x, 2147483647i))));
    return func_2().a;
}

fn func_1() -> i32 {
    let var_0 = func_4(Struct_3(~vec4<i32>(~global0.x, ~0i, reverseBits(0i), -1i)), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1300f, -999f, true)))), func_2().a.b.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2250f - 694f), _wgslsmith_f_op_f32(-797f + 1991f))), _wgslsmith_f_op_f32(-429f - -1000f))));
    let var_1 = var_0.b;
    let var_2 = var_0.b.b;
    return var_0.b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-(~_wgslsmith_sub_i32(-1225i, -1i)), u_input.c, _wgslsmith_add_i32(global0.x, global0.x) ^ -14750i, 0i);
    global0 = vec4<i32>(-1i, func_1(), -_wgslsmith_mod_i32(firstLeadingBit(global0.x), -2147483647i), max(-3754i, 0i));
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -_wgslsmith_clamp_i32(u_input.b.x, global0.x, global0.x), _wgslsmith_mult_i32(u_input.e, min(u_input.e, -33896i)) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(16272i, u_input.b.x, u_input.c), global0.zzx), -(~global0.x) << (_wgslsmith_add_u32(~63400u, 1u) % 32u)), u_input.b);
    let var_0 = 9174i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1u));
}

