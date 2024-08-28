struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: Struct_1 = Struct_1(-556f, vec3<i32>(-1i, 1i, 7131i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec3<i32> {
    global0 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, -1458f) * _wgslsmith_f_op_f32(-global1.a))))));
    global1 = Struct_1(281f, ~min(countOneBits(vec3<i32>(u_input.b, -1i, 13064i)), vec3<i32>(global1.b.x, u_input.c, 1505i)) << (vec3<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x)), 4294967295u, countOneBits(38934u)) % vec3<u32>(32u)));
    return -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, 8204i), u_input.b), -32865i), 0i << (firstLeadingBit(select(1u, u_input.a.x, global0[_wgslsmith_index_u32(45320u, 28u)])) % 32u), -66623i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, func_3(-521f, vec3<f32>(global1.a, 531f, _wgslsmith_f_op_f32(-global1.a))));
    let var_1 = -1467f;
    let var_2 = vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]);
    let var_3 = ~72356u;
    var var_4 = min(firstTrailingBit(global1.b.x) | _wgslsmith_div_i32(_wgslsmith_mod_i32(global1.b.x, var_0.b.x), -26429i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b ^ 2147483647i, max(2147483647i, u_input.c) | u_input.c), min(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.b.x, 38406i), ~var_0.b.yx), select(vec2<i32>(-2147483647i, u_input.b), firstLeadingBit(vec2<i32>(11926i, 33222i)), select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(6440u, 28u)]), true)))));
    return Struct_1(_wgslsmith_f_op_f32(global1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a))), _wgslsmith_f_op_f32(abs(var_0.a)))), global1.b);
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_f32(648f - 1500f);
    let var_1 = func_2();
    return Struct_1(_wgslsmith_f_op_f32(select(-110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), any(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]))))), vec3<i32>(_wgslsmith_div_i32(~u_input.c, u_input.c), u_input.b, _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(-11202i, 1i, var_1.b.x, 0i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, global1.b.x, var_1.b.x), vec4<i32>(u_input.b, -1i, global1.b.x, 24726i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.a) * _wgslsmith_div_f32(global1.a, global1.a))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(abs(global1.a))))), global1.b);
    let var_0 = _wgslsmith_f_op_f32(max(-1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) * global1.a)));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global1 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-276f, -715f), func_1().a) * var_0) + global1.a), vec3<i32>(~countOneBits(u_input.c), abs(-global1.b.x), max(_wgslsmith_add_i32(func_3(var_0, vec3<f32>(-1277f, 1000f, var_0)).x, u_input.b), min(u_input.b, -29845i))));
    var var_2 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(20005u, ~u_input.a.x), u_input.a.x));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(1481f + var_0))), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(abs(var_0))))), vec2<f32>(670f, _wgslsmith_f_op_f32(min(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(553f, var_1.a)), var_0)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.a)), func_2().a, all(vec3<bool>(true, global0[_wgslsmith_index_u32(80731u, 28u)], false)))), -106f)), vec3<i32>(~(-33002i), func_2().b.x, _wgslsmith_div_i32(-28901i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.b.x, 53836i), _wgslsmith_clamp_i32(u_input.c, global1.b.x, 0i)))));
}

