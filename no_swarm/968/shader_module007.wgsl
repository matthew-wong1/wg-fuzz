struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: Struct_1 = Struct_1(true, vec3<bool>(false, true, true), 555f);

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(false, true, false), -531f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(global1.c, arg_1.x);
    global2 = select(_wgslsmith_mod_vec4_u32(u_input.c, ~select(firstLeadingBit(u_input.d), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 4294967295u), !vec4<bool>(global1.a, false, global3.a, true))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(20800u, u_input.e, global2.x, u_input.c.x), ~u_input.d, !vec4<bool>(false, arg_0, false, global3.a)), abs(~vec4<u32>(4294967295u, u_input.e, 1u, u_input.d.x))), select(arg_0, global3.b.x, true));
    let var_1 = 372f;
    var var_2 = 2147483647i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(109f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -108f)))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + global3.c) + 1000f))), vec3<bool>(true, global3.b.x, (_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -11275i) & _wgslsmith_add_i32(0i, 1i)) < -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, global3.c))))));
    return _wgslsmith_f_op_f32(-335f + -1000f);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = reverseBits(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(reverseBits(~1u), 28u)], global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.e), 28u)]));
    var var_0 = Struct_1(global1.b.x, vec3<bool>(true, false, arg_0.x), -2268f);
    global2 = select(countOneBits(vec4<u32>(~(~global2.x), global2.x, 0u, ~11855u)), u_input.d, !(!select(true, any(vec4<bool>(false, true, false, global3.a)), any(vec2<bool>(global3.b.x, false)))));
    global3 = Struct_1(var_0.a, vec3<bool>(global3.b.x, all(arg_2.b), any(vec3<bool>(var_0.b.x == false, all(vec4<bool>(global3.a, var_0.b.x, arg_0.x, true)), all(vec2<bool>(global1.a, false))))), var_0.c);
    let var_1 = Struct_1(arg_0.x || (false & all(vec4<bool>(false, false, global3.b.x, var_0.a))), vec3<bool>(true, !arg_2.a, !arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec4<f32>(_wgslsmith_f_op_f32(max(global3.c, -272f)), _wgslsmith_f_op_f32(var_0.c * 1955f), _wgslsmith_f_op_f32(max(global1.c, 1000f)), -352f)))));
    return abs(63913u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = array<vec4<u32>, 28>();
    let var_0 = Struct_1((reverseBits(func_2(global3.b.xy, global1.c, arg_1)) < u_input.d.x) | (firstTrailingBit(1i) != -_wgslsmith_div_i32(-32835i, 1i)), global3.b, _wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0))) - vec4<f32>(932f, _wgslsmith_f_op_f32(arg_1.c + global3.c), 428f, -1000f)))));
    let var_1 = reverseBits(firstTrailingBit(vec3<i32>(abs(21483i), abs(0i), 0i)) & vec3<i32>(-_wgslsmith_clamp_i32(1i, 29951i, 0i), ~(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(~0i, ~60975i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.yxx, arg_0.xwz), _wgslsmith_f_op_vec3_f32(trunc(arg_0.zxz)), !any(select(global3.b, select(vec3<bool>(false, true, false), var_0.b, var_0.b), !global1.a))));
    global1 = arg_1;
    return _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(2147483647i, var_1.x), _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(i32(-1i) * -var_1.x, _wgslsmith_mod_i32(-1i, -33953i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (1i & select(1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(34984i, 10920i, -33930i, -13069i), vec4<i32>(-2147483647i, 66443i, -1i, 0i)), (-30810i >> (u_input.d.x % 32u)) > 1i)) < -46428i;
    global1 = Struct_1(17463i != _wgslsmith_dot_vec3_i32(vec3<i32>(17240i >> (global2.x % 32u), reverseBits(15820i), func_1(vec4<f32>(global3.c, global1.c, -352f, global1.c), Struct_1(global3.a, global1.b, global1.c), global2.x)), abs(abs(vec3<i32>(0i, 2147483647i, -264i)))), !vec3<bool>(!global1.b.x, global1.b.x, 1567f <= _wgslsmith_f_op_f32(select(global3.c, global1.c, global1.a))), 1241f);
    global2 = reverseBits(vec4<u32>(~11640u >> (firstLeadingBit(32861u) % 32u), ~1u, 44980u, ~13218u) << (min(u_input.d, u_input.d ^ ~vec4<u32>(4294967295u, 1u, global2.x, global2.x)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1307f)) - _wgslsmith_f_op_f32(trunc(global1.c))));
    let var_2 = max(u_input.c.xy, abs(~u_input.c.zz));
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let var_3 = Struct_1(true, !(!select(vec3<bool>(global1.a, true, true), select(vec3<bool>(global1.b.x, false, global3.b.x), vec3<bool>(global3.a, global1.b.x, true), global1.b), select(global3.a, global1.b.x, false))), _wgslsmith_f_op_f32(787f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-545f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * 913f))));
    global0 = array<vec4<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), i32(-1i) * -35411i, 1i), vec3<i32>(1i, -4511i, _wgslsmith_div_i32(19438i, -17618i)) << (u_input.b % vec3<u32>(32u)), ~select(vec3<i32>(-2147483647i, 0i, -51470i), -vec3<i32>(-1i, -43141i, 0i), true)), -(~(~(~(-1i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.c, global1.c, var_3.c)))), vec3<f32>(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(max(var_3.c, 610f)), 170f), all(vec3<bool>(true, var_3.a, true))))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(70699u, 95788u, 1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 65265u, _wgslsmith_mult_u32(u_input.c.x, 0u)), u_input.b.x)));
}

