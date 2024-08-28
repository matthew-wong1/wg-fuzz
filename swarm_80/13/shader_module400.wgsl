struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: f32 = 1105f;

var<private> global2: array<u32, 24>;

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    let var_0 = all(vec3<bool>(!arg_1.x, !arg_1.x, false)) || any(arg_1);
    global3 = Struct_1(73268i, arg_0.b | !((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)] | 1u) < _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7356u, 24u)], 24u)], 0u)), !any(vec3<bool>(true, true, global4.x && global3.c)));
    global0 = array<vec3<f32>, 25>();
    global2 = array<u32, 24>();
    var var_1 = ~vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u) & vec2<u32>(54649u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)]), select(~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30280u, 24u)], 24u)], 24u)], 24u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(41770u, 24u)], global2[_wgslsmith_index_u32(2295u, 24u)]), vec2<u32>(global2[_wgslsmith_index_u32(18277u, 24u)], 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 24u)], 4294967295u)), var_0)), 24u)], ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global2[_wgslsmith_index_u32(28607u, 24u)]) & firstLeadingBit(min(29588u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)])));
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(~0i, !(global2[_wgslsmith_index_u32(1u, 24u)] <= global2[_wgslsmith_index_u32(1u, 24u)]), all(vec4<bool>(global4.x, true, !(global4.x && false), global4.x)));
    global0 = array<vec3<f32>, 25>();
    var var_0 = Struct_1(_wgslsmith_clamp_i32(global3.a, func_4(Struct_1(abs(u_input.b.x), func_3(Struct_1(-1i, false, global4.x), global4.xwx), global3.c), Struct_1(global3.a, true, !global4.x), Struct_1(_wgslsmith_div_i32(-2147483647i, global3.a), true, global4.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, 172f, -932f)) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(37055u, 25u)] * vec3<f32>(-676f, 1081f, -681f)))), global3.a), !(!any(select(global4.zxw, global4.yyx, vec3<bool>(global4.x, true, global3.b)))), global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)] | 43241u, 24u)], 24u)], 24u)] | max(19044u, 25090u), 24u)]), 24u)] <= global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 57643u), 24u)]), 24u)]);
    global3 = Struct_1(var_0.a, !global4.x, !any(global4.zxw));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(962f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * _wgslsmith_f_op_f32(f32(-1f) * -510f))), -1591f));
    return Struct_1(u_input.b.x, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * var_1.x), var_1.x) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1936f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = func_2();
    global2 = array<u32, 24>();
    var var_3 = var_2.a;
    return max(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, global3.a, 35006i, var_2.a) | vec4<i32>(var_2.a, -33045i, -37196i, -28641i), firstTrailingBit(vec4<i32>(3020i, arg_1.a, 6789i, var_1.a)))), vec4<i32>(firstLeadingBit(~arg_1.a), arg_0.a, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, var_1.a, -7774i), u_input.b), u_input.b), min(1i, arg_0.a))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_sub_i32(var_0.a, 9775i), arg_0.a, ~(-1122i), -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_2.a, 80581i), _wgslsmith_sub_i32(u_input.b.x, var_2.a), u_input.a, 2147483647i ^ var_0.a), countOneBits(vec4<i32>(arg_0.a, arg_1.a, var_0.a, global3.a)))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = firstLeadingBit(-(u_input.b.zz & vec2<i32>(global3.a, global3.a)));
    let var_1 = ~select(_wgslsmith_mult_vec4_i32(func_5(func_2(), Struct_1(0i, arg_0.c, arg_0.b)), -max(vec4<i32>(55483i, global3.a, -35103i, u_input.a), vec4<i32>(var_0.x, 14593i, 1171i, -1i))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, -8748i, -2147483647i), firstTrailingBit(vec4<i32>(u_input.b.x, arg_0.a, 0i, -27794i))), select(~vec4<i32>(u_input.b.x, u_input.a, arg_0.a, -1i), ~vec4<i32>(u_input.b.x, 23676i, -52535i, global3.a), vec4<bool>(true, false, true, false))), !vec4<bool>(any(vec4<bool>(true, global3.c, false, arg_0.b)), global4.x, global4.x, any(vec4<bool>(global4.x, false, false, false))));
    return true;
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    global1 = arg_0.x;
    global1 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = array<vec3<f32>, 25>();
    return !vec4<bool>(true, true, !((-1106f > arg_0.x) || true), false);
}

