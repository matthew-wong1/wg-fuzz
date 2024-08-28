struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(69581u, 17u)];
    var var_1 = -_wgslsmith_clamp_i32(global0.x, _wgslsmith_div_i32(arg_1, ~(u_input.a | 37875i)), ((global0.x & 43863i) ^ ~arg_1) & -51575i);
    var var_2 = global1[_wgslsmith_index_u32(arg_0, 17u)];
    var var_3 = -559f;
    var_1 = -61345i;
    return _wgslsmith_f_op_f32(abs(-1089f));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global2.x, arg_1, 1461f)))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(arg_1)), 1000f, 1152f), _wgslsmith_div_vec4_f32(vec4<f32>(200f, -1655f, _wgslsmith_div_f32(-855f, 247f), _wgslsmith_f_op_f32(trunc(-1142f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1386f, -1291f, global2.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), -1646f, _wgslsmith_div_f32(arg_1, global2.x), _wgslsmith_f_op_f32(func_3(arg_0, -1i)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, _wgslsmith_f_op_f32(2079f + global2.x), 393f, _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 1153f, arg_1, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, arg_1, -553f, -1123f) - vec4<f32>(global2.x, 1244f, 353f, global2.x)))))));
    var var_0 = firstTrailingBit(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(min(global0.xzz, global0.xxy), -global0.yxw), -2147483647i >> (~_wgslsmith_clamp_u32(73589u, arg_0, 0u) % 32u)));
    global0 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(-6257i, global0.x, global0.x, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, var_0.x, 19114i), vec4<i32>(-15864i, u_input.a, var_0.x, 0i)) & firstLeadingBit(vec4<i32>(-625i, -15024i, var_0.x, -27156i)), true || all(vec3<bool>(false, false, true))) | select(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.a, var_0.x, var_0.x), firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, -11135i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1257i, -18433i, global0.x), vec4<i32>(-11263i, var_0.x, -1i, -29215i)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), select(vec4<i32>(_wgslsmith_mult_i32(~var_0.x, -global0.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(9124i, var_0.x), var_0.yz), -1i, u_input.a), abs(_wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, var_0.x, -26151i, global0.x), ~vec4<i32>(global0.x, global0.x, -7691i, 2147483647i))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true)));
    global1 = array<Struct_1, 17>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.yyx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), arg_1, _wgslsmith_f_op_f32(sign(-893f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = func_2(abs(arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1270f + _wgslsmith_div_f32(global2.x, global2.x))));
    let var_1 = 1069f;
    global1 = array<Struct_1, 17>();
    var var_2 = -1i;
    var var_3 = _wgslsmith_clamp_i32(1i, u_input.a, _wgslsmith_mod_i32(arg_1.x, ~(-18059i)));
    return !(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_sub_u32(14876u, ~arg_0), ~arg_0, _wgslsmith_mod_u32(0u, ~0u), ~11207u) & vec4<u32>(min(arg_0, ~67201u), countOneBits(arg_0), _wgslsmith_div_u32(~1u, countOneBits(1u)), 60637u);
    global1 = array<Struct_1, 17>();
    global0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 0i), vec3<i32>(2147483647i, u_input.a, 0i)), ~2147483647i, u_input.a, -_wgslsmith_add_i32(0i, global0.x)), vec4<i32>(~(~u_input.a), global0.x | 1i, abs(-1i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 32120i), global0.ww))), vec4<i32>(21321i, 0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(58498i, 5478i), -global0.x), _wgslsmith_dot_vec3_i32(global0.xwx, global0.zxw) & (-1i >> (arg_0 % 32u))));
    global1 = array<Struct_1, 17>();
    let var_1 = 938f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.ywz - vec3<f32>(var_1, global2.x, global2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(71309u, vec2<bool>(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-global2.xzz)), vec2<i32>(_wgslsmith_clamp_i32(0i, -1i, 8033i), 2147483647i), firstTrailingBit(4294967295u), ~min(0u, 64648u)), true));
    global2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-201f, var_0.a.x, true)) - _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(floor(-448f))), _wgslsmith_f_op_f32(f32(-1f) * -116f), -749f, var_0.a.x)));
    global1 = array<Struct_1, 17>();
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, var_0.a.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global2.x, var_0.a.x, global2.x)), any(vec2<bool>(true, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -529f, var_0.a.x, -265f), vec4<f32>(269f, -678f, -753f, global2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(894f * -214f), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(step(global2.x, -276f))))) + vec4<f32>(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 32637u), vec2<u32>(33186u, 40923u)), var_0.a.x).a.x, global2.x, _wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(func_3(1u, 0i)))), vec4<bool>(all(vec2<bool>(true, true)), true, (true || any(vec4<bool>(false, false, false, true))) & true, all(vec3<bool>(any(vec2<bool>(true, false)), true, all(vec3<bool>(false, true, false)))))));
    var var_1 = vec3<bool>(true, true, any(select(vec3<bool>(true, true, false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    var_1 = select(select(!vec3<bool>(true, select(var_1.x, var_1.x, false), select(false, var_1.x, var_1.x)), !select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), vec3<bool>(true, false, true), all(vec2<bool>(var_1.x, false))), true & select(var_1.x, -1388f != global2.x, true)), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), select(!(!vec3<bool>(false, var_1.x, true)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true), !vec3<bool>(var_1.x, true, true)), vec3<bool>(any(vec4<bool>(var_1.x, true, true, true)), true, true)), func_4(36652u, var_1.xx).a.x != global2.x), true && !var_1.x);
    var var_2 = _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), vec3<u32>(~(~1u), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(38569u, 23947u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 76292u, 1u, 1u), vec4<u32>(75618u, 4294967295u, 40357u, 4294967295u), vec4<u32>(15982u, 4294967295u, 4294967295u, 15084u)), ~vec4<u32>(0u, 28504u, 5638u, 0u))), ~(~5725u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, select(global0.x, _wgslsmith_div_i32(38906i >> (1u % 32u), ~(-u_input.a)), var_1.x), ~vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), -u_input.a >> (75805u % 32u), ~_wgslsmith_mod_i32(global0.x, u_input.a), min(2147483647i, abs(2147483647i))), select(global0.zx, abs(firstLeadingBit(global0.zw)), !(!any(vec4<bool>(var_1.x, false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 2217f, -2524f, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -454f), vec4<f32>(1000f, 636f, global2.x, 1235f), vec4<bool>(true, false, false, var_1.x)))))));
}

