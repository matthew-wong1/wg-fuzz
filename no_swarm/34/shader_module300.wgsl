struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<u32>) -> i32 {
    return countOneBits(2147483647i);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global0 = Struct_3(-1i, Struct_1(vec2<i32>(~(-49222i), 51574i)));
    global0 = Struct_3(_wgslsmith_mod_i32(-37202i, func_3(Struct_5(Struct_2(vec3<i32>(u_input.c.x, u_input.c.x, -26550i), Struct_1(global0.b.a), u_input.a)), vec2<u32>(u_input.b.x, 4294967295u)) ^ arg_0), Struct_1(u_input.c));
    global0 = Struct_3(_wgslsmith_dot_vec2_i32(global0.b.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-19165i, ~u_input.c.x), min(reverseBits(vec2<i32>(u_input.c.x, -28271i)), vec2<i32>(global0.b.a.x, u_input.c.x)))), global0.b);
    var var_0 = vec4<bool>(arg_2.x, !arg_1, !arg_2.x, arg_2.x);
    let var_1 = global0.a << (u_input.b.x % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1492f))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(65776i, true, vec4<bool>(true, true, false, false), u_input.b.x)) + -1172f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f + -402f)) + -3796f))));
    let var_1 = Struct_5(Struct_2(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(global0.a, u_input.c.x, u_input.c.x)), vec3<i32>(-74262i, 36204i << (u_input.b.x % 32u), 56661i)), Struct_1(global0.b.a), vec3<u32>(~min(34998u, u_input.b.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)), reverseBits(u_input.a.yz)), ~(~u_input.b.x))));
    global0 = Struct_3(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(33633i, u_input.c.x), -vec2<i32>(global0.b.a.x, u_input.c.x)), global0.b.a), Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(-47936i, u_input.c.x), var_1.a.b.a) | abs(var_1.a.b.a)));
    global0 = Struct_3(-u_input.c.x, var_1.a.b);
    var var_2 = Struct_4(select(u_input.c.x >> (~4294967295u % 32u), _wgslsmith_sub_i32(~1i, i32(-1i) * -12114i) | _wgslsmith_mult_i32(u_input.c.x, func_3(var_1, u_input.b)), false), Struct_1(~vec2<i32>(0i, max(2147483647i, u_input.c.x))), vec2<u32>(4294967295u, 1u) | vec2<u32>(u_input.a.x, 1u), !vec4<bool>(all(vec4<bool>(true, true, true, false)), true, false, any(vec3<bool>(false, false, true))));
    return ~vec3<i32>(-global0.b.a.x, u_input.c.x, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-(~(-69744i)), global0.b.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-15731i, u_input.c.x), -u_input.c) & _wgslsmith_add_i32(-global0.b.a.x, abs(global0.b.a.x))));
    var var_1 = -func_1();
    var_0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(-1i, var_0.a.x)), vec2<i32>(i32(-1i) * -1i, var_0.a.x), abs(vec2<i32>(var_0.a.x, -1i) ^ vec2<i32>(6373i, 0i))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.a.x, 2147483647i), var_1.xz >> (vec2<u32>(33347u, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(global0.a, var_1.x << (u_input.a.x % 32u)))));
    global0 = Struct_3(var_0.a.x, global0.b);
    var var_2 = ~abs(vec2<u32>(1u, _wgslsmith_sub_u32(3221u, 1u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1001f, -310f) * _wgslsmith_f_op_f32(abs(264f)))))), _wgslsmith_f_op_f32(func_2(0i, !all(vec4<bool>(true, true, true, true)), vec4<bool>(true & all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), (u_input.b.x <= 24728u) == true, true), 50719u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1607f)) + _wgslsmith_f_op_f32(-1593f * _wgslsmith_f_op_f32(round(1308f)))) * 778f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x | -(~(~(-1i))));
}

