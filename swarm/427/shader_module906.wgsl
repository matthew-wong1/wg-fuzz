struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, false, false, false, true, false);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 30>;

var<private> global3: i32 = 2147483647i;

var<private> global4: f32 = 1000f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(-839f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-793f - _wgslsmith_f_op_f32(283f - -1192f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.x)) + _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(10450u, 30u)], _wgslsmith_sub_i32(-31670i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(global1.e, u_input.c.x, global1.e), u_input.a)), 30u)], abs(min(global1.e, 1u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(ceil(-880f)));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 30u)];
    return global2[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x | 100398u, u_input.d ^ global1.e), _wgslsmith_add_vec2_u32(~vec2<u32>(var_2.e, 8709u), max(u_input.c, u_input.a.zy))), vec2<u32>(~33336u, 4294967295u)), 30u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b.wzy * arg_1.b.wxy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(global1.b.ywx)), arg_1.b.wyx)) - global1.b.yww), vec3<bool>(func_2().d, true, all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.e, 8u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.e, 8u)]), true))))), _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.xxz))));
    var var_1 = vec2<f32>(func_2().b.x, _wgslsmith_f_op_f32(step(-1572f, arg_1.b.x)));
    global1 = func_2();
    var var_2 = vec3<i32>(1i, 1i, _wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x), global1.a));
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x & 12792u, 8u)];
    return arg_1;
}

fn func_1() -> Struct_1 {
    return func_4(global1.c, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    let var_1 = vec3<u32>(31797u, ~(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.a.xy) >> (global1.e % 32u)), _wgslsmith_sub_u32(~global1.e, abs(_wgslsmith_mult_u32(max(4294967295u, global1.e), global1.e))));
    global1 = func_1();
    global1 = func_2();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-486f)), _wgslsmith_f_op_f32(max(-561f, 485f)), all(vec3<bool>(global1.d, global1.d, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))))), 989f);
    var var_3 = ~global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(70533u, var_1.x, 4294967295u), vec3<u32>(var_1.x, u_input.a.x, 1u), u_input.a), u_input.a), ~vec3<u32>(u_input.a.x, 1u, var_1.x))), _wgslsmith_add_u32(var_1.x, global1.e) | abs(1u), _wgslsmith_clamp_u32(u_input.d, ~u_input.a.x, 4958u), vec4<u32>(~max(43682u, func_2().e), ~4713u << (u_input.d % 32u), firstLeadingBit(4294967295u), ~(~_wgslsmith_div_u32(u_input.d, 36731u))));
}

