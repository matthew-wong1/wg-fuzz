struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(4294967295u, -13502i);

var<private> global3: vec4<u32> = vec4<u32>(30488u, 60605u, 14416u, 27750u);

var<private> global4: array<u32, 8> = array<u32, 8>(73776u, 6975u, 4294967295u, 0u, 0u, 0u, 98824u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec4<f32> {
    var var_0 = select(vec2<bool>(true, true), !vec2<bool>(all(global0[_wgslsmith_index_u32(0u, 7u)]), true), vec2<bool>(true, true));
    let var_1 = select(global0[_wgslsmith_index_u32(39700u, 7u)], vec4<bool>(!any(global0[_wgslsmith_index_u32(1u, 7u)]), true || var_0.x, true, false), !global0[_wgslsmith_index_u32(global3.x, 7u)]);
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a, u_input.a, arg_1)), -vec3<i32>(-global2.b, i32(-1i) * -2147483647i, -1i)));
    var_0 = var_1.zw;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1401f, -356f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) - _wgslsmith_f_op_f32(step(-2292f, 1685f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-696f, -1000f)), _wgslsmith_f_op_f32(max(-544f, 1166f)))))), _wgslsmith_f_op_f32(sign(-2014f)), -558f);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    global1 = 2147483647i;
    let var_0 = arg_1;
    global4 = array<u32, 8>();
    global0 = array<vec4<bool>, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(683f, 432f), _wgslsmith_f_op_f32(trunc(123f)), _wgslsmith_f_op_f32(199f - 708f), _wgslsmith_f_op_f32(trunc(-2150f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(56469u, 1u, 57140u), 2147483647i)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(939f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f)), -1111f, _wgslsmith_f_op_f32(step(-668f, _wgslsmith_f_op_f32(564f * 130f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1958f, 1124f)) - -1000f), _wgslsmith_f_op_f32(-1204f + _wgslsmith_f_op_f32(-683f * 2705f)), 1902f, -349f)), true));
    return abs(~_wgslsmith_mult_vec2_i32(~(-vec2<i32>(arg_2.b, 2147483647i)), -vec2<i32>(u_input.a, -1i)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<u32> {
    global3 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(global3.wxx, global3.zzx) << (_wgslsmith_mult_u32(global3.x, global3.x) % 32u), min(global2.a, _wgslsmith_clamp_u32(11025u, global2.a, global4[_wgslsmith_index_u32(global3.x, 8u)])), global4[_wgslsmith_index_u32(~9189u, 8u)], 102322u));
    var var_0 = ~_wgslsmith_sub_vec3_u32(~(~global3.wwz), ~_wgslsmith_clamp_vec3_u32(global3.zyy, _wgslsmith_add_vec3_u32(global3.zyw, global3.www), _wgslsmith_mult_vec3_u32(global3.zzy, global3.yzy)));
    var var_1 = vec2<i32>(-(u_input.a | -global2.b), -1i);
    var_0 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 14557u, 4294967295u, global4[_wgslsmith_index_u32(1u, 8u)]), vec4<u32>(global2.a, var_0.x, 4294967295u, 25168u)), vec4<u32>(18367u, global2.a, global2.a, var_0.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 0u, 51313u, global3.x), vec4<u32>(1u, var_0.x, global3.x, var_0.x), vec4<u32>(global2.a, 4294967295u, var_0.x, var_0.x))), firstTrailingBit(firstLeadingBit(global4[_wgslsmith_index_u32(global3.x, 8u)])), 1u), vec3<u32>(~global4[_wgslsmith_index_u32(~0u, 8u)], var_0.x, global2.a) >> (global3.xxz % vec3<u32>(32u)), !vec3<bool>(!arg_0, false && (arg_0 || arg_0), select(false, any(vec3<bool>(arg_0, arg_0, false)), arg_0)));
    let var_2 = Struct_1(~max(39720u, 0u), select(~arg_1.x, -(~global2.b), !arg_0));
    return vec4<u32>(var_0.x, 1u, _wgslsmith_mult_u32(~29975u, abs(var_2.a)), firstLeadingBit(max(~var_2.a, 1u) & ~16211u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = func_4(false && any(vec3<bool>(!arg_0, arg_0, true)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_1.b, u_input.a)), vec2<i32>(arg_1.b, 1i)), max(abs(vec2<i32>(global2.b, 0i)), abs(vec2<i32>(1i, u_input.a)))), abs(func_2(~vec4<u32>(global2.a, global3.x, 1u, arg_1.a), Struct_2(-4806i), arg_1))));
    var var_1 = ~31518i;
    var var_2 = ~global3.xzy;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1078f * _wgslsmith_f_op_f32(floor(-230f))), -1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1479f, -1786f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-361f))), -1538f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(select(-1988f, -1278f, arg_0)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-724f, -1036f, -1000f))))))), true & !any(vec3<bool>(arg_0, arg_0, false)))));
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) - _wgslsmith_f_op_f32(var_3.x * 230f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)) - -1972f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = !(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.x, 61037u, global2.a, global2.a), vec4<u32>(var_0, 4294967295u, 38772u, 1u)), 7u)]));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true, Struct_1(var_0, u_input.a))), 479f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, -1062f) + vec2<f32>(-1488f, 462f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(259f, 230f) + vec2<f32>(1000f, -517f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(189f, -458f) * vec2<f32>(-883f, 268f))), var_1.xw)) - vec2<f32>(_wgslsmith_f_op_f32(min(406f, -937f)), _wgslsmith_f_op_f32(f32(-1f) * -642f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.x, 0i, min(~global3.x, ~_wgslsmith_clamp_u32(global3.x, global4[_wgslsmith_index_u32(65126u & var_0, 8u)], 46626u)), vec3<u32>(firstLeadingBit(4294967295u), select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, global3.x), vec3<u32>(14880u, 4294967295u, 51043u)), 45468u, 1u), select(select(global4[_wgslsmith_index_u32(35018u, 8u)], 1u, var_1.x), 41829u & global3.x, true), countOneBits(4294967295u) == global3.x), _wgslsmith_clamp_u32(var_0, select(global2.a, global2.a, true), ~var_0) | _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 1u), 91201u)));
}

