struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u, true, 289f);

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = !vec4<bool>(false, global0.b, !select(true, global0.b, any(vec2<bool>(false, global0.b))), true);
    let var_1 = arg_1;
    global0 = Struct_4(~(~(~abs(80536u))), select(global0.b, false, all(var_0.xx)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(780f, global0.c, var_0.x)))));
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_4(0u, true, _wgslsmith_f_op_f32(-global0.c));
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.x, var_0.c)), _wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(abs(var_0.c))))) <= var_0.c, global0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-3023f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(global0.c, 224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1755f))), !(arg_3.x <= -215f))), _wgslsmith_f_op_f32(f32(-1f) * -1456f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_3.wxy + arg_3.zwz), _wgslsmith_f_op_vec3_f32(-arg_3.zxx)))))));
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = func_4(select(vec4<bool>(true, select(true | arg_2.b, -1094f < global0.c, true), all(select(vec4<bool>(false, global0.b, global0.b, true), vec4<bool>(false, true, arg_0.x, global0.b), vec4<bool>(false, arg_2.b, arg_0.x, true))), false), select(vec4<bool>(false, arg_2.b, true, !arg_0.x), !(!vec4<bool>(arg_2.b, true, global0.b, false)), vec4<bool>(true, arg_0.x, func_3(0i, Struct_2(vec4<u32>(60569u, var_0.a, 0u, global0.a), u_input.a.x, u_input.b, u_input.a.xzz, 7981u), arg_2.c), select(arg_2.b, true, arg_2.b))), max(max(27480u, arg_2.a), ~arg_2.a) >= u_input.b.x), u_input.a.yzx, Struct_3(firstTrailingBit(global0.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -421f, 237f, global0.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, 1000f, arg_2.c, 1219f), vec4<f32>(140f, -391f, 1302f, arg_2.c)) * _wgslsmith_div_vec4_f32(vec4<f32>(806f, global0.c, arg_2.c, arg_2.c), vec4<f32>(arg_2.c, arg_2.c, global0.c, -1800f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, 178f), vec2<f32>(-230f, global0.c), false))))))));
    let var_3 = !arg_0;
    var var_4 = _wgslsmith_mod_vec4_i32(u_input.a, ~(~vec4<i32>(-2147483647i, 67106i, -u_input.a.x, -4049i ^ var_1.x)));
    return select(!var_3, arg_0, select((i32(-1i) * -13045i) < u_input.a.x, !select(global0.b, false, arg_0.x), true));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    global1 = array<vec3<bool>, 25>();
    var var_0 = u_input.b.zy;
    let var_1 = _wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(step(512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_div_f32(global0.c, global0.c))))))));
    return 360f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(-(-max(-1i, 2147483647i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.wxz, vec3<i32>(1i, -2147483647i, 0i)), select(u_input.a.yyw, vec3<i32>(u_input.a.x, u_input.a.x, -1i), false))), abs(min(firstTrailingBit(u_input.a.x), select(_wgslsmith_add_i32(43228i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), false))));
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1429f - -1000f), _wgslsmith_f_op_f32(func_5(func_2(select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b), false), Struct_3(global0.a), Struct_4(0u, global0.b, global0.c)), Struct_1(_wgslsmith_mult_i32(-16664i, var_0), global0.b, u_input.b.x >> (3299u % 32u)))))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-438f)), global0.c));
    var var_3 = false;
    let var_4 = !global0.b;
    return Struct_1(var_0, var_4, _wgslsmith_clamp_u32(global0.a, global0.a, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1414f + -577f), 7197i, max(1u, firstTrailingBit(var_0.c)), ~vec4<u32>(select(u_input.b.x, 50622u, true), abs(var_0.c), ~var_0.c, global0.a | global0.a) << (vec4<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.c, 18982u), global0.a >> (var_0.c % 32u), 40358u), abs(var_0.c), firstTrailingBit(var_0.c)) % vec4<u32>(32u)));
}

