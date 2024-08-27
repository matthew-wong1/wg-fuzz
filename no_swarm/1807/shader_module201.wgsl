struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(1u, 4294967295u, 8267u, 0u, 25303u, 30877u, 1u, 46724u, 1u, 33514u, 100781u, 47509u, 38806u, 39538u, 4294967295u, 0u, 0u, 98265u, 33916u, 5399u, 14063u, 1u, 1u);

var<private> global1: array<u32, 29>;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec4<i32>(0i, -31111i, -28039i, 13635i), Struct_1(vec3<bool>(true, false, true)), 23183u), Struct_3(vec4<i32>(-27640i, 0i, 1i, -1i), Struct_1(vec3<bool>(true, false, true)), 4294967295u), Struct_3(vec4<i32>(i32(-2147483648), 31644i, i32(-2147483648), 738i), Struct_1(vec3<bool>(false, true, true)), 78546u), Struct_3(vec4<i32>(-84248i, -944i, -1i, 989i), Struct_1(vec3<bool>(false, true, false)), 50962u), Struct_3(vec4<i32>(-59085i, 39637i, 1i, 1i), Struct_1(vec3<bool>(false, false, false)), 0u), Struct_3(vec4<i32>(i32(-2147483648), -4340i, 1i, -1i), Struct_1(vec3<bool>(true, true, false)), 126311u), Struct_3(vec4<i32>(12422i, -37514i, 0i, -7434i), Struct_1(vec3<bool>(false, false, false)), 0u), Struct_3(vec4<i32>(-1i, -2729i, i32(-2147483648), 1i), Struct_1(vec3<bool>(true, true, true)), 113976u), Struct_3(vec4<i32>(-13252i, -53124i, 2147483647i, -4087i), Struct_1(vec3<bool>(true, true, false)), 4294967295u), Struct_3(vec4<i32>(i32(-2147483648), 24447i, i32(-2147483648), 2147483647i), Struct_1(vec3<bool>(false, false, false)), 74867u), Struct_3(vec4<i32>(-25637i, 0i, 31195i, 2147483647i), Struct_1(vec3<bool>(false, true, true)), 4294967295u), Struct_3(vec4<i32>(9431i, 0i, i32(-2147483648), -1i), Struct_1(vec3<bool>(false, false, false)), 1u), Struct_3(vec4<i32>(10740i, 0i, 13941i, 30502i), Struct_1(vec3<bool>(false, true, false)), 17870u), Struct_3(vec4<i32>(-2001i, -2482i, -1i, -36391i), Struct_1(vec3<bool>(false, true, false)), 4294967295u), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -56984i), Struct_1(vec3<bool>(false, false, false)), 45805u), Struct_3(vec4<i32>(1i, i32(-2147483648), 3073i, 0i), Struct_1(vec3<bool>(false, true, false)), 0u), Struct_3(vec4<i32>(-16153i, 1i, 118745i, -48403i), Struct_1(vec3<bool>(false, false, true)), 1u), Struct_3(vec4<i32>(-1i, 25081i, 1i, -24330i), Struct_1(vec3<bool>(true, true, true)), 59077u), Struct_3(vec4<i32>(32353i, -1837i, i32(-2147483648), 0i), Struct_1(vec3<bool>(true, false, true)), 168470u), Struct_3(vec4<i32>(0i, 45882i, 2147483647i, 52531i), Struct_1(vec3<bool>(false, true, false)), 4294967295u), Struct_3(vec4<i32>(0i, 1314i, -15171i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, true)), 37052u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<i32> {
    let var_0 = arg_0.a.xy;
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_1 = arg_0;
    var var_2 = select(abs(u_input.a.xz), firstLeadingBit(~_wgslsmith_mult_vec2_i32(u_input.b.xw, vec2<i32>(u_input.a.x, 9019i))), all(var_1.a));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(30235i, ~arg_1.a.x), ~0i | firstTrailingBit(arg_1.c.a.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -70114i), max(2147483647i, 2147483647i)), u_input.a.x), arg_1.c.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x ^ 7378i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, var_2.x), -1i), vec3<i32>(var_2.x, -arg_1.b.b, -2147483647i)), -(~0i)), ~_wgslsmith_div_i32(11439i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x & var_2.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, 5156i, 10423i) ^ vec3<i32>(1i, u_input.a.x, -32317i)), func_3(Struct_1(vec3<bool>(false, false, false)), Struct_4(vec3<i32>(-12540i, u_input.a.x, -2147483647i), Struct_2(Struct_1(vec3<bool>(true, false, false)), 1i), Struct_3(u_input.b, Struct_1(vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 23u)]), Struct_1(vec3<bool>(true, false, true))), vec3<f32>(937f, 1832f, 697f))), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), 1i, reverseBits(u_input.a.x)) | u_input.b.wxz), (-abs(0i) >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(0u, 29u)]), vec3<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 23u)], 0u, 73389u))) % 32u)) | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 47874i, u_input.a.x, 2147483647i) & u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.b.x))), -2147483647i), -1i);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(35329u, 23u)]), vec4<u32>(global0[_wgslsmith_index_u32(40050u, 23u)], global1[_wgslsmith_index_u32(35053u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], 27537u) & vec4<u32>(global0[_wgslsmith_index_u32(146592u, 23u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74866u, 29u)], 23u)], 23u)], 29u)], 34738u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3045u, 23u)], 23u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(6486u, 23u)], global1[_wgslsmith_index_u32(13002u, 29u)], 12047u), vec4<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24210u, 29u)], 29u)], 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28075u, 29u)], 29u)], 23u)], 9903u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 29u)], 23u)], 29u)], 23u)], 29u)], 29u)], 4294967295u, global0[_wgslsmith_index_u32(50208u, 23u)], 4294967295u)))), ~(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(14536u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73849u, 29u)], 23u)], 0u, 2530u), vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4437u, 29u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32115u, 29u)], 23u)], 29u)], 29u)], 23u)], 23u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u)), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(17480u, 29u)], global1[_wgslsmith_index_u32(47469u, 29u)])) ^ ((vec4<u32>(1u, 79993u, 0u, 4294967295u) ^ vec4<u32>(26877u, global1[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4228u, 23u)], 23u)], global0[_wgslsmith_index_u32(70409u, 23u)])) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75222u, 29u)], 29u)], 29u)], 29u)], 1u, 1u, global1[_wgslsmith_index_u32(2952u, 29u)]), vec4<u32>(15957u, 78111u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23545u, 23u)], 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]))))), 29u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, 171f, 835f, 115f)) + vec4<f32>(-177f, 1182f, 379f, -584f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, 238f, -1003f, 1332f))), vec4<f32>(-789f, _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(-260f + 1165f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(f32(-1f) * -470f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(737f))), _wgslsmith_f_op_f32(floor(-1219f)), -1188f))));
    let var_3 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(1u, 1658u), _wgslsmith_mod_u32(~1u, max(2191u, select(global1[_wgslsmith_index_u32(0u, 29u)] | global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], 7526u, global0[_wgslsmith_index_u32(4294967295u, 23u)], 116462u), vec4<u32>(1614u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9898u, 29u)], 23u)], 23u)])), any(vec2<bool>(true, true)))))), 29u)], 29u)];
    let var_4 = Struct_4(_wgslsmith_mod_vec3_i32(var_0, var_0 & (select(var_0, u_input.b.xyw, vec3<bool>(false, true, true)) | (vec3<i32>(u_input.b.x, u_input.b.x, -92560i) & var_0))), Struct_2(Struct_1(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, 2147483647i)), vec2<i32>(-1i, ~u_input.b.x))), Struct_3(abs(-u_input.b), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 1u), Struct_1(vec3<bool>(false, true && all(vec3<bool>(true, true, false)), true)));
    return Struct_4(-firstTrailingBit(~(vec3<i32>(-2147483647i, -87818i, u_input.b.x) << (vec3<u32>(global1[_wgslsmith_index_u32(var_4.c.c, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_4.c.c, 29u)], 23u)], 23u)], 23u)], 23u)]) % vec3<u32>(32u)))), Struct_2(Struct_1(!select(vec3<bool>(var_4.c.b.a.x, true, false), var_4.b.a.a, var_4.b.a.a)), u_input.a.x), Struct_3(-max(u_input.b, vec4<i32>(var_4.b.b, var_4.b.b, 1i, -1i)), Struct_1(!(!vec3<bool>(true, false, var_4.c.b.a.x))), _wgslsmith_clamp_u32(1u >> (var_4.c.c % 32u), 7107u, 4294967295u)), Struct_1(var_4.b.a.a));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = arg_0.c.b;
    let var_1 = u_input.b.x;
    global2 = array<Struct_3, 21>();
    var var_2 = 57178u;
    var var_3 = vec2<u32>(3654u, 4294967295u);
    return Struct_3(abs(-min(vec4<i32>(var_1, arg_0.a.x, u_input.a.x, var_1) ^ arg_0.c.a, -arg_0.c.a)), arg_0.d, 1u);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    global1 = array<u32, 29>();
    var var_0 = func_4(arg_0);
    global1 = array<u32, 29>();
    let var_1 = !(!(!(false & func_4(arg_0).b.a.x)));
    global0 = array<u32, 23>();
    return arg_0.b;
}

