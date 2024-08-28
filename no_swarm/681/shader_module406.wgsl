struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = Struct_5(Struct_2(arg_0 || !arg_2));
    var_0 = Struct_5(Struct_2(true));
    var_0 = Struct_5(Struct_2(true));
    var_0 = Struct_5(Struct_2(all(select(vec3<bool>(var_0.a.a, arg_0, arg_2), !vec3<bool>(arg_0, false, true), vec3<bool>(true, arg_2, true)))));
    var_0 = Struct_5(Struct_2(true));
    return -114f;
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = vec4<u32>(42074u, var_0, 8313u, u_input.a.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1712f)))))), _wgslsmith_f_op_f32(-2207f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1556f - -1406f), -347f, select(false, true, false)))))), _wgslsmith_f_op_f32(func_3(false, _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-18874i, -1i), -_wgslsmith_mod_i32(1i, 16631i)), false)));
    var var_4 = var_2.x;
    return Struct_1(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(93304u, var_0, var_0), _wgslsmith_div_vec3_u32(u_input.a, u_input.a), any(vec3<bool>(true, true, true))) << (~vec3<u32>(20947u, 0u, var_0) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), ~var_0), firstLeadingBit(var_2.x), 12726u | ~u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(true);
    var_0 = Struct_2(false);
    var var_1 = Struct_2(false);
    var_0 = Struct_2(select(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 44373i, -17423i, -8274i), vec4<i32>(26674i, 0i, 0i, 2147483647i), vec4<bool>(arg_0, var_0.a, true, arg_0)), vec4<i32>(1i, 1i, 1i, 1i)) <= countOneBits(-27909i), false, false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f - 1379f) * _wgslsmith_f_op_f32(floor(105f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-839f, -438f)) * -1366f)), 1414f)));
    return vec3<bool>(!all(select(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(false, var_1.a, true, false), var_1.a), vec4<bool>(false, false, false, true), !vec4<bool>(arg_0, true, var_0.a, var_0.a))), arg_0, var_0.a);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = Struct_4(_wgslsmith_div_u32(27060u, _wgslsmith_div_u32(arg_0, ~(~u_input.a.x))));
    var var_2 = min(select(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 10579u, arg_0), u_input.a), var_1.a), u_input.a.zx, false), _wgslsmith_sub_vec2_u32(~(vec2<u32>(var_1.a, 0u) & vec2<u32>(1u, arg_0)) & firstLeadingBit(vec2<u32>(1u, u_input.a.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0, 1u), _wgslsmith_clamp_vec2_u32(u_input.a.xx, u_input.a.yy, vec2<u32>(arg_0, 1u))), select(countOneBits(vec2<u32>(4294967295u, arg_0)), u_input.a.yx, func_4(true, Struct_1(u_input.a)).x))));
    var var_3 = u_input.a.xy;
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(~var_1.a, ~1u, 52118u) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(24371u, 59867u, 51236u), vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(26867u, u_input.a.x, var_1.a), vec3<u32>(1u, 0u, 4294967295u)))));
    return Struct_3(~var_4.a.x, !(!select(select(vec4<bool>(true, false, arg_1.x, arg_2.a), vec4<bool>(true, false, arg_2.a, true), vec4<bool>(var_0.a, true, arg_1.x, arg_2.a)), vec4<bool>(arg_2.a, true, arg_2.a, true), var_2.x <= var_3.x)), arg_2, Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_4.a, _wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, 4294967295u, 0u), vec3<u32>(22417u, var_2.x, 81679u))), vec3<u32>(1u, 39531u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.x, 53543u, var_2.x), u_input.a)))), Struct_1(~select(~vec3<u32>(var_3.x, var_1.a, 4294967295u), min(vec3<u32>(5491u, 1u, 1u), var_4.a), arg_1.x)));
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 16775u, 1u, u_input.a.x) << ((vec4<u32>(4631u, 4294967295u, 6304u, 35919u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(445u, 1u, 22101u, 1u) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 1u, 14625u, 20703u))), func_4(true, func_2()), Struct_2(all(func_4(false, Struct_1(u_input.a)).yz)));
    let var_1 = abs(~(~func_5(4755u, var_0.b.xzy, Struct_2(false)).d.a.xy)) ^ vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(var_0.a, firstTrailingBit(42815u))), u_input.a.x & 36903u);
    let var_2 = u_input.a.x;
    var_0 = func_5(~1u, select(vec3<bool>(var_0.b.x, (var_0.c.a || var_0.b.x) || all(vec2<bool>(var_0.b.x, var_0.b.x)), var_2 > var_1.x), !var_0.b.zyx, !vec3<bool>(!var_0.b.x, var_0.c.a, all(vec2<bool>(var_0.c.a, var_0.b.x)))), func_5(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.e.a, u_input.a), vec3<u32>(23757u, var_2, 52962u)) ^ 1u, var_0.b.wyy, Struct_2(true)).c);
    var_0 = Struct_3(61941u, !vec4<bool>(var_0.b.x, true, all(var_0.b), -736f >= _wgslsmith_f_op_f32(step(1627f, -1450f))), var_0.c, var_0.d, Struct_1((var_0.d.a << (u_input.a % vec3<u32>(32u))) | ~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)));
    return Struct_4(reverseBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.d.a.yz, u_input.a.xz), vec2<u32>(0u, u_input.a.x))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    var var_0 = max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(5399i, -2147483647i, 2147483647i, 14021i), vec4<i32>(-1i, -8522i, 57856i, 2147483647i)), ~(-50526i)), vec3<i32>(2147483647i, ~(-32627i), max(17544i, -11686i)), vec3<i32>(1i, 1i, -1i)), firstTrailingBit(-max(vec3<i32>(7367i, 11384i, -8685i), vec3<i32>(76168i, 2147483647i, -1i))) & vec3<i32>(1i, 1i, 1i));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1154f))), -286f));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -301f), vec2<f32>(var_2, 1547f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1240f), var_2)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(490f + 1101f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-874f)))), var_0.x <= -var_0.x));
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, 0i), 0i);
    return func_1();
}

