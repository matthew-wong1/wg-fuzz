struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(609f, vec4<u32>(1u, 1u, 4388u, 15823u), 4945u), Struct_2(-908f, vec4<u32>(1u, 63933u, 4294967295u, 4294967295u), 21194u), Struct_2(2668f, vec4<u32>(4294967295u, 4294967295u, 5164u, 0u), 4294967295u), Struct_2(1658f, vec4<u32>(4294967295u, 13204u, 0u, 1u), 0u), Struct_2(472f, vec4<u32>(0u, 51004u, 0u, 0u), 0u), Struct_2(294f, vec4<u32>(0u, 8746u, 30843u, 0u), 40791u), Struct_2(-394f, vec4<u32>(1u, 10374u, 4294967295u, 8514u), 42690u), Struct_2(919f, vec4<u32>(6303u, 36943u, 57463u, 247u), 4143u), Struct_2(-1000f, vec4<u32>(1u, 1u, 9679u, 1u), 0u), Struct_2(-750f, vec4<u32>(0u, 19985u, 19308u, 1u), 8308u), Struct_2(2308f, vec4<u32>(4294967295u, 4294967295u, 52473u, 27137u), 42510u), Struct_2(-320f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 10565u), 1u), Struct_2(-621f, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), 4294967295u), Struct_2(1409f, vec4<u32>(49577u, 9960u, 25414u, 23359u), 4294967295u), Struct_2(1698f, vec4<u32>(17905u, 1u, 18253u, 4294967295u), 35720u), Struct_2(-431f, vec4<u32>(13244u, 1u, 0u, 1u), 6008u), Struct_2(-188f, vec4<u32>(59303u, 4294967295u, 1u, 14723u), 29169u), Struct_2(1102f, vec4<u32>(1338u, 1u, 18540u, 1u), 1u), Struct_2(1976f, vec4<u32>(73310u, 1u, 0u, 15122u), 0u), Struct_2(929f, vec4<u32>(51073u, 62887u, 1u, 0u), 4294967295u), Struct_2(637f, vec4<u32>(1u, 1u, 1u, 1117u), 37185u), Struct_2(384f, vec4<u32>(0u, 4294967295u, 19353u, 4290u), 1u), Struct_2(-409f, vec4<u32>(0u, 5038u, 28399u, 0u), 18128u), Struct_2(-1404f, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 16980u), Struct_2(814f, vec4<u32>(57011u, 66953u, 14478u, 4294967295u), 52440u), Struct_2(646f, vec4<u32>(4294967295u, 1u, 0u, 38579u), 44200u), Struct_2(318f, vec4<u32>(14305u, 0u, 0u, 2627u), 71679u), Struct_2(1006f, vec4<u32>(4294967295u, 0u, 0u, 1u), 4294967295u), Struct_2(-287f, vec4<u32>(37452u, 4294967295u, 0u, 4294967295u), 0u));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, true), 17633u, i32(-2147483648));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(select(arg_0.xxy, !select(vec3<bool>(false, true, global2.a.x), arg_0.xxy, !vec3<bool>(arg_1.x, false, arg_0.x)), vec3<bool>(!global2.b.x & true, false, _wgslsmith_f_op_f32(-1000f * 681f) > _wgslsmith_f_op_f32(step(-434f, -1492f)))), !(!(!(!global2.b))), global2.c, abs(~arg_2.x));
    let var_1 = arg_0;
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(var_0.c, u_input.a, 66138u)), abs(~vec3<u32>(3394u, 39410u, 0u))), 29u)], 258f, global2.c);
    global2 = Struct_1(var_0.b, select(global2.b, var_0.b, !all(select(var_0.b, vec3<bool>(true, false, true), var_1.yxy))), ~4294967295u, ~22221i);
    global2 = var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -856f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1303f) + vec2<f32>(var_2.a.a, -239f))), vec2<f32>(1298f, var_2.a.a)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_0.x)), min(abs(select(vec4<u32>(1u, 24800u, 69497u, 11063u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c, arg_2.c, 4294967295u, u_input.b), vec4<u32>(33202u, u_input.a, 4294967295u, 45468u)), global2.a.x)), vec4<u32>(8115u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7796u, arg_1), vec3<u32>(global2.c, 54042u, 43442u))), ~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 50604u, u_input.b, 15191u), firstLeadingBit(vec4<u32>(global2.c, arg_2.c, global2.c, arg_2.c))))), ~reverseBits(10813u));
    let var_1 = firstTrailingBit(1u);
    global2 = Struct_1(!global2.a, select(arg_2.b, arg_2.b, true), 98133u, 2147483647i);
    var var_2 = vec2<i32>(-1i, u_input.c);
    var var_3 = Struct_1(select(global2.b, global2.b, vec3<bool>(!arg_2.b.x, !any(vec4<bool>(false, false, false, arg_2.b.x)), select(global2.a.x, any(vec4<bool>(false, global2.b.x, global2.b.x, false)), select(global2.a.x, arg_2.a.x, false)))), arg_2.b, reverseBits(arg_2.c) & abs(reverseBits(firstLeadingBit(55434u))), countOneBits(arg_2.d));
    return countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(-70545i, global2.d, 35419i), vec3<i32>(arg_2.d, -1i, ~2147483647i)) ^ -vec3<i32>(-2147483647i, reverseBits(arg_2.d), 46650i));
}

