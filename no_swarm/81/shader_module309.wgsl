struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -1i, 1i, 1i);

var<private> global1: bool = false;

var<private> global2: array<vec3<bool>, 2>;

var<private> global3: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(684f, 1246f), vec2<f32>(1270f, 1000f), vec2<f32>(-171f, 696f), vec2<f32>(-591f, 1152f), vec2<f32>(-760f, -970f), vec2<f32>(-1000f, 1749f), vec2<f32>(747f, 524f), vec2<f32>(-633f, 184f), vec2<f32>(-1403f, 1000f), vec2<f32>(959f, 178f), vec2<f32>(-1075f, 153f), vec2<f32>(1350f, 767f), vec2<f32>(-131f, -249f), vec2<f32>(350f, 1420f), vec2<f32>(-312f, -1420f), vec2<f32>(683f, -513f), vec2<f32>(-127f, -767f), vec2<f32>(-1109f, 623f), vec2<f32>(1315f, -1000f), vec2<f32>(1188f, -1190f), vec2<f32>(-745f, -524f), vec2<f32>(-280f, 1000f), vec2<f32>(1639f, -1054f), vec2<f32>(-343f, -840f), vec2<f32>(-1000f, -1618f), vec2<f32>(-874f, 545f), vec2<f32>(-1146f, 622f), vec2<f32>(611f, -439f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = vec4<i32>(reverseBits(2147483647i), ~firstTrailingBit(firstTrailingBit(~(-34401i))), -20891i, global0.x);
    var var_1 = vec4<bool>(true, arg_0, arg_0, select(false, arg_0, !arg_0));
    let var_2 = -8692i;
    var var_3 = var_1.x;
    var var_4 = any(vec3<bool>(true, true, any(vec2<bool>(var_1.x, false)) || !arg_0)) | !(-43440i <= (-27466i & (var_2 ^ 41049i)));
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(min(u_input.c.wwx, vec3<u32>(arg_1, 16231u, 0u)), u_input.c.wwx >> (_wgslsmith_sub_vec3_u32(vec3<u32>(79848u, 37548u, arg_1), vec3<u32>(7570u, 1u, arg_1)) % vec3<u32>(32u))), abs(4294967295u & ~arg_1));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e, global0.x, -64644i, global0.x), vec4<i32>(max(-8776i, u_input.b.x), 54730i, abs(u_input.e), -63963i), vec4<i32>(u_input.b.x, min(-8972i, 114016i), global0.x & u_input.e, -u_input.b.x)), min(max(max(vec4<i32>(1i, -31449i, global0.x, u_input.e), vec4<i32>(-2147483647i, 0i, global0.x, u_input.b.x)), -vec4<i32>(30926i, global0.x, u_input.e, 61970i)), -select(vec4<i32>(61689i, global0.x, u_input.b.x, global0.x), vec4<i32>(0i, -1i, -2147483647i, -65661i), vec4<bool>(false, false, false, true)))) >> (u_input.c % vec4<u32>(32u));
    global2 = array<vec3<bool>, 2>();
    global2 = array<vec3<bool>, 2>();
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(~global0.x, countOneBits(i32(-1i) * -1i)), min(-24479i, _wgslsmith_mult_i32(u_input.e, -2706i)), u_input.e, i32(-1i) * -2147483647i);
    global0 = vec4<i32>(select(global0.x, abs(firstTrailingBit(global0.x)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))), select(abs((global0.x | -3539i) ^ u_input.b.x), countOneBits(-_wgslsmith_add_i32(2147483647i, u_input.e)), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), true))), u_input.b.x, firstLeadingBit(11436i));
    return vec3<bool>(!(!(!(u_input.d == 22171u))), all(global2[_wgslsmith_index_u32(~1u, 2u)]), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> StorageBuffer {
    let var_0 = 4294967295u;
    let var_1 = abs(firstLeadingBit(vec4<u32>(4294967295u, var_0, _wgslsmith_mult_u32(select(61349u, var_0, false), max(var_0, 77639u)), var_0)));
    var var_2 = !any(select(select(vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(~9837u, 2u)], !global2[_wgslsmith_index_u32(17733u, 2u)]), !func_3(vec3<u32>(4294967295u, 1u, 1u)), vec3<bool>(true, true, false)));
    global0 = select(~(vec4<i32>(-15400i, -2493i, ~u_input.b.x, u_input.b.x) ^ abs(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.e, global0.x, 1i), vec4<i32>(global0.x, -2147483647i, -2147483647i, 0i)))), vec4<i32>(u_input.e, -7196i, ~max(55165i, global0.x), 1i), vec4<bool>(true, true, _wgslsmith_div_i32(-global0.x, ~global0.x) >= _wgslsmith_mod_i32(firstLeadingBit(26758i), _wgslsmith_div_i32(u_input.b.x, 42922i)), any(vec3<bool>(select(true, true, false), false, 1u != var_0))));
    let var_3 = Struct_1(vec4<i32>(abs(u_input.b.x), i32(-1i) * -1i, countOneBits(u_input.b.x), _wgslsmith_dot_vec3_i32(select(max(global0.zxy, global0.yyw), global0.yyw, select(vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(var_0, 2u)], vec3<bool>(false, false, true))), u_input.b & vec3<i32>(20750i, -2147483647i, u_input.b.x))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a, u_input.a), countOneBits(u_input.a)), vec2<u32>(~10911u & ~var_0, 0u)), _wgslsmith_dot_vec3_i32(reverseBits(min(u_input.b, abs(u_input.b))), global0.zxz));
    return StorageBuffer(-642f, (firstLeadingBit(var_1.xxx) ^ u_input.c.zwy) << (u_input.c.wzy % vec3<u32>(32u)), min(~var_3.a.wx, vec2<i32>(-global0.x, global0.x)), ~var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(func_1(false, 6893u) == 42845u);
    global2 = array<vec3<bool>, 2>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -772f)));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_f32(-723f * var_1);
    var_0 = true;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1562f, var_1) * _wgslsmith_div_vec2_f32(vec2<f32>(-1546f, 2080f), vec2<f32>(var_1, 1435f))))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(245f + var_1), _wgslsmith_f_op_f32(-1430f - var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1559f, 778f)) * _wgslsmith_f_op_f32(exp2(var_1))));
}

