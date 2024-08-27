struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: array<vec4<f32>, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_3(!select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(any(vec2<bool>(true, false)), true, true, select(false, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), arg_0.x == 39415i)), ~firstLeadingBit(u_input.b), ~vec3<u32>(u_input.a.x, max(u_input.b, u_input.a.x), 0u));
    global0 = array<vec2<i32>, 23>();
    let var_1 = 71137u;
    global0 = array<vec2<i32>, 23>();
    let var_2 = ~(~u_input.b);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) * _wgslsmith_f_op_f32(max(550f, -940f))))), -185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -453f), _wgslsmith_f_op_f32(f32(-1f) * -181f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-416f))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = abs(_wgslsmith_div_i32(i32(-1i) * -17802i, 1i));
    let var_1 = vec3<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-1273f - -1052f), arg_0.a.b.x);
    var var_2 = var_1;
    var_2 = _wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mod_vec4_i32(max(vec4<i32>(-2147483647i, -42381i, var_0, -2147483647i), vec4<i32>(var_0, var_0, var_0, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(5812i, 3567i, 1i, var_0), vec4<i32>(2147483647i, -9522i, var_0, 24007i))))));
    var var_3 = max(_wgslsmith_mod_vec2_i32(vec2<i32>(12275i, -1i), vec2<i32>(var_0 >> (u_input.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0, 8390i), vec3<i32>(var_0, var_0, 30207i)))), vec2<i32>(max(var_0, var_0), -(var_0 | var_0))) ^ firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_add_i32(var_0, -1i)));
    return arg_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_2.a.b.x), arg_2.a.b.x, func_2(func_2(Struct_2(arg_2.a), Struct_1(arg_2.a.a || arg_2.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.b.x, -1000f)), vec3<u32>(1u, 4294967295u, 1u)), true), arg_2.a, !select(arg_2.a.a, any(vec4<bool>(arg_2.a.a, arg_2.a.a, arg_2.a.a, false)), true)));
    let var_1 = vec3<bool>(true, func_2(var_0.c, arg_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3))) != arg_2.a.b.x).a.a, true);
    global0 = array<vec2<i32>, 23>();
    var var_2 = arg_2.a.c;
    var_0 = Struct_4(_wgslsmith_f_op_f32(sign(760f)), arg_2.a.b.x, Struct_2(Struct_1(any(vec4<bool>(true, true, false, arg_2.a.a)) | !var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-arg_3), 291f), u_input.a.wzz)));
    return !var_0.c.a.a != var_0.c.a.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    var var_0 = !vec3<bool>(true, !func_4(~vec4<u32>(14315u, arg_1, 1u, u_input.a.x), vec4<i32>(-2147483647i, 1i, 164i, -54539i) << (vec4<u32>(arg_0.x, 1u, arg_1, u_input.a.x) % vec4<u32>(32u)), func_2(Struct_2(Struct_1(true, vec2<f32>(506f, 534f), arg_0)), Struct_1(true, vec2<f32>(978f, -428f), vec3<u32>(1u, 22603u, 1u)), true), func_2(Struct_2(Struct_1(true, vec2<f32>(-877f, 198f), vec3<u32>(16187u, arg_0.x, 52510u))), Struct_1(false, vec2<f32>(-337f, 919f), vec3<u32>(1u, 22634u, arg_1)), false).a.b.x), true);
    var_0 = !(!(!vec3<bool>(true, var_0.x, var_0.x)));
    global1 = array<vec4<f32>, 31>();
    var var_1 = !(!select(vec3<bool>(var_0.x, var_0.x, select(var_0.x, true, var_0.x)), vec3<bool>(!var_0.x, true & var_0.x, true), any(vec3<bool>(var_0.x, var_0.x, true))));
    let var_2 = var_0.x;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 31>();
    let var_0 = _wgslsmith_mod_u32(4294967295u, 1u >> (func_1(u_input.a.yzw, 1u) % 32u));
    global1 = array<vec4<f32>, 31>();
    let var_1 = Struct_3(select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true, true, _wgslsmith_f_op_f32(-2058f + 1000f) < _wgslsmith_f_op_f32(round(652f))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), 1u <= var_0), vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true))), ~7278u, u_input.a.wxx & ~(~u_input.a.zwz));
    global0 = array<vec2<i32>, 23>();
    var var_2 = false;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~func_2(Struct_2(Struct_1(var_1.a.x, vec2<f32>(-264f, 1130f), u_input.a.xww)), Struct_1(var_1.a.x, vec2<f32>(522f, -1898f), var_1.c), true).a.c.x, 23u)], vec2<i32>(0i, 1i)) >> (28978u % 32u), ~reverseBits(1i));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~32810u & var_0, _wgslsmith_div_u32(4294967295u, ~var_0), func_2(Struct_2(Struct_1(var_1.a.x, vec2<f32>(400f, 1977f), vec3<u32>(u_input.b, 0u, 3396u))), func_2(Struct_2(Struct_1(var_4.x, vec2<f32>(1087f, -1598f), vec3<u32>(24845u, var_0, 71045u))), Struct_1(var_4.x, vec2<f32>(-932f, 745f), vec3<u32>(2863u, var_1.c.x, u_input.b)), false).a, all(vec3<bool>(var_1.a.x, false, true))).a.c.x ^ ~(~0u), 56325u), u_input.a.x, ~vec4<u32>(~_wgslsmith_sub_u32(u_input.b, u_input.a.x), u_input.a.x, ~_wgslsmith_add_u32(1u, 72395u), _wgslsmith_mod_u32(~24547u, ~var_0)));
}

