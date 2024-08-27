struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
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

var<private> global0: array<Struct_2, 5>;

var<private> global1: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<u32>) -> u32 {
    return arg_2.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_4 {
    global1 = Struct_4(Struct_3(global1.b.a.x), Struct_1(global1.b.a), Struct_2(~min(-2147483647i ^ global1.c.a, reverseBits(u_input.a)), true, Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(28129i, -2147483647i), -arg_2.d.a, vec2<i32>(global1.e.a, -1i) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.a.x, 1i), vec2<i32>(global1.c.a, global1.b.a.x)), ~6355i))), vec3<f32>(852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-946f))))), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-311f, global1.d.x, arg_1.x))))), global1.a);
    global0 = array<Struct_2, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global1.d.x)), global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -703f))))), all(!(!vec3<bool>(false, false, arg_2.b))) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + global1.d.x)) <= global1.d.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 891f));
    let var_2 = Struct_4(global1.e, arg_2.d, Struct_2(arg_2.d.a.x, true, global1.b, global1.c.c), global1.d, global1.e);
    return var_2;
}

fn func_3() -> vec4<bool> {
    let var_0 = ~u_input.b;
    let var_1 = Struct_2(-select(-global1.c.d.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(14667i, -26774i, -1i), vec3<i32>(-2147483647i, u_input.a, 0i)), -vec3<i32>(u_input.a, u_input.a, u_input.d)), !select(false, true, true)), true, global1.b, func_2(abs(firstLeadingBit(vec4<u32>(var_0.x, 1u, u_input.c, var_0.x))), vec4<bool>(false, true, select(any(vec2<bool>(false, true)), true, true), 38984u >= ~var_0.x), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15951u, 1u, var_0.x), ~vec4<u32>(u_input.c, 59582u, 0u, 9802u), ~vec4<u32>(52731u, 0u, 35764u, u_input.c)), vec4<bool>(true, true, true, true), func_2(vec4<u32>(52642u, 52883u, 4294967295u, u_input.b.x), select(vec4<bool>(true, false, false, global1.c.b), vec4<bool>(global1.c.b, global1.c.b, false, true), true), func_2(vec4<u32>(10387u, 69790u, u_input.b.x, var_0.x), vec4<bool>(true, global1.c.b, global1.c.b, false), global1.c).c).c).c).b);
    global1 = Struct_4(func_2(vec4<u32>(131651u, 42897u, reverseBits(_wgslsmith_mult_u32(1u, 7102u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, 29041u, var_0.x))), vec4<bool>(true, all(select(vec2<bool>(true, global1.c.b), vec2<bool>(global1.c.b, var_1.b), vec2<bool>(global1.c.b, global1.c.b))), any(vec2<bool>(var_1.b, var_1.b)), true), var_1).e, Struct_1(func_2(vec4<u32>(124215u, 1u, var_0.x, u_input.b.x), !select(vec4<bool>(false, var_1.b, false, global1.c.b), vec4<bool>(false, var_1.b, var_1.b, global1.c.b), true), Struct_2(max(u_input.d, var_1.d.a.x), var_1.b, func_2(vec4<u32>(var_0.x, var_0.x, var_0.x, 36582u), vec4<bool>(var_1.b, false, global1.c.b, false), Struct_2(-2147483647i, true, var_1.d, var_1.c)).b, func_2(vec4<u32>(var_0.x, 30989u, var_0.x, 1u), vec4<bool>(var_1.b, global1.c.b, false, var_1.b), var_1).c.d)).c.d.a), Struct_2(~_wgslsmith_div_i32(u_input.a, reverseBits(-47175i)), global1.c.b, func_2(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(var_0, u_input.b), abs(32462u), ~u_input.c), vec4<bool>(any(vec3<bool>(false, true, false)), true, var_1.b != true, false & global1.c.b), func_2(vec4<u32>(75766u, 4294967295u, 1u, var_0.x), vec4<bool>(true, var_1.b, true, global1.c.b), Struct_2(var_1.d.a.x, false, global1.c.d, var_1.c)).c).c.c, func_2(vec4<u32>(u_input.c, var_0.x, 1u, abs(var_0.x)), select(!vec4<bool>(global1.c.b, global1.c.b, true, false), !vec4<bool>(false, var_1.b, false, var_1.b), false), func_2(vec4<u32>(1u, 0u, u_input.c, 4294967295u) & vec4<u32>(1u, u_input.b.x, 0u, 18540u), !vec4<bool>(global1.c.b, global1.c.b, false, var_1.b), func_2(vec4<u32>(103810u, var_0.x, 93743u, 13750u), vec4<bool>(true, global1.c.b, var_1.b, var_1.b), Struct_2(-1i, false, Struct_1(vec2<i32>(-49588i, 1i)), var_1.d)).c).c).c.d), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(global1.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1934f * -357f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.d, global1.d) + vec3<f32>(-872f, 1545f, global1.d.x)))))), func_2(vec4<u32>(reverseBits(4294967295u), 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 25476u, 46995u), vec3<u32>(4294967295u, 116053u, 145386u)), ~var_0.x), var_0.x), vec4<bool>(all(select(vec4<bool>(false, false, var_1.b, true), vec4<bool>(true, false, false, true), vec4<bool>(var_1.b, global1.c.b, global1.c.b, global1.c.b))), var_1.b || false, var_1.b, true), global0[_wgslsmith_index_u32(~(var_0.x ^ _wgslsmith_mult_u32(u_input.c, 84402u)), 5u)]).e);
    global1 = func_2(firstTrailingBit(select(~(~vec4<u32>(u_input.b.x, 14014u, u_input.c, 17959u)), countOneBits(reverseBits(vec4<u32>(u_input.c, var_0.x, 8916u, 15681u))), var_1.b)), !(!select(!vec4<bool>(global1.c.b, true, var_1.b, false), !vec4<bool>(global1.c.b, false, true, false), !vec4<bool>(var_1.b, true, false, false))), Struct_2(~abs(1i), var_1.b, var_1.c, global1.c.d));
    let var_2 = global1.d.x;
    return vec4<bool>(all(vec2<bool>(true, all(!vec3<bool>(var_1.b, global1.c.b, true)))), _wgslsmith_f_op_f32(f32(-1f) * -331f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-919f)) * _wgslsmith_f_op_f32(select(225f, -1191f, any(vec2<bool>(true, false))))), true, all(vec2<bool>(false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(49218i, global1.b.a.x, -2147483647i, global1.e.a), vec4<i32>(global1.c.c.a.x, global1.a.a, u_input.a, u_input.d)) >> (firstTrailingBit(4294967295u) % 32u)), u_input.a);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.b.x), ~_wgslsmith_div_u32(func_1(global0[_wgslsmith_index_u32(40706u, 5u)], vec2<i32>(-9188i, 21572i), vec2<u32>(51525u, 1u)), _wgslsmith_mult_u32(1u, 47605u))) & u_input.b;
    global1 = func_2(vec4<u32>(abs(0u), u_input.c, 1u, ~21817u) & vec4<u32>(select(1u, 7598u, any(vec4<bool>(global1.c.b, false, false, global1.c.b))), ~(~77943u), (u_input.b.x & 0u) | (6899u >> (u_input.b.x % 32u)), 0u), !vec4<bool>(true, global1.c.b, all(vec2<bool>(global1.c.b, global1.c.b)), false), Struct_2(~u_input.d | (global1.a.a ^ global1.c.c.a.x), global1.c.b, global1.c.c, global1.b));
    global1 = func_2(vec4<u32>(u_input.b.x, ~(~_wgslsmith_clamp_u32(u_input.c, var_1.x, u_input.c)), var_1.x, var_1.x), select(select(func_3(), vec4<bool>(global1.c.b, global1.c.b || global1.c.b, false, global1.c.b), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(~vec4<u32>(u_input.b.x, u_input.c, var_1.x, 1u), vec4<bool>(false, global1.c.b, false, true), Struct_2(-13550i, false, Struct_1(vec2<i32>(0i, u_input.d)), Struct_1(vec2<i32>(-42764i, global1.e.a)))).c.b, false, false, global1.c.b), !func_3().x), Struct_2(1i, all(vec4<bool>(global1.c.b && global1.c.b, func_3().x, true, global1.c.b)), global1.b, func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(106841u, u_input.c, 52294u, var_1.x), vec4<u32>(var_1.x, var_1.x, 10589u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, u_input.c), vec4<u32>(4294967295u, 3667u, 50239u, u_input.b.x)) % vec4<u32>(32u)), vec4<bool>(true, global1.c.b, true, global1.c.b), Struct_2(-1474i, true, func_2(vec4<u32>(var_1.x, u_input.b.x, 19692u, 3442u), vec4<bool>(true, false, true, global1.c.b), global1.c).c.d, func_2(vec4<u32>(79532u, var_1.x, var_1.x, u_input.b.x), vec4<bool>(global1.c.b, global1.c.b, true, global1.c.b), Struct_2(u_input.d, true, global1.c.c, global1.b)).b)).b));
    let var_2 = firstTrailingBit(vec4<i32>(global1.b.a.x, _wgslsmith_add_i32(-2147483647i, 0i), -max(u_input.d, 22005i), ~(global1.a.a & global1.e.a)) >> (~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, 5900u, u_input.b.x), vec4<u32>(139373u, var_1.x, u_input.c, 29869u)) >> (vec4<u32>(u_input.c, var_1.x, 72623u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_mod_i32(-2485i, 17404i));
    let var_4 = -260f;
    var var_5 = vec2<f32>(951f, _wgslsmith_f_op_f32(1558f * _wgslsmith_f_op_f32(max(global1.d.x, global1.d.x))));
    var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1729f), _wgslsmith_f_op_f32(-1366f + -1000f), global1.c.b)))), _wgslsmith_f_op_f32(742f + func_2(~vec4<u32>(7361u, 1u, var_1.x, 1u), func_3(), func_2(vec4<u32>(var_1.x, var_1.x, u_input.b.x, var_1.x), vec4<bool>(true, true, global1.c.b, global1.c.b), Struct_2(0i, global1.c.b, Struct_1(vec2<i32>(30617i, -1i)), Struct_1(global1.c.c.a))).c).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer((select(~vec3<u32>(var_1.x, u_input.c, u_input.b.x), max(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(var_1.x, u_input.c, 29596u)), global1.c.b != false) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, 44229u), reverseBits(vec3<u32>(var_1.x, u_input.c, var_1.x)))) >> (vec3<u32>(_wgslsmith_mod_u32(~18300u, var_1.x), (14390u << (u_input.c % 32u)) ^ ~u_input.c, u_input.b.x | ~14u) % vec3<u32>(32u)));
}

