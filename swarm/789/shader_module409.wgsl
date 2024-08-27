struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1914f, vec4<u32>(4294967295u, 97350u, 4294967295u, 1636u), -388f, 18957u);

var<private> global1: array<f32, 6>;

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true));

var<private> global3: array<i32, 17> = array<i32, 17>(-1i, i32(-2147483648), 0i, 34381i, i32(-2147483648), 1i, -1i, 97046i, -47594i, 2147483647i, 2147483647i, i32(-2147483648), 83788i, -30578i, -3354i, 1i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = 45222u;
    global1 = array<f32, 6>();
    var var_2 = abs(select(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(551u, var_0.d, global0.b.x, 4294967295u)), vec4<u32>(1u >> (arg_1.d % 32u), ~var_0.d, var_0.b.x, ~u_input.d), vec4<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)), arg_0 <= 9977i))) >> (vec4<u32>(1u, reverseBits(~47909u) ^ min(arg_1.b.x, 4294967295u), 8268u, _wgslsmith_sub_u32(global0.d, u_input.b.x)) % vec4<u32>(32u));
    global2 = array<vec4<bool>, 30>();
    return vec4<u32>(min(_wgslsmith_add_u32(~1u, global0.b.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(var_0.b << (vec4<u32>(global0.d, u_input.d, 68623u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 2160u, 4294967295u, 61912u)))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1556u, u_input.d, var_0.d, var_0.b.x), vec4<u32>(4294967295u, 11423u, var_2.x, 4294967295u)), vec4<u32>(u_input.b.x, ~0u, abs(4294967295u), countOneBits(u_input.b.x))), _wgslsmith_mult_vec4_u32(~arg_1.b, vec4<u32>(1u, 1u, 1u, 1u))), abs(3975u), 4294967295u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec2<i32>(global3[_wgslsmith_index_u32(~u_input.a, 17u)], _wgslsmith_mod_i32(-_wgslsmith_div_i32(8047i, -u_input.c.x), ~u_input.c.x));
    let var_1 = Struct_1(155f, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1.x, 28704u, 0u, 10906u) | firstTrailingBit(vec4<u32>(arg_1.x, 97634u, u_input.a, 3468u))), func_3(u_input.c.x, Struct_1(global0.a, _wgslsmith_add_vec4_u32(vec4<u32>(82829u, global0.d, 4294967295u, 32029u), vec4<u32>(1u, arg_0.x, 16075u, u_input.a)), -2065f, ~68675u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * global1[_wgslsmith_index_u32(16046u, 6u)])), _wgslsmith_div_f32(-993f, -800f)))), ~firstTrailingBit(2834u));
    var var_2 = !(!vec3<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false)), true));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, var_1.d), 17u)] >> ((~(~1u) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.x, reverseBits(1972u)), firstLeadingBit(global0.d & 6917u))) % 32u);
    return 103683u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global0 = arg_0;
    global3 = array<i32, 17>();
    var var_0 = arg_2.b.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-670f * global0.a), select(_wgslsmith_mult_vec4_u32(~(~arg_2.b), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, 1u, arg_2.d, 4294967295u), arg_0.b)), u_input.b, !(!(!global2[_wgslsmith_index_u32(84072u, 30u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(u_input.b.wx, vec3<u32>(0u, arg_2.d, 11737u)));
    let var_2 = 1i;
    return func_2(firstTrailingBit(vec2<u32>(arg_0.d, var_1.b.x)), reverseBits(~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, arg_0.b.x), vec3<u32>(arg_2.d, 4294967295u, arg_0.d)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !(!any(vec3<bool>(true, true, true)));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) - global0.a) + 807f), ~(vec4<u32>(53050u, 1u, 8334u, 29432u) >> (u_input.b % vec4<u32>(32u))), -193f, _wgslsmith_mod_u32(u_input.d, func_2(~global0.b.xz, u_input.b.wxz))), select(!vec3<bool>(select(var_0, false, true), var_0, true), select(!vec3<bool>(var_0, var_0, true), select(vec3<bool>(var_0, true, true), !vec3<bool>(false, true, var_0), !var_0), !select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, false), false)), vec3<bool>(var_0, all(vec4<bool>(true, var_0, var_0, var_0)), 0u == min(15738u, u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~global0.b.x), 6u)]), ~select(vec4<u32>(1u, u_input.a, global0.b.x, 0u), vec4<u32>(56586u, u_input.a, 1u, 35142u) >> (global0.b % vec4<u32>(32u)), select(true, var_0, var_0)), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~firstTrailingBit(global0.d), 6u)], 1000f)), u_input.a));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)] - -2558f) * _wgslsmith_f_op_f32(global0.c * 1000f))))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~global0.b.x, 6u)], _wgslsmith_f_op_f32(abs(-1209f)))), 18040u);
    let var_2 = firstLeadingBit(u_input.c.wzy);
    let var_3 = vec2<u32>(15862u, ~_wgslsmith_add_u32(min(u_input.a, u_input.d), _wgslsmith_div_u32(global0.b.x, u_input.a)) ^ _wgslsmith_add_u32(firstTrailingBit(0u), func_2(func_3(var_2.x, Struct_1(global0.a, u_input.b, 1635f, global0.d)).yx, global0.b.ywz)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-589f * global0.c), _wgslsmith_f_op_f32(round(-983f))) - _wgslsmith_f_op_f32(max(global0.a, global1[_wgslsmith_index_u32(~u_input.b.x, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 6u)]) - _wgslsmith_f_op_f32(1308f * 1634f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(~vec2<u32>(var_3.x, 85845u), vec3<u32>(u_input.d, 29056u, u_input.d)), ~_wgslsmith_add_u32(global0.d, global0.d), 4294967295u, _wgslsmith_mod_u32(var_3.x & global0.b.x, ~0u)), min(select(vec4<u32>(0u, 4294967295u, global0.d, u_input.d), vec4<u32>(61251u, 0u, 1u, global0.d), global2[_wgslsmith_index_u32(u_input.a, 30u)]), global0.b) | vec4<u32>(~0u, 0u, 1u, reverseBits(0u))), global1[_wgslsmith_index_u32(~1u, 6u)], u_input.b.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = ~(~vec2<u32>(~global0.b.x, countOneBits(abs(global0.d))));
    global3 = array<i32, 17>();
    var var_1 = -712f;
    global3 = array<i32, 17>();
    global2 = array<vec4<bool>, 30>();
    return vec2<bool>(all(select(vec4<bool>(any(vec2<bool>(true, false)), true, all(vec3<bool>(false, false, false)), true), select(global2[_wgslsmith_index_u32(30055u, 30u)], global2[_wgslsmith_index_u32(select(1u, 12518u, true), 30u)], vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), true && !any(global2[_wgslsmith_index_u32(countOneBits(0u), 30u)]));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global2 = array<vec4<bool>, 30>();
    global0 = arg_1;
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(~(abs(reverseBits(arg_1.b.x)) << (~countOneBits(25948u) % 32u)), 6u)], vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(118098u), _wgslsmith_mult_u32(0u, u_input.d)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(41499u, arg_2.x, 4294967295u), 29733u)), ~(~(~arg_1.d)), 25795u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(36479u, 1u, 1u, 18953u), global0.b), vec4<u32>(_wgslsmith_div_u32(17416u, arg_2.x), ~8840u, ~u_input.b.x, countOneBits(4294967295u)))), arg_1.c, 4294967295u);
    var var_1 = arg_1.b.x;
    var_1 = arg_2.x;
    return func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(select(1i, -18005i, true), 1i), -u_input.c.x, u_input.c.x), ~_wgslsmith_sub_vec4_i32(~u_input.c, ~vec4<i32>(24033i, global3[_wgslsmith_index_u32(var_0.d, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(global0.b.x, 17u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(u_input.c.xyy, (reverseBits(vec3<i32>(2147483647i, 1i, -47585i) & vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)) ^ firstLeadingBit(u_input.c.yxy)) << (~vec3<u32>(~u_input.b.x, select(22934u, global0.d, true), u_input.a << (u_input.d % 32u)) % vec3<u32>(32u)));
    let var_1 = func_6(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, -896f, -1188f))), -(vec3<i32>(-1i) * -vec3<i32>(0i, var_0.x, -1i)), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 25075u, u_input.b.x), u_input.b), 6u)]), ~(global0.b & vec4<u32>(63517u, 51492u, 55260u, global0.d)), _wgslsmith_f_op_f32(global0.c + 446f), global0.b.x), func_1(_wgslsmith_mod_i32(~var_0.x, -45036i))), Struct_1(global0.c, firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.a, 6u)], _wgslsmith_f_op_f32(trunc(274f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1589f)), _wgslsmith_f_op_f32(step(387f, global1[_wgslsmith_index_u32(global0.b.x, 6u)])))), _wgslsmith_add_u32(~u_input.a, ~u_input.a) << (u_input.a % 32u)), global0.b.wz);
    global1 = array<f32, 6>();
    let var_2 = ~vec4<u32>(4294967295u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.d, 34817u), ~var_1.b.x), 8263u) << (vec4<u32>(0u, 23738u, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(50406u, var_1.d, 73784u), vec3<u32>(18143u, 0u, u_input.a))), 53211u) % vec4<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(-829f)), ~((~var_1.b >> (vec4<u32>(u_input.b.x, var_1.b.x, 108141u, 4294967295u) % vec4<u32>(32u))) & global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0.b.x, 6u)], 325f))))), _wgslsmith_sub_u32(~var_2.x ^ ~(~4294967295u), ~func_2(~u_input.b.yz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 13043u), global0.b.zxz, vec3<u32>(u_input.d, 58285u, 29072u)))));
    var var_4 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), !vec2<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 6u)] + var_3.c) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.d, 6u)]), true));
    var var_5 = ~var_1.b.yyy;
    var var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-877f, global1[_wgslsmith_index_u32(21395u, 6u)], -2242f), vec3<f32>(483f, -824f, global1[_wgslsmith_index_u32(44082u, 6u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(688f, 763f, global1[_wgslsmith_index_u32(var_5.x, 6u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(532f, var_3.c, 1070f))), select(!vec3<bool>(false, true, var_4.x), vec3<bool>(true, true, true), any(vec3<bool>(var_4.x, true, var_4.x))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_1.c + -352f), _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(ceil(var_1.c)))))), 4294967295u, select(-u_input.c.x, 0i, var_4.x), _wgslsmith_div_f32(698f, global1[_wgslsmith_index_u32(var_2.x, 6u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, -292f, 344f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1000f, var_3.c)), true)))));
}

