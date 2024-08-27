struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_4(arg_3, ~_wgslsmith_mod_u32(arg_0, arg_0), vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_3.b.a, 15u)], -23117i ^ arg_3.a), -1i ^ min(_wgslsmith_add_i32(1i, u_input.a), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(11387u, 15u)], -1i))), ~_wgslsmith_div_u32(4385u, ~1u));
    global0 = array<i32, 15>();
    var var_1 = var_0.a.b;
    global0 = array<i32, 15>();
    return -215f;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec3<f32>(-2715f, -1001f, _wgslsmith_f_op_f32(func_3(61983u, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(364f, -1097f)), 269f)), Struct_3(1i, Struct_1(~40944u), -1875i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -923f, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -422f, -1585f), vec3<f32>(1113f, var_0.x, -421f))))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, 325f, var_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(843f, -1107f, var_0.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, -2039f, var_0.x))))));
    let var_2 = Struct_4(Struct_3(i32(-1i) * -_wgslsmith_mod_i32(u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 15u)]), Struct_1(u_input.b.x), -2147483647i), 0u, vec2<i32>(-1i, u_input.a), 4294967295u);
    let var_3 = vec4<bool>(false, false, !any(vec2<bool>(true, true)), true);
    var var_4 = _wgslsmith_sub_vec2_i32(firstLeadingBit(var_2.c) << (select(u_input.b.zy, arg_0.zy, var_3.zx) % vec2<u32>(32u)), var_2.c);
    return firstLeadingBit(61451u);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = !vec3<bool>(true, true, arg_2);
    let var_1 = firstTrailingBit(-27811i) <= -2147483647i;
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 1f))) <= _wgslsmith_f_op_f32(f32(-1f) * -992f), !(var_0.x || var_1), any(select(!vec4<bool>(false, arg_2, arg_2, arg_2), select(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(true, var_0.x, arg_2, false), vec4<bool>(false, false, true, var_1)), !vec4<bool>(false, true, var_0.x, arg_2), !vec4<bool>(false, var_0.x, true, false)), vec4<bool>(select(arg_2, var_0.x, false), true, true, arg_2))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + arg_0.x)) + 426f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    global0 = array<i32, 15>();
    return var_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = !func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, -636f, -879f) - vec3<f32>(-593f, -840f, 1456f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(-291f + -269f), -270f)), func_2(vec4<u32>(~u_input.b.x, ~2249u, 39676u, 76456u)), arg_1.x || all(vec4<bool>(true, arg_1.x, false, arg_1.x)));
    var var_1 = arg_2.a;
    global0 = array<i32, 15>();
    let var_2 = -39996i;
    var var_3 = vec4<u32>(~var_1.b.a, select(firstTrailingBit(~(~var_1.b.a)), _wgslsmith_mod_u32(5406u, ~(~19996u)), var_1.a < _wgslsmith_dot_vec2_i32(~arg_2.c, arg_2.c)), abs(var_1.b.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.b.a, u_input.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.d, _wgslsmith_clamp_u32(958u, var_1.b.a, var_1.b.a)), vec2<u32>(7522u, 0u))));
    return Struct_1(var_3.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec4<bool>(true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !select(select(arg_1 >= arg_1, false, true), true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), all(vec4<bool>(false, true, true, false))))));
    global0 = array<i32, 15>();
    var var_1 = arg_3.a;
    var_1 = u_input.b.x;
    var var_2 = abs(0i);
    return Struct_3(-(~u_input.a >> (~(arg_2.x >> (4294967295u % 32u)) % 32u)), func_1(vec4<i32>(6694i, _wgslsmith_add_i32(-11843i, -45038i >> (u_input.b.x % 32u)), max(~0i, 49357i), 1i), var_0.zx, Struct_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(357i, global0[_wgslsmith_index_u32(40819u, 15u)], u_input.a), vec3<i32>(17016i, 2147483647i, u_input.a)), Struct_1(0u), 1i), 1u, vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(~arg_2.x, 15u)]), 1u)), ~_wgslsmith_mod_i32(-80831i, min(i32(-1i) * -29952i, u_input.a | u_input.a)));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    return Struct_3(abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_2, 15u)], global0[_wgslsmith_index_u32(37912u, 15u)])), arg_1.b, min(abs(max(global0[_wgslsmith_index_u32(arg_1.b.a, 15u)], u_input.a)), -(0i ^ u_input.a)) | u_input.a);
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(arg_1.b, vec3<bool>(!all(vec3<bool>(false, false, true)), select(false, -68548i >= (arg_1.a | -63168i), !any(vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true))));
    var_0 = Struct_2(Struct_1(~4294967295u), select(select(!(!var_0.b), select(vec3<bool>(var_0.b.x, var_0.b.x, false), select(var_0.b, var_0.b, var_0.b.x), any(vec2<bool>(var_0.b.x, var_0.b.x))), true), select(select(!vec3<bool>(false, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, true), -974f <= arg_0.x), !select(var_0.b, var_0.b, var_0.b.x), var_0.b), true));
    let var_1 = vec3<u32>(var_0.a.a, func_5(_wgslsmith_f_op_vec3_f32(arg_0.wwx * arg_0.zyy), -235f, select(select(vec2<u32>(0u, arg_1.b.a), vec2<u32>(26621u, 0u), var_0.b.yy), _wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(arg_1.b.a, u_input.b.x)), true | var_0.b.x), Struct_1(73296u)).b.a << (func_1(-(~vec4<i32>(0i, arg_1.c, 12853i, 45412i)), var_0.b.zy, Struct_4(func_5(arg_0.yzy, 441f, u_input.b.xy, Struct_1(1u)), ~u_input.b.x, select(vec2<i32>(-15436i, arg_1.c), vec2<i32>(2147483647i, arg_1.a), var_0.b.x), var_0.a.a << (u_input.b.x % 32u))).a % 32u), 21858u);
    let var_2 = Struct_1(func_1(_wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(43936i, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(52250u, 15u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.b.a, 15u)], 0i, 1i, 2147483647i), vec4<i32>(0i, u_input.a, u_input.a, global0[_wgslsmith_index_u32(15856u, 15u)])) >> (firstTrailingBit(vec4<u32>(arg_1.b.a, var_0.a.a, u_input.b.x, arg_1.b.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(59347u, 15u)], arg_1.a, 1i, u_input.a), min(vec4<i32>(-194i, arg_1.c, -36059i, 53986i), vec4<i32>(35302i, global0[_wgslsmith_index_u32(78300u, 15u)], arg_1.c, 1i)), abs(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(var_1.x, 15u)], -2147483647i, arg_1.a)))), select(!vec2<bool>(var_0.b.x, false), vec2<bool>(!var_0.b.x, true), select(select(var_0.b.xy, vec2<bool>(false, false), vec2<bool>(false, false)), var_0.b.zx, all(vec4<bool>(var_0.b.x, true, var_0.b.x, false)))), Struct_4(arg_1, ~var_1.x, _wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i) & vec2<i32>(global0[_wgslsmith_index_u32(1u, 15u)], 0i), ~vec2<i32>(-28645i, 13671i)), var_1.x)).a);
    var var_3 = Struct_2(var_2, !(!(!vec3<bool>(true, var_0.b.x, false))));
    return Struct_4(func_6(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, 29230i, arg_1.c), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.a.a, 15u)], 79915i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -1i, global0[_wgslsmith_index_u32(60943u, 15u)])), vec4<i32>(-20322i, u_input.a, -8124i, global0[_wgslsmith_index_u32(var_2.a, 15u)]) | vec4<i32>(arg_1.c, -45614i, -31998i, arg_1.c))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 2393f, -126f))), _wgslsmith_f_op_f32(func_3(var_1.x, 1u, _wgslsmith_f_op_f32(f32(-1f) * -516f), func_6(vec2<i32>(arg_1.a, -29387i), Struct_3(2147483647i, Struct_1(74416u), u_input.a), var_3.a.a))), var_1.yy, arg_1.b), func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(12379u, 4294967295u, 21106u, var_1.x), vec4<u32>(26800u, 1u, var_1.x, var_1.x)))), u_input.b.x, _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-34217i, global0[_wgslsmith_index_u32(9053u, 15u)]), 2648i), vec2<i32>(max(-1i, 25426i), _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(40676u, 15u)], 1i & global0[_wgslsmith_index_u32(1u, 15u)]))), func_1(-(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 15u)], 47443i, 1i, -6864i)), var_0.b.xx, Struct_4(func_5(_wgslsmith_f_op_vec3_f32(ceil(arg_0.yxy)), _wgslsmith_f_op_f32(f32(-1f) * -1019f), ~vec2<u32>(arg_1.b.a, 63062u), var_2), var_3.a.a, ~firstTrailingBit(vec2<i32>(u_input.a, arg_1.c)), max(~var_1.x, _wgslsmith_mult_u32(1u, var_2.a)))).a);
}

