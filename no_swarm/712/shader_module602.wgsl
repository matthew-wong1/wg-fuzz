struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    global0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(global0.c, -2147483647i), 26681i), true, ~u_input.b);
    var var_0 = Struct_1(u_input.b, true, reverseBits(_wgslsmith_mult_i32(-42677i, u_input.b)));
    var var_1 = select(!(!vec4<bool>(var_0.b & false, false, all(vec3<bool>(false, true, false)), all(vec3<bool>(false, var_0.b, true)))), select(select(!(!vec4<bool>(true, false, global0.b, var_0.b)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, global0.b, false, global0.b), vec4<bool>(global0.b, false, false, false)), !var_0.b), var_0.b && select(false, false, global0.b)), !(!select(vec4<bool>(var_0.b, global0.b, global0.b, var_0.b), vec4<bool>(global0.b, false, true, global0.b), vec4<bool>(global0.b, var_0.b, true, var_0.b))), !(u_input.c <= max(u_input.c, u_input.a))), false | !global0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f))), -1578f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-258f, 1282f))) - -957f) + _wgslsmith_f_op_f32(step(-2263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-283f, -1000f)))))));
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.c), u_input.c, ~0u | reverseBits(u_input.d.x), u_input.c) ^ ~vec4<u32>(1u, countOneBits(4294967295u), 4294967295u, u_input.d.x), abs(select(~vec4<u32>(u_input.d.x, u_input.c, u_input.a, 1u), ~vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.a), !vec4<bool>(global0.b, true, true, var_1.x)) & (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 54384u, u_input.c, u_input.a), vec4<u32>(u_input.d.x, u_input.a, 71673u, u_input.c)) >> (~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)))));
    return i32(-1i) * -20950i;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(func_3(), true, global0.c);
    global0 = Struct_1(abs(1i), false | (!global0.b && all(!vec3<bool>(global0.b, false, global0.b))), reverseBits(countOneBits(-5658i)));
    let var_0 = arg_0.x;
    global0 = Struct_1(44398i, var_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * 1108f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * var_0), _wgslsmith_f_op_f32(171f * 1455f)))), global0.c);
    global0 = Struct_1(20869i, true, global0.a);
    return Struct_1(_wgslsmith_clamp_i32(-8121i, u_input.b | -reverseBits(u_input.b), -global0.c), false, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b | global0.c, u_input.b), 1i));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = 69422u;
    let var_1 = u_input.d & ~_wgslsmith_sub_vec3_u32(max(u_input.d & vec3<u32>(u_input.d.x, 4294967295u, 58451u), u_input.d), ~select(u_input.d, u_input.d, vec3<bool>(true, true, arg_3)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2280f)), -251f), arg_1)), _wgslsmith_f_op_f32(-arg_1), false));
    let var_3 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0 | 1u, 4294967295u, _wgslsmith_mult_u32(var_1.x, var_1.x), max(u_input.c, 1u)) | (select(vec4<u32>(var_1.x, 42371u, 1u, 5773u), vec4<u32>(73577u, 4294967295u, u_input.c, 4294967295u), vec4<bool>(false, true, global0.b, global0.b)) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 6931u, var_0, 0u), vec4<u32>(41638u, var_0, 4294967295u, u_input.c)))), abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_0, var_0, 0u, var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, u_input.c, 84263u, 0u), vec4<u32>(4294967295u, 99337u, var_1.x, 45032u))) >> ((~vec4<u32>(var_1.x, 4294967295u, u_input.c, 4294967295u) & vec4<u32>(1u, 25405u, 60905u, u_input.c)) % vec4<u32>(32u))));
    let var_4 = select(select(arg_2, vec3<bool>(_wgslsmith_clamp_u32(37639u, 0u, u_input.c) > ~var_1.x, true, all(select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_2.x, arg_0.b, false), vec3<bool>(arg_2.x, arg_2.x, arg_0.b)))), select(select(!arg_2, vec3<bool>(arg_0.b, true, arg_0.b), select(arg_2, arg_2, arg_2)), vec3<bool>(true, false, false), !select(arg_2, vec3<bool>(false, arg_3, arg_0.b), arg_2.x))), !vec3<bool>(~u_input.c <= ~1u, all(!vec4<bool>(false, arg_0.b, true, arg_0.b)), true), vec3<bool>(global0.b, select(all(!vec4<bool>(arg_0.b, false, false, arg_3)), !arg_0.b, true), false));
    return Struct_1(-(~(-arg_0.c ^ _wgslsmith_add_i32(0i, arg_0.c))), false, func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_1 + -890f), -818f, _wgslsmith_f_op_f32(arg_1 + 1179f), _wgslsmith_f_op_f32(exp2(arg_1)))))).c);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> vec4<bool> {
    global0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1554f, _wgslsmith_f_op_f32(step(1646f, -299f)), _wgslsmith_f_op_f32(-127f - 901f), 1000f))), 1276f, !(!(!vec3<bool>(global0.b, true, global0.b))), false);
    let var_0 = Struct_1(_wgslsmith_sub_i32(~2147483647i, -3589i >> (arg_2.x % 32u)) >> (arg_0.x % 32u), true, -2147483647i);
    global0 = var_0;
    global0 = func_4(func_2(vec4<f32>(794f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(553f + -448f), _wgslsmith_f_op_f32(935f * 357f))), 534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f * -944f) + _wgslsmith_div_f32(349f, 109f)))), -1710f, !select(vec3<bool>(var_0.b, false, true), vec3<bool>(true, any(vec2<bool>(true, false)), true), global0.b), func_4(Struct_1(_wgslsmith_mult_i32(~u_input.b, reverseBits(arg_1)), !func_2(vec4<f32>(537f, -933f, 224f, -1437f)).b, arg_1), _wgslsmith_f_op_f32(-1158f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1668f)))), vec3<bool>(!var_0.b, var_0.b, false | all(vec4<bool>(true, var_0.b, var_0.b, false))), !var_0.b).b);
    global0 = var_0;
    return vec4<bool>(var_0.b, global0.b, !any(vec3<bool>(global0.b, var_0.b, global0.b && false)), true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = func_4(arg_2, -164f, !(!(!(!vec3<bool>(arg_2.b, global0.b, true)))), arg_2.b | !arg_1.b);
    var var_0 = Struct_1(arg_2.c, true, -2147483647i);
    return Struct_1(-49145i, true, -(global0.a | ~func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(28958i, !all(func_1(vec3<u32>(u_input.c, 1u, u_input.a), global0.c, u_input.d)), abs(u_input.b) & select(global0.c, 1i, func_1(u_input.d, u_input.b, vec3<u32>(u_input.c, 45691u, u_input.a)).x)), func_4(Struct_1(global0.a, func_1(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), -u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(78373u, 4294967295u, 1u), u_input.d)).x, global0.c >> (u_input.c % 32u)), 682f, !select(!vec3<bool>(true, true, global0.b), !vec3<bool>(global0.b, global0.b, global0.b), any(vec3<bool>(global0.b, global0.b, global0.b))), func_4(func_4(Struct_1(u_input.b, true, -2147483647i), -302f, select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, false, global0.b), global0.b), true), _wgslsmith_f_op_f32(f32(-1f) * -827f), !(!vec3<bool>(global0.b, global0.b, false)), global0.b).b), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-871f, -221f, 161f, 975f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, 334f, 527f, 650f)), !global0.b)), vec4<f32>(1f, _wgslsmith_f_op_f32(step(725f, 275f)), _wgslsmith_f_op_f32(trunc(255f)), _wgslsmith_f_op_f32(413f * 1011f)))), 0u);
    global0 = Struct_1(~firstTrailingBit(abs(global0.a | u_input.b)), global0.b, u_input.b);
    let var_1 = true;
    var var_2 = _wgslsmith_div_f32(-300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1313f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1386f * -2095f), _wgslsmith_f_op_f32(f32(-1f) * -1228f))))) * _wgslsmith_f_op_f32(f32(-1f) * -335f)));
    let var_3 = Struct_1(_wgslsmith_mult_i32(~(-12249i), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1001f, 243f, 717f, 731f))), 1649f, !select(vec3<bool>(var_1, global0.b, var_1), vec3<bool>(true, var_1, var_0.b), vec3<bool>(true, var_0.b, var_0.b)), false).a), var_1, _wgslsmith_sub_i32(u_input.b, func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(var_3.c, -20276i, u_input.b, -2147483647i) << (vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 4294967295u) % vec4<u32>(32u))) ^ select(abs(vec4<i32>(0i, -18695i, u_input.b, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0.c, var_3.a, var_3.c), vec4<i32>(-2147483647i, global0.c, -2147483647i, 3088i)), all(vec4<bool>(var_1, var_0.b, global0.b, var_3.b))), abs(firstLeadingBit(max(vec4<i32>(20559i, 2147483647i, 21465i, var_3.c), vec4<i32>(37488i, 13584i, global0.c, 2147483647i)))), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(var_3.a, var_0.a, 1i, global0.a)), vec4<i32>(_wgslsmith_add_i32(u_input.b, -33085i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 51976i, u_input.b), vec3<i32>(global0.c, 18343i, 7776i)), u_input.b, firstLeadingBit(0i)))));
}

