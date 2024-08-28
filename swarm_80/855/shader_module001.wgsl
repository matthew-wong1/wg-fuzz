struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1168f, 1084f, 1088f);

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(28138i, 2147483647i), vec2<i32>(-25311i, 2780i), vec2<i32>(2147483647i, -4356i), vec2<i32>(-1i, -43926i), vec2<i32>(0i, -1i), vec2<i32>(5910i, -56301i), vec2<i32>(2147483647i, 20397i), vec2<i32>(8829i, 21874i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> vec4<i32> {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(727f, global0.x, -1017f), vec3<f32>(arg_2.b, 1460f, 620f), vec3<bool>(arg_0.a, false, arg_0.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1014f, arg_2.b) * vec3<f32>(891f, arg_2.b, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, arg_2.b))))), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.b)), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f * 509f)), 650f))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.b, -984f, global0.x), vec3<f32>(arg_1.b, -1979f, -985f))) + vec3<f32>(850f, -407f, arg_1.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1601f, global0.x, 1641f), vec3<f32>(606f, global0.x, arg_1.b), arg_0.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(351f, arg_2.b, 2138f))))), vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, arg_2.b, false)), _wgslsmith_f_op_f32(select(-2634f, global0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1341f))))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(700f)) * -1000f), 608f);
    let var_1 = arg_0.b & (vec4<i32>(abs(-2147483647i), 0i, 2147483647i, arg_0.b.x) << (vec4<u32>(~arg_2.a, 1u, 1u, u_input.a) % vec4<u32>(32u)));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1294f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f * -1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1380f - _wgslsmith_f_op_f32(-arg_2.b)))), _wgslsmith_f_op_f32(round(arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_2.b))))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(select(35282i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), var_1.wxw), all(vec3<bool>(false, true, arg_0.a))), _wgslsmith_clamp_i32(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(22318i, var_1.x, var_1.x), abs(var_1.zwz)), var_1.x), 32275i | ~(var_1.x | var_1.x), arg_0.b.x), firstLeadingBit(vec4<i32>(var_1.x << (arg_1.a % 32u), ~2147483647i, ~(-13230i), _wgslsmith_add_i32(var_1.x, var_1.x))) >> (vec4<u32>(_wgslsmith_div_u32(~4294967295u, 10863u), ~arg_2.a << (~arg_1.a % 32u), ~(~arg_2.a), ~_wgslsmith_sub_u32(1u, arg_2.a)) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(!(-23727i < select(-36956i, 1i, true)), _wgslsmith_mult_vec4_i32(func_3(Struct_1(true, vec4<i32>(0i, 0i, 8380i, 0i)), Struct_4(u_input.a, -419f), Struct_4(408u, global0.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(32215i, 1i, 8912i, -189i), vec4<i32>(1i, -2147483647i, -2147483647i, 63334i))) >> (~_wgslsmith_mod_vec4_u32(select(vec4<u32>(12172u, 0u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 20357u), vec4<bool>(false, true, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 0u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1315f - 1282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f + arg_0))), _wgslsmith_f_op_f32(min(arg_0, global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1770f)), _wgslsmith_f_op_f32(sign(-747f))), var_0.a));
    var var_2 = select(vec2<bool>(any(select(!vec4<bool>(var_0.a, true, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, var_0.a), var_0.a), true)), !all(vec3<bool>(true, var_0.a, false))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), var_0.a), !var_0.a)), vec2<bool>(!all(!vec2<bool>(true, var_0.a)), true));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_3 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1503f, -423f, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-117f, arg_0, 1338f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-169f, global0.x, -344f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0, _wgslsmith_f_op_f32(358f * 387f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + 1000f))), 1211f, _wgslsmith_f_op_f32(-1f))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1.x))));
    global1 = array<vec2<i32>, 8>();
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), arg_1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, arg_1.x, -417f), vec3<f32>(411f, global0.x, -1350f))))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 531f, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0.x, arg_1.x, 593f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, 908f, -1000f, -232f)))), vec4<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1628f), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1248f)), _wgslsmith_f_op_f32(max(-1596f, _wgslsmith_f_op_f32(ceil(1000f))))), any(vec4<bool>(true, false, true, true)))));
    let var_1 = _wgslsmith_mult_u32(17583u >> (u_input.a % 32u), ~48410u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<u32>(_wgslsmith_mult_u32(~4294967295u >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), u_input.a), func_1(56641u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -241f))))), max(0u, u_input.a)), vec3<u32>(u_input.a, ~47910u, 0u) >> (vec3<u32>(u_input.a, min(firstLeadingBit(0u), ~4294967295u), ~(~5944u)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(71360u, var_0.x, 4294967295u), vec3<u32>(u_input.a, 48205u, 0u)), vec3<u32>(0u, u_input.a, 1u) ^ vec3<u32>(0u, u_input.a, 1u)) ^ (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 74291u, u_input.a), vec3<u32>(var_0.x, u_input.a, u_input.a)) >> (~vec3<u32>(var_0.x, u_input.a, 0u) % vec3<u32>(32u)))), ~((reverseBits(vec3<u32>(23199u, u_input.a, u_input.a)) << (vec3<u32>(var_0.x, u_input.a, 9549u) % vec3<u32>(32u))) ^ max(~vec3<u32>(u_input.a, 4294967295u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<u32>(1u, 4294967295u, 0u)))));
    var var_1 = Struct_2((_wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, 46353u)) != (u_input.a >> (_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u) % 32u))) | true, select(select(vec2<bool>(true, global0.x == global0.x), vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true))), false), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), Struct_1(all(vec3<bool>(true, true, true)), vec4<i32>(0i, ~abs(2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(22900i, -11737i), ~1i), select(_wgslsmith_mult_i32(-47711i, 1i), i32(-1i) * -8167i, false))), !select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), true));
    var_0 = vec3<u32>(~_wgslsmith_mult_u32(u_input.a, firstTrailingBit(var_0.x)), ~u_input.a, func_1(min(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.x, 0u), vec4<u32>(u_input.a, 108532u, var_0.x, 41901u))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -737f))))) & select(vec3<u32>(4294967295u, u_input.a, abs(1u)) >> (vec3<u32>(_wgslsmith_mult_u32(0u, 15635u), select(var_0.x, 1u, true), u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, ~firstLeadingBit(46778u), 288u), !(!var_1.d.wxy));
    let var_2 = var_1.c;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(146f, 1782f, -2117f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -622f, -1000f)))))));
    var var_3 = ~(~vec3<u32>(55052u, reverseBits(u_input.a), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_3.x)), vec2<i32>(var_2.b.x, 3561i), 1u, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-293f))), _wgslsmith_f_op_f32(f32(-1f) * -140f), all(vec2<bool>(true, true)))), 252f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))))), -1577f, _wgslsmith_f_op_f32(sign(global0.x))));
}

