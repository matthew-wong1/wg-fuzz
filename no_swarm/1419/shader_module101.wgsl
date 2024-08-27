struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(-1i, -26207i, 12908i), vec4<i32>(i32(-2147483648), -1i, 27457i, -15440i), vec4<i32>(44786i, -11527i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 0i, -35488i, 25985i)), Struct_1(vec3<i32>(16226i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 6095i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-38651i, 0i, i32(-2147483648), 0i), vec4<i32>(-1i, -37231i, 18i, -12000i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), vec4<i32>(15864i, -21321i, -47082i, 0i), vec4<i32>(-14134i, 68509i, -1i, 0i), vec4<i32>(50835i, -33084i, -17698i, -19613i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 60509i), vec4<i32>(35309i, -71242i, 19645i, 1i), vec4<i32>(-1i, -50183i, 18165i, 0i), vec4<i32>(-1i, -1i, 0i, -1i)), Struct_1(vec3<i32>(-38397i, 3194i, -30789i), vec4<i32>(2147483647i, -5450i, -34080i, -52573i), vec4<i32>(2147483647i, 34184i, -22864i, 1i), vec4<i32>(-1i, 1i, -30098i, -11928i)), Struct_1(vec3<i32>(2147483647i, -51277i, -1i), vec4<i32>(-12909i, -1i, -4096i, 7793i), vec4<i32>(0i, -42457i, 62i, 1i), vec4<i32>(-1i, -1i, 1i, 28898i)));

var<private> global2: array<u32, 13> = array<u32, 13>(23220u, 47959u, 0u, 84393u, 73581u, 30615u, 33414u, 84370u, 35941u, 4294967295u, 64361u, 26084u, 4294967295u);

var<private> global3: array<f32, 10> = array<f32, 10>(1103f, -1000f, 466f, 1000f, -2324f, 277f, -351f, 466f, 210f, -1813f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: i32) -> vec2<f32> {
    global1 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-938f, _wgslsmith_f_op_f32(1f - -322f))) * -2466f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31808u, 13u)], 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(549f * -137f), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 10u)], -1193f))))))));
    let var_1 = Struct_2(all(!vec2<bool>(true, -21148i < arg_3)));
    var var_2 = 1f;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.a)) - vec2<f32>(902f, global3[_wgslsmith_index_u32(4294967295u, 10u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(662f, -115f))) * arg_1.a))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1), u_input.b);
    global2 = array<u32, 13>();
    let var_1 = vec4<bool>(true, true, all(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-var_0.a.x) >= _wgslsmith_f_op_f32(265f * 416f))), !(1i <= u_input.c.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - arg_1) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, arg_1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32698u, 13u)], 13u)], 10u)], var_0.a.x) - vec2<f32>(var_0.a.x, 1000f))))), 1i);
    global0 = -2147483647i;
    return global2[_wgslsmith_index_u32(74877u, 13u)];
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(~4294967295u, arg_0), ~_wgslsmith_div_u32(arg_0, ~4294967295u), global2[_wgslsmith_index_u32(func_4(firstLeadingBit(1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(arg_2.x, 6u)], Struct_3(vec2<f32>(2238f, 1468f), u_input.a.x), u_input.c, u_input.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1756f, 1109f), vec2<f32>(1052f, 112f)))), 13u)], _wgslsmith_mult_u32(arg_0, 62273u)), vec4<u32>(4841u, 10699u, _wgslsmith_clamp_u32(select(~36356u, firstLeadingBit(arg_2.x), true), 69643u, 3036u), func_4(50361i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]) - vec2<f32>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(arg_0, 10u)]))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_0, 10u)], 117f)) - vec2<f32>(-2170f, _wgslsmith_f_op_f32(trunc(1596f)))))), abs(0i));
    let var_2 = arg_0;
    let var_3 = Struct_2(false);
    let var_4 = Struct_1(-_wgslsmith_div_vec3_i32(countOneBits(~u_input.a), u_input.a), vec4<i32>(-9313i, -1i, -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(2147483647i, -2147483647i)), ~(-2147483647i)), select(2147483647i, abs(_wgslsmith_div_i32(-41519i, var_1.b)), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(~30682i, _wgslsmith_mult_i32(15222i, 1i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_1.b, u_input.b), u_input.a)) ^ vec4<i32>(var_1.b, -var_1.b, -var_1.b, -62940i), abs(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x))))), countOneBits(vec4<i32>(select(2147483647i, ~0i, any(vec4<bool>(var_3.a, true, var_3.a, true))), _wgslsmith_sub_i32(u_input.c.x, u_input.b), 29571i, 24703i)));
    return Struct_2(firstLeadingBit(~(~13716u)) < abs(~arg_0));
}

