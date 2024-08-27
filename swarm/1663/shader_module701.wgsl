struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = u_input.e >> (abs(abs(~(~58062u))) % 32u);
    var var_1 = abs(~vec2<u32>(53486u, firstTrailingBit(u_input.c)));
    var_1 = vec2<u32>(var_1.x, ~reverseBits(u_input.e));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(global0.a - -1104f), abs(-(~vec2<i32>(arg_1.d.x, 41917i) | firstTrailingBit(vec2<i32>(arg_1.d.x, arg_2.a.x)))), arg_2, firstLeadingBit(global0.d), vec3<bool>(arg_1.e, true, global0.e.x));
    var var_3 = -(~_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -8876i), vec2<i32>(global0.c.d.x, 48619i))), abs(vec2<i32>(u_input.d, global0.b.x))));
    return select(!(!arg_1.c), select(!vec3<bool>(true, true, global0.c.e & global0.c.c.x), vec3<bool>(false, true, true), arg_2.e), all(vec3<bool>(true, arg_1.c.x, arg_1.c.x)));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = all(!func_3(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.d.x, u_input.b.x, -1i, -1i), vec4<i32>(global0.d.x, 0i, global0.d.x, global0.d.x))), Struct_1(abs(u_input.b), _wgslsmith_f_op_vec2_f32(-global0.c.b), vec3<bool>(global0.e.x, false, true), vec3<i32>(u_input.d, u_input.a.x, u_input.b.x) & u_input.a, true), global0.c));
    var var_1 = vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(2459i, _wgslsmith_mult_i32(0i, u_input.d)), ~_wgslsmith_div_i32(global0.b.x, 1i)), i32(-1i) * -20762i, _wgslsmith_sub_i32(~(-1i), global0.b.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(min(1i, 1i), global0.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.c.a, u_input.b), select(vec2<i32>(global0.d.x, u_input.b.x), ~vec2<i32>(u_input.a.x, global0.d.x), vec2<bool>(false, global0.c.c.x)))));
    let var_2 = countOneBits(vec4<i32>(-var_1.x | (global0.b.x | global0.c.d.x), u_input.a.x, ~(-(2808i << (u_input.c % 32u))), _wgslsmith_mod_i32(firstTrailingBit(1i) >> (_wgslsmith_mult_u32(u_input.e, 0u) % 32u), firstLeadingBit(35137i) | _wgslsmith_div_i32(global0.d.x, 7426i))));
    var_0 = all(vec4<bool>(global0.e.x, !all(!global0.c.c.zy), func_3(~(-vec4<i32>(var_2.x, 0i, var_1.x, 2147483647i)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.x), u_input.a.xx, var_2.wy), global0.c.b, select(global0.e, vec3<bool>(true, global0.e.x, false), true), abs(vec3<i32>(65092i, -8408i, u_input.d)), true), global0.c).x, true));
    var_0 = true | all(vec4<bool>(global0.e.x, ~global0.d.x < global0.b.x, all(global0.c.c), all(!vec2<bool>(global0.c.e, true))));
    return vec4<i32>(var_1.x, global0.c.a.x, u_input.a.x, reverseBits(u_input.b.x) << (u_input.c % 32u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(i32(-1i) * -3066i), -43332i, -arg_0.a.x, 20068i ^ u_input.d), func_2(_wgslsmith_f_op_f32(ceil(global0.a))));
    var var_1 = Struct_2(global0.a, vec2<i32>(-firstTrailingBit(abs(arg_0.d.x)), u_input.b.x), Struct_1(-vec2<i32>(~global0.b.x, var_0.x ^ -32865i), global0.c.b, vec3<bool>(any(global0.c.c), global0.c.b.x <= _wgslsmith_f_op_f32(-global0.a), all(arg_0.c)), countOneBits(global0.c.d), true), (firstTrailingBit(arg_0.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), select(vec2<i32>(global0.c.d.x, -22881i), vec2<i32>(102782i, 6747i), true))) | var_0.yz, vec3<bool>(any(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, global0.b.x, 0i), var_0), Struct_1(vec2<i32>(u_input.b.x, -1248i), vec2<f32>(arg_0.b.x, 522f), global0.e, global0.c.d, true), arg_0).yx), global0.e.x, false));
    var var_2 = Struct_1(~(func_2(arg_0.b.x).yx & vec2<i32>(~(-62256i), ~var_1.d.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.b.x), -1090f) + var_1.c.b))), vec3<bool>(true, var_1.e.x, arg_0.c.x), arg_0.d, var_1.e.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.c.b.x, vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(-u_input.b, countOneBits(~vec2<i32>(u_input.d, u_input.d)))), func_1(global0.c), vec2<i32>(_wgslsmith_mod_i32(-11294i, -37060i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(select(-3296i, -2147483647i, true), min(u_input.b.x, 0i)), global0.b.x)), func_3(~_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, global0.c.a.x, u_input.d, u_input.b.x), ~vec4<i32>(global0.d.x, -1i, u_input.b.x, global0.d.x)), Struct_1(vec2<i32>(u_input.b.x, u_input.d) ^ vec2<i32>(22037i, -37444i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(floor(-280f))), vec3<bool>(all(vec2<bool>(false, global0.e.x)), global0.d.x == u_input.d, global0.c.b.x != 1617f), -abs(vec3<i32>(global0.b.x, 26737i, u_input.d)), true), global0.c));
    var_0 = Struct_2(var_0.c.b.x, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, 2147483647i, global0.c.d.x | -13619i), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), ~1i, reverseBits(7165i))), 2147483647i), var_0.c, -(~vec2<i32>(var_0.c.d.x << (4294967295u % 32u), 35422i)), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(-207f);
}

