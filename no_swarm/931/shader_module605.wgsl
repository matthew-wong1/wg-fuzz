struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: vec4<u32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> vec4<f32> {
    global1 = vec4<u32>(~reverseBits(min(abs(1u), firstTrailingBit(4294967295u))), ~(~1u), firstTrailingBit(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), u_input.d.x);
    let var_0 = abs(-arg_1.x);
    var var_1 = 4986i;
    var var_2 = all(select(select(!select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0), !select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), arg_0 | !arg_0), select(vec4<bool>(!arg_0, false, arg_0, !arg_0), vec4<bool>(arg_0 & false, all(vec2<bool>(true, arg_0)), arg_0 & arg_0, arg_0 || true), vec4<bool>(arg_0, arg_0, true, arg_0)), !select(!vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, false, arg_0, false), !arg_0)));
    global2 = -arg_1.xyw;
    return vec4<f32>(782f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(227f))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = ~u_input.d.xwz;
    return Struct_4(-160f, Struct_2(u_input.d.xzz, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(773f * 1347f) + -577f), true, ~(~u_input.d.wz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(146f, 992f, -2354f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1624f, -2870f, -2659f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, -428f, -290f))))), Struct_1(_wgslsmith_f_op_f32(abs(1048f)), 1u != u_input.d.x, var_0.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-2147483647i <= _wgslsmith_sub_i32(arg_0.x, 26067i), vec4<i32>(max(u_input.c, u_input.b.x), arg_0.x, arg_0.x, global2.x << (0u % 32u)), -u_input.c))), abs(~(~_wgslsmith_mod_u32(0u, var_0.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = global1.x ^ arg_1.a.x;
    let var_1 = func_2(vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -75359i, _wgslsmith_dot_vec3_i32(u_input.b.zzx, vec3<i32>(1i, arg_2, global2.x)), _wgslsmith_add_i32(global2.x, arg_2)), 35602i, arg_2, ~(1i << (~4294967295u % 32u))));
    let var_2 = ~(~(~global1.x));
    var var_3 = abs(_wgslsmith_mod_vec3_i32(u_input.b.wxy, u_input.b.www));
    let var_4 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(global2.xy), reverseBits(global2.xz)) & abs(_wgslsmith_mult_i32(arg_2, u_input.c)), abs(2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.zyx, vec3<i32>(abs(~arg_2), 1i, global2.x)), countOneBits(select(select(min(u_input.a.x, global2.x), ~21615i, true), -49743i & abs(u_input.b.x), true)));
    return 746f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-214f, _wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), Struct_2(vec3<u32>(4294967295u, global1.x, 4294967295u), Struct_1(-1790f, true, vec2<u32>(u_input.d.x, 30839u)), vec3<f32>(105f, 112f, 219f), Struct_1(383f, true, vec2<u32>(u_input.d.x, 31828u))), select(global2.x, u_input.c, true)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -132f), vec2<f32>(911f, -1000f)))))));
    let var_1 = firstTrailingBit(u_input.d.x);
    let var_2 = vec2<i32>(global2.x, 33951i & -firstTrailingBit(57800i)) & vec2<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(12787i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.x, global2.x), u_input.b.xxy), global2.x), -23182i));
    var var_3 = Struct_2(vec3<u32>(39034u & _wgslsmith_clamp_u32(var_1 ^ 23608u, ~15679u, ~39838u), select(~(~var_1), u_input.d.x, false), var_1), Struct_1(-680f, false, vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, global1.x ^ 4294967295u), reverseBits(global1.x) ^ 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1060f, -1065f, var_0.x), vec3<f32>(-2014f, var_0.x, 509f), vec3<bool>(false, false, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 489f, 132f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1210f, 1056f))))), Struct_1(_wgslsmith_f_op_f32(var_0.x + 719f), -firstTrailingBit(16391i) != _wgslsmith_add_i32(-1i, i32(-1i) * -1i), u_input.d.xx >> (~vec2<u32>(29728u, global1.x) % vec2<u32>(32u))));
    let var_4 = (_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_mod_i32(global2.x, 2147483647i), global2.x & global2.x, global2.x, -1i)) & u_input.b) << (max(u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, firstTrailingBit(u_input.d))) % vec4<u32>(32u));
    global0 = array<Struct_4, 4>();
    var var_5 = func_2(_wgslsmith_mod_vec4_i32(u_input.b, abs(u_input.b << (u_input.d % vec4<u32>(32u))))).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)))), ~vec4<u32>(4294967295u, ~(~global1.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, u_input.d.x, 85849u), vec3<u32>(u_input.d.x, var_5.c.x, 4294967295u)), u_input.d.ywz), _wgslsmith_clamp_u32(var_1, u_input.d.x, var_1) ^ _wgslsmith_add_u32(var_5.c.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-869f, var_0.x)))))), u_input.d.yz);
}

