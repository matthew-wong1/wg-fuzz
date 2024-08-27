struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> bool {
    return arg_2.c;
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_5(0u, Struct_2(Struct_1(79486u)));
    var var_1 = Struct_3(var_0.b, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true)), vec3<bool>(!(1i != reverseBits(u_input.a)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(35046u, var_0.a, var_0.b.a.a), vec3<u32>(var_0.b.a.a, 0u, var_0.b.a.a))) != (34855u >> (var_0.a % 32u)), true || all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false))));
    global0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0));
    var_1 = Struct_3(Struct_2(var_0.b.a), !(all(!vec4<bool>(var_1.b, true, false, false)) | (var_1.a.a.a >= _wgslsmith_add_u32(1u, 109045u))), vec3<bool>(var_1.b, false, var_1.c.x));
    let var_2 = Struct_2(var_0.b.a);
    return abs(var_2.a.a) >> (~select(10858u, var_0.a, var_1.b) % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_1.a;
    var var_1 = any(!select(select(select(arg_0.c, arg_0.c, true), arg_0.c, arg_0.c), vec3<bool>(arg_0.c.x, true, !arg_0.b), all(arg_0.c) | (true & arg_0.c.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1562f, 1652f)));
    let var_3 = Struct_1(28288u >> (_wgslsmith_mod_u32(func_3(-1205f), func_3(var_2) | arg_0.a.a.a) % 32u));
    let var_4 = Struct_4(-2147483647i, firstLeadingBit(var_3.a), !(abs(var_3.a) == ~0u) | any(select(!vec4<bool>(true, arg_0.c.x, arg_0.b, arg_0.c.x), select(vec4<bool>(arg_0.c.x, true, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.c.x, arg_0.c.x, false), arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, false, false))), _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(19051i, u_input.a, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, -1i, u_input.a, u_input.b.x)), select(vec4<i32>(u_input.a, select(2147483647i, u_input.a, false), u_input.b.x, -16424i), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 38642i, u_input.a)), vec4<i32>(8248i, -404i, -2147483647i, u_input.b.x)), arg_0.c.x)), arg_0.a.a);
    return 34007u;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_5) -> Struct_5 {
    var var_0 = Struct_3(arg_2.b, true, vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(var_0.a, all(vec2<bool>(false, var_0.c.x)), !var_0.c);
    let var_2 = arg_0.x | -45605i;
    let var_3 = vec4<bool>(var_0.c.x, countOneBits(~(~var_0.a.a.a)) > 4294967295u, var_0.b, var_0.b && var_0.b);
    let var_4 = Struct_1(_wgslsmith_add_u32(reverseBits(0u), 4294967295u));
    return Struct_5(4294967295u, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~(~(~_wgslsmith_mod_u32(1u, 5590u))), 1u);
    var var_1 = !select(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(func_1(vec2<bool>(true, true), reverseBits(5736u), Struct_4(u_input.a, 17233u, false, vec4<i32>(5178i, -1i, -3602i, u_input.b.x), Struct_1(19536u))), false), vec2<bool>(true, true));
    let var_2 = func_4(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 3296i, u_input.b.x, -1i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, 0i)), vec4<i32>(1i, 1i, 1i, 1i))) >> (~(~(~vec4<u32>(1u, 102520u, 4294967295u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(66907u, 0u, 81219u, 1u), vec4<u32>(54254u, 1u, 43934u, 0u)), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), 18320u, ~1u), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(26795u, 1u, 1u), vec3<u32>(54601u, 0u, 14095u), vec3<u32>(1u, 52574u, 67167u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13303u, 18250u, 1u, 1u), vec4<u32>(4294967295u, 85298u, 46596u, 0u)), ~44152u, 52606u))), Struct_5(~func_2(Struct_3(Struct_2(Struct_1(37832u)), false, vec3<bool>(true, false, var_1.x)), Struct_1(33755u), ~vec4<u32>(1u, 0u, 4294967295u, 18225u)), Struct_2(Struct_1(~27905u))));
    var var_3 = Struct_3(Struct_2(Struct_1(var_2.b.a.a)), true, vec3<bool>(func_1(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x)), vec2<bool>(false, var_1.x), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x))), var_2.b.a.a, Struct_4(~52523i, ~var_2.a, false, vec4<i32>(u_input.a, u_input.b.x, -9991i, u_input.a), var_2.b.a)), any(vec2<bool>(all(vec4<bool>(false, false, var_1.x, var_1.x)), var_1.x)), !(!var_1.x)));
    let var_4 = var_3.b;
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(252f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_6 = !vec4<bool>(true, true, false, any(select(select(var_3.c.yz, var_3.c.yx, true), !vec2<bool>(true, var_1.x), var_3.b & true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a, -27118i), -u_input.b.x) & -select(vec3<i32>(-41471i, u_input.b.x, 21499i), vec3<i32>(u_input.b.x, -1i, u_input.a), var_6.yyx), select(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i), !vec3<bool>(true, true, var_6.x)) ^ vec3<i32>(u_input.b.x, countOneBits(-1i), 0i)), -(~(-43018i ^ u_input.a)), var_3.a.a.a, _wgslsmith_mod_vec4_i32(select(abs(countOneBits(vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x))), firstTrailingBit(-vec4<i32>(2266i, 1824i, u_input.a, 1i)), any(select(var_6, vec4<bool>(true, var_1.x, var_1.x, var_3.b), var_6))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(u_input.b.x, 1i, -1i, u_input.a)), vec4<i32>(-30735i, _wgslsmith_div_i32(42114i, u_input.a), abs(u_input.b.x), i32(-1i) * -6673i))));
}

