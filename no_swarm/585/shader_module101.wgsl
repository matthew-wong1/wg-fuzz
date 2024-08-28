struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(3603u, Struct_2(22603i)), Struct_3(26839u, Struct_2(-55489i)), Struct_3(4294967295u, Struct_2(-13429i)), Struct_3(0u, Struct_2(523i)), Struct_3(0u, Struct_2(-18462i)), Struct_3(4294967295u, Struct_2(i32(-2147483648))), Struct_3(805u, Struct_2(-15784i)), Struct_3(76779u, Struct_2(28728i)), Struct_3(11110u, Struct_2(20767i)), Struct_3(27956u, Struct_2(1386i)), Struct_3(1u, Struct_2(-11268i)), Struct_3(20816u, Struct_2(58780i)), Struct_3(1u, Struct_2(2147483647i)), Struct_3(4006u, Struct_2(-34561i)), Struct_3(220u, Struct_2(-8288i)), Struct_3(0u, Struct_2(-53185i)), Struct_3(4294967295u, Struct_2(0i)), Struct_3(60628u, Struct_2(-1i)), Struct_3(130059u, Struct_2(1i)), Struct_3(0u, Struct_2(-1i)), Struct_3(0u, Struct_2(0i)), Struct_3(48441u, Struct_2(-13273i)), Struct_3(1u, Struct_2(2147483647i)), Struct_3(20648u, Struct_2(5892i)), Struct_3(64238u, Struct_2(2147483647i)), Struct_3(108336u, Struct_2(32540i)), Struct_3(4294967295u, Struct_2(i32(-2147483648))), Struct_3(44742u, Struct_2(-13571i)), Struct_3(4294967295u, Struct_2(-11498i)), Struct_3(8690u, Struct_2(14452i)), Struct_3(0u, Struct_2(0i)), Struct_3(25343u, Struct_2(2147483647i)));

