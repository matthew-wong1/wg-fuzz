struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: Struct_1 = Struct_1(17434u, false, vec4<bool>(false, true, true, true), vec4<u32>(1u, 1u, 12033u, 42536u));

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(30607u, global0.a, ~(~6198u)), global2.d.yzw);
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, select(global2.c.x, arg_1.b, global2.b), global2.c.x), 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(10684u, arg_1.d.x, 41698u, 0u), arg_1.d)), !arg_1.c, !global0.c), vec4<bool>(any(vec2<bool>(true, u_input.c >= arg_0.x)), true | arg_2, true, global2.b), true && arg_1.b);
    var var_2 = arg_1;
    return firstTrailingBit(4294967295u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_3.yxx;
    let var_1 = global2.d;
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), arg_2, arg_2, arg_2))));
    let var_4 = Struct_1(_wgslsmith_div_u32(select(select(0u, ~4904u, all(vec4<bool>(global2.b, global2.b, var_2, var_2))), _wgslsmith_add_u32(~72353u, 109851u | u_input.b), true), 1u), !(!(all(global2.c.wz) | global2.b)), select(global2.c, vec4<bool>(false, any(vec2<bool>(global2.b, global0.b)), any(!global2.c.yw), var_2), vec4<bool>(any(vec3<bool>(true, true, true)), true, global0.b, global0.b)), vec4<u32>(~func_3(vec4<i32>(u_input.d, var_0.x, -16016i, arg_3.x), Struct_1(27553u, global0.b, vec4<bool>(true, true, global0.b, global2.c.x), vec4<u32>(global2.a, arg_0, var_1.x, 57293u)), all(vec4<bool>(false, true, false, true))), global2.d.x, global2.d.x, u_input.b));
    return Struct_1((651u << (_wgslsmith_sub_u32(global2.d.x, arg_0) % 32u)) & 35370u, !var_2, var_4.c, max(abs(vec4<u32>(global0.d.x, 6356u, global2.d.x, var_4.d.x)) << (abs(global2.d) % vec4<u32>(32u)), firstLeadingBit(global2.d)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = 5342u;
    var var_1 = min(~((_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 25351i), vec2<i32>(12825i, u_input.d)) & firstLeadingBit(vec2<i32>(-2147483647i, u_input.d))) << (vec2<u32>(u_input.e, u_input.b) % vec2<u32>(32u))), vec2<i32>(-1i) * -(~vec2<i32>(u_input.c, 0i)));
    let var_2 = ~reverseBits(u_input.d);
    return all(arg_0.c);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_1(global2.d.x, !select(func_4(Struct_1(52397u, global2.c.x, global0.c, vec4<u32>(u_input.e, 1u, arg_2.x, 14153u)), 745f, func_2(arg_2.x, u_input.c, 522f, vec4<i32>(-2147483647i, -56475i, 43882i, 1i)), vec4<bool>(true, true, true, global0.c.x)), -u_input.c >= arg_0, !select(false, global2.b, true)), !(!(!(!global2.c))), func_2(global0.d.x, _wgslsmith_div_i32(arg_0, u_input.c), 219f, vec4<i32>(~_wgslsmith_add_i32(u_input.d, u_input.d), -45096i, -15106i, reverseBits(~1i))).d);
    var_0 = func_2(u_input.a, 1i >> (firstLeadingBit(u_input.e) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(930f, -725f)))) + 1002f), -_wgslsmith_add_vec4_i32(abs(min(vec4<i32>(u_input.c, 11425i, -2147483647i, 12463i), vec4<i32>(u_input.c, 0i, 1i, 45054i))), abs(~vec4<i32>(u_input.d, u_input.c, arg_0, arg_0))));
    var var_1 = func_2(arg_2.x, ~max(_wgslsmith_mod_i32(min(u_input.c, -25450i), -1549i), -arg_0), -253f, -(~(-(~vec4<i32>(arg_0, arg_0, arg_0, arg_0)))));
    let var_2 = Struct_1(abs(func_3(~reverseBits(vec4<i32>(19330i, u_input.c, 3957i, -13458i)), Struct_1(_wgslsmith_mult_u32(7446u, global0.a), true, vec4<bool>(false, global2.c.x, var_1.c.x, true), reverseBits(vec4<u32>(global0.a, global2.a, global0.a, 88902u))), global2.c.x)), any(vec2<bool>(true, true)), var_0.c, global2.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f * -1807f) + -860f))));
    return -_wgslsmith_dot_vec4_i32(~(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_0, -38084i, -2147483647i), vec4<i32>(arg_0, u_input.d, arg_0, -34291i)) << ((global2.d ^ global2.d) % vec4<u32>(32u))), -firstLeadingBit(-vec4<i32>(arg_0, 2147483647i, 2147483647i, u_input.d)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(~(~global0.a), 34291u), global2.b, global0.c, _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, global0.d.x, 0u, global2.a), vec4<u32>(25646u, 92406u, u_input.b, 4294967295u))) << (vec4<u32>(40163u, 1u, u_input.b, global0.d.x) % vec4<u32>(32u)), global0.d));
    global2 = func_2(global0.d.x, arg_0.x, -127f, abs(arg_2));
    global1 = ~arg_1.x;
    var var_1 = u_input.e;
    let var_2 = func_2(global2.a, _wgslsmith_add_i32(~firstTrailingBit(arg_2.x), ~(-(6330i & arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-419f)))) + 1219f), arg_2);
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) + -841f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(ceil(677f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f * -104f) + _wgslsmith_div_f32(-1056f, 2737f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = select(global0.b, any(global2.c.ywz), false);
    global2 = Struct_1(0u, !all(!global0.c.zx) || !(global2.c.x == false), select(vec4<bool>(global2.b, !global0.c.x, global0.c.x, true | global2.c.x), !global0.c, !(_wgslsmith_mod_u32(4294967295u, global0.d.x) >= firstLeadingBit(1u))), global2.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(660f, 1652f), vec2<f32>(1503f, var_0.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 945f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 183f)), _wgslsmith_f_op_vec2_f32(func_5(max(vec2<i32>(9339i, 18174i), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 13980u, 1u), global2.d.yyz), max(vec4<i32>(u_input.c, u_input.d, 1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), func_1(1829i, global0.b, vec3<u32>(u_input.e, global0.d.x, global0.a)))))));
    var var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(func_3(vec4<i32>(u_input.c, 22873i, u_input.d, 81897i) & vec4<i32>(u_input.d, 11085i, -3389i, u_input.c), func_2(4294967295u, 1529i, var_2.x, vec4<i32>(34888i, -17557i, u_input.d, u_input.c)), global0.b), global0.a, max(global0.a, abs(global2.a)), u_input.a), reverseBits(~global0.d) ^ (~vec4<u32>(global0.d.x, 17993u, 46046u, global0.a) ^ ~global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x));
}

