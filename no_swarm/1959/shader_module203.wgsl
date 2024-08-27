struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(f32(-1f) * -947f))));
    global0 = u_input.b;
    return Struct_2(Struct_1(!(!any(vec4<bool>(true, true, false, true)))), select(vec2<bool>(true && any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), Struct_1(!select(all(vec3<bool>(true, false, true)), true, true)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    var var_0 = func_2();
    global0 = abs(0u);
    var var_1 = Struct_1(arg_2.b.x);
    let var_2 = ~1u;
    return 0u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2063f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f + -909f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -952f))))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(772f, -517f), _wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(709f * -333f), 666f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, 1211f, 302f, 2394f)), _wgslsmith_div_vec4_f32(vec4<f32>(481f, -637f, 730f, -411f), vec4<f32>(709f, -790f, -537f, 630f)), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-746f, -656f, -447f, 202f), vec4<f32>(-632f, -897f, 1461f, 713f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 509f, 392f, -1000f))))))));
    let var_3 = ~_wgslsmith_add_u32(func_3(min(vec3<i32>(u_input.c, u_input.a.x, -1i) & vec3<i32>(u_input.c, u_input.c, u_input.a.x), select(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, 21727i, 12218i), vec3<bool>(false, false, true))), func_2(), Struct_2(Struct_1(true), vec2<bool>(true, true), Struct_1(true)), vec2<u32>(countOneBits(u_input.b), ~u_input.b)), _wgslsmith_sub_u32(func_3(vec3<i32>(-1i, 7863i, u_input.a.x), Struct_2(Struct_1(false), vec2<bool>(false, true), Struct_1(false)), Struct_2(Struct_1(false), vec2<bool>(true, false), Struct_1(true)), vec2<u32>(17274u, u_input.b)) >> (1u % 32u), 21930u));
    var_1 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(all(vec2<bool>(true, true)), select(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    return func_2().a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(true & arg_0.a), vec2<bool>(true, u_input.b != func_3(vec3<i32>(u_input.a.x, -63165i, -3612i), func_2(), Struct_2(Struct_1(arg_0.a), vec2<bool>(arg_0.a, true), Struct_1(arg_0.a)), vec2<u32>(u_input.b, 10616u) | vec2<u32>(0u, u_input.b))), arg_0);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1672f, 1238f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, 2153f, -1026f, 1052f)))))));
    global0 = 1u;
    global0 = 1u;
    return func_2().c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = func_1();
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(0i, arg_2.x) | arg_2.zx), ~arg_2.zz), select(vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.c)), -vec4<i32>(-10922i, u_input.c, -6368i, -29185i)), _wgslsmith_add_i32(arg_2.x, 0i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(2147483647i, arg_2.x)), ~(vec2<i32>(u_input.a.x, u_input.c) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), select(vec2<bool>(true, arg_3.c.a | true), arg_3.b, !select(vec2<bool>(false, false), arg_3.b, true))));
    let var_2 = true;
    let var_3 = arg_3;
    global0 = countOneBits(1u);
    return _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i >> (0u % 32u), arg_2.x, ~2147483647i, -u_input.a.x), max(vec4<i32>(2147483647i, var_1.x, u_input.c, 25437i), vec4<i32>(var_1.x, 0i, 2147483647i, u_input.a.x))), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_2.x, 1i, var_1.x), vec4<i32>(-2147483647i, u_input.c, 1i, -2147483647i)), vec4<i32>(-var_1.x, 1i, 1040i, 2147483647i), select(vec4<bool>(true, true, var_3.a.a, arg_0.a), select(vec4<bool>(var_2, var_0.a, true, var_0.a), vec4<bool>(var_3.a.a, true, arg_0.a, true), var_2), vec4<bool>(true, false, true, arg_1.b.x))) << ((vec4<u32>(max(34593u, u_input.b), u_input.b, 4294967295u >> (u_input.b % 32u), reverseBits(u_input.b)) | vec4<u32>(min(u_input.b, 1u), ~1u, countOneBits(8304u), u_input.b)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(-max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c), vec4<i32>(19394i, u_input.c, u_input.c, -12054i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, -26762i, 27046i), vec4<i32>(u_input.c, -2147483647i, u_input.a.x, 1757i)))));
    var_0 = abs(_wgslsmith_add_vec4_i32(func_5(func_4(func_1()), Struct_2(func_1(), vec2<bool>(true, false), func_1()), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, var_0.x, var_0.x), vec4<i32>(-1i, u_input.a.x, var_0.x, var_0.x)), reverseBits(89411i), ~(-1i)), func_2()), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, u_input.c, 0i, u_input.c) >> ((vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b) << (vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(-vec4<i32>(-2147483647i, -49603i, u_input.c, u_input.c)))));
    global0 = u_input.b;
    global0 = u_input.b;
    let var_1 = vec4<bool>(!(!(-1463f <= _wgslsmith_f_op_f32(select(-347f, 458f, true)))), true, all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(false, true, false))), 2147483647i == abs(u_input.a.x));
    let var_2 = var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -202f), func_5(func_4(func_2().c), func_2(), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -42046i, i32(-1i) * -1i), func_5(func_1(), Struct_2(Struct_1(false), vec2<bool>(var_2.x, false), Struct_1(true)), var_0.zyy, Struct_2(Struct_1(false), var_2, Struct_1(var_2.x))).xyx), Struct_2(Struct_1(var_2.x), select(var_2, select(var_1.yw, vec2<bool>(false, var_2.x), vec2<bool>(false, false)), vec2<bool>(false, var_2.x)), Struct_1(true))).x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(270f, 227f))), 1f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1732f, 1491f))))));
}

