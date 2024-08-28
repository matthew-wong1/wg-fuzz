struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: Struct_5 = Struct_5(vec2<i32>(-1i, -1i));

var<private> global3: Struct_5;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_1(!(!(true && all(arg_0.wyw))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2363f, 756f, 736f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, 332f, -150f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, -615f, -755f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-431f, 225f, -1000f), vec3<f32>(1450f, -646f, -1400f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, -1520f, 1000f))))), arg_0.x)), u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<vec3<i32>, 31>();
    global1 = array<vec3<i32>, 31>();
    var_0 = Struct_1(-global2.a.x >= var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_div_f32(var_0.b.x, -246f)))), ~(i32(-1i) * -u_input.a.x));
    return var_0.a;
}

fn func_2() -> Struct_5 {
    global2 = Struct_5(select(global3.a, vec2<i32>(global2.a.x, u_input.b.x), 38326u > global0.x));
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-773f - -1490f), _wgslsmith_f_op_f32(f32(-1f) * -668f), true))) > 355f, all(vec3<bool>(true, global0.x <= global0.x, global0.x != global0.x)) || false, 18664u <= ~_wgslsmith_clamp_u32(global0.x >> (global0.x % 32u), global0.x, global0.x), false);
    var var_1 = !select(vec2<bool>(!func_3(vec4<bool>(true, var_0.x, var_0.x, false), u_input.a), false), vec2<bool>(true, global2.a.x > -2147483647i), !all(var_0.wyw));
    var_0 = !(!vec4<bool>(true, !var_1.x, all(vec3<bool>(var_1.x, var_1.x, false)), false));
    return Struct_5(-vec2<i32>(abs(-u_input.a.x), select(min(1719i, 2147483647i), max(2147483647i, 1i), true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec3<i32>, 31>();
    global0 = abs(vec3<u32>(~1u, global0.x, _wgslsmith_mult_u32(0u, global0.x)));
    global3 = func_2();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 1396f) - arg_1.b.zz) - _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(arg_1.b.x, arg_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.zy)))));
    global2 = Struct_5(-_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-20759i, global3.a.x)), global3.a));
    return Struct_3(true, arg_1.a, 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1f - 1097f), arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false);
    global3 = Struct_5(abs(global3.a) << (_wgslsmith_mod_vec2_u32(global0.zz, vec2<u32>(_wgslsmith_mod_u32(global0.x, global0.x), ~1u)) % vec2<u32>(32u)));
    global1 = array<vec3<i32>, 31>();
    global1 = array<vec3<i32>, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(195f, 514f, 1000f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(738f, 1000f, 420f) * vec3<f32>(-1000f, -300f, 389f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1751f, -384f, 1478f), vec3<f32>(2376f, 461f, -139f)))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, -377f, 814f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(530f, -759f, -156f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1680f, -2494f, -517f))))))));
    var var_2 = Struct_3(false, all(var_0.xy), _wgslsmith_dot_vec2_u32(~(~countOneBits(global0.zx)), vec2<u32>(35691u, 1u) | global0.yx), var_1.x);
    let var_3 = Struct_4(all(!(!vec4<bool>(var_2.b, var_0.x, false, var_0.x))), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x)), 19855i ^ -(global2.a.x << (19790u % 32u)), !vec4<bool>(false, any(vec2<bool>(var_0.x, var_0.x)), var_0.x, true), u_input.a.x);
    var var_4 = 66050u;
    var_2 = func_1(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -273f)), Struct_1(!(!any(vec2<bool>(true, true))), vec3<f32>(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -721f), var_1.x), _wgslsmith_dot_vec3_i32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.c, 28297u), 31u)], vec3<i32>(~u_input.b.x, _wgslsmith_mult_i32(global3.a.x, var_3.e), _wgslsmith_mod_i32(27908i, global2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec4<u32>(var_2.c, 0u, var_2.c, 0u))), _wgslsmith_f_op_vec2_f32(var_1.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1043f, 453f) * _wgslsmith_f_op_vec2_f32(var_1.yy - var_1.xy)))), vec3<i32>(global2.a.x, (var_3.e << (global0.x % 32u)) >> (_wgslsmith_mult_u32(0u, var_2.c) % 32u), select(global3.a.x, 20543i, any(var_0.yy))) ^ vec3<i32>(-1i, _wgslsmith_sub_i32(-global3.a.x, global2.a.x), abs(max(var_3.c, -1i))), 40852u);
}

