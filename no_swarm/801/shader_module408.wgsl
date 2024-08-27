struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 19>;

var<private> global2: f32 = -4164f;

var<private> global3: array<vec3<i32>, 15>;

var<private> global4: array<vec4<u32>, 5>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(abs(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_1.a.x, u_input.a.x, arg_0.a.x, arg_1.a.x)), global0.a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(17745u, global0.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 32386u, var_0.a.x, 11233u), vec4<u32>(var_0.a.x, 0u, 56346u, 0u)))));
    let var_2 = global0.a.x;
    global0 = var_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2866f) + 272f);
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-945f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-433f, -2152f) * -1397f));
    global0 = Struct_1(vec4<u32>(57017u, _wgslsmith_add_u32(0u, ~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, ~49074u), min(arg_1.a.yz, ~vec2<u32>(0u, arg_0.a.x))), _wgslsmith_dot_vec2_u32(arg_0.a.wx, select(_wgslsmith_mult_vec2_u32(arg_0.a.yz, vec2<u32>(u_input.a.x, 0u)), vec2<u32>(22085u, 51960u), true))));
    return select(vec4<bool>(all(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 19u)], false, false))), true & global1[_wgslsmith_index_u32(global0.a.x, 19u)], true, all(vec4<bool>(var_0 != -933f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 773u), 19u)], global1[_wgslsmith_index_u32(0u, 19u)] || false, !global1[_wgslsmith_index_u32(4294967295u, 19u)]))), select(vec4<bool>(~u_input.b >= u_input.b, true, true, true), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 19u)], true, global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], global1[_wgslsmith_index_u32(93563u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], false, global1[_wgslsmith_index_u32(20510u, 19u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])), !vec4<bool>(global1[_wgslsmith_index_u32(41541u, 19u)], true, false, global1[_wgslsmith_index_u32(27449u, 19u)]), global1[_wgslsmith_index_u32(global0.a.x, 19u)]), true), !(!(!global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) || all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global0.a.x, 19u)], false), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 19u)]), global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> u32 {
    global1 = array<bool, 19>();
    global0 = Struct_1(vec4<u32>(~0u, 1u, 1u, ~firstTrailingBit(0u)));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), 1000f)) * _wgslsmith_f_op_f32(arg_3.x * arg_3.x)) + 226f), _wgslsmith_f_op_f32(f32(-1f) * -428f), false));
    let var_2 = Struct_1(var_0.a);
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, ~17174u >> (var_2.a.x % 32u)) >> (35527u % 32u), global0.a.x ^ var_2.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -823f)));
    var_0 = _wgslsmith_f_op_f32(exp2(1f));
    var var_1 = select(max(_wgslsmith_mod_vec3_i32(~(-global3[_wgslsmith_index_u32(global0.a.x, 15u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(1u, 20111u)), 15u)]), ~vec3<i32>(-18493i, _wgslsmith_div_i32(u_input.b, -19774i), _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, i32(-1i) * -u_input.b), vec3<i32>(u_input.b, -2147483647i, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(0u, 15u)], vec3<i32>(24007i, u_input.b, u_input.b)) ^ 50292i), select(vec3<i32>(-23206i, func_2(Struct_1(vec4<u32>(33575u, 0u, u_input.a.x, global0.a.x)), Struct_1(global4[_wgslsmith_index_u32(0u, 5u)])), ~u_input.b), vec3<i32>(u_input.b, 0i, -1i), 1u < _wgslsmith_mult_u32(u_input.a.x, 4294967295u))), vec3<bool>(true, global1[_wgslsmith_index_u32(func_4(_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(83128u, 0u, 15326u, 1u)), Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 5999u)), func_3(Struct_1(global0.a), Struct_1(global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1875f, 556f, 749f, 497f) * vec4<f32>(646f, -140f, -1167f, 1400f)))), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, max(36639u, global0.a.x)), 28225u), 19u)]));
    let var_2 = Struct_1(global0.a);
    var var_3 = Struct_1(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), global0.a.zw), var_2.a.x, 0u, _wgslsmith_clamp_u32(var_2.a.x, 0u, firstLeadingBit(u_input.a.x))));
    return Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(11906u, 0u, var_2.a.x, 60360u)), ~vec4<u32>(_wgslsmith_add_u32(31050u, var_2.a.x), 200u, ~var_2.a.x, var_2.a.x)));
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, ~4294967295u), vec2<u32>(global0.a.x, _wgslsmith_div_u32(1u, func_4(global0.a, arg_0, vec4<bool>(global1[_wgslsmith_index_u32(34017u, 19u)], false, false, false), vec4<f32>(230f, -708f, 537f, -1000f))) << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, arg_0.a.x, global0.a.x, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u)), global0.a.x) % 32u)));
    var_0 = abs(~abs(_wgslsmith_clamp_vec2_u32(u_input.a.yx, countOneBits(global0.a.xx), arg_0.a.ww >> (vec2<u32>(u_input.a.x, 14724u) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_mod_vec2_i32(-((~vec2<i32>(-41117i, u_input.b) ^ firstLeadingBit(vec2<i32>(2147483647i, -47241i))) << (vec2<u32>(~global0.a.x, firstLeadingBit(4294967295u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(-select(global3[_wgslsmith_index_u32(23370u, 15u)], global3[_wgslsmith_index_u32(arg_0.a.x, 15u)], global1[_wgslsmith_index_u32(0u, 19u)]), min(vec3<i32>(u_input.b, 2147483647i, 2147483647i), countOneBits(vec3<i32>(u_input.b, u_input.b, -25100i)))), u_input.b));
    let var_2 = func_1();
    global4 = array<vec4<u32>, 5>();
    return select(!select(vec3<bool>(arg_0.a.x != 22706u, false, all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], true, global1[_wgslsmith_index_u32(82686u, 19u)]))), func_3(func_1(), func_1()).zyx, all(func_3(Struct_1(global0.a), Struct_1(vec4<u32>(4294967295u, 4294967295u, 63557u, u_input.a.x))).zyw)), func_3(func_1(), Struct_1(global0.a)).yyz, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    var var_1 = func_1();
    let var_2 = !select(true, false, all(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 19u)], true, var_0.x, global1[_wgslsmith_index_u32(1u, 19u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 19u)], var_0.x, false, true), select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(19716u, 19u)], false, true), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(var_1.a.x, 19u)], false, global1[_wgslsmith_index_u32(0u, 19u)]), global1[_wgslsmith_index_u32(1u, 19u)]))));
    var var_3 = all(!func_3(func_1(), Struct_1(reverseBits(global4[_wgslsmith_index_u32(var_1.a.x, 5u)]))).xxy);
    let var_4 = func_1().a.x;
    var var_5 = func_3(Struct_1(vec4<u32>(abs(var_4 | 0u), ~(~global0.a.x), 0u, ~2086u)), Struct_1(vec4<u32>(4294967295u, func_4(~global4[_wgslsmith_index_u32(u_input.a.x, 5u)], func_1(), select(vec4<bool>(false, false, var_0.x, global1[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], true, false), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1286f, 2258f, -521f, -616f) + vec4<f32>(1000f, 1000f, -267f, -2357f))), var_1.a.x, _wgslsmith_sub_u32(u_input.a.x, ~97738u))));
    var_1 = Struct_1(vec4<u32>(~global0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, global0.a.x), vec4<u32>(global0.a.x, 4294967295u, 1u, var_1.a.x)), reverseBits(vec4<u32>(13273u, var_1.a.x, 1u, 1u))), abs(global0.a.x), 4294967295u) | ~select(global4[_wgslsmith_index_u32(func_4(vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_4), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.x), vec4<f32>(-1143f, 1058f, 1000f, 1000f)), 5u)], countOneBits(vec4<u32>(var_1.a.x, global0.a.x, 0u, 0u)), vec4<bool>(true, var_5.x, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~1u), 0u));
}