fn func_7(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(-arg_1.x, false, false || (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2049f + -460f), _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)), func_3(Struct_1(0i, global4.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.x, 857f)) * _wgslsmith_f_op_f32(ceil(1592f)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(func_6(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) - -1156f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(471f - -746f) - _wgslsmith_f_op_f32(-1000f - 3010f)), _wgslsmith_div_f32(1329f, _wgslsmith_f_op_f32(f32(-1f) * -409f)), -698f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)] | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(66381u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(8187u, 24u)])) << ((4294967295u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13981u, 24u)], 24u)] % 32u)) % 32u), 24u)], vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, 2147483647i, -2147483647i), vec3<i32>(0i, -8101i, 2147483647i)), global3.a & global3.a, ~(-55274i)) ^ -firstLeadingBit(u_input.b), Struct_1(-1i, func_1(Struct_1(global3.a, true, false)), _wgslsmith_add_u32(15607u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35441u, 24u)], 24u)]) == 8401u)), u_input.b.yz, _wgslsmith_add_vec4_i32(vec4<i32>((-30234i & u_input.b.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(8099u, 24u)], 1u, 0u, global2[_wgslsmith_index_u32(1u, 24u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17230u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76997u, 24u)], 24u)])) % 32u), ~countOneBits(86252i), func_4(Struct_1(u_input.b.x, global4.x, global4.x), func_2(), Struct_1(-18609i, true, global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(958f, -642f, 1851f))), _wgslsmith_clamp_i32(min(-2147483647i, u_input.b.x), countOneBits(global3.a), 8319i)), _wgslsmith_sub_vec4_i32(-select(vec4<i32>(u_input.b.x, u_input.b.x, global3.a, u_input.a), vec4<i32>(28828i, u_input.a, 27856i, -2986i), global4.x), vec4<i32>(_wgslsmith_div_i32(global3.a, global3.a), u_input.b.x, -u_input.b.x, u_input.b.x))), vec4<f32>(2365f, _wgslsmith_f_op_f32(max(1405f, 342f)), _wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(f32(-1f) * -2597f)))));
    global4 = vec4<bool>(any(!select(!global4.zzx, global4.xyz, func_6(vec4<f32>(493f, -706f, 1065f, -548f), 86705u, u_input.b, Struct_1(u_input.a, global4.x, true)).xwx)), all(vec2<bool>(true, false)), false, global4.x);
    var var_0 = func_7(func_6(vec4<f32>(543f, 1000f, -212f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 4294967295u >> (abs(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 2081u)) % 32u), _wgslsmith_sub_vec3_i32(max(vec3<i32>(global3.a, 22256i, 14461i), -vec3<i32>(u_input.a, 0i, u_input.b.x)), u_input.b), func_7(func_6(vec4<f32>(404f, 518f, -536f, 1902f), 0u, u_input.b, func_7(vec4<bool>(global4.x, false, global4.x, true), vec2<i32>(44897i, u_input.b.x), vec4<i32>(2147483647i, global3.a, u_input.b.x, u_input.b.x), vec4<f32>(1000f, 400f, 639f, 1000f))), ~u_input.b.yx, abs(_wgslsmith_div_vec4_i32(vec4<i32>(20674i, 0i, u_input.a, global3.a), vec4<i32>(global3.a, 11937i, 0i, 2601i))), vec4<f32>(_wgslsmith_f_op_f32(sign(-331f)), _wgslsmith_f_op_f32(floor(-1014f)), _wgslsmith_f_op_f32(1330f + -689f), 1f))), vec2<i32>(u_input.a, ~(~(u_input.b.x & 47682i))), min(countOneBits(vec4<i32>(global3.a, 14289i, global3.a, 0i)), -(~vec4<i32>(35918i, u_input.b.x, global3.a, -54996i))) ^ firstLeadingBit(vec4<i32>(~global3.a, func_7(vec4<bool>(true, global4.x, global3.c, global3.c), vec2<i32>(1i, -7487i), vec4<i32>(1i, u_input.a, 20327i, -1i), vec4<f32>(-1348f, 630f, 581f, -269f)).a, 46022i, min(48439i, global3.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1904f, -1349f, 1045f, -126f), vec4<f32>(400f, -153f, -340f, -276f), vec4<bool>(false, global4.x, global4.x, false))) * vec4<f32>(784f, 2066f, 1715f, 1767f)), vec4<f32>(_wgslsmith_div_f32(-350f, -774f), 1825f, _wgslsmith_f_op_f32(-1000f + -993f), _wgslsmith_f_op_f32(step(1000f, -283f))))))));
    var var_1 = reverseBits(vec4<u32>(~global2[_wgslsmith_index_u32(42603u, 24u)], 4294967295u, firstTrailingBit(1u), (select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19907u, 24u)], 24u)], 24u)], 24u)], 24u)], global4.x) ^ global2[_wgslsmith_index_u32(1u ^ global2[_wgslsmith_index_u32(95809u, 24u)], 24u)]) ^ min(84325u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 35516u), 24u)], 24u)])));
    var_0 = Struct_1(1i, any(vec3<bool>(var_0.c, !(!global3.b), all(global4.wyz))), !global3.c);
    let var_2 = ~(~min(_wgslsmith_dot_vec3_u32(~vec3<u32>(103913u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28728u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)]), vec3<u32>(20780u, 2267u, global2[_wgslsmith_index_u32(87002u, 24u)]) & var_1.yzx), ~0u));
    var var_3 = -vec2<i32>(-_wgslsmith_mult_i32(global3.a, -u_input.a), var_0.a);
    var var_4 = true;
    var var_5 = all(!func_6(vec4<f32>(1f, 1f, 1f, 1f), var_2, vec3<i32>(var_3.x ^ 0i, firstTrailingBit(0i), -50714i), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-152f, 725f, false)) * _wgslsmith_f_op_f32(718f - 1843f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1164f, -766f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1951f, 651f)) - vec2<f32>(1000f, -558f)))), ~(~vec4<u32>(~18192u, 62433u << (global2[_wgslsmith_index_u32(var_2, 24u)] % 32u), 1u, ~9716u)));
}

