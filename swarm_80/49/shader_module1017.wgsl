struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(!select(!global0.a, vec4<bool>(true, global0.a.x, true, true), !select(global0.a, vec4<bool>(false, global0.a.x, false, true), global0.a)), global0.b);
    var var_1 = var_0;
    let var_2 = _wgslsmith_clamp_vec3_i32(u_input.a.xwx, _wgslsmith_div_vec3_i32(u_input.c >> (~(~vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(2147483647i, u_input.c.x), u_input.a.x), i32(-1i) * -u_input.c.x)), select(u_input.a.wwz, ~u_input.c, var_1.a.zxw));
    let var_3 = 5032u;
    let var_4 = select(~(vec2<u32>(var_3, 14784u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(92731u, var_3), vec2<u32>(57980u, 28265u)) % vec2<u32>(32u))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, var_3)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(53056u, u_input.b), var_1.a.wy), any(vec2<bool>(true, true))) ^ ~vec2<u32>(var_3, var_3), var_0.a.xw) ^ abs(~reverseBits(select(vec2<u32>(u_input.b, 73443u), vec2<u32>(88109u, 63970u), vec2<bool>(var_1.a.x, var_0.b))));
    return !var_0.a.x;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a, true);
    global0 = Struct_1(global0.a, global0.a.x);
    global0 = Struct_1(vec4<bool>(global0.a.x, true || func_3(), false, global0.b), true);
    let var_0 = global0.a.x;
    let var_1 = Struct_1(vec4<bool>(global0.b, all(vec4<bool>(true, false, global0.b, any(global0.a))), global0.a.x && true, global0.b), all(!vec3<bool>(true, false || global0.a.x, !global0.a.x)));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = vec4<f32>(783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 1505f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, 296f) - -314f))), -888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(449f, -1509f)))));
    var var_2 = ~u_input.c.x;
    let var_3 = Struct_1(!vec4<bool>(true, var_0.b, all(!vec2<bool>(global0.a.x, false)), true), var_0.b);
    var_0 = var_3;
    return Struct_1(func_2().a, any(vec3<bool>(func_2().b && (u_input.c.x != -34318i), var_1.x != -806f, global0.a.x & false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select((_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(43581u, u_input.b), vec2<u32>(82188u, 14860u)) ^ vec2<u32>(u_input.b, u_input.b)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), countOneBits(~vec2<u32>(u_input.b, 23814u)), false) | vec2<u32>(u_input.b, ~(u_input.b >> (u_input.b % 32u)));
    var_0 = vec2<u32>(29926u, 8517u) & _wgslsmith_div_vec2_u32(min(vec2<u32>(_wgslsmith_sub_u32(var_0.x, 4666u), var_0.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(51078u, var_0.x), vec2<u32>(33028u, 7637u)), ~vec2<u32>(var_0.x, 50575u))), vec2<u32>(0u, ~(~0u)));
    global0 = func_1();
    var_0 = reverseBits(firstLeadingBit((vec2<u32>(var_0.x, u_input.b) ^ abs(vec2<u32>(var_0.x, 1u))) & ~(~vec2<u32>(1u, 0u))));
    let var_1 = func_1();
    let var_2 = min(max(vec3<u32>(6327u, 43162u, var_0.x), ~abs(~vec3<u32>(4294967295u, u_input.b, 16914u))), vec3<u32>(56720u, _wgslsmith_dot_vec2_u32(~vec2<u32>(7880u, var_0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(46055u, 7811u), vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(55698u, 4294967295u))), 4294967295u));
    let var_3 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(66665u, var_2.x, 4294967295u), ~var_2, vec3<u32>(var_0.x, 29787u, var_0.x) & vec3<u32>(var_0.x, var_2.x, var_0.x))) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, u_input.b, var_2.x) >> (abs(var_2) % vec3<u32>(32u)), vec3<u32>(var_0.x, 38669u, 1u) ^ var_2), var_2);
    let var_4 = Struct_1(func_1().a, global0.b);
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1118f, -1027f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1346f, 592f) + vec2<f32>(106f, -1608f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, -661f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, _wgslsmith_div_f32(260f, -870f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2376f, 310f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2611f, -168f) - vec2<f32>(527f, 746f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-636f, 1123f), vec2<f32>(1053f, -1069f), vec2<bool>(global0.a.x, var_4.a.x))))), vec2<f32>(-1091f, -1320f))))));
    let x = u_input.a;
    s_output = StorageBuffer(2069f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(187f, -119f, -627f, var_5.x)))))), ~1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + 427f)))), u_input.a.xx);
}