fn func_7(arg_0: Struct_4) -> i32 {
    var var_0 = vec4<i32>(~select(16387i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(23216i, -34358i)), any(vec3<bool>(false, false, false))), min(min(select(-35043i, 32794i, true), i32(-1i) * -7416i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39062i, 2994i, 23015i, 37890i), vec4<i32>(0i, 60605i, 0i, 0i)))), _wgslsmith_add_i32(~99796i, -(~(-865i))), _wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(0i, 49963i)), ~1i)) & abs(~(~(vec4<i32>(32196i, -2147483647i, -1i, 52361i) << (vec4<u32>(u_input.a.x, 15226u, 30653u, u_input.a.x) % vec4<u32>(32u)))));
    var_0 = vec4<i32>(var_0.x, _wgslsmith_div_i32(reverseBits(-11479i), ~(~var_0.x)), var_0.x, -48752i);
    var_0 = -vec4<i32>(firstTrailingBit(2147483647i), -12292i, var_0.x, var_0.x);
    var_0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -24725i, var_0.x), -vec4<i32>(2147483647i, -2147483647i, -43028i, -29815i)) << (u_input.a.x % 32u), _wgslsmith_sub_i32(-1i, var_0.x), -(-2147483647i & _wgslsmith_mult_i32(var_0.x, var_0.x)), min(26755i, reverseBits(var_0.x) ^ _wgslsmith_clamp_i32(-2147483647i, var_0.x, var_0.x)));
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_mod_i32(var_0.x, -2147483647i) << (reverseBits(4294967295u) % 32u), -19919i), -var_0.xyw), -var_0.xxy);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a);
    let var_1 = func_7(func_6(Struct_4(firstTrailingBit(~4294967295u)), func_1()));
    let var_2 = ~(~abs(2147483647i));
    var_0 = func_5(42978u, func_5(110565u, !(!func_5(u_input.a.x, vec3<bool>(true, false, true), Struct_2(false)).b.zzy), Struct_2(!all(vec3<bool>(true, true, false)))).b.wxz, Struct_2(!func_5(~u_input.a.x, func_4(true, Struct_1(vec3<u32>(u_input.a.x, 30494u, var_0.a.x))), Struct_2(false)).c.a)).e;
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, abs(vec2<i32>(func_7(Struct_4(1u)) >> (abs(0u) % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, var_2, -29411i)), select(vec3<i32>(var_1, var_2, var_1), vec3<i32>(31285i, var_1, var_2), true)))));
}

