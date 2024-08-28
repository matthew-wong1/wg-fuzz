struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    return u_input.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> vec2<i32> {
    var var_0 = countOneBits(vec2<u32>(func_3() & (13618u >> (_wgslsmith_mod_u32(arg_2, arg_2) % 32u)), 26166u));
    let var_1 = Struct_3(u_input.b);
    global0 = array<Struct_2, 2>();
    let var_2 = -_wgslsmith_sub_i32(min(-2147483647i, -2147483647i), u_input.b);
    var var_3 = Struct_1(0u);
    return abs(select(vec2<i32>(u_input.b, reverseBits(var_2)), vec2<i32>(28256i, u_input.b), true));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(~(-func_2(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), arg_0, ~49641u)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0, true, false, true)), vec4<u32>(u_input.a, u_input.c, u_input.c, 34860u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c))), Struct_1(u_input.c), Struct_1(~(~0u)), Struct_1(min(_wgslsmith_mod_u32(_wgslsmith_div_u32(4418u, 82686u), 53407u), 0u)));
    let var_1 = !vec3<bool>(arg_0, true, true && (false | (arg_0 | arg_0)));
    var var_2 = ~(~(~(~vec3<u32>(55621u, var_0.b.a, 17643u))) ^ vec3<u32>(var_0.b.a >> (var_0.c.a % 32u), u_input.c, 0u));
    var var_3 = var_1;
    var_2 = ~abs(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.c.a, 1u, 33392u)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(0u, var_0.d.a, var_2.x), vec3<u32>(4294967295u, 0u, var_0.e.a)), vec3<u32>(4294967295u, u_input.a, u_input.a))));
    return Struct_1(~(~(19135u ^ var_0.d.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    let var_0 = false;
    let var_1 = abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(~4294967295u, 72788u, 94916u), vec3<u32>(32939u, _wgslsmith_add_u32(~u_input.a, 18269u), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, 23840u), ~u_input.a))));
    var var_2 = ~(77728u | select(_wgslsmith_div_u32(1u, ~u_input.a), ~6716u ^ ~arg_0.a, var_0));
    let var_3 = global0[_wgslsmith_index_u32(func_3(), 2u)];
    global0 = array<Struct_2, 2>();
    return StorageBuffer(_wgslsmith_f_op_f32(floor(-1747f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1693f + -939f))), _wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(630f + 2461f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -167f, 1736f) * vec3<f32>(-329f, 622f, 647f)) - vec3<f32>(1f, 1f, 1f)))), -13550i, ~abs(abs(vec4<u32>(arg_1.a, arg_1.a, u_input.a, 4294967295u))) | ~vec4<u32>(var_3.d.a, _wgslsmith_add_u32(var_3.c.a, arg_1.a), _wgslsmith_clamp_u32(var_3.d.a, u_input.c, 4294967295u), arg_1.a & 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -36486i;
    let x = u_input.a;
    s_output = func_4(func_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(680f - -672f), -336f))), func_1(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<f32>(405f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-592f * -1554f), -799f)))), false & (false && !(u_input.c != u_input.a)));
}