fn func_2() -> vec4<i32> {
    var var_0 = global2.a;
    let var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, ~4294967295u, u_input.a << (u_input.a % 32u)) & ~vec3<u32>(0u, 87678u, 106469u), _wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, global2.c, u_input.a) & vec3<u32>(4294967295u, u_input.a, global2.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 5170u, u_input.a), select(vec3<u32>(u_input.b, u_input.b, 113477u), vec3<u32>(94544u, 35092u, global2.c), vec3<bool>(true, true, var_0.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, 1u, u_input.a), vec3<u32>(0u, 8269u, global2.c))), 1u), abs(max(vec3<u32>(u_input.b, global2.c, u_input.a), vec3<u32>(111896u, global2.c, u_input.a)) << (~vec3<u32>(u_input.a, global2.c, 4294967295u) % vec3<u32>(32u)))));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(global2.a.x, all(vec3<bool>(var_0.x, global2.a.x, true)), true, !global2.a.x), vec2<bool>(true, true), vec2<i32>(_wgslsmith_sub_i32(-18327i, 13787i), -22941i), firstTrailingBit(var_1)))), global2.c, Struct_1(global2.a, global2.b, 6738u, u_input.c));
    let var_3 = 0u;
    let var_4 = ~vec3<i32>(var_2.x, countOneBits(global2.d), global2.d);
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(max(global0[_wgslsmith_index_u32(1u, 12u)], -21028i) << (abs(var_3) % 32u), -_wgslsmith_mod_i32(-39498i, 2147483647i), firstTrailingBit(var_4.x), -17345i), (max(vec4<i32>(u_input.c, 6039i, global0[_wgslsmith_index_u32(u_input.a, 12u)], var_4.x), vec4<i32>(-33863i, global0[_wgslsmith_index_u32(global2.c, 12u)], u_input.c, var_4.x)) << (min(vec4<u32>(global2.c, var_3, global2.c, var_3), vec4<u32>(global2.c, var_1.x, u_input.a, 1u)) % vec4<u32>(32u))) & ~vec4<i32>(u_input.c, var_4.x, -15210i, 0i));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = !global2.b.yy;
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    return Struct_1(select(global2.a, global2.a, !all(!vec2<bool>(arg_0.x, true))), select(vec3<bool>(true, true, global2.a.x), !vec3<bool>(true, global2.a.x, var_1.x), -2147483647i != arg_2.a), ~_wgslsmith_sub_u32(~u_input.a, select(_wgslsmith_mod_u32(1u, global2.c), 1u, all(vec3<bool>(arg_0.x, true, global2.b.x)))), min(_wgslsmith_dot_vec4_i32(func_2() << (vec4<u32>(36810u, 8714u, 2494u, 4294967295u) % vec4<u32>(32u)), ~(vec4<i32>(1i, global2.d, 38784i, global0[_wgslsmith_index_u32(global2.c, 12u)]) ^ vec4<i32>(global2.d, 0i, global2.d, -28426i))), max(~(-10943i) << (~u_input.a % 32u), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(!all(vec4<bool>(true, true, false, global2.a.x)), global2.d == 0i, 1i != (u_input.c >> (1u % 32u)), global2.b.x), !vec4<bool>(false, all(global2.a.yy), !global2.a.x, false), global2.a.x));
    global1 = array<Struct_2, 29>();
    global0 = array<i32, 12>();
    global2 = Struct_1(global2.a, global2.a, global2.c, global2.d);
    global2 = func_1(vec2<bool>(any(global2.b), true), 0i ^ select(i32(-1i) * -1i, max(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 2147483647i), _wgslsmith_div_i32(-2147483647i, -83152i)), !any(global2.b)), Struct_4(firstLeadingBit(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~0u), global2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, _wgslsmith_f_op_f32(f32(-1f) * -378f))), ~reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.c, u_input.b, global2.c), vec4<u32>(0u, u_input.b, u_input.a, global2.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, -3009f, 551f))))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global2.c, 0u, 0u)) >> (abs(vec3<u32>(10002u, 34268u, global2.c)) % vec3<u32>(32u)), min(vec3<u32>(global2.c, 48381u, 13536u) ^ vec3<u32>(global2.c, 58415u, 0u), ~vec3<u32>(1u, u_input.b, 4294967295u))), ~firstLeadingBit(~vec3<u32>(global2.c, global2.c, global2.c))));
}

