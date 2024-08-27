struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(4294967295u, vec3<i32>(2147483647i, 3844i, -1i)), Struct_2(4294967295u, vec3<i32>(-16446i, 36766i, 13318i)), Struct_2(4294967295u, vec3<i32>(6091i, 5868i, i32(-2147483648))), Struct_2(3069u, vec3<i32>(1894i, 2147483647i, -2440i)), Struct_2(4294967295u, vec3<i32>(-29102i, 2147483647i, 4817i)), Struct_2(47504u, vec3<i32>(-1i, i32(-2147483648), -49933i)), Struct_2(65124u, vec3<i32>(0i, -18394i, -5042i)), Struct_2(33583u, vec3<i32>(-57107i, -89868i, 2147483647i)), Struct_2(0u, vec3<i32>(-11072i, -12677i, i32(-2147483648))), Struct_2(4294967295u, vec3<i32>(-1i, 2147483647i, 17377i)), Struct_2(55955u, vec3<i32>(i32(-2147483648), -6527i, 5525i)), Struct_2(4294967295u, vec3<i32>(3962i, 1i, 7677i)), Struct_2(67545u, vec3<i32>(-7062i, 2147483647i, 9562i)), Struct_2(1u, vec3<i32>(1i, 32444i, -3614i)), Struct_2(4294967295u, vec3<i32>(1i, 55562i, 0i)), Struct_2(1u, vec3<i32>(45931i, 44922i, -5293i)), Struct_2(0u, vec3<i32>(21520i, 3550i, 14208i)), Struct_2(0u, vec3<i32>(-6800i, -1i, -23237i)), Struct_2(0u, vec3<i32>(i32(-2147483648), i32(-2147483648), -12572i)), Struct_2(13465u, vec3<i32>(100626i, -27076i, -21735i)), Struct_2(36212u, vec3<i32>(2147483647i, -36754i, 7316i)), Struct_2(0u, vec3<i32>(19759i, 0i, -50001i)), Struct_2(1u, vec3<i32>(0i, i32(-2147483648), 9532i)), Struct_2(0u, vec3<i32>(-9184i, -1i, 0i)), Struct_2(65494u, vec3<i32>(-8172i, 12238i, 37640i)), Struct_2(28887u, vec3<i32>(4986i, 53202i, -13298i)), Struct_2(0u, vec3<i32>(i32(-2147483648), 1i, -14413i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(296f)));
    var var_1 = var_0;
    global0 = array<Struct_2, 27>();
    var var_2 = Struct_1(vec2<f32>(var_0, var_0), ~select(abs(vec2<i32>(u_input.b, 7738i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), !select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, _wgslsmith_div_f32(-595f, var_0)))));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1245f + -483f), 756f, arg_2.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1223f, arg_2.d.x, 1000f))))));
    var var_1 = firstLeadingBit(~vec4<u32>(arg_0.a, arg_0.a, _wgslsmith_mod_u32(arg_0.a, ~3853u), abs(4294967295u)));
    var var_2 = arg_2;
    var var_3 = u_input.b;
    var var_4 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 4294967295u, var_1.x, 1u), vec4<u32>(u_input.a, 0u, u_input.a, 74090u), false), min(~vec4<u32>(u_input.a, 4294967295u, arg_0.a, u_input.a), select(vec4<u32>(arg_0.a, 73253u, 19468u, u_input.a), vec4<u32>(var_1.x, u_input.a, arg_0.a, 34205u), vec4<bool>(false, true, false, false)))), ~countOneBits(arg_0.a ^ var_1.x), u_input.a);
    return vec4<u32>(~(~17781u) | ~(27608u ^ (28231u | var_1.x)), arg_0.a, 70382u, 14611u | _wgslsmith_div_u32(u_input.a, ~0u));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    var var_1 = vec4<f32>(-901f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(254f, var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -354f))), _wgslsmith_f_op_f32(f32(-1f) * -521f), -321f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f + -188f) - 1f), _wgslsmith_f_op_f32(trunc(var_0.x)), 209f)));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 33466u, 0u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(2494u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 13335u))) << (func_4(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 43043u), vec2<u32>(u_input.a, 4294967295u)), ~vec3<i32>(7082i, 27389i, u_input.b)), -61166i < (u_input.b << (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_1.zz), func_3(), vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1459f, var_1.x) * var_1.zy))) % vec4<u32>(32u)), countOneBits(~(~vec4<u32>(u_input.a, 51685u, u_input.a, u_input.a))) >> (~(~(~vec4<u32>(90374u, 0u, 73218u, u_input.a))) % vec4<u32>(32u)));
    var var_3 = global0[_wgslsmith_index_u32(~u_input.a, 27u)];
    return Struct_3(vec4<i32>(_wgslsmith_mod_i32(30527i, -firstLeadingBit(u_input.b)), _wgslsmith_mod_i32(23547i, min(countOneBits(-61795i), abs(var_3.b.x))), var_3.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_3.b.x, 0i), vec3<i32>(var_3.b.x, ~(-2147483647i), ~2147483647i))), vec2<bool>(true, any(vec2<bool>(true, false))));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = (-1001f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - 441f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(433f, -139f))))))) && !arg_1.b.x;
    var_0 = arg_1.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, -1130f) - _wgslsmith_div_vec2_f32(vec2<f32>(-157f, -1000f), vec2<f32>(-604f, _wgslsmith_f_op_f32(f32(-1f) * -103f)))), arg_1.a.zz, !vec3<bool>(arg_1.b.x, false, true), vec2<f32>(1284f, -375f));
    global0 = array<Struct_2, 27>();
    var_0 = true;
    return Struct_3(select(vec4<i32>(u_input.b, ~var_1.b.x, arg_1.a.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, 45708i), var_1.b), var_1.b)), vec4<i32>(-6053i << (arg_0 % 32u), var_1.b.x, _wgslsmith_add_i32(-arg_1.a.x, min(12269i, u_input.b)), abs(-36018i ^ var_1.b.x)), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(func_2().b.x, !(var_1.d.x == var_1.d.x)), !vec2<bool>(true, select(var_1.c.x, arg_1.b.x, var_1.c.x)), func_2().b));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(-1325f))), -min(vec2<i32>(-23275i, arg_0.a.x | u_input.b), ~(~vec2<i32>(arg_0.a.x, 33774i))), vec3<bool>(true, !arg_0.b.x, !all(select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(arg_0.b.x, true, arg_0.b.x), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, 121f))))));
    var var_1 = -firstTrailingBit(vec2<i32>(abs(abs(var_0.b.x)), -21987i));
    let var_2 = Struct_2(u_input.a, arg_0.a.wxw);
    let var_3 = func_5(~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), 4294967295u), Struct_3(_wgslsmith_mult_vec4_i32(arg_0.a, ~(-vec4<i32>(var_0.b.x, -50309i, -12888i, u_input.b))), select(vec2<bool>(true, false), vec2<bool>(any(var_0.c), true), !func_2().b))).b.x;
    var var_4 = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_2.a, var_2.a), 74268u) | max(~vec2<u32>(52966u, var_2.a), vec2<u32>(u_input.a, var_2.a)), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 68489u), vec2<u32>(u_input.a, var_2.a)))), arg_0);
    return Struct_3(vec4<i32>(func_5(firstTrailingBit(11415u), Struct_3(_wgslsmith_mult_vec4_i32(var_4.a, var_4.a), vec2<bool>(true, true))).a.x, ~1i, -_wgslsmith_mult_i32(var_0.b.x, 1i), -func_5(u_input.a, func_2()).a.x), var_4.b);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = ~((vec3<u32>(u_input.a, u_input.a, firstLeadingBit(u_input.a)) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a) ^ vec3<u32>(80936u, 3504u, u_input.a), ~vec3<u32>(9100u, 1u, u_input.a))) | _wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(0u, u_input.a, 38844u)), countOneBits(~vec3<u32>(u_input.a, 18208u, 1u)), ~vec3<u32>(80571u, u_input.a, u_input.a) >> (select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u), arg_1.c) % vec3<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    var var_2 = arg_1.c.x;
    var var_3 = var_0.x;
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(abs(vec3<u32>(var_0.x, u_input.a, 27444u)), ~vec3<u32>(0u, var_0.x, 1u)), vec3<u32>(var_1.a, ~u_input.a, 1u << (u_input.a % 32u))), select(abs(vec3<u32>(var_1.a, 4294967295u, u_input.a)), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(21571u, 17198u, var_1.a)), _wgslsmith_div_vec3_u32(vec3<u32>(15338u, 4294967295u, 1u), vec3<u32>(25557u, 1u, 5878u))), !vec3<bool>(false, arg_0.b.x, arg_1.c.x))), 27u)];
    return 35747u;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_0 = min(_wgslsmith_sub_vec2_i32(min(reverseBits(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.b, 1i)) << (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-1i, firstTrailingBit(1i))), vec2<i32>(((u_input.b ^ u_input.b) >> (u_input.a % 32u)) >> ((u_input.a & u_input.a) % 32u), -2147483647i));
    let var_1 = global0[_wgslsmith_index_u32(func_7(func_6(func_5(u_input.a, func_2())), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(618f)), _wgslsmith_f_op_f32(-883f - -1052f))), -(firstLeadingBit(vec2<i32>(-1i, var_0.x)) << (select(vec2<u32>(4294967295u, 34965u), vec2<u32>(4294967295u, u_input.a), vec2<bool>(false, true)) % vec2<u32>(32u))), vec3<bool>(true, all(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -578f))))), 27u)];
    global0 = array<Struct_2, 27>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -197f), vec2<f32>(-2155f, -1204f), vec2<bool>(true, true))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2474f, -564f)), vec2<f32>(1133f, -820f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(424f, 410f), vec2<f32>(-1000f, 2442f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 2450f)))) + vec2<f32>(_wgslsmith_f_op_f32(-1429f * 200f), -1552f)))), _wgslsmith_mod_vec2_i32(var_1.b.zz, vec2<i32>(~u_input.b, var_1.b.x)), !vec3<bool>(any(vec4<bool>(true, true, true, true)), countOneBits(var_1.b.x) >= func_2().a.x, func_2().b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-584f, 1000f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -308f), vec2<f32>(-575f, -473f)))) + vec2<f32>(_wgslsmith_f_op_f32(min(-222f, 352f)), 729f))));
}

