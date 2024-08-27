struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> vec3<u32> {
    return max(arg_2.yzy, ~vec3<u32>(select(firstLeadingBit(arg_2.x), 75586u, true), 18805u, ~13732u));
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, firstLeadingBit(1u), ~(u_input.a << (arg_0.d % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17402u, u_input.a), vec2<u32>(u_input.a, u_input.c)), u_input.a)) | ~max(countOneBits(vec4<u32>(46037u, arg_0.a.x, 2419u, u_input.c)), ~vec4<u32>(70878u, arg_0.a.x, arg_0.a.x, arg_0.c.x)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(33019u, 68107u, u_input.c, u_input.c), vec4<u32>(arg_0.d, 18994u, 4100u, 4294967295u)) << (abs(vec4<u32>(54433u, 87211u, 1u, 53026u)) % vec4<u32>(32u))) ^ ~(~vec4<u32>(85121u, arg_0.a.x, 26555u, u_input.a)));
    let var_1 = 46067u;
    let var_2 = -136f;
    var_0 = firstLeadingBit(_wgslsmith_div_vec4_u32(~select(~vec4<u32>(arg_0.d, 1u, var_0.x, 1u), ~vec4<u32>(var_1, var_0.x, 8214u, 32955u), true), vec4<u32>((var_1 ^ var_0.x) >> (~u_input.c % 32u), firstLeadingBit(var_1), 44565u, var_1 >> (25231u % 32u))));
    let var_3 = Struct_2(var_1 >> (1u % 32u), Struct_1(~4294967295u, 8172i, ~(~vec4<u32>(68997u, u_input.c, 84300u, 15088u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1, arg_0.c.x, 40238u), vec4<u32>(var_0.x, 0u, var_0.x, arg_0.c.x)), select(-select(-1i, -1i, false), reverseBits(1i), 24059i <= firstTrailingBit(1i))), Struct_1(countOneBits(arg_0.a.x), ~_wgslsmith_add_i32(arg_0.b, ~4744i), min(vec4<u32>(var_0.x ^ u_input.a, _wgslsmith_mult_u32(arg_0.a.x, 90879u), 9317u, var_1), vec4<u32>(var_0.x ^ 30783u, ~45002u, 0u, _wgslsmith_div_u32(arg_0.d, arg_0.c.x))), 60651i ^ arg_0.b), vec4<bool>(_wgslsmith_clamp_u32(u_input.c ^ u_input.c, 4294967295u, ~4294967295u) < var_1, true, all(vec2<bool>(true, select(false, true, true))), 5121u != (var_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(65966u, 4294967295u), vec2<u32>(var_1, 1u)) % 32u))), vec4<i32>(~(i32(-1i) * -40955i), u_input.b, 1i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, arg_0.b, 0i, -31197i), _wgslsmith_div_vec4_i32(vec4<i32>(-46512i, 32996i, u_input.b, -1i), vec4<i32>(u_input.b, arg_0.b, u_input.b, -3095i)))));
    return select(_wgslsmith_clamp_vec3_u32(var_3.b.c.wxy, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, var_0.x) >> (var_0.xzy % vec3<u32>(32u)), ~vec3<u32>(var_0.x, 24406u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 0u, 1u, 65538u), min(var_3.b.c, vec4<u32>(3696u, var_0.x, 53624u, u_input.c))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, u_input.a, var_0.x, 0u), var_3.b.c), var_3.b.c | vec4<u32>(7387u, 4294967295u, var_3.c.c.x, 65789u))), countOneBits(select(arg_0.a, firstLeadingBit(vec3<u32>(arg_0.a.x, 1u, var_1)), true))), vec3<u32>(var_3.b.a, ~(~53384u), ~reverseBits(16436u) << (~var_0.x % 32u)), var_3.d.xxx);
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global0 = -2147483647i & _wgslsmith_dot_vec4_i32(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, arg_0.x, u_input.b), vec4<i32>(arg_0.x, 19223i, u_input.b, arg_0.x), vec4<i32>(20581i, arg_0.x, arg_0.x, arg_0.x)) << (firstLeadingBit(vec4<u32>(u_input.c, 40522u, u_input.c, 14967u)) % vec4<u32>(32u))), (vec4<i32>(arg_0.x, 0i, u_input.b, u_input.b) | vec4<i32>(u_input.b, arg_0.x, -29601i, u_input.b)) | vec4<i32>(-8306i, arg_0.x, 2147483647i, u_input.b ^ 2147483647i));
    var var_0 = vec3<i32>(_wgslsmith_add_i32(-(~u_input.b), _wgslsmith_mult_i32(countOneBits(-arg_0.x), firstTrailingBit(arg_0.x))), 2147483647i, -33107i >> (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u));
    var var_1 = Struct_4(reverseBits(func_4(Struct_4(func_3(u_input.b, u_input.a, vec4<u32>(75109u, u_input.c, u_input.c, 4294967295u), vec2<i32>(2147483647i, arg_0.x)), -19046i, ~vec2<u32>(0u, 14598u), 23057u, 515f))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.x | -6150i, -2147483647i), abs(u_input.b), u_input.b), var_0.x, arg_0.x), vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.a, u_input.a) << (1u % 32u)) | ~vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.a), max(u_input.a, u_input.c)), u_input.c, 2019f);
    var_1 = Struct_4(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.d, 4294967295u, 4294967295u), ~var_1.a)), arg_0.x, ~vec2<u32>(u_input.c, _wgslsmith_mod_u32(u_input.a, u_input.c)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))));
    var_0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_div_i32(var_1.b, i32(-1i) * -2147483647i), var_1.b), -_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-17358i, -49438i, var_1.b)), vec3<i32>(-2147483647i, var_0.x, 2147483647i)), countOneBits(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_0.x, u_input.b), vec3<i32>(35383i, -19001i, arg_0.x), vec3<i32>(arg_0.x, var_1.b, u_input.b)))));
    return ~u_input.b | _wgslsmith_add_i32(-22365i, ~(~(-8558i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    global0 = -u_input.b;
    let var_0 = vec2<i32>(min(~(-102848i), 22286i), -1i);
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(func_2(var_0), var_0.x, _wgslsmith_sub_i32(min(u_input.b, u_input.b), firstTrailingBit(var_0.x)), _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.b, u_input.b)) << (~u_input.a % 32u)), vec4<i32>(var_0.x, var_0.x & var_0.x, (-4197i >> (u_input.c % 32u)) << (~76334u % 32u), u_input.b)), vec4<i32>(2147483647i, -31501i, max(_wgslsmith_clamp_i32(~13915i, u_input.b ^ 1i, func_2(vec2<i32>(var_0.x, var_0.x))), -_wgslsmith_clamp_i32(-2147483647i, u_input.b, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(u_input.b, 9694i, -20709i) << (vec3<u32>(arg_1, 24708u, u_input.c) % vec3<u32>(32u))) << (10598u % 32u)), reverseBits(vec4<i32>(-1i, var_0.x, var_0.x, 1i)));
    let var_2 = Struct_3(Struct_2(select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.a, u_input.c), vec4<u32>(95662u, 73237u, u_input.a, u_input.a), vec4<u32>(8189u, u_input.c, 16897u, arg_1)), vec4<u32>(39550u, 0u, u_input.c, u_input.c)), arg_1, !arg_0.x), Struct_1(4294967295u, firstTrailingBit(i32(-1i) * -16614i), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 1u, 20682u, 1u), vec4<u32>(1u, u_input.a, 0u, arg_1)), 0i), Struct_1(~u_input.c << (countOneBits(u_input.a) % 32u), _wgslsmith_mult_i32(-39268i, var_1.x) >> ((arg_1 << (86410u % 32u)) % 32u), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, u_input.a, 4076u, u_input.a), min(vec4<u32>(arg_1, u_input.c, u_input.c, 4294967295u), vec4<u32>(11436u, 4294967295u, 28255u, 22410u))), -2147483647i | countOneBits(u_input.b)), select(arg_0, arg_0, arg_0.x), _wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.x, u_input.b, var_1.x, var_1.x) | vec4<i32>(-7160i, 1i, u_input.b, var_1.x), ~vec4<i32>(-6739i, 1i, var_1.x, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(-61678i, var_0.x, u_input.b, var_0.x))), -1090f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-771f)) * _wgslsmith_f_op_f32(f32(-1f) * -1593f))), 151f));
    let var_3 = -2558f;
    return min(~((countOneBits(1i) << (_wgslsmith_dot_vec2_u32(var_2.a.b.c.zy, vec2<u32>(31328u, 13426u)) % 32u)) ^ -17270i), ~27870i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u))), vec4<i32>(2147483647i, 12422i, _wgslsmith_mod_i32(-1i, -1i), -40381i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, 0i, u_input.b, 0i), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, -2147483647i, -13410i)), -vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i)))), vec4<i32>(-21478i, i32(-1i) * -func_1(vec4<bool>(true, false, true, false), u_input.c), abs(-2147483647i), ~u_input.b));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(267f)), _wgslsmith_f_op_f32(floor(264f)), _wgslsmith_f_op_f32(-437f + 513f)), vec3<f32>(2661f, 1f, 203f), true)) * vec3<f32>(-147f, _wgslsmith_div_f32(-442f, _wgslsmith_div_f32(1000f, -953f)), 265f)), -309f, ~(~select(~vec4<u32>(u_input.c, 4294967295u, 1u, u_input.a), ~vec4<u32>(8085u, u_input.a, 0u, u_input.a), vec4<bool>(true, false, false, true))));
}

