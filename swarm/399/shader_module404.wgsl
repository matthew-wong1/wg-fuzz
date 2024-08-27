struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = ~(~(-_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.c, 2147483647i), ~vec2<i32>(global0.b.b.a, -23760i))));
    let var_1 = arg_0.b;
    let var_2 = select(!all(vec2<bool>(var_1.b.d, 0u >= var_1.b.e.x)), select(all(vec2<bool>(any(vec2<bool>(false, true)), arg_1 < arg_1)), all(!(!vec4<bool>(false, arg_0.b.c.b.d, true, true))), true), firstLeadingBit(_wgslsmith_div_i32(var_0.x, 0i & u_input.b)) < var_0.x);
    let var_3 = _wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, 8041i) >> (vec2<u32>(31749u, var_1.b.c) % vec2<u32>(32u))), max(select(~vec2<i32>(global0.b.b.a, 10835i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.b.b, u_input.b), vec2<i32>(var_0.x, 0i), vec2<i32>(-1i, var_0.x)), !vec2<bool>(arg_2.a.c.d, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(81916i, global0.b.b.a) | vec2<i32>(arg_0.a, var_1.c.b.b), vec2<i32>(u_input.b, 7293i)))) <= _wgslsmith_mod_i32(-reverseBits(var_0.x) ^ firstLeadingBit(41681i), arg_0.a << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(303u, 31059u, 0u, global0.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, arg_0.c.x, 0u, u_input.c.x), vec4<u32>(arg_2.b.e.x, arg_2.b.e.x, arg_2.a.c.e.x, 55574u))) % 32u));
    let var_4 = arg_0;
    return select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.b.c, var_1.c.a.a.c, 1u) | vec3<u32>(4294967295u, arg_0.b.b.c, 1u), vec3<u32>(62717u, 19784u, u_input.d)), ~_wgslsmith_div_u32(global0.b.c.a.a.e.x, 0u)), _wgslsmith_add_u32(select(_wgslsmith_sub_u32(arg_0.c.x, 1u), ~64511u, true), 1u), all(vec2<bool>(any(vec3<bool>(arg_2.a.c.d, false, true)), arg_2.a.c.d))) >> ((reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.c.xz, vec2<u32>(var_1.b.c, 0u)), ~18051u)) >> (firstTrailingBit(arg_0.c.x ^ ~1u) % 32u)) % 32u);
}

fn func_2() -> Struct_3 {
    let var_0 = global0.b.c;
    global0 = Struct_5(var_0.a.a.a, global0.b, ~(~vec3<u32>(var_0.a.c.e.x << (var_0.a.b.x % 32u), func_3(Struct_5(6228i, Struct_4(-250i, global0.b.c.b, Struct_3(var_0.a, var_0.a.a, 8658i)), global0.c), 619f, global0.b.c), 4294967295u)));
    global0 = Struct_5(u_input.b, global0.b, global0.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1034f, -466f)), -373f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1000f, -1321f), vec3<f32>(429f, 1000f, -325f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-200f, 1255f, -1962f))), vec3<f32>(-1824f, 1821f, 1590f))))));
    let var_2 = !(~(32298u & _wgslsmith_add_u32(var_0.a.b.x, 74619u)) > countOneBits(1u));
    return Struct_3(Struct_2(Struct_1(~(i32(-1i) * -1i), 31418i, 4294967295u, true, _wgslsmith_clamp_vec2_u32(abs(global0.c.yx), ~var_0.b.e, u_input.c)), vec2<u32>(global0.c.x, u_input.a.x), var_0.b), Struct_1(max(var_0.b.b, ~select(1i, var_0.a.a.a, true)), 2147483647i, _wgslsmith_sub_u32(12172u, ~global0.c.x) ^ func_3(Struct_5(u_input.b, Struct_4(-27991i, global0.b.c.b, global0.b.c), vec3<u32>(4294967295u, var_0.a.b.x, 40988u)), _wgslsmith_f_op_f32(step(var_1.x, 195f)), global0.b.c), false, var_0.b.e >> (((global0.b.b.e | var_0.a.a.e) & var_0.b.e) % vec2<u32>(32u))), ~countOneBits(-select(u_input.b, -1301i, var_2)));
}

fn func_1() -> Struct_5 {
    global0 = Struct_5(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 2147483647i), vec2<i32>(global0.a, -3241i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-87258i, 2147483647i), firstLeadingBit(~vec2<i32>(u_input.b, u_input.b)))), Struct_4(0i, global0.b.c.b, func_2()), (~u_input.e ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(9316u, global0.c.x, 300u), vec3<u32>(u_input.a.x, 11035u, global0.b.b.c), vec3<u32>(global0.c.x, u_input.e.x, global0.b.c.b.c) | global0.c)) ^ global0.c);
    var var_0 = !(!vec2<bool>(any(vec3<bool>(global0.b.b.d, global0.b.b.d, false)), true | (u_input.d != global0.b.c.b.e.x)));
    let var_1 = true;
    var var_2 = true;
    var var_3 = !(!(!vec4<bool>(!var_1, all(vec2<bool>(true, false)), true, true)));
    return Struct_5(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i ^ u_input.b, -1i, firstTrailingBit(44608i)), -vec3<i32>(u_input.b, u_input.b, u_input.b)), -(~(global0.b.b.b >> (25067u % 32u)))), Struct_4(~global0.b.a, Struct_1(_wgslsmith_sub_i32(firstTrailingBit(43798i), global0.a), _wgslsmith_mult_i32(u_input.b, global0.a), _wgslsmith_add_u32(abs(13205u), global0.c.x), false, u_input.a), Struct_3(Struct_2(func_2().b, ~vec2<u32>(u_input.d, 4294967295u), Struct_1(u_input.b, global0.a, u_input.a.x, var_1, u_input.c)), func_2().a.c, _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, 1i, -19073i, u_input.b), vec4<i32>(global0.a, -24250i, u_input.b, -2147483647i), false), vec4<i32>(u_input.b, u_input.b, global0.a, 11671i)))), reverseBits(vec3<u32>(4294967295u, 61127u, countOneBits(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global0.b.b;
    var var_1 = global0.b;
    var var_2 = func_2().b;
    let var_3 = var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(1i, global0.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.b, var_3.a.a, 63725i, 17772i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, var_3.a.b, 2147483647i, u_input.b), vec4<i32>(-44611i, global0.b.b.b, var_3.a.a, global0.b.b.a), vec4<i32>(global0.b.a, 25558i, u_input.b, -33779i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(7348i, -33021i), vec2<i32>(var_1.c.b.a, 40438i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1759f)))), u_input.e.x, 2147483647i, ~(~(~vec3<u32>(u_input.e.x, 1u, 74169u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.e.x, 4294967295u, var_0.e.x) ^ u_input.e, vec3<u32>(var_2.e.x, 59465u, 0u), ~vec3<u32>(1u, 6026u, u_input.e.x)) % vec3<u32>(32u))));
}