fn func_1() -> u32 {
    global0 = -2147483647i;
    let var_0 = func_2(_wgslsmith_mod_u32(1u, ~(~(~global2[_wgslsmith_index_u32(13186u, 13u)]))), select(vec2<bool>(any(vec2<bool>(true, true)) && true, !all(vec2<bool>(true, false))), !vec2<bool>(true, -11268i <= u_input.c.x), all(vec4<bool>(true, true, true, false))), max(vec3<u32>(countOneBits(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(63392u, 13u)]), 13u)]), 1896u, global2[_wgslsmith_index_u32(~4294967295u, 13u)]), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 25780u), vec2<u32>(global2[_wgslsmith_index_u32(29332u, 13u)], 4294967295u) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43451u, 13u)], 13u)], global2[_wgslsmith_index_u32(27772u, 13u)]) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(4294967295u, 13u)], 0u)));
    let var_1 = ~vec2<u32>(149222u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 51343u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(24511u, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], global2[_wgslsmith_index_u32(21880u, 13u)])) & global2[_wgslsmith_index_u32(0u, 13u)]);
    global3 = array<f32, 10>();
    let var_2 = _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 10u)]));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(max(var_1.x, var_1.x), abs(0u), var_1.x) << (~select(vec3<u32>(var_1.x, var_1.x, 21942u), vec3<u32>(0u, 58627u, var_1.x), var_0.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(0u, 13u)], 4294967295u), vec3<u32>(4294967295u, var_1.x, global2[_wgslsmith_index_u32(var_1.x, 13u)])), ~countOneBits(vec3<u32>(0u, 10820u, var_1.x)))) << (~(~(6030u >> (~var_1.x % 32u))) % 32u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_3 {
    global3 = array<f32, 10>();
    global1 = array<Struct_1, 6>();
    global2 = array<u32, 13>();
    var var_0 = vec2<bool>(false, true);
    global1 = array<Struct_1, 6>();
    return Struct_3(vec2<f32>(215f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5808u, 13u)] << (arg_0.x % 32u), 13u)], 10u)], 1142f))), i32(-1i) * -countOneBits(u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~vec2<u32>(~func_1(), 0u), u_input.a);
    var var_1 = Struct_1((vec3<i32>(-59585i, reverseBits(u_input.b), 1i) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.b, 76199i, u_input.a.x), -u_input.a)) | -abs(u_input.a), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.b, 33578i), u_input.a) | 1i, abs(26332i), 1i, 16462i), max(vec4<i32>(u_input.b, firstLeadingBit(var_0.b << (48140u % 32u)), u_input.c.x, _wgslsmith_add_i32(var_0.b, u_input.b) >> (~59048u % 32u)), select(vec4<i32>(u_input.c.x, min(0i, u_input.c.x), var_0.b, -u_input.c.x), -vec4<i32>(0i, 1i, -1i, 56911i), true)), _wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.c.x, 42472i, -1i, var_0.b)), max(~(~vec4<i32>(1i, -2147483647i, -91180i, u_input.c.x)), vec4<i32>(-12005i, var_0.b << (4294967295u % 32u), -17572i, i32(-1i) * -23487i))));
    var var_2 = reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(9519u, 4294967295u), reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 1u)), true), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)]) | (vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 0u) >> (vec2<u32>(61106u, 1u) % vec2<u32>(32u)))), 0u >> (~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53101u, 13u)], 13u)]) % 32u), max(firstLeadingBit(global2[_wgslsmith_index_u32(abs(7383u), 13u)]), select(~111209u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] ^ global2[_wgslsmith_index_u32(35604u, 13u)], false))));
    let var_3 = _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1904u, 10u)]));
    var var_4 = ~_wgslsmith_clamp_vec3_u32(~max(~vec3<u32>(69724u, var_2.x, global2[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u), vec3<u32>(4294967295u, var_2.x, global2[_wgslsmith_index_u32(16069u, 13u)]))), vec3<u32>(_wgslsmith_sub_u32(var_2.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 13u)], 13u)] % 32u), global2[_wgslsmith_index_u32(abs(15028u), 13u)]), firstLeadingBit(var_2.x), var_2.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 0u, 0u, var_2.x), vec4<u32>(global2[_wgslsmith_index_u32(var_2.x, 13u)], 4294967295u, global2[_wgslsmith_index_u32(var_2.x, 13u)], var_2.x))), _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(var_2.x, 0u, 0u)), ~(vec3<u32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(0u, 13u)]) << (vec3<u32>(37447u, 23745u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 13u)], 13u)]) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(28118u, var_2.x, 4294967295u), vec3<u32>(var_2.x, var_2.x, var_2.x)), 76733u)));
    var var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), var_1.d.x);
    let var_6 = vec4<u32>(27792u, var_2.x, global2[_wgslsmith_index_u32(4294967295u, 13u)], var_2.x) | vec4<u32>(min(0u, 34070u), 0u, ~global2[_wgslsmith_index_u32(24015u, 13u)], _wgslsmith_mult_u32(_wgslsmith_mod_u32(~55681u, var_4.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_4.x), vec2<u32>(var_4.x, var_2.x) | vec2<u32>(1u, 1u))));
    let var_7 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.a)))), -95934i, reverseBits(var_1.b.x));
}

