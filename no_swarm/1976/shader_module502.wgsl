struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, true, false), Struct_1(false, true, false), Struct_1(true, true, false), Struct_1(true, false, false), Struct_1(true, false, true), Struct_1(false, true, true), Struct_1(false, true, true), Struct_1(true, true, false), Struct_1(false, false, true), Struct_1(true, true, false), Struct_1(false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = abs(-(~(-(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b) & vec4<i32>(2147483647i, -27354i, u_input.a, 0i)))));
    return vec2<bool>(!(all(vec4<bool>(false, false, false, true)) && true), false);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = select(vec3<bool>(!any(!vec4<bool>(arg_2.x, arg_1.x, true, false)), true, all(arg_2) && !(!arg_2.x)), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(arg_1.x, arg_2.x || arg_1.x, arg_1.x)), true, true || arg_1.x));
    let var_1 = arg_1.x;
    let var_2 = Struct_3(countOneBits(vec4<i32>(2147483647i, -29710i, -(u_input.a << (36376u % 32u)), -17741i)), Struct_2(Struct_1(!(u_input.c < 1u), select(false, func_3().x, u_input.c > 0u), arg_0.x <= arg_0.x), arg_0, reverseBits(10435u)), 0u, _wgslsmith_sub_i32((u_input.b & 0i) & countOneBits(countOneBits(u_input.b)), u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.e, 69365u), _wgslsmith_div_vec3_u32(vec3<u32>(60199u, 90038u, u_input.e), vec3<u32>(u_input.c, 41544u, u_input.e))) | _wgslsmith_add_u32(u_input.e, ~u_input.c)), 11u)]);
    return firstLeadingBit(-2147483647i);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = Struct_3(vec4<i32>(countOneBits(_wgslsmith_sub_i32(u_input.a, u_input.d.x)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1892f, 560f)), func_3(), vec2<bool>(true, true)) >> ((_wgslsmith_clamp_u32(u_input.e, u_input.c, 45432u) ^ ~4294967295u) % 32u), -1i, ~17299i), Struct_2(Struct_1(arg_0, !arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-841f, -369f)))), u_input.e), (~u_input.c << (40866u % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(2717u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 1u, 0u), vec4<u32>(88311u, 1u, 10360u, u_input.e))), vec3<u32>(u_input.e, firstTrailingBit(4294967295u), 0u)), u_input.b | u_input.a, global0[_wgslsmith_index_u32(1u, 11u)]);
    let var_1 = !(!(!(!vec2<bool>(false, arg_0))));
    let var_2 = func_3();
    return var_0.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -_wgslsmith_clamp_i32(u_input.d.x, -1i, 19907i), -4398i, _wgslsmith_sub_i32(u_input.b, -1i)), -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -1i, u_input.b, u_input.b), vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, u_input.a)), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.d.x))), reverseBits(countOneBits(-vec4<i32>(-2147483647i, 0i, u_input.d.x, u_input.a))), arg_1.b);
    global0 = array<Struct_1, 11>();
    var var_1 = Struct_3(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mult_i32(var_0.x, -12814i), -26162i, select(15169i, u_input.d.x, true), -2147483647i), func_2(all(!select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, arg_1.a)))), 3721u, _wgslsmith_div_i32(u_input.d.x, firstTrailingBit(_wgslsmith_sub_i32(func_4(vec2<f32>(1270f, 1082f), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, false)), abs(u_input.b)))), func_2(any(select(vec3<bool>(true, true, arg_1.a), !vec3<bool>(true, arg_1.a, arg_1.c), true || arg_1.b))).a);
    return Struct_3(~vec4<i32>(var_0.x, 11951i, 1i, 1i), var_1.b, ~_wgslsmith_mod_u32(~var_1.c, ~_wgslsmith_div_u32(10087u, u_input.c)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_0), 40546i), func_2(var_1.b.a.b && !(!var_1.b.a.c)).a);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = ~u_input.e;
    global0 = array<Struct_1, 11>();
    var var_1 = Struct_2(Struct_1(select(arg_0.b.a.b, arg_0.b.a.c, arg_0.e.b), false & (!arg_0.e.c || arg_0.b.a.b), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.b) - vec2<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(exp2(arg_0.b.b.x)))), ~(~1u));
    let var_2 = func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(4294967295u, 3221u), 20637u, 4294967295u), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(42762u, 31119u, 0u, var_1.c), vec4<u32>(arg_0.b.c, u_input.e, arg_0.c, u_input.e), vec4<u32>(60224u, arg_0.c, 1u, var_1.c)))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(var_1.c, u_input.c, u_input.c, arg_0.b.c), vec4<u32>(u_input.c, u_input.e, var_1.c, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, var_1.c, 0u, 37072u), vec4<u32>(31159u, 30171u, u_input.e, arg_0.c))) | ~vec4<u32>(u_input.c, var_1.c, var_1.c, u_input.e)), Struct_1(false, false, select(arg_0.e.a, !any(vec4<bool>(arg_0.e.a, false, false, arg_0.b.a.b)), func_1(vec4<u32>(arg_0.c, var_1.c, 4294967295u, u_input.c), global0[_wgslsmith_index_u32(var_1.c, 11u)]).b.b.x != -1000f)));
    let var_3 = var_2;
    return arg_0;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    var var_0 = -1097f;
    var var_1 = i32(-1i) * -(~_wgslsmith_sub_i32(~(-20813i), -42620i | u_input.a));
    var_0 = arg_2.b.b.x;
    var var_2 = _wgslsmith_sub_vec2_u32(~arg_0, vec2<u32>(_wgslsmith_clamp_u32(0u, ~select(37764u, 41857u, true), 0u), ~func_5(func_1(vec4<u32>(arg_2.c, arg_0.x, u_input.e, arg_0.x), arg_2.e)).b.c));
    var var_3 = u_input.d;
    return all(!vec3<bool>(true, false, func_2(arg_2.e.c).a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-867f + 1576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(963f + -602f) + _wgslsmith_f_op_f32(304f + -489f)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(244f)) - -2437f)))) && !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1483f - 1032f), 904f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(513f + -830f))));
    var var_1 = vec4<u32>(~40433u, u_input.c, ~4294967295u, u_input.c);
    var var_2 = vec3<bool>(func_6(~var_1.wz >> (abs(var_1.zy) % vec2<u32>(32u)), (vec4<u32>(70086u, u_input.e, var_1.x, 1u) | vec4<u32>(4294967295u, 1u, var_1.x, 40340u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, var_1.x, var_1.x), countOneBits(vec4<u32>(u_input.e, 1u, u_input.e, u_input.c))), func_5(func_1(~vec4<u32>(var_1.x, 94575u, 6174u, var_1.x), Struct_1(false, false, true)))), all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_1.x != u_input.e), true)), true);
    let var_3 = func_5(Struct_3(reverseBits(~vec4<i32>(-17253i, -2147483647i, u_input.d.x, 1470i)), Struct_2(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(596f, 821f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 1214f) - vec2<f32>(-966f, 1000f))), ~var_1.x), 0u, 1i >> ((~19930u | (var_1.x & 4294967295u)) % 32u), global0[_wgslsmith_index_u32((var_1.x & _wgslsmith_div_u32(0u, 1u)) ^ func_2(select(var_2.x, var_2.x, true)).c, 11u)])).b.a;
    var_0 = true;
    var var_4 = func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36759u & u_input.c, var_1.x << (1u % 32u), countOneBits(u_input.c), u_input.e), vec4<u32>(~u_input.c, var_1.x | 21173u, firstTrailingBit(var_1.x), _wgslsmith_mod_u32(1u, u_input.e)), vec4<u32>(abs(53749u), func_1(vec4<u32>(4294967295u, 17132u, var_1.x, 23299u), Struct_1(var_3.c, var_3.b, var_3.b)).c, firstLeadingBit(u_input.e), ~0u)), (vec4<u32>(u_input.e, var_1.x, var_1.x, u_input.e) ^ vec4<u32>(7517u, 4294967295u, 3466u, 1u)) << (vec4<u32>(var_1.x, u_input.e, 81758u, var_1.x) % vec4<u32>(32u))), func_1(abs(~vec4<u32>(u_input.e, var_1.x, u_input.c, 0u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~10111u, firstLeadingBit(1u)), 11u)]).e);
    let var_5 = _wgslsmith_mult_i32(-min(abs(-2147483647i), 1i), u_input.d.x);
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -500f);
    var var_7 = func_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 19168u, var_4.b.c, var_4.b.c), vec4<u32>(19499u, var_4.c, u_input.c, var_1.x) & vec4<u32>(6320u, 8268u, 10114u, var_1.x)) ^ select(~vec4<u32>(u_input.c, u_input.e, var_4.b.c, 24633u), vec4<u32>(5852u, var_1.x, 15463u, var_4.b.c), var_2.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.c, 13532u, var_1.x), countOneBits(~vec4<u32>(u_input.e, u_input.c, 0u, u_input.e)))), Struct_1(any(!vec3<bool>(var_4.e.a, var_2.x, var_4.e.c)), true, true)).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.b, u_input.d, _wgslsmith_clamp_vec4_i32(var_4.a, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-3994i, -1i, -276i, u_input.a), var_4.a), ~(-var_4.a)) << (~vec4<u32>(var_1.x, var_4.c, ~67508u, abs(var_1.x)) % vec4<u32>(32u)), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b | 42659i, ~(-1026i)), -4708i | _wgslsmith_dot_vec3_i32(var_4.a.wwz, vec3<i32>(-4026i, var_5, var_5)), _wgslsmith_mod_i32(5329i, -1i)));
}

