struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_3 {
    return Struct_3(-813f, Struct_2(_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(64710i, 28518i, 1i, 0i), vec4<i32>(20230i, -22485i, -34772i, -30965i))), min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), 1i ^ _wgslsmith_clamp_i32(_wgslsmith_mod_i32(35294i, 2147483647i), select(-7542i, 0i, arg_1), firstLeadingBit(17831i))), !(!(!any(vec3<bool>(false, false, false)))), (26089u >> ((0u ^ ~arg_0) % 32u)) ^ countOneBits(_wgslsmith_sub_u32(~arg_0, 0u)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -401f);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1943f + _wgslsmith_f_op_f32(-102f - 121f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-475f)) - -1807f))), func_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 40800u, u_input.a, 1u), false), vec4<u32>(u_input.a, 22432u, 0u, 0u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) & ~_wgslsmith_mod_u32(u_input.a, 4294967295u), true, u_input.a).b, 1u > ~(~u_input.a), ~u_input.a);
    var_1 = func_2(~(~select(func_2(var_1.d, var_1.c, u_input.a).d, 64052u, true)), !(false | func_2(1624u, true, reverseBits(0u)).c), countOneBits(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.d, 48921u), min(u_input.a, 12296u), var_1.d)));
    var var_2 = vec2<i32>(-(~(-countOneBits(var_1.b.b))), var_1.b.a.x);
    var_2 = -(~(vec2<i32>(1i & var_1.b.a.x, ~var_2.x) | ~_wgslsmith_div_vec2_i32(vec2<i32>(-20209i, -2147483647i), var_1.b.a.zx)));
    return !(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(1i, 5855i), _wgslsmith_add_i32(firstTrailingBit(-2147483647i), -1i)) == _wgslsmith_sub_i32(~(~var_2.x), var_1.b.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1078f - 633f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(sign(-105f))));
    var var_1 = func_3(!(_wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_f_op_f32(trunc(arg_1.a)))) & all(select(!select(vec2<bool>(arg_3.x, true), arg_2.xx, true), vec2<bool>(true, true || arg_2.x), vec2<bool>(arg_2.x, false)));
    var var_2 = 15081i;
    let var_3 = arg_1.b.a.x << (~reverseBits(u_input.a) % 32u);
    var var_4 = select(arg_1.b.a.zwy, arg_1.b.a.wwz, false);
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_3(1000f, Struct_2(max(vec4<i32>(-2147483647i, arg_3.b.a.x | -1i, arg_3.b.b, arg_0.b.b & -30909i), func_2(1u, false, arg_0.d).b.a), arg_3.b.b), !any(!select(vec2<bool>(false, arg_3.c), vec2<bool>(arg_3.c, false), vec2<bool>(true, arg_0.c))), u_input.a);
    var_0 = arg_3;
    var var_1 = func_2(1u, func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1224f * 720f))), arg_3, select(select(!vec4<bool>(false, false, true, arg_0.c), !vec4<bool>(arg_0.c, false, false, true), !vec4<bool>(arg_3.c, arg_3.c, false, true)), !select(vec4<bool>(true, arg_3.c, arg_3.c, false), vec4<bool>(arg_3.c, arg_0.c, arg_0.c, arg_0.c), false), var_0.c), select(vec4<bool>(true, true, var_0.c, true), select(select(vec4<bool>(false, arg_3.c, true, arg_3.c), vec4<bool>(false, false, arg_3.c, arg_0.c), arg_0.c), select(vec4<bool>(arg_0.c, true, false, arg_3.c), vec4<bool>(true, false, var_0.c, var_0.c), arg_3.c), vec4<bool>(false, var_0.c, true, var_0.c)), arg_0.c)).c, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(47679u, arg_3.d, 98906u, 18213u), vec4<u32>(u_input.a, var_0.d, 22672u, arg_3.d)), ~max(vec4<u32>(arg_1, u_input.a, var_0.d, 64175u), vec4<u32>(1u, 4294967295u, 0u, arg_3.d))) | arg_1);
    var_0 = Struct_3(var_0.a, arg_3.b, arg_1 >= u_input.a, firstTrailingBit(reverseBits(1u)));
    var_0 = arg_3;
    return var_1.b.b;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_5(func_2(u_input.a, false, 24835u), ~u_input.a, Struct_1(-385f), func_4(Struct_1(-518f), func_2(1u, true, u_input.a), !vec4<bool>(func_3(false), true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = select(select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), func_2(_wgslsmith_clamp_u32(4294967295u, 0u, 4068u), all(vec3<bool>(true, true, false)), 21264u).c), !select(vec2<bool>(true, false), vec2<bool>(true, false), select(true, false, true)), true && (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a)) >= u_input.a)), vec2<bool>(true, true && !any(vec2<bool>(false, false))), func_4(arg_0, func_2(reverseBits(~u_input.a), true, 1u), vec4<bool>(_wgslsmith_f_op_f32(342f + 1058f) <= arg_0.a, func_2(func_2(u_input.a, true, 0u).d, true, u_input.a).c, true, func_4(Struct_1(-858f), Struct_3(-1358f, Struct_2(vec4<i32>(0i, 5939i, 1i, 31854i), 0i), true, u_input.a), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)).d <= ~86160u), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)).c);
    var_0 = 8265i;
    var_0 = reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-61226i, -285i, 1i, 0i)), -vec4<i32>(32192i, -1i, 1i, 2147483647i)) << (44145u % 32u)) & -_wgslsmith_sub_i32(~(-23248i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 67725i), vec2<i32>(-4217i, -17170i)));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(arg_0.a + 1262f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -1i), -4164i), 1i) | 1i, -1534i);
    var var_1 = Struct_1(-594f);
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(294f))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))))), func_2(abs(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(u_input.a, 50650u, 1126u)))), all(vec2<bool>(select(true, false, true), all(vec4<bool>(true, true, false, false)))), countOneBits(1u)).b, var_0 > var_0, 18818u);
    var_1 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, var_2.d);
}

