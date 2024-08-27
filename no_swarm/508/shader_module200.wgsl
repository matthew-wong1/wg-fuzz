struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<vec2<i32>, 4>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> u32 {
    return _wgslsmith_div_u32(arg_0.x, 1u & ~arg_0.x);
}

fn func_2() -> Struct_3 {
    return Struct_3(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(208i, u_input.a) << (33990u % 32u), u_input.a, _wgslsmith_mult_i32(1i, ~(-4976i))), u_input.a, ~(~vec3<u32>(func_3(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec2<f32>(912f, -165f)), 1u, ~1u)), vec2<bool>(any(vec4<bool>(true, any(vec2<bool>(true, false)), true, 24641i != u_input.a)), false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: bool) -> bool {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(61006i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(38772i, arg_0.b, 2147483647i), vec3<i32>(arg_0.a, u_input.a, arg_0.a)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), global0[_wgslsmith_index_u32(var_0.c.x, 4u)]), u_input.a, arg_0.a), countOneBits(-abs(vec3<i32>(0i, arg_1.a.a, -23618i)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), 562f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(260f, 1292f)) - _wgslsmith_f_op_f32(trunc(-883f))) + _wgslsmith_f_op_f32(abs(1673f)));
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 4>();
    let var_0 = func_4(func_2(), Struct_4(Struct_1(-32675i), func_2()), vec2<u32>(u_input.b.x, u_input.b.x), true) && func_4(Struct_3(countOneBits(-8236i), -func_2().b, ~vec3<u32>(u_input.b.x, 1u, 15918u), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), all(vec2<bool>(true, false)))), Struct_4(Struct_1(_wgslsmith_mult_i32(2147483647i, u_input.a)), Struct_3(u_input.a, 28090i, ~vec3<u32>(0u, 32358u, u_input.b.x), vec2<bool>(true, true))), ~abs(u_input.b) ^ u_input.b, func_2().d.x);
    var var_1 = vec2<bool>(!select(true && func_2().d.x, !(!var_0), false), var_0);
    let var_2 = -select(u_input.a << (u_input.b.x % 32u), ~68723i, any(vec4<bool>(true, true, true, true))) | u_input.a;
    global0 = array<vec2<i32>, 4>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f * _wgslsmith_f_op_f32(-1344f - -735f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -323f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1781f, _wgslsmith_div_f32(1085f, 802f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(617f, -929f)))))));
    global0 = array<vec2<i32>, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1167f, _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(var_0.x))), 585f));
    global0 = array<vec2<i32>, 4>();
    var var_2 = vec4<bool>(func_1(), true, any(vec3<bool>(_wgslsmith_f_op_f32(1009f - var_1.x) != var_0.x, true, any(vec4<bool>(true, false, false, true)))), reverseBits(u_input.a) > -1i);
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2489f * var_0.x) - _wgslsmith_f_op_f32(-var_1.x)) + var_1.x)));
}