fn func_8(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = min(vec4<i32>(50343i, _wgslsmith_sub_i32(abs(u_input.b & -10554i), _wgslsmith_mult_i32(min(-1i, arg_0.b.x), arg_0.b.x)), 0i, arg_0.b.x), vec4<i32>(~max(~u_input.b, -27866i), _wgslsmith_mod_i32(max(firstTrailingBit(u_input.b), -arg_0.b.x), u_input.b), ~u_input.b, countOneBits(i32(-1i) * -29706i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(arg_1.xwx));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(583f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(598f, _wgslsmith_f_op_f32(560f - -1288f))))), -1000f));
    var var_2 = vec4<bool>(!(!func_1().c.x), true, true, false);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(566f)), -302f), _wgslsmith_f_op_f32(128f - arg_0.a.x)))), _wgslsmith_div_f32(arg_0.d.x, arg_0.a.x), -1700f);
    return _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(u_input.a ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), countOneBits(2965u)), u_input.a, ~1u), _wgslsmith_mult_u32(10940u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.a, _wgslsmith_sub_u32(func_8(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -861f, -145f, 319f))), u_input.a), abs(~(~53957u))), vec4<u32>(1u, _wgslsmith_div_u32(0u, 85309u), _wgslsmith_mult_u32(~1u, func_8(func_1(), vec4<f32>(-1282f, -1096f, -220f, -1770f))), ~0u));
    global0 = array<Struct_2, 27>();
    var var_1 = 1u;
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(func_4(Struct_2(34634u, vec3<i32>(var_2.b.x, var_2.b.x, var_2.b.x)), var_2.c.x, var_2) << (vec4<u32>(u_input.a, u_input.a, var_0, 16785u) % vec4<u32>(32u)))), ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(28278u, u_input.a, 0u), vec3<u32>(4294967295u, 94595u, 0u)), vec3<u32>(11913u, 67269u, 0u), vec3<u32>(var_0, var_0, var_0) ^ vec3<u32>(4294967295u, u_input.a, u_input.a)) << (((vec3<u32>(var_0, var_0, 4294967295u) << (vec3<u32>(31866u, u_input.a, 0u) % vec3<u32>(32u))) & ~vec3<u32>(0u, var_0, u_input.a)) % vec3<u32>(32u))), var_2.b.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_5(u_input.a, Struct_3(vec4<i32>(var_2.b.x, -11510i, var_2.b.x, 21485i), vec2<bool>(var_2.c.x, var_2.c.x))).a.x, -1i), firstLeadingBit(-_wgslsmith_mod_i32(u_input.b, u_input.b))));
}

