struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 29>;

var<private> global2: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> vec4<i32> {
    global2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1948i, min(global0.a ^ global2.x, ~arg_2)), _wgslsmith_div_i32(2147483647i, arg_2) ^ _wgslsmith_div_i32(i32(-1i) * -1i, countOneBits(global1[_wgslsmith_index_u32(global0.b.x, 29u)]))), _wgslsmith_div_i32(-23315i, ~(~(-1917i))));
    let var_0 = Struct_1(~(i32(-1i) * -6148i), ~global0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c), global0.c)), vec3<f32>(_wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(floor(global0.c.x))), _wgslsmith_f_op_f32(select(-1715f, global0.c.x, arg_0)), _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(global0.c.x + 331f))))));
    global1 = array<i32, 29>();
    global2 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, arg_2), u_input.a))), select(-countOneBits(u_input.a), vec2<i32>(_wgslsmith_mod_i32(1i, var_0.a), arg_2), !(!arg_0)), vec2<i32>(var_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.a, 0i), vec3<i32>(var_0.a, global0.a, global0.a)), vec3<i32>(global2.x, global1[_wgslsmith_index_u32(var_0.b.x, 29u)], -9975i)))), vec2<i32>(arg_2, arg_2) | -(~(-vec2<i32>(17679i, -2147483647i))));
    var var_1 = ~var_0.b.x;
    return vec4<i32>(global0.a, abs(1i), 11835i, ~arg_2);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = -vec2<i32>(2147483647i, i32(-1i) * -(~1i));
    var var_0 = 1u;
    global1 = array<i32, 29>();
    global0 = arg_0;
    var_0 = arg_0.b.x;
    return Struct_1(-1i, _wgslsmith_div_vec4_u32(~abs(arg_0.b) ^ ~vec4<u32>(0u, global0.b.x, 0u, 31740u), max(global0.b, ~_wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(4294967295u, global0.b.x, 0u, 3747u)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c.x, -290f, -1874f))));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = func_2(func_2(Struct_1(-global0.a << (1u % 32u), vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)), -1053f, 1667f))));
    let var_1 = countOneBits(countOneBits(global0.b.x));
    global1 = array<i32, 29>();
    let var_2 = -43893i;
    global1 = array<i32, 29>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(false, global0.b.x, global2.x), vec4<i32>(1i, 2147483647i, global2.x, global0.a)), vec4<i32>(2147483647i, global0.a, -2147483647i, -6171i)), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, 504f), vec3<f32>(-158f, -1138f, global0.c.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -160f, -337f))))));
    var var_1 = Struct_1(min(11481i, global0.a), ~(~global0.b), vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + -1201f), global0.c.x, -959f));
    let x = u_input.a;
    s_output = StorageBuffer(-45750i, var_0.c, global0.a, _wgslsmith_f_op_vec3_f32(func_3(true)));
}

