struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = !select(select(select(vec2<bool>(global0.c, global0.c), vec2<bool>(true, global0.c), 6099u <= u_input.a), !(!vec2<bool>(global0.c, global0.c)), global0.c), vec2<bool>(global0.c, false), select(!vec2<bool>(global0.c, false), !(!vec2<bool>(global0.c, global0.c)), (u_input.b.x < -2147483647i) | true));
    let var_1 = max(~20999u, 50188u & (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, u_input.a, u_input.a), vec3<u32>(u_input.c, 51076u, global0.b))) << (firstTrailingBit(u_input.c ^ 4294967295u) % 32u)));
    let var_2 = Struct_1(2211f, global0.b, (~_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(43852i, -2147483647i)) << (max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), vec2<u32>(0u, global0.b)), ~u_input.a) % 32u)) < -abs(-2147483647i));
    var var_3 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, u_input.b.x), vec4<i32>(3621i, -1460i, u_input.b.x, -44151i)), _wgslsmith_sub_i32(-2147483647i, u_input.b.x)), u_input.b.yy | _wgslsmith_mod_vec2_i32(u_input.b.xz, u_input.b.yy));
    global0 = var_2;
    return firstLeadingBit(select(76199u, global0.b, all(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_2.c, false)), var_0, select(false, true, var_0.x)))));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    global0 = Struct_1(581f, 0u, 1u < global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), global0.b << (_wgslsmith_div_u32(~(~49064u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.b, 97707u, 37828u), ~vec4<u32>(4294967295u, arg_0, 0u, global0.b))) % 32u), global0.c);
    let var_0 = vec4<i32>(select(-1i, ~_wgslsmith_sub_i32(2147483647i, u_input.b.x), true), u_input.b.x, -1i, 1i) >> (vec4<u32>(abs(max(global0.b, firstTrailingBit(u_input.a))), ~(~countOneBits(0u)), 15353u, func_3()) % vec4<u32>(32u));
    return -var_0.yxx;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(min(276f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))))), arg_0.x, false);
    var var_1 = _wgslsmith_div_vec3_i32(~u_input.b, -u_input.b);
    var_1 = ~(-select(_wgslsmith_div_vec3_i32(vec3<i32>(15638i, u_input.b.x, 2147483647i), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(var_1.x, -1i, var_1.x))), _wgslsmith_mod_vec3_i32(func_2(1u), firstLeadingBit(u_input.b)), any(select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, false), global0.c))));
    var var_2 = arg_0.x;
    var var_3 = _wgslsmith_mult_u32(var_0.b, abs(firstTrailingBit(~4294967295u)));
    return !(196f >= global0.a);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(774f, 12970u, any(vec2<bool>(all(vec2<bool>(true, true)), arg_2.c)));
    var var_0 = u_input.b;
    var_0 = countOneBits(-_wgslsmith_sub_vec3_i32(abs(u_input.b), _wgslsmith_mod_vec3_i32(u_input.b | vec3<i32>(2147483647i, u_input.b.x, var_0.x), vec3<i32>(-2147483647i, 1i, var_0.x) >> (vec3<u32>(4294967295u, u_input.a, arg_2.b) % vec3<u32>(32u)))));
    let var_1 = 47345u;
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global0.a * global0.a)), func_3(), arg_2.c);
    return Struct_1(-1014f, global0.b, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(u_input.a | ~33130u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-335f * -413f), 1u, global0.c);
    global0 = func_4(true || func_1(~(~vec3<u32>(global0.b, 4294967295u, global0.b)), vec2<f32>(-1518f, _wgslsmith_f_op_f32(exp2(global0.a))), countOneBits(4294967295u)), ~(~firstLeadingBit(u_input.c) & ~(~9788u)), Struct_1(-1000f, u_input.c, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-193f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, -1000f)), global0.a))), ~u_input.c | (67204u << ((15758u << (func_3() % 32u)) % 32u)), 28356i != firstLeadingBit(u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(var_1.a - func_4(false, global0.b, Struct_1(global0.a, 1u, false)).a)), global0.a)));
    let var_3 = Struct_1(-1361f, var_0, true);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(-19384i, u_input.b.x), firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -1i))) | func_2(global0.b).xy);
}

