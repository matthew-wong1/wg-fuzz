struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1i, vec3<f32>(-314f, 343f, -622f), 12212u), Struct_1(-15912i, vec3<f32>(-1057f, 1264f, 1155f), 23989u), Struct_1(2147483647i, vec3<f32>(1000f, -1773f, 498f), 4294967295u), Struct_1(46682i, vec3<f32>(583f, 1000f, 247f), 8258u), Struct_1(1i, vec3<f32>(-300f, -1153f, 375f), 16504u), Struct_1(-20773i, vec3<f32>(589f, 1333f, -1046f), 1u), Struct_1(-1i, vec3<f32>(-414f, 808f, 977f), 4294967295u), Struct_1(-1i, vec3<f32>(1089f, -369f, 380f), 10109u), Struct_1(2147483647i, vec3<f32>(-730f, -1555f, 2703f), 17894u), Struct_1(0i, vec3<f32>(-1049f, 879f, 1000f), 17869u));

var<private> global1: array<f32, 31>;

var<private> global2: array<vec3<f32>, 8>;

var<private> global3: array<f32, 17>;

var<private> global4: array<u32, 10> = array<u32, 10>(20047u, 79497u, 0u, 0u, 43317u, 11067u, 60271u, 0u, 0u, 9398u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 10>();
    global1 = array<f32, 31>();
    global3 = array<f32, 17>();
    var var_0 = vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstLeadingBit(abs(arg_0.c)), 10u)], 10u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 44060u), 10u)], global4[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(0u, 44620u, 0u)), 10u)]), 10u)], min(abs(~arg_0.c), global4[_wgslsmith_index_u32(~48381u, 10u)] >> (global4[_wgslsmith_index_u32(63580u, 10u)] % 32u)), select(~(~arg_0.c), 49135u, !select(false, false, true))) | vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(92252u), _wgslsmith_mult_u32(~arg_0.c, reverseBits(global4[_wgslsmith_index_u32(arg_0.c, 10u)]))), 4294967295u, ~_wgslsmith_sub_u32(0u, arg_0.c));
    global4 = array<u32, 10>();
    return _wgslsmith_f_op_f32(-1172f - 432f);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(-1309f * global3[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 10u)], 17u)]), -328f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f - global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(53195u, 10u)], 17u)])), -976f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 10u)]))), false)), 1u);
    global4 = array<u32, 10>();
    global1 = array<f32, 31>();
    let var_1 = vec3<f32>(1671f, 352f, -2730f);
    global4 = array<u32, 10>();
    return -2147483647i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(max(abs(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 30728u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37933u, 10u)], 10u)]), max(vec3<u32>(global4[_wgslsmith_index_u32(45045u, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(arg_0.c, 10u)]), vec3<u32>(41732u, arg_0.c, arg_0.c))))), select(global4[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_dot_vec3_u32((vec3<u32>(global4[_wgslsmith_index_u32(14926u, 10u)], 1u, arg_0.c) ^ vec3<u32>(arg_0.c, 0u, 1021u)) >> (select(vec3<u32>(global4[_wgslsmith_index_u32(0u, 10u)], 0u, global4[_wgslsmith_index_u32(3401u, 10u)]), vec3<u32>(20657u, 4974u, arg_0.c), true) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.c), _wgslsmith_mult_u32(13876u, arg_0.c), 1u)), true)), 10u)];
    var var_2 = ~(global4[_wgslsmith_index_u32(0u, 10u)] ^ ~var_1.c);
    let var_3 = Struct_1(u_input.b & -19448i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, var_1.b.x, -1187f))))), ~1u);
    var var_4 = ~(-vec4<i32>(var_3.a, -select(var_0, 2147483647i, false), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), var_1.a), 0i));
    return global0[_wgslsmith_index_u32(20727u, 10u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), true), false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true), false), vec2<bool>(!all(vec4<bool>(true, true, true, true)), true)), vec2<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), vec2<bool>(true, !(!all(vec3<bool>(false, true, true)))));
    var var_1 = -_wgslsmith_mod_vec3_i32(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(-13412i, 2147483647i, 11707i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0.a, 0i), vec3<i32>(-2147483647i, arg_0.a, 1i)), vec3<bool>(select(var_0.x, var_0.x, false), true, any(vec3<bool>(var_0.x, false, false)))), countOneBits(countOneBits(vec3<i32>(0i, arg_0.a, arg_0.a) ^ vec3<i32>(u_input.a.x, -26192i, 2147483647i))));
    global2 = array<vec3<f32>, 8>();
    var_0 = vec2<bool>(!(var_0.x || true), var_0.x && select(true, any(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), true));
    let var_2 = vec4<f32>(440f, arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(func_3(Struct_1(var_1.x, vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], -690f, global3[_wgslsmith_index_u32(arg_0.c, 17u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.c, 10u)], 10u)])))) - -1906f)), global3[_wgslsmith_index_u32(28181u, 17u)]);
    return global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0.c, arg_0.c), countOneBits(global4[_wgslsmith_index_u32(53277u, 10u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 54988u, 74738u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], 32208u, arg_0.c))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, arg_0.c), vec3<u32>(arg_0.c, 36071u, 1u)), vec3<u32>(arg_0.c, 0u, arg_0.c), false)), 31071u), 10u)], 10u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    global2 = array<vec3<f32>, 8>();
    let var_1 = -abs(max(abs(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, u_input.a.x)) << (firstTrailingBit(vec4<u32>(1u, 49428u, 14605u, global4[_wgslsmith_index_u32(arg_0.c, 10u)])) % vec4<u32>(32u)), -vec4<i32>(arg_0.a, -14266i, arg_0.a, 2147483647i)));
    global4 = array<u32, 10>();
    global4 = array<u32, 10>();
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_6(func_5(func_4(Struct_1(func_2(false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 171f, 249f)), 4294967295u))));
    let var_1 = var_0.b.x;
    var var_2 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)) | !(true != (global4[_wgslsmith_index_u32(1u, 10u)] == 0u)), any(vec2<bool>(true, true)));
    let var_3 = global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 10u)], 31u)];
    global4 = array<u32, 10>();
    return func_6(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(var_0.c ^ 1u)), countOneBits(25450u)), 10u)]);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(1i, arg_1.b, global4[_wgslsmith_index_u32(arg_1.c, 10u)]);
    let var_1 = vec2<bool>(true, !(false & any(vec3<bool>(true, true, true))) || true);
    let var_2 = -2147483647i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(0u > _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 4294967295u, 32224u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 10u)], 39969u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])), any(vec2<bool>(false, true)), func_7(-vec3<i32>(u_input.b, -57441i, 25795i), func_1(u_input.a.x), vec4<f32>(1165f, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 17u)]))));
    let var_1 = Struct_1(~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(countOneBits(107305u), 8u)])), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(~4294967295u, 10u)], 16221u));
    let var_2 = var_0.x;
    let var_3 = select(vec4<bool>(var_0.x, func_1(2147483647i).c == global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(37975u, 78634u), 10u)], true, 16739i < (_wgslsmith_sub_i32(var_1.a, 1i) >> (~var_1.c % 32u))), select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), !select(vec4<bool>(false, false, false, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !var_0.x), var_0.x), any(select(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, true, false, true)), !vec4<bool>(false, true, var_0.x, var_0.x), !var_0.x), vec4<bool>(var_0.x, var_0.x | true, var_0.x, select(var_0.x, true, var_0.x)), true)));
    let var_4 = global0[_wgslsmith_index_u32((_wgslsmith_mult_u32(func_6(var_1).c, global4[_wgslsmith_index_u32(~var_1.c, 10u)]) << (~global4[_wgslsmith_index_u32(0u >> (firstTrailingBit(55132u) % 32u), 10u)] % 32u)) << (0u % 32u), 10u)];
    global3 = array<f32, 17>();
    global3 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, var_4.b.x, max(_wgslsmith_div_vec3_u32(~vec3<u32>(var_4.c, 3175u, 85492u), vec3<u32>(global4[_wgslsmith_index_u32(0u, 10u)], 3641u, var_4.c)), ~select(vec3<u32>(5966u, 0u, var_1.c), vec3<u32>(global4[_wgslsmith_index_u32(56540u, 10u)], 82037u, var_4.c), var_3.zyw)) ^ ~(~(~vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], 36599u, 60825u))), -_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, var_4.a), u_input.a.x));
}

