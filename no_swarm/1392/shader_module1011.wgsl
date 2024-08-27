struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(true, ~_wgslsmith_mod_vec2_u32(~(~u_input.a), vec2<u32>(u_input.a.x, ~u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-7472i, 6729i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-31069i, 65753i, -43280i), vec3<i32>(1i, 0i, 18767i))), -_wgslsmith_mult_i32(1i, 15813i)) >> (~vec2<u32>(u_input.a.x, ~u_input.a.x) % vec2<u32>(32u)));
    var var_1 = select(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(-68652i, 0i), max(25848i, -2147483647i)), vec2<i32>(reverseBits(var_0.c.x), var_0.c.x) << (_wgslsmith_add_vec2_u32(~var_0.b, u_input.a >> (var_0.b % vec2<u32>(32u))) % vec2<u32>(32u))), min(-(~var_0.c.x), _wgslsmith_sub_i32(~var_0.c.x << (4294967295u % 32u), 26627i)), var_0.a);
    let var_2 = Struct_2(Struct_1(var_0.a, u_input.a, var_0.c), max((vec2<u32>(1u, 0u) >> (min(var_0.b, u_input.a) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(u_input.a ^ var_0.b, firstTrailingBit(var_0.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.x, 8847u), vec2<u32>(41264u, 0u), vec2<u32>(1u, var_0.b.x)), ~vec2<u32>(var_0.b.x, 5326u)), abs(reverseBits(var_0.b)))), Struct_1(abs(5202i) < firstTrailingBit(var_0.c.x), vec2<u32>(var_0.b.x, 1u), -vec2<i32>(7565i, min(var_0.c.x, var_0.c.x))), ~(~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), 50585u, 22941u)), Struct_1(var_0.a, u_input.a, vec2<i32>(-1i, -2147483647i)));
    let var_3 = ~(~(~vec3<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(var_0.b.x, var_2.e.b.x), max(4294967295u, u_input.a.x))));
    let var_4 = true;
    return select(vec3<bool>(true, var_2.e.a, (!var_4 & all(vec4<bool>(false, false, true, false))) | false), !(!select(vec3<bool>(var_4, var_4, false), select(vec3<bool>(var_0.a, var_2.c.a, var_2.c.a), vec3<bool>(true, false, var_4), vec3<bool>(var_2.e.a, var_4, true)), true)), !all(vec3<bool>(var_2.c.a, select(var_0.a, true, var_0.a), false)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    return select(vec4<bool>(any(func_3()), select(arg_1.a.a, all(!vec3<bool>(true, arg_3.x, true)), true), false, any(select(select(vec4<bool>(arg_1.e.a, arg_2.a, false, arg_0), vec4<bool>(false, arg_2.a, true, arg_0), true), !vec4<bool>(false, false, arg_2.a, false), vec4<bool>(arg_3.x, arg_1.e.a, true, arg_2.a)))), select(select(!select(vec4<bool>(arg_1.a.a, true, true, false), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, arg_1.e.a, true, true)), !select(vec4<bool>(true, false, arg_2.a, false), vec4<bool>(arg_3.x, true, true, arg_2.a), false), arg_2.a), select(select(vec4<bool>(true, arg_0, true, true), !vec4<bool>(arg_1.c.a, true, true, true), false), select(!vec4<bool>(false, arg_0, arg_1.c.a, true), vec4<bool>(arg_2.a, arg_0, true, arg_0), !vec4<bool>(arg_3.x, arg_1.c.a, false, true)), !vec4<bool>(false, false, arg_1.c.a, false)), arg_3.x), !(!vec4<bool>(4294967295u >= u_input.a.x, true, true, arg_0)));
}

