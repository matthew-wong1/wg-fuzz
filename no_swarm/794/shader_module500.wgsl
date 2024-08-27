struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(!(!select(arg_0.a, vec4<bool>(arg_3.e, arg_3.e, true, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_3.e))), Struct_1(578f), arg_3.e);
    var var_1 = Struct_2(Struct_1(arg_3.d.a), ~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, 19773i), arg_3.b.xxw), ~vec3<i32>(2147483647i, u_input.b.x, arg_2.x)), firstLeadingBit(0i), arg_2.x | ~(-20089i), firstLeadingBit(~11348i)), arg_3.c, arg_0.b, select(true, true, !arg_1.c));
    let var_2 = arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -190f))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = select(true, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), arg_0 > u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-823f))))));
    var var_2 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, select(arg_1.x, 19238i, false))), (-(~u_input.b) >> (_wgslsmith_add_vec2_u32(arg_2.yy, ~arg_2.wy) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2 << (vec4<u32>(u_input.c, 34026u, arg_0, 11000u) % vec4<u32>(32u)), arg_2), 22888u) % vec2<u32>(32u)));
    var var_3 = Struct_3(!vec4<bool>(!(var_1.a > var_1.a), var_0, -925f > _wgslsmith_f_op_f32(-var_1.a), any(!vec4<bool>(var_0, var_0, var_0, false))), var_1, all(!select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, false), u_input.b.x >= -32656i)));
    var_3 = Struct_3(select(var_3.a, select(var_3.a, var_3.a, false), !vec4<bool>(true, true | var_0, var_0 | true, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_3.b.a)) - _wgslsmith_f_op_f32(floor(1000f)))), var_3.c & (reverseBits(arg_2.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_0, 1u) >> (vec2<u32>(28967u, arg_0) % vec2<u32>(32u)))));
    return vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-61863i, -2147483647i), u_input.b) & firstLeadingBit(_wgslsmith_div_i32(-23902i, -u_input.b.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, true)), Struct_1(_wgslsmith_f_op_f32(step(-767f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(false, true, false, true), Struct_1(arg_0), false), Struct_3(vec4<bool>(true, true, true, false), Struct_1(arg_1.a), false), u_input.b, Struct_2(Struct_1(arg_0), vec4<i32>(arg_3.x, -1i, arg_3.x, 56816i), vec4<u32>(4294967295u, 13033u, 4294967295u, 73710u), Struct_1(680f), false)))))))), true);
    var_0 = Struct_3(vec4<bool>(var_0.a.x, true, u_input.b.x <= 2147483647i, u_input.b.x >= 2147483647i), Struct_1(-211f), any(vec4<bool>(!var_0.c, true, true || (var_0.c && true), select(true, true, var_0.a.x))));
    var_0 = Struct_3(!var_0.a, Struct_1(_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1179f, 157f)))), all(!var_0.a.yzy));
    var var_1 = false;
    var_1 = var_0.a.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a * -181f) - arg_0)));
}

