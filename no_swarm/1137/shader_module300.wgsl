struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(6836u, 0u, 4294967295u, 33532u);

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    var var_0 = _wgslsmith_clamp_u32(1u, u_input.a, _wgslsmith_mult_u32(31989u, u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-956f))), _wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 386f)))));
    var var_2 = true;
    return select(vec3<u32>(u_input.b, global0.x, ~(~40823u)) | countOneBits(~vec3<u32>(75180u, global0.x, 1u)), vec3<u32>(firstTrailingBit(14634u) ^ 34347u, ~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(global0.x), _wgslsmith_mod_u32(1u, 109125u), 0u << (0u % 32u), 1149u), ~countOneBits(vec4<u32>(4294967295u, 47587u, global0.x, 5161u)))), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(17919u, 55939u), 23u)]);
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = 1987f;
    global2 = array<vec4<bool>, 29>();
    let var_1 = _wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec3_u32((min(vec3<u32>(31457u, u_input.b, 22352u), global0.yww) & func_3(true)) << (reverseBits(firstTrailingBit(global0.xxz)) % vec3<u32>(32u)), global0.yzz));
    var var_2 = select(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(23605i, 2147483647i, -1i, -80270i), select(vec4<i32>(-1i, -2147483647i, -20817i, 0i), vec4<i32>(0i, 2147483647i, 0i, -29130i), vec4<bool>(false, true, false, true)))), vec4<i32>(1i << (~(~var_1) % 32u), _wgslsmith_sub_i32(~abs(1i), _wgslsmith_mod_i32(-70847i, abs(-20083i))), -1966i, ~(~min(2147483647i, 1i))), all(select(!(!global2[_wgslsmith_index_u32(global0.x, 29u)]), vec4<bool>(all(global1[_wgslsmith_index_u32(var_1, 23u)]), all(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 0u), 29u)], true))));
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    global2 = array<vec4<bool>, 29>();
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1113f, 901f, 634f), vec3<f32>(-649f, -818f, 539f), false))), vec3<f32>(_wgslsmith_f_op_f32(sign(-214f)), -314f, _wgslsmith_f_op_f32(1123f - -466f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(516f + 344f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1284f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 2160f, -1150f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(954f, -1000f, 1058f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(1117f, 2547f, 984f, -576f)))), _wgslsmith_f_op_f32(f32(-1f) * -240f), 210f))));
    var var_1 = 84485u;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 23>();
    global2 = array<vec4<bool>, 29>();
    global0 = reverseBits(~abs(min(vec4<u32>(u_input.b, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.b, 60008u, global0.x, 1u))));
    global0 = firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.x, 4294967295u, 38280u, 4294967295u)), vec4<u32>(1u, u_input.c, global0.x, global0.x)), ~vec4<u32>(0u, min(0u, 40256u), func_1(15629i, vec3<u32>(32270u, u_input.a, 30086u)), u_input.a)));
    global0 = vec4<u32>(u_input.c, global0.x, u_input.a, u_input.a);
    global1 = array<vec3<bool>, 23>();
    global0 = (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 0u), 4294967295u), firstTrailingBit(u_input.a), u_input.a, 4294967295u) ^ vec4<u32>(1u, 68020u, countOneBits(_wgslsmith_sub_u32(global0.x, 35332u)), ~0u)) | (select(vec4<u32>(u_input.c >> (0u % 32u), abs(72752u), u_input.c, abs(4725u)), ~(~vec4<u32>(global0.x, global0.x, u_input.b, 2369u)), global2[_wgslsmith_index_u32(u_input.b, 29u)]) << ((vec4<u32>(_wgslsmith_mod_u32(23236u, u_input.a), 1u & global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.c, u_input.c, global0.x), vec4<u32>(global0.x, 0u, 88104u, u_input.b)), 4294967295u) ^ vec4<u32>(1u ^ global0.x, min(global0.x, global0.x), reverseBits(4589u), global0.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -227f)), -323f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -921f))))))), vec3<u32>(~_wgslsmith_dot_vec3_u32(~global0.zzy, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 29735u, u_input.a), global0.wwz)), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(u_input.c & 19909u, 0u), 55978u), global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(585f, -969f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-768f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_f_op_f32(max(-1938f, -989f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(343f, 190f, 1289f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(177f, -1000f, -1110f), vec3<f32>(897f, -1214f, 1429f), global1[_wgslsmith_index_u32(global0.x, 23u)])))), abs(5709u));
}

