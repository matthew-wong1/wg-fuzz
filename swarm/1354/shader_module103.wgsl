struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<u32>, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec3<i32>(~(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1919i, 4000i), vec2<i32>(u_input.b.x, 1i)), u_input.b.xx << (u_input.a.yx % vec2<u32>(32u)))), u_input.b.x, -u_input.b.x);
    var var_1 = Struct_1(true, ~(~(vec4<u32>(u_input.a.x, 4294967295u, u_input.e.x, 21281u) ^ u_input.c)) & firstTrailingBit(vec4<u32>(u_input.c.x, ~u_input.c.x, u_input.d >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.d)))));
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = false;
    var var_1 = arg_1;
    let var_2 = select(u_input.e.xy, u_input.c.yy, var_1.a);
    var var_3 = !vec3<bool>(arg_1.a, !(true | (var_1.a & true)), var_1.a);
    var_1 = Struct_1(all(!vec3<bool>(var_3.x, arg_1.a, true)), func_3(all(select(vec4<bool>(true, arg_1.a, false, var_3.x), vec4<bool>(var_1.a, var_3.x, false, var_1.a), all(vec2<bool>(var_1.a, true))))));
    return abs(1u);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<u32>, 25>();
    let var_0 = arg_1.zzy;
    let var_1 = Struct_1(u_input.b.x < -u_input.b.x, vec4<u32>(~select(28836u, 1u, var_0.x), ~_wgslsmith_clamp_u32(~u_input.d, 8234u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 13578u, u_input.c.x, arg_0), u_input.c)), func_2(~arg_2.b.x, Struct_1(false, arg_2.b)) >> (~_wgslsmith_mult_u32(47233u, 1u) % 32u), arg_2.b.x));
    var var_2 = arg_2;
    var var_3 = 43288u;
    return var_1;
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<u32>, 25>();
    global0 = !(!any(vec3<bool>(true, select(true, true, true), true)));
    global1 = array<vec3<u32>, 25>();
    let var_0 = !vec2<bool>(true, !(select(-35921i, u_input.b.x, false) <= 88475i));
    let var_1 = 66887u;
    return func_4(_wgslsmith_div_u32(func_2(10076u, Struct_1(false, vec4<u32>(4294967295u, var_1, u_input.e.x, u_input.a.x))) & ~_wgslsmith_sub_u32(u_input.e.x, var_1), 13085u), select(select(!(!vec4<bool>(var_0.x, true, var_0.x, false)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(!vec4<bool>(false, var_0.x, var_0.x, false))), !vec4<bool>(!var_0.x, true, true, var_0.x), any(vec4<bool>(!var_0.x, !var_0.x, true, true))), Struct_1(var_0.x, select(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.e.x), abs(66575u), ~426u, 42007u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 15772u, 31013u, 4294967295u), u_input.c ^ u_input.c), select(!vec4<bool>(false, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), 206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * arg_1), _wgslsmith_f_op_f32(round(arg_1)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 264f), _wgslsmith_f_op_f32(exp2(var_0.x)), arg_1, _wgslsmith_f_op_f32(1577f - -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * var_0.x), 214f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1, -500f)))), 2431f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(arg_1 - 112f))), var_0.x));
    var var_2 = Struct_1(1u >= _wgslsmith_dot_vec4_u32(abs(~u_input.c), max(vec4<u32>(u_input.e.x, 4294967295u, 52003u, 64530u), arg_2.b)), vec4<u32>(arg_0, _wgslsmith_add_u32(~44614u, 9124u) | _wgslsmith_add_u32(func_3(false).x, 91451u), 0u, _wgslsmith_div_u32(u_input.d, func_3(!arg_2.a).x)));
    var var_3 = select(!(!vec4<bool>(func_4(34481u, vec4<bool>(arg_2.a, false, false, arg_2.a), arg_2).a, true, u_input.b.x <= u_input.b.x, true)), !vec4<bool>(all(!vec4<bool>(false, arg_2.a, var_2.a, true)), true, any(vec2<bool>(false, var_2.a)) | !arg_2.a, 1769f < _wgslsmith_f_op_f32(ceil(var_1.x))), false);
    let var_4 = func_1();
    return u_input.c.wz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zx, func_5(_wgslsmith_mult_u32(0u, u_input.e.x), -531f, func_1())), firstTrailingBit(vec2<u32>(min(1u, 0u), ~u_input.a.x))) > 4294967295u;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(f32(-1f) * -853f), 1f, -128f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(170f, -344f, -963f, -531f) - vec4<f32>(1174f, 795f, 384f, 1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1323f, 101f, -482f, 1000f))))), select(true, true, false))));
    global0 = false;
    var var_1 = select(!vec4<bool>(true, true, true, func_4(1u, select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), func_1()).a), !select(vec4<bool>(true, false, true, select(true, true, false)), vec4<bool>(true, true, true, true), _wgslsmith_add_i32(u_input.b.x, 13987i) != -u_input.b.x), all(vec2<bool>(true | func_4(u_input.e.x, vec4<bool>(true, false, true, true), Struct_1(false, u_input.c)).a, true)));
    global1 = array<vec3<u32>, 25>();
    let var_2 = Struct_1(true, vec4<u32>(34994u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, ~4190u), (u_input.c.wx >> (vec2<u32>(11971u, 0u) % vec2<u32>(32u))) & u_input.a.yx), u_input.d, _wgslsmith_sub_u32(firstTrailingBit(~4294967295u), u_input.d)));
    var var_3 = u_input.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(min(var_3.x, var_3.x), u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), -(u_input.b.yz ^ vec2<i32>(firstLeadingBit(var_3.x), var_3.x)), countOneBits(~(_wgslsmith_mod_u32(u_input.e.x, var_2.b.x) >> (max(0u, 5184u) % 32u))));
}

