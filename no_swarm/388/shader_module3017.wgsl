struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: vec2<i32> = vec2<i32>(0i, 61805i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec4<u32>(47096u, firstTrailingBit(1u), ~(~(~4294967295u)), ~(0u >> (1u % 32u))) | ~(~vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(arg_1.x - 1000f)), arg_1.x, true)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x));
    global0 = array<vec2<i32>, 19>();
    global2 = vec2<i32>(~(~abs(min(-2147483647i, global2.x))), -1i);
    global1 = array<vec4<bool>, 28>();
    return var_0.x;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = global2.x < _wgslsmith_add_i32(max(-5056i, ~u_input.c.x << (arg_0 % 32u)), _wgslsmith_div_i32(-2147483647i, 39130i));
    return global2.x;
}

fn func_2() -> i32 {
    global0 = array<vec2<i32>, 19>();
    let var_0 = 829f;
    global1 = array<vec4<bool>, 28>();
    var var_1 = -911f;
    var_1 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)));
    return _wgslsmith_mult_i32(~global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 37481i), global0[_wgslsmith_index_u32(75678u << (1u % 32u), 19u)]), u_input.a), select(vec2<i32>(global2.x, func_3(0u, vec3<f32>(var_0, -1707f, var_0), var_0, false)), global0[_wgslsmith_index_u32(0u, 19u)], !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    global2 = var_0.yw;
    let var_1 = Struct_3(~func_1(Struct_1(1274i, _wgslsmith_f_op_f32(-1742f + 414f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(383f, -972f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, 1758f)))), -vec3<i32>(-1i, _wgslsmith_sub_i32(0i, func_2()), ~u_input.c.x), Struct_1(abs(~_wgslsmith_sub_i32(-27797i, 1i)), _wgslsmith_f_op_f32(1018f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 341f)))))));
    global1 = array<vec4<bool>, 28>();
    global1 = array<vec4<bool>, 28>();
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.b);
    var var_3 = Struct_4(var_1.c, Struct_1(u_input.b.x, var_1.c.b), max(firstTrailingBit(vec3<i32>(-49641i, var_1.b.x, -98087i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.xwz, vec3<i32>(1i, global2.x, var_0.x)), u_input.c.zwx)) & var_1.b);
    let var_4 = _wgslsmith_mod_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 0u), vec2<u32>(1u, 22138u)))), 25475u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, ~(~1u), countOneBits(firstTrailingBit(1u))), vec3<u32>(~(~41544u), 4294967295u, var_4)));
}

