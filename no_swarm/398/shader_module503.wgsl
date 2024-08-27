struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(-591f * 999f)), 159f)) * _wgslsmith_f_op_f32(102f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 835f) + _wgslsmith_f_op_f32(trunc(-819f))))), ~arg_1, !all(!select(vec4<bool>(false, var_0, false, false), vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, true, true, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-806f, _wgslsmith_f_op_f32(select(203f, -170f, true)))))) * _wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(min(-355f, -959f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, -1263f, var_1.d))))))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - var_2.x))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(var_2.x - -580f))), arg_1, 0i > u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-105f))))));
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = -func_3(i32(-1i) * -u_input.b, 4294967295u);
    let var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(45961u, 0u, 7316u)), countOneBits(vec3<u32>(1u, 1u, 1u))), abs(~firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
    let var_2 = Struct_3(Struct_1(-1633f, select(22821u, 1u << (~4294967295u % 32u), any(vec3<bool>(arg_2.x, arg_0.x, true)) && arg_0.x), all(vec4<bool>(false, arg_2.x, any(vec3<bool>(arg_2.x, true, arg_2.x)), arg_2.x)), 348f), Struct_2(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, u_input.b, 43779i)), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - arg_1.x))), all(select(vec2<bool>(arg_2.x, false), arg_2, arg_2))), Struct_2(_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(7914i, 21192i, -10860i), vec3<i32>(-1i, u_input.b, u_input.b)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.a, 10948i), vec3<i32>(67433i, 0i, 1i)))), -1149f, any(!vec4<bool>(true, false, false, arg_0.x))), arg_1.x);
    var var_3 = false;
    let var_4 = any(vec4<bool>(all(select(vec4<bool>(false, var_2.c.c, true, arg_2.x), vec4<bool>(arg_0.x, false, arg_2.x, true), vec4<bool>(arg_2.x, true, var_2.a.c, arg_2.x))), !var_2.a.c, true, any(vec2<bool>(var_2.c.c, arg_2.x)))) | arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.b, -1647f) * var_2.d)))), var_1.x, any(select(!select(vec3<bool>(false, var_2.c.c, true), vec3<bool>(true, true, false), vec3<bool>(true, true, arg_2.x)), vec3<bool>(arg_2.x == true, arg_1.x != arg_1.x, true), true & var_2.b.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1095f, var_2.d))));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_2(~vec3<i32>(_wgslsmith_div_i32(abs(u_input.b), _wgslsmith_div_i32(u_input.a, -1i)), _wgslsmith_add_i32(firstLeadingBit(u_input.b), -57363i), u_input.a), -287f, any(vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)));
    let var_1 = var_0;
    var var_2 = firstLeadingBit(-1i);
    let var_3 = func_2(vec2<bool>(true, any(vec4<bool>(any(vec4<bool>(var_0.c, true, false, var_0.c)), all(vec3<bool>(false, false, var_1.c)), !var_1.c, select(false, true, false)))), vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -561f))), var_1.b), select(vec2<bool>(all(vec2<bool>(false, var_0.c)), true), vec2<bool>(true, var_1.c), false && all(select(vec4<bool>(true, false, var_0.c, arg_0.c), vec4<bool>(false, false, var_1.c, var_0.c), vec4<bool>(var_0.c, false, var_0.c, false)))));
    var var_4 = Struct_3(var_3, Struct_2(~(_wgslsmith_add_vec3_i32(vec3<i32>(10169i, 41661i, -1i), var_0.a) | max(vec3<i32>(u_input.a, u_input.a, var_0.a.x), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-396f, var_1.b) - -1237f)), any(select(select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_1.c, var_1.c, true), false), vec3<bool>(true, var_3.c, var_3.c), vec3<bool>(false, var_1.c, var_1.c)))), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1899f));
    return _wgslsmith_mult_vec3_i32(-var_0.a, select(_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(2993i, var_0.a.x, -54391i)), -vec3<i32>(-15994i, var_4.c.a.x, -38084i), any(vec2<bool>(var_3.c, true)))) >> (_wgslsmith_div_vec3_u32(~firstLeadingBit(~vec3<u32>(var_4.a.b, 36157u, arg_0.b)), vec3<u32>(var_3.b, _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, var_4.a.b)), 15925u))) % vec3<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(false, !select(true, any(vec4<bool>(false, true, false, true)), true), true);
    var var_1 = (firstTrailingBit(countOneBits(~vec3<i32>(u_input.a, u_input.b, 28560i))) | min(reverseBits(abs(vec3<i32>(-1i, u_input.a, 1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(20238i, u_input.a, u_input.b) ^ vec3<i32>(-20357i, 2147483647i, u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.a, u_input.b))))) & _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.b, -u_input.b, ~2147483647i), countOneBits(vec3<i32>(u_input.a, 1134i, u_input.b))), abs(func_4(func_2(vec2<bool>(true, false), vec3<f32>(223f, -1000f, -2075f), vec2<bool>(var_0.x, var_0.x)))));
    let var_2 = func_2(vec2<bool>(true, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, -836f, 936f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1068f, 371f, 494f), vec3<f32>(-461f, -978f, -1148f)))))), !select(vec2<bool>(true, true), vec2<bool>(false && var_0.x, false), !(var_0.x != var_0.x)));
    let var_3 = u_input.b;
    var_1 = max(_wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, var_3, -1i), vec3<i32>(var_3, var_1.x, 9168i)), vec3<i32>(i32(-1i) * -2311i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -1i), vec2<i32>(-35860i, var_1.x)), var_3 & var_3) & countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-20421i, 1i, 1i), vec3<i32>(var_1.x, -1i, u_input.b), vec3<i32>(var_3, -2147483647i, var_1.x)))), select(~(~(-vec3<i32>(var_1.x, 0i, u_input.a))), abs(vec3<i32>(1i, u_input.a & -2951i, var_3)), !all(var_0.xx)));
    return func_2(!select(var_0.yx, var_0.zx, vec2<bool>(any(vec2<bool>(var_0.x, false)), !var_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1743f) + _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -932f, var_2.d) + vec3<f32>(631f, -688f, var_2.d)))))))), !var_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !select(vec2<bool>(!func_1().c, true), vec2<bool>(-2483f < _wgslsmith_f_op_f32(var_0.a + var_0.a), var_0.c), select(!(!vec2<bool>(var_0.c, var_0.c)), select(select(vec2<bool>(false, var_0.c), vec2<bool>(false, var_0.c), var_0.c), !vec2<bool>(var_0.c, true), select(vec2<bool>(false, var_0.c), vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.c))), false));
    var var_2 = Struct_2(vec3<i32>(-abs(_wgslsmith_mult_i32(u_input.a, u_input.b)), ~min(2147483647i, u_input.b) | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), ~(-38436i)), _wgslsmith_div_f32(var_0.d, var_0.d), _wgslsmith_f_op_f32(-584f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(619f * var_0.a), _wgslsmith_f_op_f32(var_0.a * -805f))) == _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1192f)), _wgslsmith_f_op_f32(var_0.d + var_0.a)), 1000f));
    let var_3 = Struct_2(firstTrailingBit(firstLeadingBit(~var_2.a) | var_2.a), _wgslsmith_f_op_f32(-1051f - 690f), true);
    let var_4 = max(var_2.a.yz, (-var_2.a.zz & reverseBits(vec2<i32>(u_input.a, var_3.a.x))) << (abs(vec2<u32>(var_0.b, 43574u)) % vec2<u32>(32u))) | countOneBits(func_4(Struct_1(_wgslsmith_f_op_f32(-360f + var_2.b), 1u, any(vec3<bool>(true, false, var_3.c)), var_2.b)).yz);
    let var_5 = var_3;
    var var_6 = u_input.b;
    var var_7 = ~vec4<u32>(18848u, ~(~4294967295u), 65656u, ~abs(0u)) & vec4<u32>(((4294967295u >> (var_0.b % 32u)) & var_0.b) >> (_wgslsmith_add_u32(var_0.b, firstLeadingBit(var_0.b)) % 32u), ~(~1u), var_0.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_0.b, var_0.b, 4294967295u)), select(vec3<u32>(10718u, var_0.b, 106679u), vec3<u32>(var_0.b, var_0.b, var_0.b), true)), ~vec3<u32>(4294967295u, var_0.b, var_0.b)));
    let var_8 = ~(max(firstLeadingBit(~vec4<i32>(-2147483647i, 1i, -1i, 6214i)), ~(~vec4<i32>(var_2.a.x, var_5.a.x, var_3.a.x, u_input.a))) | vec4<i32>(~var_3.a.x, func_4(Struct_1(253f, var_0.b, var_0.c, var_3.b)).x, _wgslsmith_mod_i32(_wgslsmith_div_i32(31138i, var_5.a.x), -36199i), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(var_7.wx), ~vec2<u32>(var_0.b, 65228u)), _wgslsmith_dot_vec3_u32(var_7.yyw, ~var_7.wxz)), var_7.x, var_7.x, ~(~(~1u))), -var_4);
}

