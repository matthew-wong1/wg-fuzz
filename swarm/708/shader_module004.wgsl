struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<f32, 27>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(0u));
    let var_1 = global0[_wgslsmith_index_u32(0u, 16u)];
    global2 = array<f32, 27>();
    var_0 = Struct_2(Struct_1(~(~27294u)));
    var var_2 = true;
    return Struct_1(firstLeadingBit(u_input.a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<i32>) -> i32 {
    global2 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_2.x)));
    global2 = array<f32, 27>();
    var var_1 = !vec3<bool>(true, (arg_2.x > _wgslsmith_f_op_f32(sign(976f))) & all(vec4<bool>(true, true, true, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))) || any(vec3<bool>(true, true, true)));
    let var_2 = func_1();
    return -51656i;
}

fn func_2() -> Struct_2 {
    var var_0 = -vec2<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 46429i, -21202i), vec3<i32>(u_input.e, 1i, u_input.d)), func_3(global0[_wgslsmith_index_u32(1u, 16u)], Struct_2(Struct_1(u_input.a)), vec2<f32>(574f, global2[_wgslsmith_index_u32(36271u, 27u)]), vec4<i32>(u_input.e, 11572i, u_input.b.x, u_input.d)))), -_wgslsmith_mult_i32(-50988i, 3740i) & u_input.c.x);
    let var_1 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true);
    let var_2 = ~vec2<i32>(_wgslsmith_sub_i32(var_0.x, 6914i), u_input.c.x);
    global0 = array<Struct_2, 16>();
    var var_3 = var_1.x;
    return Struct_2(func_1());
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<f32> {
    var var_0 = vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(12960u, 39159u, arg_1.a.a), max(vec3<u32>(9089u, arg_1.a.a, 24324u), vec3<u32>(arg_1.a.a, 1u, 4294967295u)))), u_input.a);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1.a.a, 4294967295u) & vec2<u32>(1u, 1u)), abs(vec2<u32>(firstTrailingBit(4294967295u), min(u_input.a, var_0.x)))), 23u)];
    let var_2 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(min(-13609i, func_3(global1[_wgslsmith_index_u32(90771u, 23u)], global1[_wgslsmith_index_u32(arg_1.a.a, 23u)], arg_2.xz, vec4<i32>(u_input.c.x, 1i, u_input.d, u_input.b.x))), -(-2147483647i | u_input.e), firstTrailingBit(~2147483647i))), ~(vec3<i32>(2147483647i, abs(1i), _wgslsmith_clamp_i32(0i, 0i, 2147483647i)) & _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-12258i, u_input.c.x, 31288i), vec3<i32>(u_input.b.x, u_input.d, 1i)), vec3<i32>(75197i, u_input.d, 0i))));
    global1 = array<Struct_2, 23>();
    return _wgslsmith_f_op_vec2_f32(-arg_0.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    var var_0 = func_1();
    global0 = array<Struct_2, 16>();
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(var_0.a, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], -2136f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_0.a, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], 1217f, global2[_wgslsmith_index_u32(u_input.a, 27u)])))), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1719f, global2[_wgslsmith_index_u32(0u, 27u)], -778f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(668f, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(50784u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), func_2(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-267f, 1181f, global2[_wgslsmith_index_u32(55612u, 27u)]), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 1084f, global2[_wgslsmith_index_u32(u_input.a, 27u)]), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-327f, global2[_wgslsmith_index_u32(u_input.a, 27u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1653f, global2[_wgslsmith_index_u32(1u, 27u)])))))));
    global2 = array<f32, 27>();
    global2 = array<f32, 27>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2188f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a >> (var_0.a % 32u), 27u)] + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(-547f)), 564f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(40441u, var_0.a, 1u, u_input.a)) & vec4<u32>(~u_input.a, u_input.a, u_input.a, _wgslsmith_mod_u32(var_0.a, 27531u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~var_0.a), 100437u), ~(abs(vec2<u32>(15767u, 0u)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0.a), vec2<u32>(4294967295u, 12830u)))), select(var_0.a, ~reverseBits(~0u), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), any(vec3<bool>(true, false, true))))), max(vec4<u32>(var_0.a, 0u, u_input.a, 1u), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 6951u, 0u, 4294967295u), vec4<u32>(29852u, 31404u, var_0.a, 30619u)), ~select(vec4<u32>(u_input.a, var_0.a, u_input.a, 13602u), vec4<u32>(4294967295u, 30870u, 30179u, var_0.a), false))));
}

