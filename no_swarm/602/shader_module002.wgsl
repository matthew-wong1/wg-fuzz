struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    global0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(firstLeadingBit(arg_2.x), -2147483647i, -arg_0, _wgslsmith_mod_i32(arg_0, arg_2.x))), _wgslsmith_add_i32(_wgslsmith_add_i32(4651i, countOneBits(1i)), u_input.b.x), 0i);
    var var_0 = arg_0;
    global0 = ~u_input.b.xwy;
    var var_1 = Struct_1(any(select(vec4<bool>(u_input.b.x != global0.x, arg_1 & true, arg_1, !arg_1), select(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, arg_1, false, arg_1)), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, false, true, arg_1)), !select(false, true, arg_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(578f, 1022f, 213f), vec3<f32>(2252f, 1007f, 1042f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1475f, 326f, 780f) - vec3<f32>(485f, 753f, -644f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(-1276f - -1052f), -1000f)), !select(vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, true), true), true))), _wgslsmith_add_i32(-arg_0, ~(~reverseBits(2147483647i))), _wgslsmith_mult_i32(55905i, arg_0));
    var var_2 = vec4<bool>((_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_1.b.x)) > _wgslsmith_f_op_f32(f32(-1f) * -857f)) || false, var_1.a, true, var_1.a);
    return 1i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = global0.x;
    global0 = _wgslsmith_div_vec3_i32(~countOneBits(_wgslsmith_div_vec3_i32(firstLeadingBit(u_input.b.zww), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(1i, global0.x, global0.x), u_input.b.zxz))), vec3<i32>(-u_input.b.x, min(_wgslsmith_mult_i32(2147483647i, func_3(1i, true, vec2<i32>(12238i, global0.x), u_input.c.yz)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, -46009i, -1i), u_input.b.wyz), vec3<i32>(6502i, -6449i, u_input.b.x))), _wgslsmith_sub_i32(firstTrailingBit(1i), -global0.x)));
    let var_1 = min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 1u, 95530u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, 7650u, arg_0.x), vec4<u32>(48030u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<u32>(arg_0.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 3130u | u_input.a.x, 27874u)), arg_0.x, max(~(~129176u), ~u_input.a.x), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(8018u, abs(25626u)))), vec4<u32>(_wgslsmith_mod_u32(arg_0.x, ~u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.x, 10844u, 65207u)), arg_0.x), 1u, arg_0.x) >> (abs(~firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, 41472u, arg_0.x))) % vec4<u32>(32u)));
    var var_2 = -30789i;
    var var_3 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + 705f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(round(-1033f)), true))), vec3<f32>(985f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(269f + 312f))))), func_3(_wgslsmith_clamp_i32(min(1i, 2147483647i), ~_wgslsmith_dot_vec2_i32(global0.zz, vec2<i32>(-51244i, 1i)), global0.x), !(true & any(vec3<bool>(true, false, false))), select(vec2<i32>(-1i) * -vec2<i32>(-27039i, global0.x), vec2<i32>(u_input.b.x ^ 11554i, _wgslsmith_add_i32(-4487i, global0.x)), true), arg_0.yy), -(~_wgslsmith_clamp_i32(countOneBits(-1i), ~(-1i), global0.x)));
    return Struct_1(true, var_3.b, -28763i, min(~(var_3.d >> (var_1.x % 32u)), firstTrailingBit(23304i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = countOneBits(reverseBits(u_input.b.yyy) >> (reverseBits(u_input.c) % vec3<u32>(32u))) << (~(~(u_input.c >> (u_input.c % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_0 = Struct_1(any(select(vec4<bool>(false, func_2(vec3<u32>(u_input.c.x, 0u, 10686u)).a, false, true), !select(vec4<bool>(arg_0.a, true, arg_1.a, true), vec4<bool>(arg_1.a, arg_1.a, arg_0.a, false), vec4<bool>(true, arg_1.a, false, arg_1.a)), u_input.c.x > 3138u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -665f)), arg_0.b)))), _wgslsmith_div_i32(arg_0.c, arg_0.c), arg_0.d);
    global0 = u_input.b.zyz;
    let var_1 = 783f;
    global0 = countOneBits(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -16599i, 0i, arg_0.c), vec4<i32>(45594i, arg_1.d, 1i, -2147483647i)), -60408i), countOneBits(vec2<i32>(-2147483647i, 73359i))), ~2147483647i));
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = 1279f;
    let var_1 = Struct_1(any(vec3<bool>(false, true, arg_0.a)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2515f), arg_0.b.x))), _wgslsmith_f_op_f32(-arg_1.b.x), var_0), 18578i | _wgslsmith_dot_vec4_i32(vec4<i32>(13335i, ~2147483647i, arg_1.d ^ 1i, u_input.b.x & 2147483647i), vec4<i32>(i32(-1i) * -1i, arg_0.c, global0.x, ~arg_0.d)), -2147483647i);
    var var_2 = 704f;
    global0 = vec3<i32>(-1i, arg_1.d, arg_1.d);
    var var_3 = reverseBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 34854u, u_input.a.x, u_input.a.x) | select(vec4<u32>(26991u, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u), false), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 0u))));
    return arg_0.b.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_1(all(vec2<bool>(0i <= _wgslsmith_mod_i32(u_input.b.x, 0i), select(true, any(vec4<bool>(true, false, true, true)), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)), -203f)), -(~(~(-u_input.b.x))), _wgslsmith_mult_i32(-(~global0.x), _wgslsmith_add_i32(global0.x, 1i)));
    let var_1 = ~_wgslsmith_dot_vec2_i32(abs(global0.zz) ^ global0.xz, reverseBits(~(vec2<i32>(-1i, -1i) ^ vec2<i32>(-16474i, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_f32(func_5(Struct_1(func_4(func_2(u_input.c), Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), 43020i, -12031i)), _wgslsmith_f_op_vec3_f32(abs(var_0.b)), -41300i, min(-_wgslsmith_mult_i32(23183i, -30696i), -var_0.d >> (u_input.a.x % 32u))), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), vec4<u32>(25043u, u_input.c.x, 0u, u_input.c.x)), ~1u, reverseBits(17222u)), _wgslsmith_mult_vec3_u32(u_input.c | u_input.a, u_input.a))), 816f));
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1578f + 1000f))) + -574f) * 968f);
    return u_input.b.wwy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.yxx;
    global0 = _wgslsmith_clamp_vec3_i32(u_input.b.wxz, ~func_1(), vec3<i32>(max(u_input.b.x, i32(-1i) * -43045i) | u_input.b.x, firstTrailingBit(func_3(global0.x, true, vec2<i32>(u_input.b.x, 0i), u_input.a.xz & vec2<u32>(0u, 4203u))), 0i));
    let var_0 = abs(vec2<u32>(~_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(u_input.c.x)), 1u));
    global0 = vec3<i32>(u_input.b.x >> (_wgslsmith_mult_u32(~(~15690u), _wgslsmith_mult_u32(828u, ~u_input.c.x)) % 32u), abs(u_input.b.x), 2562i);
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(var_0.x, ~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.c.x, 0u)), var_0.x)), var_0, ~vec2<u32>(15618u << (abs(var_0.x) % 32u), select(~0u, 4294967295u, select(true, var_1, var_1))));
    let var_3 = !vec4<bool>(var_1, var_1, ~u_input.a.x != max(15070u, ~u_input.a.x), var_1);
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, -1337f, -674f, 553f) * vec4<f32>(1000f, -765f, -1101f, -182f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-115f, -635f, -1000f, 608f), vec4<f32>(-1244f, -1677f, -1000f, -504f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 875f, -976f, 470f)))), var_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(425f, 231f, -413f, 439f), vec4<f32>(-1095f, -1849f, 288f, -427f), var_1))) * _wgslsmith_div_vec4_f32(vec4<f32>(-2931f, -305f, -524f, 523f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1052f, -420f, 1405f, -197f), vec4<f32>(-1210f, -1213f, -364f, -612f), false)))), var_3))));
    global0 = u_input.b.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, _wgslsmith_clamp_u32(var_2.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(1u, 0u) << (vec2<u32>(0u, var_2.x) % vec2<u32>(32u))), 1u), 18568u), global0.x);
}

