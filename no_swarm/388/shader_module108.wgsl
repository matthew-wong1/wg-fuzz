struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 0u, 0u, 4294967295u, 4294967295u, 73519u);

var<private> global1: array<bool, 30> = array<bool, 30>(false, true, true, true, false, true, false, false, true, true, true, true, false, false, true, false, true, false, false, false, false, false, true, false, true, true, true, true, true, true);

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 1u), false, 8564u), 13492u, false, 37050u), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 7237u), false, 28238u), 29869u, false, 0u), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 91685u), true, 4294967295u), 35529u, false, 10970u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 64739u), true, 1u), 10305u, false, 0u), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 84694u), false, 30459u), 0u, false, 1u), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 0u), false, 1u), 49169u, true, 31190u), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(9965u, 71499u), false, 1u), 4294967295u, false, 1u), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(781u, 25921u), false, 10537u), 0u, true, 1u), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 0u), false, 16716u), 0u, false, 1u), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(8349u, 50222u), true, 1u), 84989u, false, 4294967295u), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(13739u, 1u), true, 40883u), 61442u, true, 1u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 95686u), false, 0u), 56947u, true, 18360u), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(79845u, 4294967295u), true, 27378u), 37321u, false, 0u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 10117u), true, 40650u), 1u, true, 29305u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 1u), false, 1u), 18310u, true, 0u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(106527u, 50403u), true, 59430u), 4294967295u, true, 0u), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(61142u, 4294967295u), true, 69982u), 4294967295u, false, 48658u), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(2049u, 58744u), true, 2347u), 57254u, false, 75788u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(42653u, 4294967295u), true, 62849u), 87007u, false, 1u), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 0u), true, 1u), 90020u, true, 4294967295u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 53819u), true, 65647u), 35352u, false, 1u), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(17287u, 4294967295u), false, 31421u), 4294967295u, false, 24053u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 22477u), false, 4294967295u), 0u, true, 0u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 15794u), false, 7930u), 121161u, false, 1u), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 124814u), false, 1u), 31591u, false, 1u), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(64716u, 84621u), false, 1u), 1u, false, 1044u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(43474u, 8548u), true, 15666u), 1u, true, 5274u), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 25970u), true, 40422u), 70108u, true, 15279u), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(1u, 0u), true, 32516u), 0u, true, 0u), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 1u), false, 0u), 26214u, false, 0u), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 8979u), false, 0u), 0u, true, 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, 0i), (-vec4<i32>(48355i, -10354i, -26964i, u_input.a) | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, -7095i, u_input.a), vec4<i32>(u_input.a, 23585i, 1i, u_input.a))) << (vec4<u32>(1u ^ global0[_wgslsmith_index_u32(55442u, 6u)], ~arg_0, 39279u, ~1u) % vec4<u32>(32u))), abs(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -29723i), vec2<i32>(u_input.a, -1i)), u_input.a, _wgslsmith_add_i32(u_input.a, countOneBits(u_input.a)), -2147483647i)));
    let var_1 = ~(~(~abs(vec4<u32>(arg_0, arg_0, 4294967295u, 59614u)) << (~min(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 6u)], arg_0, arg_0, global0[_wgslsmith_index_u32(10888u, 6u)]), vec4<u32>(31132u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], arg_0)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1451f))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(950f, 442f)), _wgslsmith_div_f32(-858f, -1342f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -648f))))))));
    var var_3 = ~(~vec4<u32>(firstLeadingBit(arg_0), (global0[_wgslsmith_index_u32(var_1.x, 6u)] >> (0u % 32u)) & (global0[_wgslsmith_index_u32(arg_0, 6u)] | 21398u), _wgslsmith_mult_u32(0u, abs(arg_0)), ~arg_0));
    let var_4 = -var_0.ww;
    return abs(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-23086i, var_4.x, var_0.x, var_4.x), vec4<i32>(var_0.x, u_input.a, var_4.x, 2147483647i))) & firstLeadingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-31074i, var_0.x, 1i, 39699i), vec4<i32>(2147483647i, u_input.a, var_0.x, 2147483647i)))));
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 30>();
    var var_0 = -280f;
    global3 = array<Struct_2, 31>();
    global0 = array<u32, 6>();
    var var_1 = firstLeadingBit(func_3(((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)] ^ 0u) >> (8005u % 32u)) << (_wgslsmith_mod_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12361u, 6u)], 6u)]), 1u) % 32u), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32073u, 6u)], 6u)], 30u)], false), vec3<bool>(true, all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], true)), !global1[_wgslsmith_index_u32(1u, 30u)]), global1[_wgslsmith_index_u32(82251u, 30u)])));
    return Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(0u, 6u)], 53721u), 6u)] != (88077u & global0[_wgslsmith_index_u32(1u, 6u)]), true, true), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(14074u, 6u)], 6u)], 6u)], 11066u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(85992u, 6u)], 201u, 21825u), vec4<u32>(0u, 17223u, global0[_wgslsmith_index_u32(13608u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18658u, 6u)], 6u)]))), firstLeadingBit(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 1u, global0[_wgslsmith_index_u32(0u, 6u)], 0u)))), 6u)], 6u)], abs(~reverseBits(24072u))), select(select(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)] & 37595u, 30u)], false, true) & !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)]), vec2<u32>(4294967295u, 75974u)), 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)] & global0[_wgslsmith_index_u32(32548u, 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1538u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)]), 6u)]), 6u)], 6u)], 30u)], true), global0[_wgslsmith_index_u32(~4424u, 6u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    global2 = array<vec2<bool>, 29>();
    var var_0 = 15577i;
    global3 = array<Struct_2, 31>();
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(select(0u, 1u, true), ~func_2().b.x), 30643u);
    global1 = array<bool, 30>();
    return Struct_2(Struct_1(vec3<bool>(arg_1.c, true, false), arg_1.b, true, 69560u), ~(~(var_1 ^ global0[_wgslsmith_index_u32(0u, 6u)])), !any(!vec4<bool>(arg_1.c, arg_1.c, arg_2.x, false)), 1u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 6>();
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1000f * 239f))))), -117f, -583f, 524f), func_2(), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(min(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6592u, 6u)], 6u)]), 30u)], true, global1[_wgslsmith_index_u32(68447u, 30u)] && false), select(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23440u, 6u)], 6u)], 6u)], 30u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d, 6u)], 30u)], false, global1[_wgslsmith_index_u32(12520u, 30u)], global1[_wgslsmith_index_u32(76178u, 30u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 6u)], 30u)]), select(vec4<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 6u)], 6u)], 30u)], arg_0.a.x, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 30u)], arg_0.a.x), vec4<bool>(arg_0.a.x, false, global1[_wgslsmith_index_u32(arg_0.b.x, 30u)], true)), !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.d, 30u)], true, arg_0.c, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 6u)], 6u)], 30u)])), true & !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4297u, 6u)], 30u)]));
    let var_1 = firstTrailingBit(select(_wgslsmith_sub_vec3_u32(~(vec3<u32>(arg_0.d, arg_0.b.x, arg_0.d) >> (vec3<u32>(44726u, 0u, var_0.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.b.x, 6u)], 6u)], 6u)], 28364u, global0[_wgslsmith_index_u32(var_0.b, 6u)])), ~vec3<u32>(arg_0.b.x, arg_0.b.x, 1u))), ~reverseBits(vec3<u32>(1u, 1u, 1u)), all(select(func_4(vec4<f32>(1000f, 1000f, -367f, 1311f), arg_0, vec4<bool>(arg_0.a.x, true, false, false)).a.a, select(var_0.a.a, var_0.a.a, true), true))));
    global0 = array<u32, 6>();
    global1 = array<bool, 30>();
    return Struct_1(select(vec3<bool>(func_2().c, any(vec4<bool>(global1[_wgslsmith_index_u32(8767u, 30u)], false, false, false)), arg_0.c), !arg_0.a, false), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 20149u) << (vec2<u32>(~abs(global0[_wgslsmith_index_u32(79315u, 6u)]), ~_wgslsmith_div_u32(arg_0.b.x, var_1.x)) % vec2<u32>(32u)), func_2().c, _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(var_1.yy, vec2<u32>(arg_0.b.x, arg_0.d) ^ vec2<u32>(var_1.x, 1u)), vec2<u32>(23843u, 34085u), true), vec2<u32>(_wgslsmith_mult_u32(min(69030u, global0[_wgslsmith_index_u32(48849u, 6u)]), global0[_wgslsmith_index_u32(1u, 6u)]), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(select(select(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53651u, 6u)], 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 30u)])), vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true)), false, all(vec2<bool>(false, false))), select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 30u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4236u, 6u)], 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49917u, 6u)], 6u)], 6u)], 30u)], true), vec3<bool>(global1[_wgslsmith_index_u32(34210u, 30u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41850u, 6u)], 6u)], 30u)], global1[_wgslsmith_index_u32(88386u, 30u)], false)), !vec3<bool>(global1[_wgslsmith_index_u32(48542u, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)]))), vec2<u32>(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(23115u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34685u, 6u)], 6u)], 6u)], 6u)]), 1u), true, ~global0[_wgslsmith_index_u32(0u, 6u)]));
    global0 = array<u32, 6>();
    global1 = array<bool, 30>();
    let var_1 = var_0.c;
    var var_2 = Struct_1(vec3<bool>(true, all(!vec4<bool>(var_0.a.x, true, global1[_wgslsmith_index_u32(var_0.b.x, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 30u)])), var_0.a.x), var_0.b, all(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], true, true), var_0.a.x), !vec4<bool>(false, false, true, var_0.c), global1[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(true, true, true, true), !(false && var_0.a.x))), 116871u);
    let var_3 = !select(vec4<bool>(global1[_wgslsmith_index_u32(func_1(func_1(Struct_1(vec3<bool>(true, false, true), vec2<u32>(var_2.d, 4294967295u), true, 1u))).d, 30u)], var_2.a.x, true, func_1(Struct_1(vec3<bool>(var_0.c, var_0.c, false), vec2<u32>(4294967295u, 0u), var_2.c, var_2.b.x)).c), select(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.d, 6u)], 30u)], global1[_wgslsmith_index_u32(11547u, 30u)], var_0.a.x, global1[_wgslsmith_index_u32(var_0.b.x, 30u)]), !select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, false, var_2.c), true), all(var_2.a.xz)), vec4<bool>(var_2.c, any(vec4<bool>(var_2.a.x, var_2.a.x, true, false)), true, !var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(1893f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-504f)) + _wgslsmith_f_op_f32(1000f + 1493f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -459f), _wgslsmith_f_op_f32(max(879f, 1448f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-851f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, 816f, -143f, -742f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, -1000f, -781f, -1341f))))));
}