fn func_1() -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<bool>(false, true, false, true), Struct_1(546f), false), Struct_3(vec4<bool>(true, true, false, true), Struct_1(-2691f), false), u_input.b, Struct_2(Struct_1(-1035f), vec4<i32>(var_0.x, u_input.b.x, -41112i, var_0.x), vec4<u32>(57116u, 1u, u_input.c, u_input.c), Struct_1(-178f), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -692f))))), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_3(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), Struct_1(-1541f), true), Struct_3(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), Struct_1(-154f), true), -func_3(u_input.c, vec3<i32>(var_0.x, -2147483647i, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), Struct_2(Struct_1(-466f), abs(vec4<i32>(11033i, -2147483647i, 28029i, u_input.b.x)), vec4<u32>(u_input.c, u_input.c, 65346u, u_input.c), Struct_1(1179f), true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, -819f, -1000f)), vec3<f32>(1049f, -1000f, -411f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(488f - 122f), _wgslsmith_f_op_f32(f32(-1f) * -2237f)), 716f, 3219f), true || (any(vec2<bool>(true, true)) & true))), select(max(_wgslsmith_sub_vec4_i32(vec4<i32>(10511i, 0i, u_input.b.x, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a, var_0.x), vec4<i32>(19305i, var_0.x, var_0.x, 2147483647i))), vec4<i32>(_wgslsmith_mod_i32(-44316i, -4049i), ~u_input.a, i32(-1i) * -29330i, max(-1i, -11613i))), max(-(~vec4<i32>(1i, -10564i, u_input.a, u_input.a)), min(~vec4<i32>(var_0.x, -16744i, u_input.a, -2147483647i), vec4<i32>(u_input.b.x, -22495i, -17440i, u_input.a))), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-385f, -479f)))));
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_1.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 299f)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -471f, 108f) - vec3<f32>(1627f, -749f, -361f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(func_4(var_2.a, Struct_1(var_2.a), vec3<f32>(var_2.a, var_2.a, 202f), vec4<i32>(32732i, u_input.a, u_input.b.x, u_input.a)).a)), -1056f, -637f)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(u_input.a, min(var_0.x, _wgslsmith_mult_i32(var_0.x, 1i))), var_0.x, max(countOneBits(1i), countOneBits(countOneBits(-25956i)))));
    var var_4 = vec4<bool>(all(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true))), select(true, false, all(vec2<bool>(true, true))), any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), vec4<bool>(all(vec4<bool>(true, false, true, true)), all(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(true, true, true, false))), all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-274f)), _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1362f) + -287f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, -741f, 1f))), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))))));
    let var_2 = Struct_1(_wgslsmith_div_f32(var_1.x, -774f));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f * 1224f))), select(vec4<i32>(func_3(u_input.c, vec3<i32>(-1i, -2147483647i, u_input.a), vec4<u32>(54358u, u_input.c, 26056u, 1u)).x, u_input.b.x, 1i, _wgslsmith_mod_i32(u_input.b.x, -2147483647i)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, 19366u, 4294967295u), vec4<u32>(30453u, u_input.c, u_input.c, u_input.c)) << (~vec4<u32>(0u, 1u, 4294967295u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -9742i, -18258i, u_input.b.x), vec4<i32>(2147483647i, 44252i, u_input.a, u_input.a))) | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, -3920i, u_input.b.x, 2147483647i)), ~vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(764f)), var_2.a) >= -930f), ~_wgslsmith_div_vec4_u32(vec4<u32>(abs(55816u), reverseBits(42905u), ~u_input.c, 4581u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(65337u, 4294967295u, u_input.c, 1u), vec4<u32>(0u, 4294967295u, u_input.c, u_input.c))), func_4(836f, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(337f + -472f), _wgslsmith_f_op_f32(-344f * 1418f))), func_4(_wgslsmith_f_op_f32(ceil(-261f)), var_2, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 136f, 2340f), vec3<f32>(var_1.x, var_2.a, var_1.x))), ~vec4<i32>(u_input.a, 0i, 13664i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 220f) + vec3<f32>(var_1.x, var_2.a, var_2.a)) - vec3<f32>(1f, 1f, 1f)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 46779i, -1i), vec4<i32>(u_input.b.x, u_input.a, -36673i, -27634i)), abs(2147483647i), i32(-1i) * -1i, ~1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-102f, var_2.a, var_2.a))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, 205f) + vec3<f32>(687f, var_2.a, var_2.a))))), _wgslsmith_add_vec4_i32(~select(vec4<i32>(-64718i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 22091i, u_input.b.x), vec4<bool>(true, true, true, false)), ~(-vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 1i)))), !(!any(vec4<bool>(true, true, false, true)) | any(vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.wzx ^ vec3<u32>(~u_input.c, abs(u_input.c), _wgslsmith_dot_vec2_u32(~var_3.c.xz, ~var_3.c.zw)));
}

