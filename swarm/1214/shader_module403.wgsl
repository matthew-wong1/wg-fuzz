struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    return ~593i;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_f32(-1856f, -690f);
    let var_1 = Struct_2(Struct_1(u_input.a.xxx, func_3(Struct_4(var_0, Struct_1(u_input.a.xww, -49755i, 26342u, 40153u)), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 0u), -1i, 17096u, u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(181f, -902f), vec2<f32>(641f, var_0)), _wgslsmith_div_u32(4294967295u, u_input.a.x)) | _wgslsmith_sub_i32(i32(-1i) * -13145i, abs(2147483647i)), abs(~u_input.a.x) >> (~0u % 32u), ~countOneBits(firstLeadingBit(u_input.a.x))), _wgslsmith_div_u32(~u_input.a.x, ~abs(76571u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u >> (1u % 32u), firstTrailingBit(u_input.a.x), ~62030u, _wgslsmith_dot_vec2_u32(vec2<u32>(67374u, u_input.a.x), vec2<u32>(1u, u_input.a.x))), vec4<u32>(countOneBits(u_input.a.x), 4294967295u, 1u, u_input.a.x)));
    let var_2 = var_1.a;
    let var_3 = Struct_2(var_2, 22047u);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1536f), Struct_1(vec3<u32>(var_3.a.c, _wgslsmith_div_u32(var_1.b | u_input.a.x, 20506u ^ var_1.a.c), ~var_3.b), -(_wgslsmith_div_i32(var_1.a.b, 0i) ^ 0i), ~(~countOneBits(16825u)), ~min(select(4294967295u, 0u, false), u_input.a.x)));
    return _wgslsmith_div_i32(-1i, i32(-1i) * -_wgslsmith_div_i32(-9485i, abs(var_1.a.b)));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(arg_0.a, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.b, -20822i, -53790i, 5895i)), reverseBits(vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 40698i))), ~_wgslsmith_sub_u32(arg_0.d, 63301u), _wgslsmith_mod_u32(1u, arg_0.d)), 14132u);
    var var_1 = -10065i;
    let var_2 = select(vec3<i32>(func_3(Struct_4(-983f, Struct_1(var_0.a.a, arg_0.b, var_0.b, 18013u)), Struct_1(vec3<u32>(u_input.a.x, var_0.a.c, 32473u), var_0.a.b, 94849u, arg_0.d), vec2<f32>(-2128f, -680f), arg_0.d & 4294967295u), select(_wgslsmith_add_i32(var_0.a.b, var_0.a.b), arg_0.b, any(vec2<bool>(false, false))), arg_0.b), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-18794i, -1i, 1i), ~vec3<i32>(arg_0.b, -3531i, arg_0.b)), abs(-vec3<i32>(-2147483647i, -14251i, var_0.a.b))), true) ^ -select(~firstLeadingBit(vec3<i32>(arg_0.b, 50680i, -1i)), vec3<i32>(-1i) * -vec3<i32>(17904i, 46574i, 2147483647i), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false));
    var_0 = Struct_2(Struct_1(vec3<u32>(~u_input.a.x, 0u, 4294967295u), var_2.x, ~22190u, _wgslsmith_mult_u32(53029u, arg_0.d)), 1u);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-433f, 2136f)))));
    return !(!all(vec2<bool>(true, true))) && select(all(vec3<bool>(true, true, true)), true, !any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(any(vec4<bool>(true, true, true, true)), func_4(Struct_1(~u_input.a.yyx, func_2(), ~13900u, u_input.a.x ^ 15983u)) | true);
    var var_1 = Struct_1(reverseBits(countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40747u), vec4<u32>(0u, 1u, 77771u, u_input.a.x)), 95537u, ~u_input.a.x))), reverseBits(1i), 0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a >> ((vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x) << (~u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = Struct_2(Struct_1(u_input.a.yzz, 1i | var_1.b, firstLeadingBit(var_1.a.x) << (~_wgslsmith_mod_u32(73948u, var_1.d) % 32u), countOneBits(abs(u_input.a.x)) | _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(1u))), 1u);
    var_1 = var_2.a;
    var var_3 = -1296f;
    return Struct_1(abs(vec3<u32>(_wgslsmith_div_u32(20806u, 58894u), abs(u_input.a.x), var_2.b) << ((vec3<u32>(7314u, var_1.a.x, u_input.a.x) << (var_1.a % vec3<u32>(32u))) % vec3<u32>(32u))), var_2.a.b, var_1.c, 0u);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(12969u, _wgslsmith_add_u32(0u, 1u), arg_0.a.c), u_input.a.zxy));
    let var_1 = ~_wgslsmith_sub_vec4_u32(~(~u_input.a) << (max(~vec4<u32>(4294967295u, 4294967295u, arg_0.a.d, 47158u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, arg_0.a.c, var_0, 1u), vec4<u32>(arg_0.a.c, 4294967295u, 0u, 105934u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.a, (u_input.a | u_input.a) >> (~vec4<u32>(var_0, 0u, 65694u, 1u) % vec4<u32>(32u))));
    var var_2 = ~48496u;
    var var_3 = _wgslsmith_div_vec2_u32(~max(vec2<u32>(var_1.x, var_1.x) >> ((vec2<u32>(12251u, var_1.x) & vec2<u32>(64465u, u_input.a.x)) % vec2<u32>(32u)), var_1.zz), vec2<u32>(func_1().a.x, _wgslsmith_div_u32(1u, arg_0.a.d ^ u_input.a.x) & 5242u));
    var_3 = countOneBits(func_1().a.yy ^ _wgslsmith_div_vec2_u32(vec2<u32>(1u, min(14717u, 0u)), u_input.a.wy));
    return Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.x, arg_0.b, 5610u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, var_1.x), vec3<u32>(25830u, 23368u, u_input.a.x), arg_0.a.a)) & vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(var_1.zz, arg_0.a.a.xx), 31554u), ~(~select(arg_0.a.a, var_1.yyz, true))), ~1i, ~10816u, ~abs(~var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(func_1(), 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f - -1293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) * 1f))));
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_div_i32(~var_0.b, ~(-35391i)), -var_0.b) <= _wgslsmith_clamp_i32(var_0.b, _wgslsmith_mult_i32(var_0.b, 1i), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.b), vec2<i32>(var_0.b, 0i)), ~countOneBits(vec2<i32>(var_0.b, -31816i))));
    let var_2 = var_0.a.x;
    var_0 = func_5(Struct_2(Struct_1(~u_input.a.yxy, -7884i, ~var_0.c, _wgslsmith_clamp_u32(1u, 69476u, 44971u)), u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(134f * 155f), 1672f, _wgslsmith_f_op_f32(sign(752f)), 1292f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1581f, 205f, 683f, 939f), vec4<f32>(1000f, 451f, 677f, 1000f), vec4<bool>(var_1, false, var_1, false))))))));
    var var_3 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_add_u32(var_0.a.x, reverseBits(72390u)), _wgslsmith_dot_vec3_u32(vec3<u32>(32914u, 4294967295u, var_0.a.x), var_0.a), _wgslsmith_sub_u32(4294967295u, abs(4294967295u))), -_wgslsmith_div_i32(-8066i, var_0.b), 52930u, firstTrailingBit(1u)));
    var_3 = Struct_3(Struct_1(vec3<u32>(var_3.a.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(3938u, 1u, 4294967295u), vec3<u32>(var_3.a.d, var_0.a.x, 1u)), 29377u), var_0.b, var_0.d, countOneBits(var_0.c)));
    let var_4 = _wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1678f, 218f)), -791f))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, (var_0.d >> (_wgslsmith_add_u32(firstTrailingBit(var_3.a.c), _wgslsmith_div_u32(u_input.a.x, 66512u)) % 32u)) << (var_0.d % 32u), ~vec4<u32>(39127u >> (var_3.a.a.x % 32u), firstLeadingBit(1u), u_input.a.x, _wgslsmith_add_u32(var_0.c, var_0.a.x) << (_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x) % 32u)));
}

