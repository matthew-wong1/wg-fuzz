struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 16>;

var<private> global2: bool;

var<private> global3: Struct_5;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = global3.c.a;
    let var_2 = _wgslsmith_mod_u32(abs(~global3.c.a.x) << (~0u % 32u), min(~67321u, _wgslsmith_add_u32(var_1.x, global3.c.a.x)) ^ ((17173u << (var_1.x % 32u)) ^ u_input.a)) < global3.c.a.x;
    var_0 = ~_wgslsmith_div_i32(arg_1, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_1.x, 0u, u_input.a), reverseBits(vec4<u32>(4294967295u, global3.c.a.x, u_input.a, 0u))), 16u)] ^ ~58510i);
    let var_3 = 0i << (~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, global3.c.a.x, 20221u, 1u) & vec4<u32>(global3.c.a.x, 62688u, 1u, 0u)), ~vec4<u32>(global3.c.a.x, 1u, 4294967295u, 3470u)) % 32u);
    return global3.a;
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-942f, global3.d)), global3.d, _wgslsmith_f_op_f32(-global3.d)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -547f, global3.d) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.d, -593f, -229f))))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(2980u, 70717u, global3.c.a.x, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.c.a.x, arg_0, u_input.a, 49636u), vec4<u32>(0u, global3.c.a.x, global3.c.a.x, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 6937u, 4561u, arg_0), vec4<u32>(4294967295u, global3.c.a.x, 34215u, 53091u))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.d - global3.d), _wgslsmith_f_op_f32(-229f + global3.d)))), _wgslsmith_add_u32(global3.c.a.x, global3.c.a.x)));
    let var_1 = !(!any(vec3<bool>(!global3.e, select(global3.a.x, global3.e, global3.e), true)));
    global3 = Struct_5(select(!vec3<bool>(true, any(vec4<bool>(true, true, var_1, global3.e)), u_input.b <= global1[_wgslsmith_index_u32(584u, 16u)]), func_3(1359f, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_0, 16u)], i32(-1i) * -1i)), true), global3.b, global3.c, -710f, false);
    let var_2 = arg_0 | arg_0;
    global0 = true;
    return Struct_5(vec3<bool>(false, var_1 & false, !var_1), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 43562i, _wgslsmith_clamp_i32(-2147483647i, global1[_wgslsmith_index_u32(countOneBits(var_2), 16u)], _wgslsmith_clamp_i32(-3796i, -26615i, global1[_wgslsmith_index_u32(4294967295u, 16u)])), abs(1i)), abs(_wgslsmith_clamp_vec4_i32(global3.b, global3.b, vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 0i, global3.b.x, global3.b.x)) << (reverseBits(vec4<u32>(var_2, 30372u, 1u, 0u)) % vec4<u32>(32u)))), global3.c, -1184f, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > var_0.a.a.x);
}

fn func_1() -> i32 {
    let var_0 = func_2(51734u);
    global1 = array<i32, 16>();
    global0 = var_0.e;
    global3 = Struct_5(vec3<bool>(!var_0.a.x, all(global3.a), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(25547i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 17305i, 22036i, u_input.b), vec4<i32>(var_0.c.b.x, global3.b.x, global3.c.b.x, global3.b.x)), 1i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global3.c.a.x, 16u)], 17457i)) ^ _wgslsmith_div_vec4_i32(global3.b | vec4<i32>(37390i, global3.b.x, global3.c.b.x, -14072i), global3.b), ~(-(~var_0.b)), var_0.b), global3.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(954f, _wgslsmith_f_op_f32(round(global3.d)))), true);
    var var_1 = ~56953u;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<bool>(global3.a.x, global3.e, global3.e), vec4<i32>(1i, u_input.b, ~global1[_wgslsmith_index_u32(global3.c.a.x, 16u)], u_input.b), global3.c, global3.d, _wgslsmith_div_i32(3467i, -(~u_input.b)) < _wgslsmith_sub_i32(~global3.b.x, -30984i));
    global0 = func_1() <= var_0.c.b.x;
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * 1030f), -391f, var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, 195f, 118f) * vec3<f32>(1000f, global3.d, -906f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, var_2.x, -262f)), select(vec3<bool>(true, var_1.e, true), vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(true, false, true))))))), vec4<i32>(1i, 28084i, ~(-u_input.b), -_wgslsmith_clamp_i32(min(1i, 1i), _wgslsmith_mod_i32(0i, -9309i), var_1.c.b.x)), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a, global3.c.a.x, u_input.a, 1u))));
}

