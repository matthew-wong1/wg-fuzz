struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, true), 4294967295u, 208f), Struct_1(vec2<bool>(false, false), 1215u, 394f), Struct_1(vec2<bool>(false, false), 89154u, -1000f), Struct_1(vec2<bool>(false, false), 1u, -1179f), Struct_1(vec2<bool>(false, true), 23753u, 303f), Struct_1(vec2<bool>(true, false), 72868u, -886f), Struct_1(vec2<bool>(false, true), 55020u, -493f), Struct_1(vec2<bool>(false, false), 4294967295u, 895f), Struct_1(vec2<bool>(true, false), 4294967295u, 803f), Struct_1(vec2<bool>(true, false), 1u, -598f), Struct_1(vec2<bool>(true, false), 32412u, 2022f), Struct_1(vec2<bool>(true, true), 0u, -1133f), Struct_1(vec2<bool>(false, false), 52556u, -1296f), Struct_1(vec2<bool>(false, false), 1u, -1863f), Struct_1(vec2<bool>(true, false), 4294967295u, -1688f), Struct_1(vec2<bool>(true, true), 4638u, 101f), Struct_1(vec2<bool>(true, true), 0u, 1091f), Struct_1(vec2<bool>(true, false), 1u, -168f), Struct_1(vec2<bool>(false, true), 66397u, -737f), Struct_1(vec2<bool>(false, true), 0u, 586f), Struct_1(vec2<bool>(true, true), 55678u, -1000f));

var<private> global2: vec4<i32>;

var<private> global3: array<i32, 25>;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global3 = array<i32, 25>();
    let var_0 = Struct_1(vec2<bool>(true, !select(true, true, true)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(46367u, 55900u), vec2<u32>(0u, 0u), vec2<u32>(65948u, 17737u)), vec2<u32>(max(54947u, 4294967295u), 56794u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-447f)) * _wgslsmith_f_op_f32(-1391f + -1312f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -517f));
    global1 = array<Struct_1, 21>();
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(0u, 1978u ^ _wgslsmith_mult_u32(~2793u, var_0.b)), 1u, 1u);
    global1 = array<Struct_1, 21>();
    return select(vec3<bool>(false, !var_0.a.x, !(all(vec3<bool>(true, true, var_0.a.x)) == true)), select(vec3<bool>(all(vec3<bool>(var_0.a.x, true, var_0.a.x)), !(true == var_0.a.x), true), !select(vec3<bool>(var_0.a.x, var_0.a.x, true), select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x), false), !vec3<bool>(var_0.a.x, var_0.a.x, true)), vec3<bool>(var_0.a.x, any(vec2<bool>(var_0.a.x, false)), all(vec3<bool>(true, true, false)))), all(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a)));
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(select(func_3(), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), min(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 72867u), vec4<u32>(arg_0.x, 34086u, arg_0.x, arg_0.x)) | 1u), 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-453f + 1129f))))))));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(56733i, ~(-1i)), ~(~(0i << (var_0.b % 32u))) & (global3[_wgslsmith_index_u32(arg_0.x, 25u)] | ~u_input.b));
    global0 = ~_wgslsmith_mult_u32(abs(4294967295u), arg_0.x);
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(-var_0.c))), var_0.c, 108f, -191f))));
    return -vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-14806i, u_input.a.x), u_input.a.x, 12479i), _wgslsmith_clamp_i32(-var_1.x, ~global3[_wgslsmith_index_u32(var_0.b, 25u)], 1i), 30399i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(select(u_input.b, -1i, var_0.a.x), ~u_input.b), -74914i, u_input.a.x));
}

