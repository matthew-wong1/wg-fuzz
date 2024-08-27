struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_4(select(51902u ^ firstTrailingBit(u_input.e.x), countOneBits(1u) >> (u_input.e.x % 32u), all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(~u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(666f, -2222f, 1208f, global2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1121f, global2.x, 846f, global2.x) - vec4<f32>(483f, -440f, -2090f, 1114f)))), -317f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f * global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * _wgslsmith_f_op_f32(global2.x + global2.x)))), ~vec3<u32>(71671u, _wgslsmith_clamp_u32(u_input.a.x, abs(24164u), 60262u), _wgslsmith_div_u32(u_input.e.x, 47721u)), 76348u);
    var var_1 = all(vec4<bool>(any(vec4<bool>(true, true, true, true)) != true, !(!any(vec4<bool>(false, false, false, true))), true, !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true))));
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2029f, var_0.b.a.b.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1288f))), var_0.b.a.b.zx, select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 41068u, 1u, var_0.d.x), u_input.e), vec4<u32>(~u_input.e.x, 1u, var_0.b.a.a, 22947u)), 27u)], select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))))));
    let var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_0.b.a.b)), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, -150f, _wgslsmith_f_op_f32(var_0.b.b + 1101f)), !all(vec3<bool>(true, true, false))))), -306f);
    var var_3 = _wgslsmith_add_vec4_i32(-abs(vec4<i32>(u_input.b.x, -34120i, -69420i, u_input.b.x) & min(vec4<i32>(u_input.d, -5001i, u_input.d, 0i), vec4<i32>(u_input.d, 12452i, 1i, u_input.d))), vec4<i32>(-(~firstTrailingBit(-24185i)), -12049i, select(~firstTrailingBit(-1i), u_input.d, true), -15170i));
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mult_u32(~arg_0.a, ~0u)), _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.b.x, -193f)), -312f, _wgslsmith_div_f32(1649f, 809f), arg_0.b.x))), 2697f);
    var var_1 = all(vec4<bool>(true, !all(select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true), false)), false, ((var_0.a.a > 52214u) & arg_1.x) && arg_1.x));
    var var_2 = var_0.a;
    var var_3 = all(arg_1.zx);
    var_3 = any(!select(!vec4<bool>(true, arg_1.x, arg_1.x, true), func_3(), arg_1.x || true)) & all(vec3<bool>(arg_1.x, arg_1.x, true));
    return 797f;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(19374u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(1u, vec4<f32>(global2.x, -443f, 1643f, global2.x)), vec3<bool>(false, true, true))), -378f, _wgslsmith_f_op_f32(-191f - 1394f), _wgslsmith_f_op_f32(abs(-220f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 555f, global2.x, 691f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1064f, global2.x, global2.x)))), true))), -1000f);
    global1 = array<vec2<bool>, 27>();
    var var_1 = u_input.b.yyy;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(483f + _wgslsmith_div_f32(global2.x, -892f)))), var_0.b));
    let var_3 = var_0.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, global2.x), vec2<f32>(435f, -388f))))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1911f)), _wgslsmith_f_op_f32(f32(-1f) * -2135f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))));
    let var_0 = func_1();
    let var_1 = Struct_4(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, var_0.a.a), Struct_2(Struct_1(select(firstTrailingBit(u_input.e.x), ~1u, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b * vec4<f32>(-2031f, var_0.a.b.x, 2957f, 1000f)))), -490f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b.yy))), firstLeadingBit(vec3<u32>(u_input.e.x, var_0.a.a, u_input.a.x & u_input.c)) ^ u_input.e.ywy, 57926u);
    global2 = var_0.a.b.wx;
    global2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_sub_u32(var_1.e, u_input.c), _wgslsmith_div_u32(9142u, var_1.a) >> ((_wgslsmith_clamp_u32(89662u, var_0.a.a, var_1.a) & 1u) % 32u), 442u, 101005u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(493f, global2.x, 136f), func_1().a.b.wwz)) + vec3<f32>(var_1.c.x, 230f, -1000f)), -vec3<i32>(~u_input.b.x, abs(u_input.b.x), u_input.d), 29909u, countOneBits(reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a.a, var_0.a.a), var_1.d.yz))));
}

