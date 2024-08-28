struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-1i, -32098i, 0i, -1i, -27164i, 1i, 2147483647i, 14816i, 40442i, -58025i, -16648i, -1i, 2147483647i, i32(-2147483648));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true, -4478i, vec2<f32>(-1498f, -664f), 744f), Struct_1(true, -2569i, vec2<f32>(341f, -775f), -844f), Struct_1(true, 14505i, vec2<f32>(330f, -838f), 679f), Struct_1(true, -41721i, vec2<f32>(-463f, 618f), -1277f), Struct_1(false, 0i, vec2<f32>(-1041f, 170f), 812f), Struct_1(false, 0i, vec2<f32>(1738f, -842f), 968f), Struct_1(false, 1i, vec2<f32>(-676f, -2589f), -187f), Struct_1(true, -27176i, vec2<f32>(1000f, 1000f), 1000f), Struct_1(true, 0i, vec2<f32>(826f, 466f), -292f), Struct_1(false, i32(-2147483648), vec2<f32>(-1888f, -1000f), 186f), Struct_1(true, 13212i, vec2<f32>(378f, 700f), 903f), Struct_1(true, 42718i, vec2<f32>(-1257f, 1205f), 342f), Struct_1(false, -12545i, vec2<f32>(-171f, -375f), -569f), Struct_1(true, 2147483647i, vec2<f32>(-992f, -1567f), 456f), Struct_1(false, -63251i, vec2<f32>(-1205f, -308f), -491f), Struct_1(true, -25356i, vec2<f32>(981f, 1445f), 773f), Struct_1(false, 1i, vec2<f32>(-1000f, -1000f), 395f), Struct_1(false, -19776i, vec2<f32>(1338f, 1000f), -582f), Struct_1(false, 2147483647i, vec2<f32>(-374f, -192f), -777f), Struct_1(true, i32(-2147483648), vec2<f32>(-1739f, -512f), 907f), Struct_1(true, 2147483647i, vec2<f32>(-867f, 2861f), 342f));

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    return vec4<i32>(15388i, 6809i >> (~(~(~arg_0.c.x)) % 32u), firstTrailingBit(_wgslsmith_sub_i32(2147483647i, arg_1.d.b)), 1i);
}

