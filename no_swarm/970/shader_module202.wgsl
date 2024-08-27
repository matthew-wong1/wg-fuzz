struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    let var_0 = vec4<bool>(global1.b, !global1.b != true, !(global1.b & (_wgslsmith_f_op_f32(-global1.a.x) > _wgslsmith_f_op_f32(min(global1.a.x, 1090f)))), 27649u >= select(~_wgslsmith_mult_u32(56173u, 14536u), _wgslsmith_dot_vec4_u32(arg_0 << (vec4<u32>(33434u, 88916u, arg_0.x, arg_0.x) % vec4<u32>(32u)), ~arg_0), global1.b));
    let var_1 = abs(u_input.c);
    let var_2 = arg_0.yzy;
    global2 = array<vec2<f32>, 26>();
    global0 = array<Struct_5, 21>();
    return vec4<f32>(116f, _wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.x)) + global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -217f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f) - global1.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)) * _wgslsmith_f_op_f32(f32(-1f) * -1776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2133f - _wgslsmith_f_op_f32(min(-935f, _wgslsmith_f_op_f32(-arg_2.a.x))))), 858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f + 386f) - arg_2.a.x));
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<f32>, 26>();
    let var_0 = global1.b;
    let var_1 = 30252u;
    global2 = array<vec2<f32>, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(select(!vec2<bool>(true, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, false)), Struct_3(-vec4<i32>(566i, global1.c, global1.c, u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(var_1, 11312u, 76435u, var_1))), -568f <= global1.a.x, ~2147483647i))))));
    return Struct_1(global1.a, true, select(-(~(~global1.c)), ~(~(~u_input.b)), global1.b));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global2 = array<vec2<f32>, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(global1.a.ywy, global1.a.zyw))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.a.xzy, global1.a.yxz))))), global1.a.yzz));
    global1 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec4_u32(~firstLeadingBit(abs(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 39707u))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(5322u, 0u, 0u, 74479u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u), vec4<u32>(arg_1.x, 30461u, arg_1.x, arg_1.x)))))).x;
    let var_2 = !select(arg_0, arg_0, !arg_0);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(func_2().a * _wgslsmith_f_op_vec4_f32(ceil(global1.a))), !arg_0.x))), true, abs(~(-17014i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(select(vec3<bool>(global1.b, u_input.a <= u_input.a, false), select(vec3<bool>(true, any(vec4<bool>(true, global1.b, global1.b, true)), global1.b), select(vec3<bool>(true, global1.b, true), vec3<bool>(false, global1.b, true), global1.b), !vec3<bool>(false, global1.b, true)), global1.b), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(43542u, 0u)), vec2<u32>(1u, 1u)), ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 0i, min(1i, -21837i)));
    var var_0 = Struct_2(firstTrailingBit(-vec2<i32>(countOneBits(u_input.b), func_2().c)));
    var_0 = Struct_2(~reverseBits(vec2<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c))));
    var var_1 = func_1(select(select(!vec3<bool>(true, global1.b, global1.b), !select(vec3<bool>(true, true, global1.b), vec3<bool>(false, true, global1.b), false), false), vec3<bool>(true && any(vec2<bool>(global1.b, global1.b)), (i32(-1i) * -21193i) <= global1.c, any(vec4<bool>(false, global1.b, false, global1.b)) || !global1.b), true), ~vec2<u32>(1u, 1u), ~firstTrailingBit(abs(global1.c) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a.x, 6723i, 0i), vec4<i32>(-6755i, global1.c, var_0.a.x, var_0.a.x))));
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(((var_0.a >> (vec2<u32>(0u, 7844u) % vec2<u32>(32u))) ^ vec2<i32>(global1.c, 0i)) & vec2<i32>(-var_1.c, ~var_0.a.x), vec2<i32>(30502i ^ (global1.c >> (28713u % 32u)), firstLeadingBit(1i))));
    let var_2 = vec2<bool>(false, !all(vec3<bool>(true, global1.b || var_1.b, any(vec3<bool>(global1.b, var_1.b, var_1.b)))));
    global2 = array<vec2<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 1746u, 49144u)), vec3<u32>(1u, 1u, 1u)), 19520u, reverseBits(~9407u)), _wgslsmith_sub_vec4_u32(~min(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(60193u, 3702u, 53788u, 4294967295u)), min(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 1u, 1u)), firstLeadingBit(vec4<u32>(0u, 1u, 0u, 1u)))), func_1(vec3<bool>(false, false, all(vec2<bool>(var_1.b, var_2.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 112063u), vec2<u32>(1u, 0u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), select(~vec2<u32>(37674u, 4294967295u), vec2<u32>(1u, 1u), select(vec2<bool>(false, false), vec2<bool>(true, global1.b), true))), ~(~(var_1.c >> (20137u % 32u)))).a.xzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(var_2, select(var_2, var_2, var_2.x), select(false, var_2.x, var_2.x)), Struct_3(vec4<i32>(-2147483647i, u_input.c.x, u_input.b, global1.c) ^ vec4<i32>(global1.c, 1i, 30101i, u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, 848f, -154f, -728f)), true, var_1.c)))), 2147483647i);
}

