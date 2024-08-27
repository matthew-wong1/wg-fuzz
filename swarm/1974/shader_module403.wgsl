struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global0 = Struct_1(!vec3<bool>(global0.a.x, true, global0.a.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f * 230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(831f, 620f)) - _wgslsmith_f_op_f32(f32(-1f) * -497f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_div_f32(-1441f, -769f), _wgslsmith_f_op_f32(select(552f, -489f, true))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-335f, -295f, 414f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-432f, -1066f, 660f)), global0.a.x)))));
    global0 = Struct_1(global0.a);
    let var_1 = Struct_2(Struct_1(select(!select(vec3<bool>(true, global0.a.x, false), global0.a, global0.a.x), global0.a, !global0.a)), any(vec3<bool>(false, !(global0.a.x & global0.a.x), !(!global0.a.x))), Struct_1(!(!(!global0.a))));
    global0 = var_1.a;
    return _wgslsmith_mult_i32(12117i, u_input.a.x ^ select(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i))), _wgslsmith_sub_i32(~u_input.a.x, u_input.a.x), !(!global0.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = global0.a.yx;
    var var_1 = Struct_3(firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 30072i, arg_1), vec4<i32>(22492i, u_input.a.x, -7984i, -2147483647i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-868f + 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(sign(651f))))))), _wgslsmith_mod_vec4_i32(countOneBits(u_input.a), vec4<i32>(~arg_1 | 20614i, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), func_3(), u_input.a.x)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -arg_1, _wgslsmith_add_i32(~(-48164i), 1i) ^ (firstLeadingBit(arg_1) >> (~83252u % 32u))), _wgslsmith_div_vec2_i32(select(u_input.a.yy | u_input.a.xw, vec2<i32>(-32870i, abs(-22744i)), select(vec2<bool>(global0.a.x, global0.a.x), !vec2<bool>(global0.a.x, false), true)), vec2<i32>(countOneBits(reverseBits(0i)), arg_1)));
    var var_3 = Struct_2(arg_0, any(vec3<bool>(!any(vec2<bool>(false, true)), any(vec3<bool>(false, true, arg_0.a.x)), false)), arg_0);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1465f, 109f, -188f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(932f, -833f, var_1.b), vec3<f32>(var_1.b, var_1.b, -1162f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, -1308f, 188f))), vec3<f32>(var_1.b, var_1.b, 640f))))) + vec3<f32>(_wgslsmith_div_f32(-118f, _wgslsmith_f_op_f32(233f - -648f)), -796f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))))));
    return Struct_1(vec3<bool>(arg_0.a.x, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2215f * -1192f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-765f, 1758f))))))), vec4<i32>(-1i, -(abs(arg_1.x) << (~0u % 32u)), arg_1.x, u_input.a.x));
    var var_1 = !select(!select(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), select(vec4<bool>(global0.a.x, true, true, true), vec4<bool>(arg_0.a.x, true, false, arg_0.a.x), arg_0.a.x), all(vec4<bool>(true, true, true, arg_0.a.x))), !(!vec4<bool>(arg_0.a.x, global0.a.x, true, global0.a.x)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(true, true, true, arg_0.a.x), arg_0.a.x), func_2(func_2(Struct_1(global0.a), -27184i), firstTrailingBit(-2023i)).a.x));
    var_1 = !(!select(!vec4<bool>(false, true, false, var_1.x), vec4<bool>(true, any(vec4<bool>(true, var_1.x, true, false)), !var_1.x, var_0.b >= var_0.b), !var_1.x));
    global0 = func_2(func_2(arg_0, var_0.a.x), -select(i32(-1i) * -arg_1.x, firstTrailingBit(var_0.c.x), !var_1.x));
    let var_2 = -18234i;
    return ~select(max(~select(vec3<u32>(u_input.b, 34540u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b), true), abs(select(vec3<u32>(1u, 38940u, u_input.b), vec3<u32>(69443u, 0u, 15160u), arg_0.a))), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 8346u, u_input.b)), abs(0u)) & ~vec3<u32>(1u, 10685u, 4294967295u), arg_0.a.x && true);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(func_2(Struct_1(select(global0.a, global0.a, false)), u_input.a.x), vec3<i32>(u_input.a.x, -u_input.a.x, firstTrailingBit(u_input.a.x))) >> (~select(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 28347u), vec3<u32>(3589u, u_input.b, u_input.b)), abs(vec3<u32>(16534u, 58111u, 31980u))), ~(vec3<u32>(u_input.b, u_input.b, 4474u) >> (vec3<u32>(u_input.b, u_input.b, 29560u) % vec3<u32>(32u))), !vec3<bool>(global0.a.x, global0.a.x, false)) % vec3<u32>(32u));
    let var_1 = ~(-64163i);
    global0 = Struct_1(vec3<bool>(all(vec2<bool>(global0.a.x, any(vec3<bool>(global0.a.x, true, true)))), global0.a.x || true, global0.a.x));
    global0 = func_2(Struct_1(!select(select(vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(global0.a.x, true, false), global0.a), global0.a, false)), ~(-u_input.a.x));
    let var_2 = Struct_1(!vec3<bool>(global0.a.x, true, any(func_2(Struct_1(global0.a), var_1).a.zy)));
    return Struct_2(func_2(Struct_1(select(vec3<bool>(true, var_2.a.x, global0.a.x), vec3<bool>(global0.a.x, false, var_2.a.x), var_2.a)), var_1 & ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(2147483647i, var_1, 0i, -2147483647i))), all(!var_2.a), func_2(var_2, -2147483647i));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = Struct_1(select(global0.a, select(arg_0.a.a, vec3<bool>(true, true, true), select(func_1().a.a, vec3<bool>(false, arg_0.c.a.x, true), arg_0.c.a.x)), !arg_0.a.a.x));
    var var_0 = global0.a.x;
    let var_1 = vec4<bool>(arg_0.a.a.x, true, (countOneBits(~u_input.b) > u_input.b) & arg_0.b, any(vec4<bool>(select(true, arg_0.c.a.x, true), arg_0.a.a.x || false, func_2(arg_0.a, -50542i).a.x, !arg_0.a.a.x)) != false);
    var var_2 = 1u;
    global0 = func_1().a;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(global0.a);
    var var_0 = Struct_3(vec4<i32>(~1i, -(firstLeadingBit(36622i) ^ select(u_input.a.x, u_input.a.x, false)), _wgslsmith_clamp_i32(reverseBits(2147483647i << (u_input.b % 32u)), min(5420i, ~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -20620i, 19874i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 0i, -18754i)), abs(u_input.a))), countOneBits(~13204i) << (~(arg_1 << (arg_1 % 32u)) % 32u)), arg_2.x, vec4<i32>(0i, _wgslsmith_add_i32(-1i, max(16683i, -66737i)), -39808i, 16871i));
    var var_1 = arg_0.c;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<bool>(any(global0.a.yz), false, all(!(!vec4<bool>(true, global0.a.x, true, global0.a.x)))));
    var var_0 = Struct_2(func_6(func_5(func_1()), ~select(u_input.b, ~0u, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(-3235f + 682f))))), global0.a.x, Struct_1(func_5(Struct_2(Struct_1(global0.a), false, Struct_1(vec3<bool>(false, false, false)))).a.a));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))));
    var var_2 = Struct_1(!(!vec3<bool>(true, func_1().b, 1i < u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(step(358f, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(var_1 - _wgslsmith_div_f32(var_1, -544f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1155f - -1453f) - 202f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1)), -1309f, min(-25137i, -12877i));
}

