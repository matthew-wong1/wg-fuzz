struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(332f, var_0.a)), 1738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + var_0.a) - _wgslsmith_f_op_f32(623f + var_0.a))))));
    let var_2 = var_0.c;
    var var_3 = global1[_wgslsmith_index_u32(1u, 27u)];
    var var_4 = 2147483647i | arg_1.b;
    return global0.x && global0.x;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = select(!vec2<bool>(!any(vec2<bool>(false, global0.x)), true), vec2<bool>(true, all(!vec3<bool>(false, global0.x, true)) & func_3(arg_2.x & arg_2.x, Struct_1(683f, -20658i, arg_2.x, 4294967295u))), all(vec4<bool>(!global0.x, global0.x, true, all(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, true), global0.x)))));
    var var_1 = vec4<u32>(global2.x, _wgslsmith_dot_vec2_u32(arg_2.zx, u_input.e), ~_wgslsmith_sub_u32(~u_input.b, 20971u), 0u);
    global2 = ~vec2<u32>(var_1.x, _wgslsmith_add_u32(var_1.x, ~min(83485u, global2.x)));
    var var_2 = -1150f;
    var_2 = 145f;
    return vec2<u32>(43330u, arg_2.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = array<Struct_2, 27>();
    let var_0 = ~func_2(u_input.c.x, u_input.a, (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 1u), arg_1.yyz) | arg_1.ywy) ^ _wgslsmith_div_vec3_u32(vec3<u32>(20903u, 7142u, u_input.e.x) ^ arg_1.xxz, arg_1.xyx));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.x)), u_input.d, global2.x, ~(~global2.x));
    global1 = array<Struct_2, 27>();
    let var_2 = Struct_1(-155f, 2147483647i, 81381u, ~arg_1.x);
    return vec2<bool>(true, func_3(arg_1.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2270f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), global0.x)), ~(~var_1.b), ~26358u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e.x, arg_1.x), reverseBits(u_input.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 428f), 1f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(155f, _wgslsmith_div_f32(-276f, -1000f))), _wgslsmith_f_op_f32(step(-2208f, _wgslsmith_f_op_f32(floor(554f))))))), u_input.d, 159584u, 1u);
    global1 = array<Struct_2, 27>();
    let var_1 = select(vec2<bool>(global0.x, global0.x && ((global0.x && true) || !global0.x)), !(!select(func_1(vec4<f32>(1438f, var_0.a, var_0.a, var_0.a), vec4<u32>(25156u, var_0.c, 3996u, 4294967295u)), vec2<bool>(true, global0.x), vec2<bool>(true, true))), vec2<bool>(global0.x, any(select(vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, global0.x), false))));
    var var_2 = vec2<u32>(78608u, ~(~_wgslsmith_dot_vec2_u32(select(u_input.e, vec2<u32>(75211u, var_0.d), vec2<bool>(true, var_1.x)), u_input.e)));
    global2 = firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), u_input.e.x));
    global1 = array<Struct_2, 27>();
    global3 = _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-u_input.d, ~3970i)), firstTrailingBit(abs(43035i))));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(var_0.a, 2577f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 119f))))), ~_wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(-30502i, _wgslsmith_add_i32(0i, var_0.b))), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(977f, -1279f, var_0.a, var_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, var_0.a, var_0.a, 776f))))));
}

