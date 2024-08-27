struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(true, true));

var<private> global2: array<vec2<u32>, 10>;

var<private> global3: array<bool, 19>;

var<private> global4: array<vec4<f32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec2<bool> {
    global0 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.e, 53607u), 6u)];
    var var_0 = _wgslsmith_clamp_i32(u_input.a, -4036i ^ _wgslsmith_div_i32(~u_input.a, i32(-1i) * -2147483647i), -19798i) >= 1i;
    var var_1 = vec4<u32>(u_input.e, ~u_input.c.x, u_input.b.x, u_input.d.x);
    global0 = global4[_wgslsmith_index_u32(~(~u_input.c.x), 6u)];
    var_0 = false;
    return select(vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 19u)], !global3[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(false, !(-u_input.a == u_input.a)), max(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 40267u), vec2<u32>(1u, u_input.b.x) ^ var_1.zw)) < (max(var_1.x | 56954u, u_input.b.x | 0u) >> (9296u % 32u)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global3 = array<bool, 19>();
    var var_0 = !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], !((-1000f >= global0.x) || any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e, 19u)], true))), all(vec4<bool>(1u < u_input.c.x, true, global3[_wgslsmith_index_u32(49162u, 19u)] || arg_0.x, false)));
    let var_1 = Struct_2(u_input.a << (~1u % 32u), 1000f, true, ~u_input.d.x);
    let var_2 = Struct_4(!(!(!(!var_0.ww))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.d, 4294967295u, var_1.d), 1u), 6u)] - _wgslsmith_f_op_vec4_f32(floor(global4[_wgslsmith_index_u32(94775u, 6u)])))));
    return Struct_4(global1.a);
}

fn func_3() -> u32 {
    global3 = array<bool, 19>();
    var var_0 = ~_wgslsmith_div_u32(u_input.c.x, _wgslsmith_clamp_u32(u_input.b.x, 0u >> (u_input.d.x % 32u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 25965u, u_input.e), u_input.d), u_input.e)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)));
    let var_2 = ~(_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(abs(18646u), 10u)], vec2<u32>(u_input.b.x << (u_input.e % 32u), firstTrailingBit(37552u))) & u_input.c);
    let var_3 = vec3<i32>(i32(-1i) * -8170i, -56069i, _wgslsmith_sub_i32(i32(-1i) * -(~u_input.a), 44232i));
    return 7645u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 10>();
    global2 = array<vec2<u32>, 10>();
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a);
    global1 = func_2(select(func_1(), !(!(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global1.a.x))), vec2<bool>(true, true)));
    var var_1 = u_input.a << ((_wgslsmith_sub_u32(0u, func_3() ^ ~70469u) | ~u_input.e) % 32u);
    var var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global0.wyz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.xwy * vec3<f32>(global0.x, global0.x, global0.x)) + global0.yzy)), ~(~min(abs(u_input.d), ~u_input.d)));
}

