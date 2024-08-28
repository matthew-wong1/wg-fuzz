struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: Struct_2 = Struct_2(-1188f);

var<private> global2: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_3, 10>();
    global2 = any(vec4<bool>(!(global1.a != -433f), any(vec2<bool>(true, true)) & true, select(false, true, true), true));
    global1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a)))));
    let var_0 = ~_wgslsmith_sub_i32(1i, ~abs(41036i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a * -1613f))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.a, 761f)), _wgslsmith_f_op_f32(global1.a + var_1.a), var_1.a, _wgslsmith_div_f32(global1.a, 304f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(abs(global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(112f)) + _wgslsmith_f_op_f32(1000f * global1.a)), _wgslsmith_f_op_f32(max(-466f, _wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1007f + -780f)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(589f * arg_2.x), _wgslsmith_div_f32(arg_0, 1237f))), _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f * 1978f) * arg_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-131f * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-720f + var_0.x), 1522f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1212f, -1120f, arg_0), vec4<f32>(949f, 1581f, 722f, var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(902f * 611f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), -1079f, _wgslsmith_f_op_f32(arg_1.c.a - _wgslsmith_f_op_f32(step(var_0.x, arg_2.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(409f, -1590f, 232f, 816f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1690f, 1212f, global1.a, var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(max(arg_2.x, arg_1.c.a)), 208f, _wgslsmith_f_op_f32(-987f - 1000f), _wgslsmith_f_op_f32(floor(arg_2.x)))))));
    var var_1 = Struct_3(_wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_1.a), u_input.b.zx)), _wgslsmith_sub_u32(~arg_1.b, ~u_input.b.x) >> (_wgslsmith_sub_u32(u_input.a.x, ~1u) % 32u)), 19437u, arg_1.c);
    var var_2 = firstTrailingBit(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11792i, -2147483647i, 0i, -32699i), vec4<i32>(2147483647i, 2147483647i, -1i, 5102i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-70923i, 54061i, -1i, 24722i), vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, -6856i, 2147483647i))), ~vec4<i32>(-2147483647i, 1i, -19633i, -5917i)));
    return max(select(vec3<i32>(71177i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 67824i, -39878i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), ~(-42453i)), min(-25835i, ~(-1i))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, -2147483647i), min(vec3<i32>(-10731i, 2147483647i, 0i), vec3<i32>(5737i, -4953i, -21773i))) << (vec3<u32>(u_input.a.x, var_1.a, abs(arg_1.b)) % vec3<u32>(32u)), true), select(_wgslsmith_add_vec3_i32(~vec3<i32>(-32922i, -38259i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-26201i, -33253i, -1i), vec3<i32>(-1i, -36958i, -38531i)))), reverseBits(firstTrailingBit(countOneBits(vec3<i32>(21988i, -1i, 44519i)))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, all(vec2<bool>(false, false))), true)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(-(vec2<i32>(-1i) * -(~vec2<i32>(-11804i, -2147483647i))), -vec2<i32>(1i, -(i32(-1i) * -12671i)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)));
    var var_1 = Struct_1(~(-_wgslsmith_mult_vec3_i32(func_2(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], vec2<f32>(350f, global1.a)), vec3<i32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(1u, 96756u, 67865u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(global1.a - -1007f))))), vec2<i32>(1i, _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -36088i, -2147483647i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, -1i)), countOneBits(-1417i)), -(var_0.x ^ -1i), var_0.x)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.x, 0i, 2147483647i), -vec3<i32>(var_0.x, 50288i, 0i), vec3<bool>(true, true, true)), firstLeadingBit(-vec3<i32>(0i, var_0.x, var_0.x)), vec3<i32>(abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -20207i, -2147483647i), vec3<i32>(0i, var_0.x, 0i)), -1i)) << ((_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(49512u, 7353u, u_input.a.x), ~u_input.b)) % vec3<u32>(32u)));
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(1439u, 0u, 1u, u_input.b.x), firstTrailingBit(vec4<u32>(50317u, u_input.b.x, u_input.a.x, 36896u))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 23766u, 0u, 11731u), vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x)))), vec4<u32>(u_input.b.x, ~abs(u_input.a.x), 1u, 1u)), abs(44299u), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -425f)));
    global0 = array<Struct_3, 10>();
    return _wgslsmith_div_u32(~firstLeadingBit(abs(var_2.b)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~1u), 10u)];
    var var_1 = global0[_wgslsmith_index_u32(~func_1() | (~49012u << (~(~55099u & (u_input.b.x ^ u_input.a.x)) % 32u)), 10u)];
    global0 = array<Struct_3, 10>();
    let var_2 = var_0.c.a;
    var_1 = Struct_3(0u, u_input.a.x, Struct_2(var_1.c.a));
    var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 10u)];
    var_1 = Struct_3(1u, var_1.a, Struct_2(var_1.c.a));
    var var_3 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 2147483647i), -7768i), 1i, _wgslsmith_mod_i32(select(-23974i, -73055i, false), min(2147483647i, -59840i)), _wgslsmith_add_i32(2147483647i, -1i)), vec4<i32>(firstLeadingBit(firstTrailingBit(-1i)), -19153i, _wgslsmith_mod_i32(i32(-1i) * -71939i, 1i), i32(-1i) * -60919i)));
    global2 = !(any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)) || any(vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)), select(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-1323f);
}

