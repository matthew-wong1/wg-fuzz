struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1910i;

var<private> global1: vec3<u32>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<f32, 31>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(arg_1.x, 31u)], -1000f, 2113f < global3[_wgslsmith_index_u32(global1.x, 31u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1129f), -1352f, 1146f), ~(~min(4294967295u, u_input.b.x) << (arg_1.x % 32u)), select(vec2<bool>(true && all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(step(-225f, -949f)) != _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 31u)] * -786f)), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), true), true);
    var var_1 = ~4294967295u;
    let var_2 = 1104f;
    var_1 = global1.x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x << (_wgslsmith_add_u32(var_0.b, arg_1.x) % 32u), 31u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1060f * arg_0), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 31u)]))), 303f, global3[_wgslsmith_index_u32(select(var_0.b, 57976u, var_0.d) >> (u_input.b.x % 32u), 31u)]))));
    return -683f;
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(1u, ~28949u), global1.x), 31u)] + _wgslsmith_f_op_f32(func_3(1153f, _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 0u, u_input.b.x), u_input.b.zzz), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 6270u, 13327u), u_input.b.wyx) & u_input.b.yyz))));
    let var_1 = vec4<bool>(!any(vec3<bool>(true, true, true)), false, !(_wgslsmith_f_op_f32(ceil(237f)) >= 1281f), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    global0 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2343f, -1000f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 31u)] - global3[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 31u)], 956f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 31u)], global3[_wgslsmith_index_u32(31413u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], -817f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(49403u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], 516f, 1000f) + vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(13972u, 31u)], -132f)))))), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(58836u, global1.x, 4294967295u), ~vec3<u32>(u_input.b.x, u_input.b.x, 54582u)), 1u, any(!vec4<bool>(var_1.x, true, false, var_1.x))), vec2<bool>(all(!vec2<bool>(var_1.x, var_1.x)), var_1.x), true);
    let var_3 = Struct_1(var_2.a, 16156u, !var_2.c, all(vec4<bool>(true && var_2.c.x, true, var_2.c.x, all(vec3<bool>(var_2.c.x, true, var_1.x)))));
    return vec4<bool>(all(select(vec3<bool>(!var_3.d, true, 225f != global3[_wgslsmith_index_u32(var_2.b, 31u)]), !select(var_1.yzx, vec3<bool>(true, var_1.x, var_1.x), var_1.x), !(!var_1.xwx))), all(select(var_1, var_1, var_1)), any(!select(var_1.wyz, var_1.xxy, var_1.xxx)), select(any(var_1), var_1.x & true, any(select(vec3<bool>(var_3.c.x, var_2.c.x, true), !var_1.yzx, any(vec2<bool>(false, var_3.d))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    global1 = ~max(reverseBits(vec3<u32>(arg_0.c.x, 0u, 50301u)), arg_0.c.yzy);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - arg_3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(894f * 970f) * _wgslsmith_f_op_f32(abs(arg_3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f * 1221f) - _wgslsmith_f_op_f32(-1815f + arg_0.d.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d.x, arg_0.d.x)) * -327f), arg_0.d.x, 1027f, arg_3.d.x))), ~_wgslsmith_add_u32(20573u, arg_1.c.x << (arg_1.c.x % 32u)) ^ _wgslsmith_div_u32(1u, arg_3.c.x), func_2().xy, arg_0.b.x);
    let var_1 = -1477f;
    let var_2 = select(~(~arg_1.c.xz), reverseBits(countOneBits(global1.zx)), global3[_wgslsmith_index_u32(arg_1.c.x, 31u)] < _wgslsmith_f_op_f32(-1f));
    var var_3 = vec4<u32>(arg_0.c.x, 26752u, _wgslsmith_mod_u32(~firstTrailingBit(var_2.x), _wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(u_input.b.xyw, arg_3.c.wxy), arg_1.c.yxy | vec3<u32>(var_2.x, 4294967295u, 20002u), true), firstLeadingBit(u_input.b.yxz))), ~_wgslsmith_mult_u32(var_2.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_2.x, global1.x, 1u)), ~vec4<u32>(arg_3.c.x, var_0.b, 75103u, u_input.b.x))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x))), _wgslsmith_f_op_f32(floor(arg_1.d.x)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = func_4(Struct_3(~_wgslsmith_mult_i32(0i, 1i) & (_wgslsmith_sub_i32(0i, u_input.a) & (i32(-1i) * -33905i)), !select(select(vec4<bool>(false, arg_3.d, true, false), vec4<bool>(false, arg_3.d, arg_3.d, true), vec4<bool>(false, false, true, true)), vec4<bool>(arg_3.d, arg_3.d, arg_3.c.x, arg_3.c.x), func_2()), vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x), ~arg_2 & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1.x, 34160u), u_input.b), 1u, u_input.b.x), vec4<f32>(1697f, arg_3.a.x, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 31u)] + arg_0), _wgslsmith_f_op_f32(-145f * 840f)))), Struct_3(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.c.x, 2147483647i, -30384i, 1i) << (vec4<u32>(1u, arg_2, global1.x, 1u) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), vec4<i32>(u_input.a, i32(-1i) * -5778i, abs(2147483647i), -u_input.a)), vec4<bool>((u_input.b.x & u_input.b.x) < max(arg_2, 0u), true, true, arg_3.c.x), ~countOneBits(vec4<u32>(arg_2, 104504u, 0u, u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_3.a.x * -1295f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1129f + arg_0), -1401f)), arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.x, arg_0))))), select(!select(!vec3<bool>(arg_3.c.x, arg_3.d, arg_3.d), select(vec3<bool>(arg_3.d, arg_3.d, arg_3.d), vec3<bool>(arg_3.d, arg_3.c.x, false), vec3<bool>(false, false, true)), func_2().x), !select(func_2().ywx, select(vec3<bool>(true, arg_3.c.x, arg_3.d), vec3<bool>(true, false, arg_3.c.x), true), all(vec2<bool>(true, true))), select(select(all(vec2<bool>(true, arg_3.d)), true, !arg_3.c.x), arg_3.d, ~arg_3.b <= ~4294967295u)), Struct_3(-max(12963i, 1i), vec4<bool>(false, all(!vec3<bool>(arg_3.c.x, false, false)), arg_3.c.x, !(arg_3.d | arg_3.d)), abs(select(vec4<u32>(20299u, 0u, 10583u, arg_2), u_input.b, arg_3.c.x && arg_3.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1850f, arg_1, arg_0)))));
    var var_1 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, u_input.a, u_input.a, -68982i), vec4<i32>(u_input.c.x, u_input.a, 59121i, u_input.a)), vec4<i32>(-1i, -18108i, u_input.a, -8569i)) | u_input.a, ~_wgslsmith_mod_i32(~u_input.a, -2147483647i), u_input.c.x), select(vec4<bool>(arg_3.d, true, all(arg_3.c), func_2().x), select(vec4<bool>(true, !arg_3.c.x, true, true), !(!vec4<bool>(arg_3.d, arg_3.c.x, arg_3.d, true)), arg_3.c.x), !(!any(vec4<bool>(arg_3.c.x, false, true, arg_3.c.x)))), ~u_input.b ^ ~firstLeadingBit(u_input.b | u_input.b), arg_3.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, 485f, -1000f), vec4<f32>(2100f, var_1.d.x, 831f, -1084f)) * _wgslsmith_f_op_vec4_f32(step(var_1.d, vec4<f32>(-1302f, -746f, 1465f, 128f)))), _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(var_1.d * var_1.d), false)))), arg_3.a, func_2())));
    var var_3 = arg_3.b | u_input.b.x;
    let var_4 = false;
    return max(~arg_2, ~global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~u_input.c, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-1i, -1i)), firstLeadingBit(vec2<i32>(21242i, 1i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c.x, u_input.a), u_input.c)), firstLeadingBit(global1.x & 96423u) != (func_1(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], 722f, 42459u, Struct_1(vec4<f32>(515f, -798f, global3[_wgslsmith_index_u32(2149u, 31u)], global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), global1.x, vec2<bool>(false, true), false)) ^ 4294967295u)) & ~_wgslsmith_div_vec2_i32(vec2<i32>(abs(1i), -31545i), u_input.c);
    global3 = array<f32, 31>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(17307u, 31u)], global3[_wgslsmith_index_u32(17499u, 31u)], -975f, global3[_wgslsmith_index_u32(u_input.b.x, 31u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2232f, -592f, 378f, -210f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global1.x, 31u)], u_input.b.yyw))), 1215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_f32(abs(-411f)))), select(~(~(~global1.x)), u_input.b.x << (global1.x % 32u), true), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), func_2().wz), vec2<bool>(true, true), vec2<bool>(true && (global3[_wgslsmith_index_u32(0u, 31u)] < global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), func_2().x)), true);
    var var_2 = u_input.b.zyz;
    var var_3 = select(abs(vec4<i32>(var_0.x, u_input.a, _wgslsmith_add_i32(31379i, -var_0.x), u_input.c.x)), -select(~vec4<i32>(2147483647i, var_0.x, -2147483647i, 0i), reverseBits(-vec4<i32>(u_input.c.x, u_input.a, 2147483647i, u_input.a)), select(!vec4<bool>(var_1.d, false, var_1.d, true), !vec4<bool>(true, true, var_1.d, false), vec4<bool>(true, false, var_1.c.x, false))), select(func_2(), vec4<bool>(any(select(vec3<bool>(true, true, var_1.c.x), vec3<bool>(var_1.d, var_1.c.x, true), vec3<bool>(var_1.d, var_1.d, var_1.d))), false, var_1.c.x, _wgslsmith_f_op_f32(abs(-615f)) > global3[_wgslsmith_index_u32(~12992u, 31u)]), var_1.d));
    var var_4 = -1599f;
    var var_5 = Struct_3(var_0.x, vec4<bool>(any(!(!vec3<bool>(var_1.d, true, var_1.c.x))), true, true, var_1.c.x), max(reverseBits(u_input.b), ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1134f, _wgslsmith_f_op_f32(-127f - -1216f), var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(var_1.a))) * var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (~7702u % 32u), ~vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -1i, -1i), vec4<i32>(-9933i, 38470i, var_5.a, var_3.x)), 0i, u_input.c.x) | _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_3.x, -3876i, var_5.a), vec4<i32>(var_5.a, 1i, var_0.x, var_3.x)), (vec4<i32>(-51721i, -36738i, var_0.x, 1i) >> (u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))), -1734f);
}

