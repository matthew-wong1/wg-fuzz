struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-53746i, 1i, 3860i), vec3<u32>(1u, 1u, 42174u));

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 0u, 0u, 0u, 4294967295u, 5320u, 58343u, 0u, 4294967295u, 1u, 110952u, 4294967295u, 2060u, 1u, 19393u, 4294967295u, 73146u, 38289u, 4939u, 2587u, 18292u, 0u, 287u);

var<private> global2: vec3<f32>;

var<private> global3: array<vec2<u32>, 10>;

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(1i, -17507i, -50758i), vec3<u32>(1u, 4294967295u, 86973u)), Struct_1(vec3<i32>(46915i, 0i, -1i), vec3<u32>(4294967295u, 2929u, 13513u)), Struct_1(vec3<i32>(-59254i, 5361i, 12784i), vec3<u32>(250u, 64658u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, -98274i, i32(-2147483648)), vec3<u32>(96948u, 0u, 21015u)), Struct_1(vec3<i32>(1757i, 75883i, 0i), vec3<u32>(86436u, 1u, 1u)), Struct_1(vec3<i32>(-1i, -80491i, 1i), vec3<u32>(4326u, 1078u, 32486u)), Struct_1(vec3<i32>(51906i, 2147483647i, -35974i), vec3<u32>(11122u, 4294967295u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<u32>(33151u, 3460u, 89963u)), Struct_1(vec3<i32>(1i, 0i, 0i), vec3<u32>(50898u, 9739u, 1u)), Struct_1(vec3<i32>(1i, 12156i, 8286i), vec3<u32>(69417u, 7779u, 4294967295u)), Struct_1(vec3<i32>(16693i, -1i, -1i), vec3<u32>(0u, 4294967295u, 23010u)), Struct_1(vec3<i32>(12506i, -38789i, 6457i), vec3<u32>(0u, 0u, 52325u)), Struct_1(vec3<i32>(40149i, 1i, 14110i), vec3<u32>(11794u, 44327u, 4294967295u)), Struct_1(vec3<i32>(-21700i, -35447i, 27486i), vec3<u32>(77694u, 4294967295u, 84426u)), Struct_1(vec3<i32>(-1i, -11045i, 29987i), vec3<u32>(4294967295u, 118704u, 37056u)), Struct_1(vec3<i32>(2147483647i, 45646i, 1i), vec3<u32>(14980u, 0u, 0u)), Struct_1(vec3<i32>(-22718i, 2147483647i, 1i), vec3<u32>(16207u, 0u, 23851u)), Struct_1(vec3<i32>(1259i, 1i, 1215i), vec3<u32>(0u, 44485u, 57430u)), Struct_1(vec3<i32>(-2294i, 0i, -33360i), vec3<u32>(38085u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(-28708i, 1i, -38415i), vec3<u32>(4294967295u, 16338u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), -12306i, 50570i), vec3<u32>(0u, 4294967295u, 20998u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(~abs(0u), 21u)];
    var var_1 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(68737u), 23u)], 23u)];
    var var_2 = true;
    let var_3 = u_input.b;
    var var_4 = Struct_1(global0.a, ~abs(countOneBits(~vec3<u32>(var_0.b.x, var_0.b.x, var_3))));
    return vec4<bool>(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), false)) || select(all(vec3<bool>(true, true, true)), select(global2.x == -930f, false, true), true), all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, false)))) && (var_4.a.x == _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a.x, -1i), ~global0.a)), select(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), false, false), select(true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))) && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(global2.x))) == _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -576f))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = 10219i;
    let var_1 = arg_1;
    var var_2 = vec4<bool>(any(select(vec4<bool>(true, any(vec4<bool>(arg_2, arg_2, true, arg_2)), !arg_2, true), vec4<bool>(true, true, true, true), select(func_3(), select(vec4<bool>(true, false, true, arg_2), vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(arg_2, arg_2, false, arg_2)), true))), true, any(select(vec3<bool>(arg_0 <= 553f, any(vec4<bool>(arg_2, false, arg_2, true)), true), select(func_3().xzx, !vec3<bool>(arg_2, true, true), -35946i != var_0), any(vec4<bool>(true, arg_2, false, arg_2)))), !select(arg_2 & true, arg_2, ~global0.b.x <= global1[_wgslsmith_index_u32(0u, 23u)]));
    var var_3 = arg_1;
    let var_4 = vec2<f32>(1347f, _wgslsmith_f_op_f32(sign(global2.x)));
    return global4[_wgslsmith_index_u32(45794u, 21u)];
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<i32>(~(-2147483647i), ~1i, ~(-_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(10229i, 24696i, 1i, u_input.d.x))));
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-global2.x) <= arg_3.x, arg_1.x > 0u, select(any(func_3()), !all(vec3<bool>(true, true, true)), true));
    global3 = array<vec2<u32>, 10>();
    let var_2 = func_2(-423f, global4[_wgslsmith_index_u32(~1u, 21u)], !var_1.x);
    global2 = arg_3;
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(var_2.a.x, arg_2.a.x, -1i)), vec3<i32>(arg_0, u_input.d.x, arg_2.a.x)), u_input.d.yzx), ~arg_0, ~var_0.x), _wgslsmith_div_vec3_u32(~vec3<u32>(~arg_1.x, 1u, global1[_wgslsmith_index_u32(57231u << (arg_1.x % 32u), 23u)]), vec3<u32>(~22123u & ~global1[_wgslsmith_index_u32(global0.b.x, 23u)], _wgslsmith_add_u32(~4294967295u, arg_1.x), ~abs(1u))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 909f)), -1064f));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2065f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xz)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, global2.x)), global2.yy)))))));
    var var_2 = vec2<bool>(!arg_0.x || any(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), false)), !(!(arg_0.x && arg_0.x)));
    global4 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - global2.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_5(vec2<bool>(true, !(~0u > select(u_input.b, global0.b.x, false))), func_4(~u_input.d.x, _wgslsmith_mult_vec3_u32(~(~global0.b), ~(~global0.b)), func_2(_wgslsmith_div_f32(-1155f, -2411f), global4[_wgslsmith_index_u32(1u, 21u)], (4294967295u ^ global0.b.x) < 5659u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(trunc(280f)), _wgslsmith_f_op_f32(exp2(global2.x))))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), func_2(_wgslsmith_div_f32(454f, global2.x), func_4(1i, global0.b, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.x, 23u)], 21u)], vec3<f32>(global2.x, global2.x, global2.x)), true).b), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(4294967295u, 1u, global0.b.x), u_input.a, vec3<bool>(true, false, true)), _wgslsmith_mult_vec3_u32(~u_input.a, vec3<u32>(0u, 4294967295u, 4294967295u) ^ global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, -1004f, global2.x) - vec4<f32>(global2.x, -190f, 163f, -802f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, global2.x, global2.x, -849f)), vec4<f32>(global2.x, 828f, -1000f, 379f))))));
    global1 = array<u32, 23>();
    let var_1 = -1041f;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(488f + global2.x);
    return Struct_1(vec3<i32>(-global0.a.x, func_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(floor(var_3)))), global4[_wgslsmith_index_u32(global0.b.x, 21u)], true).a.x, -u_input.d.x), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(0u) >= u_input.a.x;
    let var_1 = func_1();
    var var_2 = Struct_1(~_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 5469i, 33973i, 0i), vec4<i32>(0i, var_1.a.x, u_input.d.x, 1i)), ~var_1.a.x, ~u_input.d.x)), ~vec3<u32>(u_input.a.x, ~u_input.a.x ^ 46723u, global0.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2114f));
    let var_4 = !vec2<bool>(func_3().x && true, true);
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f)))), 1000f, _wgslsmith_f_op_f32(max(global2.x, 1233f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(ceil(695f)), _wgslsmith_f_op_f32(f32(-1f) * -539f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, 1209f, global2.x) + vec3<f32>(-178f, 214f, 831f))))));
    let var_5 = func_4(~u_input.d.x, u_input.a, func_4(-1i ^ (_wgslsmith_add_i32(-1i, var_1.a.x) << (global0.b.x % 32u)), var_2.b, global4[_wgslsmith_index_u32(abs(max(_wgslsmith_sub_u32(51298u, var_2.b.x), 8214u)), 21u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1113f, global2.x, global2.x) + vec3<f32>(1172f, -1000f, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, 417f, global2.x) - vec3<f32>(-539f, 535f, global2.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(-573f)), -1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1798f), _wgslsmith_f_op_f32(global2.x + global2.x)), vec3<f32>(-602f, global2.x, 1000f)))).a;
    var_2 = Struct_1(vec3<i32>(var_2.a.x, 0i << (~4294967295u % 32u), 1i), abs(~vec3<u32>(var_2.b.x >> (global0.b.x % 32u), 43509u, firstTrailingBit(var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