fn func_8(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = arg_0;
    global0 = array<i32, 15>();
    var var_1 = abs(min(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_0.a.c, 0i, arg_2.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2.a, u_input.a), vec3<i32>(var_0.a.a, 3170i, -1i))) << (firstTrailingBit(u_input.b) % vec3<u32>(32u)), abs(vec3<i32>(global0[_wgslsmith_index_u32(arg_1.b.a, 15u)] >> (67024u % 32u), 1i, _wgslsmith_clamp_i32(1i, -2147483647i, 2841i)))));
    var var_2 = 33903u < ~(~func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, 321f, 1118f)), -573f, vec2<u32>(13995u, arg_0.d), Struct_1(arg_2.b.a)).b.a);
    var var_3 = func_6(-_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(10763i, 15466i) >> (vec2<u32>(u_input.b.x, arg_3.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(arg_2.c, arg_2.a)), vec2<i32>(var_1.x, -32478i))), arg_2, ~(~abs(~4294967295u)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1193f - 1337f)), -1402f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(714f, -877f), _wgslsmith_f_op_f32(select(1167f, 429f, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let var_0 = firstLeadingBit(firstLeadingBit(-firstTrailingBit(vec2<i32>(1i, -53638i)) ^ max(select(vec2<i32>(u_input.a, -42430i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.a), true), vec2<i32>(-17356i, -2147483647i) >> (u_input.b.zz % vec2<u32>(32u)))));
    var var_1 = abs(vec3<i32>(1i, 1i, 1i));
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = func_8(func_7(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1107f, 159f, 194f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, -1339f, -1098f, 254f))))), func_6(countOneBits(var_1.xy | var_0), func_5(vec3<f32>(1205f, -2046f, 216f), 1103f, _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, 8204u)), func_1(vec4<i32>(var_0.x, -1i, 48595i, 2147483647i), vec2<bool>(true, false), Struct_4(Struct_3(var_1.x, Struct_1(4294967295u), 36173i), u_input.b.x, var_1.yz, 58486u))), 4294967295u)), Struct_3(-33662i, func_1(firstTrailingBit(vec4<i32>(0i, 9386i, -2147483647i, 1i)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), Struct_4(Struct_3(13508i, Struct_1(4294967295u), var_0.x), 4294967295u | u_input.b.x, ~var_1.xy, u_input.b.x)), -2147483647i), Struct_3(countOneBits(~(-global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2000f, -648f, -259f, -753f)))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(380f, 185f, 905f)), 1f, u_input.b.xx, Struct_1(u_input.b.x))).a.b, ~u_input.a), ~firstLeadingBit(vec2<u32>(u_input.b.x, abs(u_input.b.x))));
}

