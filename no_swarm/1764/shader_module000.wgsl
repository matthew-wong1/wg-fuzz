struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global1: array<vec2<i32>, 27>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: bool;

var<private> global4: array<i32, 19> = array<i32, 19>(-1i, 2147483647i, 24371i, -24374i, 8340i, -1i, -6400i, 0i, 1i, 2147483647i, i32(-2147483648), -14920i, 2147483647i, 1i, 31003i, 17584i, 7821i, -81889i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = array<vec2<i32>, 27>();
    let var_0 = Struct_1(global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_div_f32(-395f, 1207f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1341f * -327f)) + -138f)));
    let var_2 = Struct_1(!(!(!vec2<bool>(global0.a.x, var_0.a.x))));
    let var_3 = ~vec3<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-23363i, global4[_wgslsmith_index_u32(u_input.d.x, 19u)]), vec2<i32>(26889i, u_input.c.x)), _wgslsmith_mult_vec2_i32(u_input.c.xy, u_input.c.yy)), _wgslsmith_sub_i32(countOneBits(u_input.c.x), global4[_wgslsmith_index_u32(~(u_input.d.x ^ u_input.d.x), 19u)]), firstTrailingBit(1400i));
    return u_input.c.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = array<Struct_1, 1>();
    var var_0 = func_3();
    global2 = array<Struct_1, 1>();
    global0 = arg_0;
    var var_1 = -abs(1i);
    return global4[_wgslsmith_index_u32(13041u, 19u)];
}

fn func_1(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = -232f;
    var var_1 = ~(-abs(func_2(global2[_wgslsmith_index_u32(6747u, 1u)]))) == 18331i;
    global0 = global2[_wgslsmith_index_u32(u_input.d.x, 1u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(290f, -2175f)), _wgslsmith_f_op_f32(trunc(143f))))))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(~60897u | u_input.b, 4294967295u), firstTrailingBit(1u)), 1u)];
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x) & (~arg_0.xzx ^ ~vec3<u32>(u_input.b, arg_0.x, u_input.b)), ~(~arg_0.ywy)), arg_0.x, _wgslsmith_sub_u32(arg_0.x, max(abs(u_input.d.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 45334u <= _wgslsmith_add_u32(~(1u >> (u_input.d.x % 32u)), _wgslsmith_mod_u32(36014u, ~(0u << (0u % 32u))));
    let var_0 = func_1(~vec4<u32>(_wgslsmith_div_u32(countOneBits(u_input.d.x), ~13063u), ~u_input.d.x, firstLeadingBit(u_input.b), ~4294967295u));
    var var_1 = vec3<i32>(-(global4[_wgslsmith_index_u32(~u_input.d.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48019u, 68842u, 14074u), vec4<u32>(var_0.x, u_input.b, 76579u, 4294967295u)), 19u)] & 725i), i32(-1i) * -1i, ~global4[_wgslsmith_index_u32(abs(var_0.x), 19u)]);
    global4 = array<i32, 19>();
    var var_2 = !(!vec3<bool>(global0.a.x, global0.a.x || any(global0.a), global0.a.x));
    global3 = !var_2.x;
    var var_3 = vec3<bool>(var_2.x, all(vec3<bool>(global0.a.x, func_2(Struct_1(vec2<bool>(false, var_2.x))) < _wgslsmith_mod_i32(var_1.x, -3307i), any(!vec3<bool>(var_2.x, global0.a.x, var_2.x)))), true);
    let var_4 = 1398f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -822f), ~(~1u), _wgslsmith_dot_vec2_i32(-global1[_wgslsmith_index_u32(u_input.d.x, 27u)], -(~vec2<i32>(u_input.a.x, 26381i)) | u_input.c.xy), var_0.x << ((~45723u & var_0.x) % 32u));
}

