struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(4294967295u, 74184u), vec2<u32>(83331u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 10380u), vec2<u32>(1010u, 1u), vec2<u32>(68080u, 38555u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 30041u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 50472u));

var<private> global1: array<vec4<i32>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = countOneBits((0i & (select(-9752i, -50008i, arg_1.x) ^ -2428i)) ^ -4995i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1008f, 896f, arg_0.x, 451f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f + 106f) - -1582f), _wgslsmith_f_op_f32(step(-1847f, arg_0.x)), _wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(min(493f, -1167f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(582f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 925f, 1052f, -1105f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(953f, -2433f, -1796f, var_1.x) * vec4<f32>(arg_0.x, -540f, arg_0.x, 734f))) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * 2395f), _wgslsmith_f_op_f32(floor(-1011f)), _wgslsmith_f_op_f32(arg_0.x * 1000f), _wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_3 = true;
    global1 = array<vec4<i32>, 8>();
    return _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_div_i32(0i, 2147483647i)), ~55127i, 1i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 0i), ~vec3<i32>(-2147483647i, 0i, -2147483647i) << ((vec3<u32>(u_input.c.x, u_input.b, u_input.a.x) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(1i, 1i, 1i))), vec3<i32>(max(2147483647i, (i32(-1i) * -1i) | _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec4<i32>(34823i, -2147483647i, -3036i, 2147483647i))), 1i, -10303i));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1138f, 777f) - vec2<f32>(-779f, -477f))), vec3<bool>(arg_1.x, false, 0u <= u_input.a.x)), -vec3<i32>(1i, 19391i, 1i)), _wgslsmith_div_vec3_i32(func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(218f, 510f))), vec3<bool>(true, false, all(arg_1))), _wgslsmith_div_vec3_i32(min(vec3<i32>(-2147483647i, -61789i, 1i), firstTrailingBit(vec3<i32>(-32797i, 1i, 1i))), vec3<i32>(min(38128i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 45426i), vec3<i32>(2147483647i, -34341i, -17005i)), firstLeadingBit(-5700i)))));
    var var_1 = all(vec3<bool>(true, arg_1.x, true & (true && all(vec4<bool>(true, false, false, arg_0)))));
    let var_2 = var_0.x ^ var_0.x;
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<f32>(-1563f, _wgslsmith_f_op_f32(f32(-1f) * -1209f));
    let var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -578f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(var_1));
    var var_3 = select(~(~81113u), u_input.c.x, true);
    let var_4 = Struct_2(true, u_input.a, 59442u, any(vec2<bool>(any(vec4<bool>(false, false, true, false)), true | func_2(true, vec2<bool>(false, true)))), Struct_1(var_1, select(-vec4<i32>(2147483647i, 1i, -31079i, 23192i), global1[_wgslsmith_index_u32(~u_input.b, 8u)], any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<i32>(~(-17921i), -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(793f, var_0.x, 1388f) - vec3<f32>(1159f, var_0.x, -1875f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1059f, var_0.x, -625f) * vec3<f32>(-1000f, 520f, var_0.x)))), countOneBits(vec3<i32>(1i, ~(-1i), 18441i << (0u % 32u)))));
    return Struct_3(var_4.e, var_1, firstLeadingBit(17204i), vec4<bool>(false, select((2147483647i == var_4.e.c.x) | var_4.d, true && var_4.a, true), var_4.d, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = vec3<bool>(false, any(vec2<bool>(true, var_0.d.x)), !(true && (_wgslsmith_f_op_f32(select(var_0.b.x, 2590f, true)) > -793f)));
    global0 = array<vec2<u32>, 11>();
    var var_2 = func_1().a;
    let var_3 = u_input.a.zz;
    return Struct_2(all(select(!(!vec3<bool>(false, var_1.x, arg_0.d.x)), !var_0.d.yyw, select(arg_0.d.wwy, select(var_0.d.zxx, arg_0.d.xzx, var_0.d.yzy), var_0.d.zxx))), u_input.c, select(reverseBits(_wgslsmith_mult_u32(var_3.x, var_3.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.x, 4294967295u), vec3<u32>(31900u, 4294967295u, u_input.a.x)), (u_input.c.x >= 148u) & true) & var_3.x, false, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_1().a);
    var var_1 = func_1();
    global0 = array<vec2<u32>, 11>();
    var var_2 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(58869u, var_0.c, u_input.d.x, 1u) << (vec4<u32>(25534u, u_input.b, 4294967295u, var_0.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, ~0u, ~var_0.b.x, ~23176u)), ~vec4<u32>(max(u_input.a.x, u_input.c.x), _wgslsmith_div_u32(16229u, 28171u), _wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.d.x), u_input.c.x), _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.c, 37672u, u_input.b, u_input.c.x)) << (vec4<u32>(var_0.b.x, var_0.c, var_0.b.x, u_input.a.x) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(67867u, 0u, 40422u, 64258u), vec4<u32>(u_input.d.x, var_0.c, u_input.c.x, 1u)))), ~vec4<u32>(_wgslsmith_div_u32(select(u_input.d.x, 0u, var_1.d.x), _wgslsmith_div_u32(1u, u_input.d.x)), func_4(func_1(), func_4(Struct_3(var_0.e, vec2<f32>(1152f, -2628f), var_1.c, var_1.d), var_1.a).e).b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 57428u), vec4<u32>(9796u, var_0.c, 5499u, u_input.d.x)), firstLeadingBit(24651u)), ~97185u < var_0.b.x);
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(max(vec2<u32>(u_input.a.x, u_input.b), global0[_wgslsmith_index_u32(u_input.d.x, 11u)])), vec2<u32>(abs(1u), ~var_0.c)), 1u, ~(~(var_2.x | 4294967295u)), var_2.x | _wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.x, 32222u), _wgslsmith_sub_u32(u_input.b, u_input.c.x))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 31936u, var_2.x, u_input.c.x), ~vec4<u32>(var_2.x, u_input.b, 0u, var_0.c)) | vec4<u32>(abs(9958u), var_2.x, abs(0u), u_input.d.x), abs(~(~vec4<u32>(u_input.a.x, 1u, var_0.c, u_input.b))), max(vec4<u32>(40650u, var_2.x, var_0.b.x, 4294967295u) & vec4<u32>(6658u, 1u, 4294967295u, u_input.a.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 27686u, 4182u, var_0.c), vec4<u32>(5876u, u_input.a.x, 1u, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-583f, ~1u, var_1.a.a.x);
}