fn func_3() -> vec3<bool> {
    global3 = array<bool, 30>();
    let var_0 = vec4<bool>(!all(select(vec4<bool>(global3[_wgslsmith_index_u32(3858u, 30u)], false, false, global3[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(26643u, 30u)], false, global3[_wgslsmith_index_u32(34794u, 30u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(5359u, 30u)], false, global3[_wgslsmith_index_u32(713u, 30u)]), vec4<bool>(global3[_wgslsmith_index_u32(47104u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(25645u, 30u)], true)), !vec4<bool>(global3[_wgslsmith_index_u32(54199u, 30u)], false, global3[_wgslsmith_index_u32(4294967295u, 30u)], false))), global3[_wgslsmith_index_u32(1u, 30u)], !(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-1747f * -451f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1402f * global2.x)))), all(vec3<bool>(global3[_wgslsmith_index_u32(17530u, 30u)], true, global2.x >= _wgslsmith_f_op_f32(-global2.x))));
    var var_1 = global1[_wgslsmith_index_u32(~min(~_wgslsmith_mult_u32(33961u, select(0u, 78820u, false)), 0u), 21u)];
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    return !(!vec3<bool>(select(var_0.x, true, var_1.a) || global3[_wgslsmith_index_u32(firstTrailingBit(103580u), 30u)], var_0.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = firstTrailingBit(arg_2.c);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_f32(arg_2.e.c.x * _wgslsmith_f_op_f32(step(global2.x, arg_0.d)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -641f, arg_0.d) * arg_2.a)), _wgslsmith_f_op_vec3_f32(-arg_2.a), !func_3())) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-685f - -1366f)), arg_0.c.x, var_1)), _wgslsmith_f_op_f32(exp2(arg_2.d.d)), var_0, Struct_1(arg_1.c, _wgslsmith_mod_i32(arg_2.e.b, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_0.x, 14u)], -32927i, -2494i)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], -43143i, arg_0.b), vec3<i32>(25982i, 0i, 55011i)), vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(max(var_1, arg_0.c.x)))), arg_1.a), Struct_1(true, -1i, arg_0.c, _wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1165f))))))));
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_2.e.c.x, -686f, 1156f)), vec4<f32>(-569f, arg_0.d, 1000f, 896f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.d, 710f, -1000f, -1000f))))))));
    return select(!arg_2.e.a, false, true);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    global0 = array<i32, 14>();
    let var_0 = Struct_2(vec3<f32>(1417f, _wgslsmith_f_op_f32(f32(-1f) * -1210f), -785f), 1769f, abs(~(~vec4<u32>(arg_0, 1u, 78690u, arg_0) << ((vec4<u32>(arg_0, arg_0, arg_0, arg_0) & vec4<u32>(11533u, arg_0, 0u, 0u)) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(~4294967295u, 21u)], Struct_1(global3[_wgslsmith_index_u32(45820u, 30u)], _wgslsmith_sub_i32(-u_input.a.x << (1u % 32u), reverseBits(-48460i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.wy * global2.zx)), global2.xw)), global2.x));
    let var_1 = Struct_2(vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1167f), arg_1.a), _wgslsmith_f_op_f32(-1790f + 455f), ~firstTrailingBit(vec4<u32>(abs(1u), arg_0, ~1u, arg_0)), global1[_wgslsmith_index_u32(var_0.c.x, 21u)], Struct_1(!any(!vec4<bool>(true, true, var_0.e.a, true)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(22977i, u_input.a.x), u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.c.x, 14u)]), vec2<i32>(-1i, u_input.a.x))), (vec2<i32>(global0[_wgslsmith_index_u32(13364u, 14u)], -27637i) & u_input.a) | u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.wy, vec2<f32>(arg_1.a, arg_1.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-arg_1.a))))));
    let var_2 = var_0;
    var var_3 = Struct_3(var_0.b, 382f, true);
    return ~vec2<i32>(var_2.d.b, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3[_wgslsmith_index_u32(~407u, 30u)] || all(!select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)], true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(20641u, 30u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(52645u, 30u)]))), all(!select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(24030u, 30u)], false, false), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(6146u, 30u)], global3[_wgslsmith_index_u32(19233u, 30u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)]))));
    var var_1 = 55163u;
    let var_2 = firstLeadingBit(vec3<i32>(u_input.a.x, ~(-16292i), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), func_1(Struct_2(global2.wzx, -1164f, vec4<u32>(17175u, 0u, 0u, 1u), global1[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(global3[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(44735u, 14u)], global2.yz, 525f)), Struct_2(vec3<f32>(1268f, global2.x, 231f), global2.x, vec4<u32>(0u, 83958u, 4294967295u, 26937u), Struct_1(var_0.x, global0[_wgslsmith_index_u32(36101u, 14u)], vec2<f32>(global2.x, 1474f), global2.x), global1[_wgslsmith_index_u32(24199u, 21u)]), global2.x, Struct_2(vec3<f32>(1140f, global2.x, -735f), 2467f, vec4<u32>(30290u, 4294967295u, 1u, 22492u), global1[_wgslsmith_index_u32(1u, 21u)], Struct_1(global3[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(39577u, 14u)], global2.zx, global2.x))))));
    global0 = array<i32, 14>();
    var var_3 = vec3<bool>(true, var_0.x, var_0.x);
    var_1 = ~4294967295u;
    var var_4 = ~func_4(41129u, Struct_3(-1355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 738f) * global2.x), !func_2(global1[_wgslsmith_index_u32(0u, 21u)], Struct_3(global2.x, global2.x, var_3.x), Struct_2(global2.zyy, -813f, vec4<u32>(21489u, 23310u, 0u, 8997u), global1[_wgslsmith_index_u32(20301u, 21u)], Struct_1(false, 19703i, vec2<f32>(-1208f, -475f), global2.x)), var_0.x)));
    var var_5 = abs(~_wgslsmith_div_u32(1u, 105177u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-var_2.x), _wgslsmith_mod_i32(59208i | ~var_2.x, 15920i), var_2.x, reverseBits(u_input.a.x)));
}

