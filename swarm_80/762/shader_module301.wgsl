struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_2(Struct_1(~min(~u_input.b.yw, u_input.b.yy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(852f, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(-617f, -838f, -818f, -2838f)), vec4<f32>(-392f, arg_1.x, arg_1.x, arg_1.x))), min(~1u, 86639u), arg_0.a.x), Struct_1(_wgslsmith_mult_vec2_i32(~u_input.b.yw, firstTrailingBit(vec2<i32>(9094i, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -1727f), any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - -931f)), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1380f, -453f)))), ~_wgslsmith_div_u32(5885u, 11018u), (14391u >> (u_input.a.x % 32u)) & (~arg_0.a.x | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    var_0 = Struct_2(Struct_1(vec2<i32>(u_input.b.x, var_0.a.a.x) ^ ~vec2<i32>(u_input.b.x, u_input.b.x), vec4<f32>(-332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1660f * arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * 679f)), arg_1.x), (~18356u << ((arg_0.a.x >> (arg_0.a.x % 32u)) % 32u)) | reverseBits(firstLeadingBit(arg_0.a.x)), min(_wgslsmith_clamp_u32(max(u_input.c, arg_0.a.x), arg_0.a.x, abs(4294967295u)), var_0.b.d)), Struct_1(select(_wgslsmith_mult_vec2_i32(vec2<i32>(19761i, var_0.b.a.x), var_0.a.a) ^ u_input.b.ww, abs(vec2<i32>(-2147483647i, 39080i)) & -var_0.a.a, select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), var_0.b.b, _wgslsmith_mod_u32(arg_0.a.x, u_input.a.x) | firstTrailingBit(_wgslsmith_mod_u32(0u, 28100u)), 49738u));
    var var_1 = vec4<bool>(select(any(vec2<bool>(true, true)) || true, !(_wgslsmith_mult_u32(arg_0.a.x, u_input.a.x) == ~var_0.b.d), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true))), !(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))), true);
    var_0 = Struct_2(Struct_1(~(u_input.b.xy << (firstLeadingBit(vec2<u32>(arg_0.a.x, u_input.c)) % vec2<u32>(32u))), var_0.b.b, firstTrailingBit(u_input.a.x), select(23296u << (arg_0.a.x % 32u), ~arg_0.a.x, var_1.x) >> (reverseBits(0u) % 32u)), var_0.b);
    var var_2 = !(!(!select(vec4<bool>(var_1.x, true, var_1.x, false), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), vec4<bool>(true, var_1.x, false, var_1.x))));
    return _wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(58672i, var_0.a.a.x))), ~var_0.a.a) << (4294967295u % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.b.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), 985f);
    let var_2 = u_input.b.wz;
    let var_3 = Struct_2(Struct_1(vec2<i32>(-_wgslsmith_mod_i32(var_2.x, -21105i), 40345i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, 181f, var_1.x, var_1.x)), u_input.a.x == firstTrailingBit(u_input.a.x))), u_input.a.x, 14317u), Struct_1(vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x), ~var_2.x), vec4<f32>(var_1.x, _wgslsmith_div_f32(789f, _wgslsmith_f_op_f32(-158f * var_1.x)), 994f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.x))))), ~35108u, firstLeadingBit(~select(u_input.a.x, 32957u, true))));
    let var_4 = Struct_4(var_3, vec4<i32>(var_0 | _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_3.a.a.x, var_3.b.a.x), firstTrailingBit(-12857i), _wgslsmith_dot_vec3_i32(u_input.b.zxw, vec3<i32>(18999i, -1i, var_0))), _wgslsmith_mod_i32(reverseBits(abs(1i)), 42168i), -_wgslsmith_sub_i32(i32(-1i) * -1i, -1i), -var_3.b.a.x), _wgslsmith_div_i32(-max(var_3.a.a.x, ~(-2147483647i)), -_wgslsmith_sub_i32(func_3(Struct_3(u_input.a.zzx), vec2<f32>(1139f, -351f)), -2147483647i)));
    return Struct_1(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_3.a.a.x, -32284i), vec2<i32>(1i, -9059i) << (vec2<u32>(var_4.a.b.d, u_input.c) % vec2<u32>(32u)), reverseBits(var_3.a.a | vec2<i32>(2147483647i, var_3.b.a.x))), var_4.a.b.b, ~(~(~1u)), ~4294967295u);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(var_0.b.x * 1093f);
    var var_2 = u_input.a.x;
    var_2 = 4294967295u;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(589f)) * _wgslsmith_f_op_f32(-2451f * var_0.b.x)))));
    return Struct_2(Struct_1((_wgslsmith_sub_vec2_i32(vec2<i32>(-551i, u_input.b.x), vec2<i32>(var_0.a.x, 4988i)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(64694u, var_0.d), u_input.a.xw) % vec2<u32>(32u))) << (~(u_input.a.yw | u_input.a.zx) % vec2<u32>(32u)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-537f, var_0.b.x)) - _wgslsmith_div_f32(508f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) - func_2().b.x), -1070f), var_0.d, ~var_0.c), Struct_1(vec2<i32>(max(u_input.b.x, 32990i) ^ _wgslsmith_sub_i32(1i, u_input.b.x), 1i ^ -var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, 1261f, 912f, var_0.b.x))))), max(_wgslsmith_add_u32(0u, reverseBits(arg_0)), 55226u), arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_4(Struct_2(Struct_1(vec2<i32>(-9513i, 41572i), vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-135f * 403f), arg_3.a.b.x, arg_0.a.b.x), u_input.a.x, reverseBits(u_input.c)), func_2()), u_input.b, -32389i);
    var var_1 = func_1(~(~(u_input.c | 0u)) >> (_wgslsmith_mod_u32(30568u, 1u) % 32u));
    var_1 = Struct_2(var_0.a.a, Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(20969i, arg_3.b.a.x)), firstTrailingBit(func_3(Struct_3(u_input.a.yyx), arg_0.a.b.yy))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_3.a.b * arg_0.b.b))), ~var_1.a.d, abs(min(4294967295u, 61534u)) | (1u << ((arg_1.c >> (u_input.c % 32u)) % 32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b.ywy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.b.x, arg_3.b.b.x, 355f) + _wgslsmith_f_op_vec3_f32(arg_1.b.yxy - var_1.b.b.xxy)) + _wgslsmith_f_op_vec3_f32(select(var_0.a.a.b.zyw, vec3<f32>(var_1.a.b.x, var_0.a.a.b.x, 447f), true)))));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, select(u_input.b.x, u_input.b.x, false), 1i >> (u_input.a.x % 32u), abs(-2147483647i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(7349i, u_input.b.x, 14703i, -19056i)), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.b.x, -26631i, u_input.b.x)))), u_input.b), 0i);
    let var_1 = Struct_5(1597f, !(!select(true, true, true)), Struct_4(Struct_2(Struct_1(u_input.b.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1310f, -1114f, -2046f, -1570f)), 11255u, ~3128u), Struct_1(vec2<i32>(52415i, -49337i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2675f, -301f, 160f, -984f)), ~u_input.a.x, ~0u)), u_input.b, -(0i >> (1u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.c.a.a.b.x + -426f))));
    let var_3 = false;
    var_0 = abs(-vec2<i32>(0i, _wgslsmith_mod_i32(var_0.x, u_input.b.x)));
    let var_4 = var_2;
    var_0 = abs(vec2<i32>(var_1.c.b.x, reverseBits(-1i)));
    let var_5 = Struct_2(Struct_1(-vec2<i32>(-var_0.x, 45387i), _wgslsmith_f_op_vec4_f32(-var_1.c.a.b.b), 1u, abs(abs(max(88587u, 1u)))), var_1.c.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~var_1.c.a.b.d)), vec3<u32>(func_4(var_5, var_1.c.a.b, -(~(-59475i)), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(37147u, 0u, var_1.c.a.b.d, 0u), vec4<u32>(var_1.c.a.a.d, 21211u, var_1.c.a.a.c, 26747u)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 27158u, 0u, 1u), ~vec4<u32>(33962u, 0u, u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(44224u, var_1.c.a.b.c, 73789u, 74350u), u_input.a, var_1.b), reverseBits(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 0u)))), vec2<f32>(-930f, func_1(u_input.c).a.b.x), countOneBits(_wgslsmith_mult_vec2_i32(var_5.a.a, ~(vec2<i32>(var_0.x, var_5.b.a.x) | var_1.c.b.zz))));
}