fn func_1() -> Struct_2 {
    let var_0 = -1i < _wgslsmith_mod_i32(min(~u_input.a.x, abs(countOneBits(-51091i))), u_input.b.x);
    var var_1 = global0[_wgslsmith_index_u32(0u, 23u)];
    global1 = array<u32, 29>();
    var_1 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(reverseBits(~51740u >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 29u)], 29u)] % 32u)), 23u)]), 29u)], 23u)];
    global2 = array<Struct_3, 21>();
    return func_5(Struct_4(abs(u_input.a), Struct_2(Struct_1(!vec3<bool>(var_0, var_0, false)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -37327i), u_input.a.x)), func_4(func_2()), Struct_1(!func_4(Struct_4(u_input.a, Struct_2(Struct_1(vec3<bool>(true, var_0, var_0)), 1i), Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -48015i), Struct_1(vec3<bool>(var_0, false, var_0)), 1u), Struct_1(vec3<bool>(var_0, var_0, false)))).b.a)), !func_2().b.a.a, -492f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    let var_1 = ~(~abs(countOneBits(max(u_input.b, u_input.b))));
    let var_2 = Struct_3(var_1, func_1().a, ~global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 29u)], 23u)], 23u)]), 23u)]);
    var var_3 = reverseBits(vec3<i32>(u_input.a.x >> (_wgslsmith_div_u32(41989u, 3305u) % 32u), func_2().c.a.x, -2147483647i)) << (vec3<u32>(firstTrailingBit(6456u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 46309u, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(20057u, 79663u, global0[_wgslsmith_index_u32(var_2.c, 23u)], 4294967295u), vec4<u32>(34605u, global1[_wgslsmith_index_u32(116267u, 29u)], global0[_wgslsmith_index_u32(var_2.c, 23u)], 60240u))), 1u) % vec3<u32>(32u));
    let var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(19020i, 1i), -324f, vec3<u32>(reverseBits(~4294967295u), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)]), ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(37061u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 23u)]) << ((countOneBits(4294967295u) ^ global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 29u)], 29u)]) % 32u)), vec2<i32>(57213i, ~(-1i)));
}