var<private> global3: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 12851u, 24990u, 86551u), vec4<u32>(0u, 2188u, 33186u, 22328u), vec4<u32>(18807u, 34034u, 0u, 33104u), vec4<u32>(4287u, 38983u, 74152u, 0u), vec4<u32>(5237u, 39057u, 0u, 40501u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> bool {
    global3 = array<vec4<u32>, 5>();
    global3 = array<vec4<u32>, 5>();
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(15753u, 34307u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))), 28u)], 28u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)] | _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(21225u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u)), 1u), 28u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~44256u | _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), ~global0[_wgslsmith_index_u32(35461u, 28u)]), 28u)]), 28u)] ^ _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27964u, 28u)], 28u)]), ~(~global0[_wgslsmith_index_u32(55497u, 28u)] << (_wgslsmith_div_u32(0u, 23880u) % 32u)), 0u), 32u)];
    let var_1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(firstLeadingBit(min(vec2<i32>(arg_1, 19776i), vec2<i32>(-17379i, u_input.a) | vec2<i32>(1i, u_input.a)))), vec2<i32>(var_0.b.a, _wgslsmith_clamp_i32(1513i, -u_input.a, firstTrailingBit(51525i)) ^ arg_1));
    var var_2 = abs(vec3<u32>(32782u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(15845u, var_0.a, global0[_wgslsmith_index_u32(var_0.a, 28u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7447u, 28u)], 28u)], 1u, 1000u))), ~((var_0.a & var_0.a) ^ _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(42482u, 5u)], vec4<u32>(45948u, 75779u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u)))));
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = all(select(vec4<bool>(false | arg_0, func_3(true, 1i, vec4<f32>(-132f, -725f, -126f, 863f), u_input.a) & (u_input.a == u_input.a), arg_0, any(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_3, arg_0, true)))), !vec4<bool>(true, true, arg_2.x == 10456i, true), vec4<bool>(!(!arg_0), arg_3, false, true != arg_3)));
    var var_1 = _wgslsmith_sub_u32(0u, ~_wgslsmith_mod_u32(109089u, global0[_wgslsmith_index_u32(arg_1, 28u)] >> (arg_1 % 32u))) << (reverseBits(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(min(arg_1, arg_1))), 28u)]) % 32u);
    global1 = array<vec4<i32>, 12>();
    global1 = array<vec4<i32>, 12>();
    var var_2 = 28827u;
    return Struct_1(vec3<u32>(~min(0u, 0u << (1u % 32u)), 1u & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45639u, 28u)], 28u)], arg_1), global3[_wgslsmith_index_u32(arg_1, 5u)]), vec4<u32>(22018u, 22880u, 18658u, 4294967295u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(75644u, 28u)]), vec2<u32>(arg_1, 17343u)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = abs(-vec2<i32>(-(-52593i ^ u_input.a), -_wgslsmith_sub_i32(7992i, 2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(351f)) * -524f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(f32(-1f) * -564f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1208f, 1263f)) * _wgslsmith_f_op_f32(f32(-1f) * -153f))))) * _wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-802f, -1885f)))))));
    let var_2 = global0[_wgslsmith_index_u32(0u, 28u)] << (firstTrailingBit(global0[_wgslsmith_index_u32(max(~arg_1.a.x, 40428u), 28u)]) % 32u);
    let var_3 = arg_0.x;
    global1 = array<vec4<i32>, 12>();
    return _wgslsmith_div_vec3_u32(arg_1.a, abs(arg_1.a) << ((~vec3<u32>(19081u, 4294967295u, 1u) >> (~_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(var_2, 28008u, global0[_wgslsmith_index_u32(arg_1.a.x, 28u)])) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1() -> vec4<i32> {
    global2 = array<Struct_3, 32>();
    let var_0 = vec2<bool>(-1i != u_input.a, false);
    var var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 28u)], 123131u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 1u, global0[_wgslsmith_index_u32(46944u, 28u)])) ^ ~(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global0[_wgslsmith_index_u32(97426u, 28u)])), func_4(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.a), -vec2<i32>(u_input.a, 55472i)), func_2(false, ~0u, -vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), var_0.x), var_0.x)) << (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~95351u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)]), func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-40290i, u_input.a), vec2<i32>(1i, 1i)), func_2(true, global0[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(3821u, 12u)], var_0.x), var_0.x).x), 1u >> (reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]) % 32u), 1u) % vec3<u32>(32u));
    global0 = array<u32, 28>();
    let var_2 = _wgslsmith_clamp_vec3_i32(max(~vec3<i32>(u_input.a, 25775i, 39004i), max(~vec3<i32>(u_input.a, -2147483647i, 21171i), vec3<i32>(u_input.a, u_input.a, -34298i) ^ vec3<i32>(29006i, u_input.a, 4404i))) << (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(var_1.x, var_1.x, 27301u))) % vec3<u32>(32u)), vec3<i32>(u_input.a, 31216i << (0u % 32u), -(~(-3136i) & ~u_input.a)), vec3<i32>(0i, u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 0i), -2147483647i)) | vec3<i32>(-11334i | _wgslsmith_mod_i32(-1614i, u_input.a), ~(~(-29591i)), -6868i));
    return -(~(~min(~vec4<i32>(15920i, var_2.x, -79693i, -34079i), countOneBits(vec4<i32>(-17807i, -26790i, 28410i, 59440i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(abs(func_1()), vec4<i32>(1i, func_1().x, 0i, 2147483647i | max(-15312i, firstLeadingBit(u_input.a))));
    global0 = array<u32, 28>();
    let var_1 = global0[_wgslsmith_index_u32(max(~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54127u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], 28u)])), 28u)], ~32961u), 28u)] | 1u;
    var var_2 = firstLeadingBit(var_0.x);
    let var_3 = !(!(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), var_0.x << (~(var_1 >> (var_1 % 32u)) % 32u), _wgslsmith_mod_i32(u_input.a, var_0.x)), select(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u | global0[_wgslsmith_index_u32(var_1, 28u)], 28u)], 0u, ~0u, firstTrailingBit(7394u)), global3[_wgslsmith_index_u32(~var_1 | 1u, 5u)], all(vec4<bool>(var_3.x, true, var_3.x, var_3.x))) >> (vec4<u32>(global0[_wgslsmith_index_u32(76389u, 28u)], ~0u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~var_1), 28u)], var_1) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1297f, 1000f, 980f, 1180f) * vec4<f32>(559f, -244f, -1123f, 1000f)) + vec4<f32>(_wgslsmith_f_op_f32(585f + -474f), _wgslsmith_div_f32(-932f, 1137f), -646f, _wgslsmith_div_f32(2391f, 559f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1104f, 2290f, var_3.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 1124f, true)), -1197f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1926f - -988f))), _wgslsmith_f_op_f32(f32(-1f) * -1078f))), _wgslsmith_f_op_f32(max(-655f, 340f)), ~(_wgslsmith_mod_u32(4294967295u, var_1) << (~4294967295u % 32u)));
}

