struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, false, false, true, true, false, true, true, false, true, false, true, false, true, true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.x, 1753f, arg_2.c.x, _wgslsmith_f_op_f32(step(arg_2.b.b.x, _wgslsmith_f_op_f32(-arg_2.c.x))))), Struct_1(~arg_2.b.d.zy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_2.a.zww)), arg_2.c.zwy)), arg_0.wz, abs(abs(reverseBits(vec3<i32>(85692i, 75155i, u_input.a.x)))), arg_1 == abs(9904u)), vec4<f32>(-461f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f + arg_2.c.x)), _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(894f * -887f)), arg_2.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - arg_2.b.b.x))), -565f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_2.a.wz, arg_2.b.b.xz))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.c.xz + arg_2.b.b.xx), _wgslsmith_f_op_vec2_f32(-arg_2.b.b.yx), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 16u)]))), arg_2.a.zz, select(select(arg_0.yw, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 16u)], false)), !select(arg_2.b.c, arg_2.b.c, arg_0.zx), true))));
    let var_1 = arg_2;
    let var_2 = var_1;
    var var_3 = Struct_1(vec2<i32>(-1i) * -var_1.b.d.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.a.yww)))), arg_0.yx, _wgslsmith_sub_vec3_i32(firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.b.a.x, var_1.b.d.x, 46657i), vec3<i32>(-1i, var_1.b.d.x, arg_2.b.a.x))), min(vec3<i32>(2147483647i, var_0.b.a.x, 0i), var_2.b.d | var_1.b.d) & _wgslsmith_mult_vec3_i32(abs(u_input.a), -vec3<i32>(2147483647i, 1i, var_0.b.d.x))), true);
    let var_4 = arg_2.d.x;
    return 4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    global0 = array<bool, 16>();
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mod_u32(u_input.b, abs(arg_2));
    var var_1 = arg_1;
    var_0 = u_input.b;
    return arg_0.b.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 1i) & vec2<i32>(2147483647i, 6471i), min(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.yx)) ^ (_wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.zx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, 12206i))), ~(_wgslsmith_add_vec2_i32(vec2<i32>(41296i, u_input.a.x), u_input.a.yz) & vec2<i32>(-54999i, u_input.a.x)), global0[_wgslsmith_index_u32(abs(arg_1.x) ^ _wgslsmith_mod_u32(0u, arg_1.x), 16u)] || true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1269f, _wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(step(-587f, 418f))))), select(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2091f, -1288f, -1000f, 761f) * vec4<f32>(-1000f, 440f, -626f, -608f)), Struct_1(u_input.a.yx, vec3<f32>(270f, 696f, -1456f), arg_0.yz, vec3<i32>(u_input.a.x, -43993i, u_input.a.x), false), vec4<f32>(-3847f, 944f, 1045f, 391f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, -456f))), Struct_1(_wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, -18813i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-734f, 602f, -2810f)), select(vec2<bool>(false, true), arg_0.xz, false), vec3<i32>(0i, 2147483647i, u_input.a.x), arg_0.x), func_3(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], true, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), arg_1.x ^ 0u, Struct_2(vec4<f32>(1441f, 1108f, -806f, 1207f), Struct_1(u_input.a.xx, vec3<f32>(2378f, -1234f, 778f), arg_0.xx, u_input.a, true), vec4<f32>(182f, -2019f, -141f, 1341f), vec2<f32>(-2867f, 1000f)))), select(func_4(Struct_2(vec4<f32>(1479f, 349f, 1123f, 1283f), Struct_1(u_input.a.xy, vec3<f32>(812f, -759f, 210f), vec2<bool>(arg_0.x, true), vec3<i32>(-21873i, u_input.a.x, u_input.a.x), arg_0.x), vec4<f32>(234f, 461f, -559f, -1443f), vec2<f32>(-1270f, -342f)), Struct_1(vec2<i32>(0i, u_input.a.x), vec3<f32>(1085f, 1172f, -645f), arg_0.xy, u_input.a, arg_0.x), u_input.b), arg_0.yy, arg_0.zx), vec2<bool>(!(!global0[_wgslsmith_index_u32(684u, 16u)]), false)), ~(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x) >> ((vec3<u32>(21200u, u_input.b, 0u) | arg_1) % vec3<u32>(32u))), all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 16u)], true)) || false);
    let var_1 = reverseBits(vec4<u32>(max(arg_1.x, ~(~u_input.b)), u_input.b, 1u, ~(1u & ~u_input.b)));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b.x)))), -812f, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(step(var_0.b.x, -259f))), Struct_1(_wgslsmith_mod_vec2_i32(select(select(vec2<i32>(u_input.a.x, 37562i), vec2<i32>(var_0.d.x, var_0.d.x), var_0.c), _wgslsmith_mult_vec2_i32(u_input.a.xy, vec2<i32>(var_0.d.x, -1i)), true), u_input.a.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b)))), vec2<bool>(~var_1.x <= (16364u | var_1.x), all(arg_0) | arg_0.x), vec3<i32>(~9807i, -23998i, -7876i), any(select(var_0.c, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], false), true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1627f, var_0.b.x, -1340f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(744f, -260f, -400f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, 1049f, -755f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(725f, 390f, 641f, var_0.b.x)))), all(vec3<bool>(true, true, var_0.e)) & all(vec4<bool>(var_0.c.x, global0[_wgslsmith_index_u32(9179u, 16u)], true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 1247f, var_0.b.x, var_0.b.x), vec4<f32>(274f, -939f, var_0.b.x, var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zy * var_0.b.xx)))));
    return Struct_1(firstLeadingBit(-vec2<i32>(firstTrailingBit(var_2.b.d.x), _wgslsmith_dot_vec2_i32(var_0.d.yz, vec2<i32>(var_0.d.x, var_2.b.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, var_0.b.x, var_0.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, var_2.c.wxy)))), func_4(var_2, Struct_1(vec2<i32>(max(-4784i, -240i), u_input.a.x), _wgslsmith_f_op_vec3_f32(-var_2.c.yyz), var_2.b.c, min(var_0.d, _wgslsmith_clamp_vec3_i32(u_input.a, var_0.d, var_2.b.d)), var_2.b.c.x), 39567u), vec3<i32>(countOneBits(var_0.a.x), 45832i, var_2.b.a.x), true);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = func_2(vec3<bool>(false, u_input.b != u_input.b, global0[_wgslsmith_index_u32(u_input.b, 16u)]), select(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(69143u, u_input.b, u_input.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 9982u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(0u, u_input.b, 8522u)))), ~vec3<u32>(u_input.b, 48255u, u_input.b) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 12679u, 0u)), ~vec3<u32>(94263u, u_input.b, 0u), ~vec3<u32>(87229u, 0u, u_input.b)) % vec3<u32>(32u)), !vec3<bool>(!arg_0.x, global0[_wgslsmith_index_u32(~3360u, 16u)], arg_0.x)));
    let var_2 = select(vec4<bool>(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 16u)])), arg_0.x, reverseBits(abs(var_1.d.x)) > 1i, any(func_2(arg_0.zww, vec3<u32>(25877u, u_input.b, u_input.b)).c) != !func_2(arg_0.zzy, vec3<u32>(1u, 51641u, u_input.b)).c.x), !vec4<bool>(true || arg_0.x, func_4(Struct_2(vec4<f32>(-858f, 348f, var_1.b.x, var_1.b.x), var_1, vec4<f32>(1544f, 987f, 617f, 2097f), vec2<f32>(-647f, var_1.b.x)), func_2(vec3<bool>(false, arg_0.x, true), vec3<u32>(40690u, u_input.b, u_input.b)), u_input.b << (72010u % 32u)).x, !(1003f > var_1.b.x), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 16u)], true, arg_0.x)) & true), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 33017u), vec2<u32>(4294967295u, 48542u)), u_input.b) | ~u_input.b, 16u)]);
    global0 = array<bool, 16>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -249f, var_1.b.x, var_1.b.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.b.x, 541f, var_1.b.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -426f))) * vec4<f32>(1000f, -794f, var_1.b.x, -1515f))), func_2(select(vec3<bool>(true, true, true), var_2.zyw, any(arg_0)), vec3<u32>(~u_input.b, u_input.b, _wgslsmith_div_u32(7322u, u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 54211u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), vec4<f32>(-305f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1468f, -666f)), var_1.b.x), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1362f + 587f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1219f)), _wgslsmith_f_op_f32(-var_1.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.x, var_1.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -557f)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, -1670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.c.x)) * var_3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1359f, 1518f)) * _wgslsmith_f_op_f32(-var_1.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1351f, -1708f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f * var_1.b.x)), _wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_div_f32(1000f, -410f))), Struct_1(max(-var_1.a, _wgslsmith_mod_vec2_i32(select(var_1.a, vec2<i32>(var_0, -28404i), vec2<bool>(true, true)), vec2<i32>(var_1.a.x, var_0))), var_3.c.ywy, vec2<bool>(true, var_1.c.x), -var_1.d, arg_0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_3.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, var_3.a.x), vec2<f32>(var_3.d.x, -413f), all(var_1.c))), var_1.b.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(true, !(!all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]))), global0[_wgslsmith_index_u32(~(~u_input.b), 16u)], global0[_wgslsmith_index_u32(1u, 16u)] && (false | (global0[_wgslsmith_index_u32(13036u, 16u)] != global0[_wgslsmith_index_u32(115892u, 16u)]))));
    let var_1 = vec4<i32>(-13326i, -20351i, -34578i, -_wgslsmith_mult_i32(firstLeadingBit(abs(-2147483647i)), i32(-1i) * -2147483647i));
    global0 = array<bool, 16>();
    let var_2 = !(!(!vec4<bool>(true, select(true, global0[_wgslsmith_index_u32(u_input.b, 16u)], var_0.b.e), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.b, 4294967295u), 16u)], !global0[_wgslsmith_index_u32(u_input.b, 16u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x);
}