fn func_1() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, -func_2(vec2<u32>(4294967295u, 96253u)))) << (~0u % 32u);
    global0 = 1u;
    global2 = -u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1550f, 1516f), vec3<f32>(861f, 1457f, 987f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(250f, 189f, _wgslsmith_f_op_f32(920f + 370f)))));
    global1 = array<Struct_1, 21>();
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(40583u, 60676u, 1u, 5752u), vec4<u32>(11016u, 4294967295u, 68223u, 4294967295u)) | ~114197u), 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = select(!select(select(!vec3<bool>(var_0.a.x, arg_3, false), func_3(), true), vec3<bool>(true, true, func_1().a.x), !vec3<bool>(var_0.a.x, arg_0.a.x, false)), !select(!func_3(), vec3<bool>(false, true, true), func_3()), vec3<bool>(~(~u_input.b) <= -13449i, var_0.b != firstTrailingBit(_wgslsmith_mod_u32(1u, arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - -936f) + _wgslsmith_f_op_f32(round(var_0.c))) >= 831f));
    let var_2 = 387f;
    global1 = array<Struct_1, 21>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 589f)) * var_0.c)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~_wgslsmith_mult_u32(1u, ~0u)));
    global3 = array<i32, 25>();
    var var_0 = func_4(func_1(), Struct_1(vec2<bool>(true, true), 23430u << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 36152u), vec3<u32>(0u, 27784u, 0u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(56649u, 94505u)) % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f))), abs(vec4<u32>(128u, 1u, _wgslsmith_clamp_u32(~1u, 1u, abs(48347u)), _wgslsmith_div_u32(0u, 2016u))), func_3().x && true);
    let var_1 = global1[_wgslsmith_index_u32(30781u, 21u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, var_0.b, func_4(global1[_wgslsmith_index_u32(var_0.b, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(var_1.b, var_0.b, 1u, 9327u), true).b, countOneBits(33974u)), select(vec4<u32>(var_1.b, 4294967295u, 0u, 4094u), vec4<u32>(15520u, 37642u, var_1.b, 1u), vec4<bool>(true, false, var_1.a.x, var_0.a.x)) << (reverseBits(vec4<u32>(4294967295u, 78282u, 1u, var_0.b)) % vec4<u32>(32u))), (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, var_0.b, 4294967295u, var_0.b), vec4<u32>(var_0.b, var_0.b, var_0.b, 1u)) & vec4<u32>(var_0.b, var_1.b, var_1.b, 19776u)) & ~(~vec4<u32>(var_1.b, var_0.b, var_1.b, var_0.b))), ~select(vec4<u32>(4294967295u, 38605u, 1u, 29831u), ~max(vec4<u32>(124916u, var_1.b, 4294967295u, var_0.b), vec4<u32>(7801u, var_0.b, var_1.b, 4294967295u)), var_0.a.x)), 21u)];
    global3 = array<i32, 25>();
    global2 = _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-8786i, global3[_wgslsmith_index_u32(0u, 25u)], u_input.b, u_input.b)), u_input.a), vec4<i32>(-1i) * -(vec4<i32>(-59460i, 1i, 1i, 3170i) & vec4<i32>(global2.x, -1i, 1i, 0i))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.a.x, ~2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, var_1.b)), ~vec2<u32>(var_2.b, 85056u)), 25u)], ~(~global3[_wgslsmith_index_u32(var_2.b, 25u)])), u_input.b, ~(-2147483647i), -5092i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(2809u, func_4(global1[_wgslsmith_index_u32(var_1.b, 21u)], func_4(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.b, 21u)], vec4<u32>(4294967295u, var_0.b, var_2.b, 57413u), var_2.a.x), vec4<u32>(var_2.b, var_1.b, 45710u, 15321u), var_0.a.x).b), max(firstLeadingBit(vec2<u32>(1u, 6934u) << (vec2<u32>(var_1.b, 1u) % vec2<u32>(32u))), vec2<u32>(var_1.b & var_0.b, max(16340u, 4294967295u)))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.b, 16949u)) << (select(~vec2<u32>(var_0.b, 2847u), vec2<u32>(var_2.b, 36694u), any(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(var_2.b, var_0.b), 0u)));
}