fn func_1() -> vec2<bool> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), !any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, true), func_2(false, Struct_2(Struct_1(false, vec2<u32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, 10967i)), vec2<u32>(71017u, 25255u), Struct_1(true, vec2<u32>(19975u, u_input.a.x), vec2<i32>(-1401i, -1i)), vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_1(true, u_input.a, vec2<i32>(2147483647i, -1i))), Struct_1(true, u_input.a, vec2<i32>(-1i, 87i)), vec3<bool>(true, false, true)))));
    let var_1 = Struct_1(any(vec4<bool>(var_0.x, true != var_0.x, var_0.x, true)), u_input.a, abs(max(-select(vec2<i32>(53113i, 30531i), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, 13561i)), max(vec2<i32>(-2147483647i, -20576i), vec2<i32>(-7112i, 55457i))))));
    var var_2 = Struct_2(var_1, ~(abs(~vec2<u32>(u_input.a.x, 0u)) ^ vec2<u32>(17902u << (var_1.b.x % 32u), firstTrailingBit(4294967295u))), var_1, _wgslsmith_clamp_vec3_u32(vec3<u32>(min(~0u, countOneBits(u_input.a.x)), ~_wgslsmith_div_u32(25186u, u_input.a.x), 1u), max(countOneBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 32603u, 0u))) & ~min(vec3<u32>(4294967295u, 11867u, 0u), vec3<u32>(1u, 44989u, var_1.b.x)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.x, 37724u, 67399u), vec3<u32>(41012u, var_1.b.x, var_1.b.x)))), var_1);
    var_0 = select(vec2<bool>(false, true), vec2<bool>(!var_0.x, !func_2(all(vec3<bool>(true, var_2.e.a, var_0.x)), Struct_2(Struct_1(false, vec2<u32>(var_1.b.x, 78226u), var_1.c), var_1.b, var_1, var_2.d, var_1), Struct_1(var_0.x, var_2.d.xz, vec2<i32>(-16191i, var_2.e.c.x)), select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_2.c.a, false, var_1.a), var_0.x)).x), select(!vec2<bool>(true, any(vec3<bool>(false, var_0.x, false))), func_2(any(!vec4<bool>(true, true, var_0.x, var_0.x)), Struct_2(var_2.c, _wgslsmith_add_vec2_u32(var_2.e.b, u_input.a), Struct_1(var_1.a, u_input.a, vec2<i32>(18114i, -18756i)), min(vec3<u32>(u_input.a.x, var_1.b.x, var_1.b.x), vec3<u32>(var_1.b.x, 41660u, var_2.a.b.x)), Struct_1(true, vec2<u32>(var_1.b.x, 8965u), var_2.e.c)), var_1, vec3<bool>(false, true, !var_1.a)).wy, vec2<bool>(true, true)));
    var_0 = func_2(629f != _wgslsmith_f_op_f32(select(1898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-269f))), any(!vec2<bool>(false, var_2.c.a)))), Struct_2(Struct_1(var_2.c.a || true, ~var_2.e.b, vec2<i32>(-1i) * -var_1.c), min(vec2<u32>(17039u << (var_1.b.x % 32u), min(u_input.a.x, u_input.a.x)), abs(abs(u_input.a))), var_2.e, vec3<u32>(13120u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(17277u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(0u, 30542u, 4294967295u, u_input.a.x)), firstTrailingBit(var_2.e.b.x) ^ _wgslsmith_div_u32(60714u, 4294967295u), ~4294967295u), var_2.c), var_1, vec3<bool>(any(select(!vec2<bool>(var_1.a, var_1.a), !vec2<bool>(var_0.x, var_2.a.a), func_2(false, Struct_2(Struct_1(var_2.a.a, vec2<u32>(var_2.b.x, var_2.a.b.x), vec2<i32>(var_1.c.x, var_1.c.x)), vec2<u32>(1u, 0u), Struct_1(true, vec2<u32>(6576u, u_input.a.x), vec2<i32>(2147483647i, var_1.c.x)), var_2.d, var_2.a), Struct_1(var_1.a, var_1.b, vec2<i32>(var_1.c.x, var_2.e.c.x)), vec3<bool>(false, var_2.c.a, false)).yz)), true, _wgslsmith_add_i32(~(-2147483647i), firstTrailingBit(2147483647i)) >= 23078i)).zw;
    return select(vec2<bool>(true, true), func_2(!var_1.a, Struct_2(var_1, countOneBits(_wgslsmith_sub_vec2_u32(var_2.a.b, var_2.b)), var_1, ~_wgslsmith_add_vec3_u32(var_2.d, var_2.d), var_1), var_1, !select(!vec3<bool>(var_2.e.a, true, var_0.x), !vec3<bool>(false, var_1.a, var_2.e.a), func_3().x)).xz, (var_1.b.x == ~var_1.b.x) && (_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, 0i, 31702i), -vec4<i32>(17366i, 3008i, var_1.c.x, 0i)) > ~var_1.c.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(true, ~(~u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, 0i), _wgslsmith_div_i32(-27367i, -2147483647i)), vec2<i32>(1i, 1i))), reverseBits(vec2<u32>(select(68804u, 63966u, true), u_input.a.x) ^ (~vec2<u32>(80013u, arg_3) & firstTrailingBit(vec2<u32>(u_input.a.x, 0u)))), Struct_1(select(func_2(true, Struct_2(Struct_1(false, u_input.a, vec2<i32>(-6285i, -24266i)), u_input.a, Struct_1(false, vec2<u32>(4294967295u, arg_3), vec2<i32>(9717i, -79391i)), vec3<u32>(arg_2, 35028u, arg_2), Struct_1(false, vec2<u32>(arg_3, 16878u), vec2<i32>(8238i, 7418i))), Struct_1(false, vec2<u32>(7570u, 47347u), vec2<i32>(-47220i, 0i)), vec3<bool>(true, false, true)).x, _wgslsmith_clamp_u32(arg_3, arg_3, 4294967295u) < ~4294967295u, true), u_input.a, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-4925i, 34682i), ~vec2<i32>(-39360i, 1i), vec2<i32>(51191i, ~2147483647i))), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, arg_3, 86530u)), vec3<u32>(29226u, 4294967295u, 1u)), select(vec3<u32>(arg_3, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, arg_2, 1u)), vec3<u32>(arg_2, arg_2, arg_3) | abs(vec3<u32>(52971u, 0u, 26932u)), arg_0 >= _wgslsmith_f_op_f32(floor(-1059f)))), Struct_1(true && any(vec2<bool>(true, true)), u_input.a, firstLeadingBit(vec2<i32>(~(-67577i), -2147483647i))));
    let var_1 = var_0.e.a;
    let var_2 = vec3<bool>(!any(!vec3<bool>(var_0.a.a, var_1, false)), !var_0.e.a, var_1);
    let var_3 = Struct_1(var_1, vec2<u32>(0u, u_input.a.x), ~select(select(var_0.e.c, var_0.a.c, select(var_0.e.a, false, var_0.c.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(94972i, var_0.c.c.x) | vec2<i32>(11475i, -1i), vec2<i32>(var_0.a.c.x, var_0.c.c.x) ^ var_0.a.c), false));
    let var_4 = Struct_2(var_3, ~var_3.b, var_3, ~(~_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, arg_2), vec3<u32>(u_input.a.x, 15871u, var_3.b.x)), var_0.d | vec3<u32>(12933u, var_0.e.b.x, u_input.a.x))), var_3);
    return ~abs(vec3<u32>(4294967295u, 16829u, ~var_0.c.b.x >> (max(45439u, u_input.a.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-831f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(-1210f + 302f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -717f)))))), ~63051u, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 66287u, 36470u), vec3<u32>(u_input.a.x, 4294967295u, 48105u)) & u_input.a.x, u_input.a.x, all(func_1()) && (u_input.a.x > 1u)));
    var var_1 = ~(~(~firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u))));
    var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 26008u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(43322u, var_1.x, 0u), vec3<u32>(2933u, var_1.x, var_1.x)) % vec3<u32>(32u)), abs(vec3<u32>(44152u, u_input.a.x, 85620u)) & max(vec3<u32>(var_0.x, 7431u, 1u), vec3<u32>(var_0.x, 62662u, 4294967295u))) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(var_0.x, 16032u), var_0.x, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(54248u, ~6063u, ~22487u), ~vec3<u32>(var_0.x, 1u, 4294967295u)));
    let var_2 = Struct_1(!any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 70357u), vec4<u32>(var_0.x, var_0.x, var_0.x, 2846u)), var_0.x), u_input.a), select(countOneBits(vec2<i32>(i32(-1i) * -83101i, _wgslsmith_dot_vec2_i32(vec2<i32>(14212i, 1i), vec2<i32>(1i, -2147483647i)))), (select(vec2<i32>(8214i, 27263i), vec2<i32>(15518i, -2147483647i), true) & ~vec2<i32>(0i, 1i)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.xz, vec2<u32>(var_0.x, var_1.x)), ~u_input.a) % vec2<u32>(32u)), func_3().yz));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-347f))))) * -717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1196f))))));
    var_0 = countOneBits(((vec3<u32>(var_1.x, 0u, u_input.a.x) << ((vec3<u32>(85266u, var_1.x, 0u) | vec3<u32>(var_1.x, var_0.x, u_input.a.x)) % vec3<u32>(32u))) & ~vec3<u32>(42155u, var_1.x, var_2.b.x)) | ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_1.x, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, 0u, var_1.x), var_2.a), func_4(815f, -1000f, 41109u, 18447u)));
    var var_4 = Struct_1(select(false, ~var_0.x < var_2.b.x, all(vec4<bool>(all(vec3<bool>(var_2.a, var_2.a, var_2.a)), false, false, func_1().x))), ~(~vec2<u32>(var_0.x ^ 32445u, 1u >> (0u % 32u))), var_2.c);
    let var_5 = min(vec2<u32>(firstTrailingBit(4294967295u ^ var_0.x), var_4.b.x | max(var_0.x, 12559u)), var_0.yy) ^ vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_sub_u32(var_0.x, var_1.x)), _wgslsmith_mult_u32(~10130u, var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_sub_vec2_u32(var_1.zx, vec2<u32>(var_5.x, var_5.x)) >> (vec2<u32>(var_5.x, 0u) % vec2<u32>(32u))), firstTrailingBit(4294967295u), var_2.c.x, -vec3<i32>(0i & var_2.c.x, i32(-1i) * -1i, var_4.c.x >> (64290u % 32u)) >> (select(vec3<u32>(var_0.x, _wgslsmith_sub_u32(var_2.b.x, 28860u), 10448u), ~(~vec3<u32>(var_4.b.x, 711u, 4294967295u)), func_3().x) % vec3<u32>(32u)));
}

