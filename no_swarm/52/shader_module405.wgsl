struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(17711i, i32(-2147483648), 1i, 0i, -10835i);

var<private> global1: u32 = 34589u;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global1 = u_input.c;
    global2 = !vec2<bool>(global2.x, firstTrailingBit(29675u) > u_input.a);
    let var_0 = vec3<u32>(_wgslsmith_div_u32(u_input.a, 0u), u_input.a, u_input.c ^ 150855u);
    return vec4<bool>(!all(vec2<bool>(false | global2.x, all(vec2<bool>(true, global2.x)))), !(~var_0.x != ~1u), any(select(select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(false, false, global2.x, global2.x)), !select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, false, global2.x, true), vec4<bool>(true, global2.x, global2.x, true)), vec4<bool>(false, false, global2.x & global2.x, select(global2.x, false, false)))), !global2.x);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = select(vec4<bool>(any(vec3<bool>(select(false, global2.x, false), !global2.x, false)), true, global2.x, global2.x), select(!select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(true, true, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), false), !vec4<bool>(global2.x, global2.x, false, global2.x)), vec4<bool>(global2.x, all(!vec4<bool>(false, false, global2.x, true)), true, (i32(-1i) * -15784i) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 5606i, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<i32>(u_input.b, 2147483647i, -30922i))), !select(!vec4<bool>(global2.x, global2.x, global2.x, true), select(vec4<bool>(false, false, false, global2.x), vec4<bool>(global2.x, true, true, global2.x), true), true)), func_3());
    var_0 = !(!vec4<bool>(!var_0.x, false, firstLeadingBit(u_input.b) >= (global0[_wgslsmith_index_u32(4294967295u, 5u)] << (1u % 32u)), func_3().x));
    let var_1 = Struct_2(u_input.b, select(!vec2<bool>(func_3().x, false), select(!vec2<bool>(global2.x, var_0.x), !func_3().zx, !(true == global2.x)), true), var_0.yw);
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b | var_1.a, 1i), reverseBits(~arg_0.b), vec2<i32>(0i, -2147483647i))) & vec2<i32>(-(var_1.a << (0u % 32u)) | _wgslsmith_sub_i32(arg_0.b.x, i32(-1i) * -17567i), firstLeadingBit(min(2147483647i, 34877i)));
    global0 = array<i32, 5>();
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global0 = array<i32, 5>();
    var var_0 = ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 5u)]), abs(-59368i), -5336i, global0[_wgslsmith_index_u32(u_input.d & u_input.a, 5u)]), ~firstLeadingBit(vec4<i32>(arg_1.a, 2147483647i, u_input.b, 5899i))), vec4<i32>(u_input.b, abs(-33023i) >> (u_input.c % 32u), u_input.b, min(0i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]))));
    let var_1 = Struct_4(Struct_1(arg_0.yzw), min(firstTrailingBit(_wgslsmith_mod_i32(-var_0.x, _wgslsmith_div_i32(u_input.b, -16647i))), arg_1.a), ~vec3<u32>(37610u, 0u, ~u_input.d), global0[_wgslsmith_index_u32(~u_input.d, 5u)] | -(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(73586u, 5u)], 24635i)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 48202u) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, 29182u)) % vec2<u32>(32u)), vec2<u32>(1u, ~u_input.d) & vec2<u32>(61910u, reverseBits(u_input.d)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(0u, 1u)), vec2<u32>(1u, 4294967295u) >> (vec2<u32>(u_input.d, 30341u) % vec2<u32>(32u)))));
    var var_2 = arg_1.a;
    let var_3 = countOneBits(var_1.e);
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    global0 = array<i32, 5>();
    var var_0 = !select(vec3<bool>(all(vec3<bool>(false, true, true)), arg_1.a.a.x, all(select(arg_2.a.a, vec3<bool>(false, arg_2.a.a.x, arg_1.a.a.x), arg_0))), !arg_2.a.a, !select(vec3<bool>(true, true, true), !arg_0, all(vec3<bool>(true, false, global2.x))));
    var var_1 = Struct_1(!select(!arg_2.a.a, func_3().yzz, arg_2.a.a.x));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f - 352f)))));
    var var_3 = arg_2.a;
    return arg_1;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    var var_0 = func_5(select(vec3<bool>(false, func_4(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, false, global2.x, true), arg_0), func_2(Struct_3(u_input.b, vec2<i32>(1i, 2147483647i))), vec3<bool>(true, false, false)), true | arg_0), select(!select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, false, true), arg_0), func_3().yzz, true), !select(!vec3<bool>(true, global2.x, true), vec3<bool>(false, global2.x, global2.x), false)), Struct_4(Struct_1(vec3<bool>(global2.x != global2.x, true, false)), 1i, ~vec3<u32>(u_input.a, firstTrailingBit(u_input.c), ~u_input.c), -48963i, firstLeadingBit(_wgslsmith_sub_vec2_u32(select(vec2<u32>(36871u, u_input.a), vec2<u32>(u_input.a, u_input.d), true), vec2<u32>(u_input.c, u_input.d)))), Struct_4(Struct_1(vec3<bool>(true, true, global2.x | global2.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, 0i), 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 5u)], 10295i), firstLeadingBit(vec3<u32>(u_input.a, countOneBits(41283u), ~17075u)), u_input.b, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(50648u, 33899u), ~vec2<u32>(u_input.a, 1u))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_0.e.x), _wgslsmith_mod_u32(~4294967295u, ~var_0.c.x), reverseBits(45372u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 32685u, 4294967295u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.c.x, 42864u, var_0.e.x), vec4<u32>(var_0.c.x, 0u, u_input.c, var_0.e.x), vec4<u32>(1u, 1u, var_0.e.x, var_0.c.x))) | var_0.c.x) >> (22266u % 32u);
    let var_2 = vec2<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-22123i, 30351i, global0[_wgslsmith_index_u32(41177u, 5u)], global0[_wgslsmith_index_u32(54839u, 5u)]), max(vec4<i32>(0i, 5197i, 23524i, 3450i), vec4<i32>(var_0.d, -1i, 0i, var_0.b)))) >> (func_5(vec3<bool>(var_0.a.a.x, !var_0.a.a.x, all(vec4<bool>(false, false, true, false))), func_5(func_3().wxx, func_5(var_0.a.a, Struct_4(Struct_1(var_0.a.a), global0[_wgslsmith_index_u32(4294967295u, 5u)], var_0.c, u_input.b, vec2<u32>(u_input.a, u_input.d)), Struct_4(var_0.a, u_input.b, var_0.c, -2147483647i, var_0.e)), Struct_4(var_0.a, global0[_wgslsmith_index_u32(var_0.c.x, 5u)], var_0.c, global0[_wgslsmith_index_u32(561u, 5u)], var_0.c.yx)), func_5(select(vec3<bool>(arg_0, true, true), var_0.a.a, true), Struct_4(Struct_1(vec3<bool>(false, false, true)), 2147483647i, var_0.c, u_input.b, var_0.e), func_5(vec3<bool>(arg_0, false, false), Struct_4(Struct_1(var_0.a.a), global0[_wgslsmith_index_u32(0u, 5u)], var_0.c, 76249i, vec2<u32>(var_1, var_0.e.x)), Struct_4(var_0.a, -2147483647i, var_0.c, 47835i, vec2<u32>(30591u, var_0.c.x))))).e.x % 32u), -1i);
    var_0 = Struct_4(func_5(vec3<bool>(true, !global2.x, true), Struct_4(var_0.a, -2147483647i, ~_wgslsmith_div_vec3_u32(vec3<u32>(18600u, 0u, u_input.d), vec3<u32>(0u, u_input.a, var_1)), _wgslsmith_add_i32(-3999i | u_input.b, _wgslsmith_clamp_i32(var_0.d, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 5u)])), abs(max(var_0.e, var_0.e))), func_5(vec3<bool>(u_input.c >= var_0.c.x, arg_0, arg_0 && var_0.a.a.x), func_5(func_5(var_0.a.a, Struct_4(Struct_1(var_0.a.a), 73770i, var_0.c, var_2.x, vec2<u32>(var_0.c.x, var_1)), Struct_4(var_0.a, global0[_wgslsmith_index_u32(27151u, 5u)], var_0.c, var_0.b, vec2<u32>(u_input.c, u_input.c))).a.a, Struct_4(Struct_1(var_0.a.a), -2147483647i, var_0.c, 2147483647i, vec2<u32>(37998u, var_0.e.x)), func_5(vec3<bool>(arg_0, false, arg_0), Struct_4(var_0.a, var_0.d, var_0.c, global0[_wgslsmith_index_u32(var_0.e.x, 5u)], vec2<u32>(u_input.d, 1u)), Struct_4(Struct_1(vec3<bool>(false, var_0.a.a.x, true)), u_input.b, var_0.c, -23356i, vec2<u32>(var_0.e.x, 1u)))), Struct_4(Struct_1(var_0.a.a), u_input.b, vec3<u32>(7545u, var_1, 16977u), max(-28937i, -23918i), ~vec2<u32>(4294967295u, var_0.c.x)))).a, ~(u_input.b << (1u % 32u)), abs(var_0.c), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -36283i, var_0.d, 2147483647i), vec4<i32>(var_2.x, var_2.x, var_0.d, u_input.b)) ^ u_input.b) ^ var_2.x, ~vec2<u32>(_wgslsmith_mult_u32(~var_1, ~51989u), 1u));
    global2 = !var_0.a.a.yz;
    return countOneBits(~firstTrailingBit(~vec4<u32>(var_1, 0u, var_0.c.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(7229u, _wgslsmith_sub_u32(~1u, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(37242u, 1u, 7271u, 0u), func_1(global2.x)), ~(1u & u_input.c))), _wgslsmith_add_u32(_wgslsmith_mod_u32(func_1(any(vec4<bool>(true, true, true, global2.x))).x, 38962u), 15258u));
    var var_1 = Struct_3(abs(~func_5(vec3<bool>(global2.x, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, global2.x)), u_input.b, var_0, 6257i, var_0.zy), func_5(vec3<bool>(false, global2.x, false), Struct_4(Struct_1(vec3<bool>(global2.x, false, true)), 63963i, var_0, global0[_wgslsmith_index_u32(u_input.d, 5u)], vec2<u32>(1u, 0u)), Struct_4(Struct_1(vec3<bool>(false, global2.x, global2.x)), u_input.b, var_0, global0[_wgslsmith_index_u32(var_0.x, 5u)], vec2<u32>(9168u, 44776u)))).d), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], min(~u_input.b, _wgslsmith_mod_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 5u)]))), -(~(vec2<i32>(0i, global0[_wgslsmith_index_u32(95299u, 5u)]) | vec2<i32>(global0[_wgslsmith_index_u32(7888u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]))), -min(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.x, 5u)]), global2.x), vec2<i32>(1i, 1i))));
    global1 = ~func_5(func_3().wzz, func_5(func_5(!vec3<bool>(global2.x, global2.x, false), func_5(vec3<bool>(false, false, global2.x), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, true)), u_input.b, var_0, global0[_wgslsmith_index_u32(var_0.x, 5u)], var_0.zz), Struct_4(Struct_1(vec3<bool>(true, global2.x, global2.x)), 1i, vec3<u32>(48319u, u_input.d, 54056u), 1i, var_0.xy)), Struct_4(Struct_1(vec3<bool>(true, global2.x, true)), 2147483647i, var_0, 42988i, var_0.xz)).a.a, func_5(vec3<bool>(global2.x, true, true), func_5(vec3<bool>(global2.x, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(true, global2.x, global2.x)), -5770i, var_0, global0[_wgslsmith_index_u32(0u, 5u)], vec2<u32>(var_0.x, 55427u)), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, true)), var_1.a, var_0, u_input.b, vec2<u32>(0u, 20732u))), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, true)), 0i, var_0, -4977i, var_0.xz)), Struct_4(func_5(vec3<bool>(global2.x, false, true), Struct_4(Struct_1(vec3<bool>(false, global2.x, global2.x)), var_1.a, var_0, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_0.xy), Struct_4(Struct_1(vec3<bool>(false, false, global2.x)), -15886i, var_0, 1716i, vec2<u32>(21096u, var_0.x))).a, var_1.a, max(var_0, var_0), var_1.b.x, _wgslsmith_sub_vec2_u32(var_0.xz, vec2<u32>(1u, u_input.c)))), func_5(vec3<bool>(true, false == global2.x, global2.x), Struct_4(func_5(vec3<bool>(true, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(false, true, true)), var_1.b.x, vec3<u32>(0u, 1u, u_input.a), -1i, var_0.yz), Struct_4(Struct_1(vec3<bool>(false, global2.x, false)), 2147483647i, vec3<u32>(1u, u_input.d, var_0.x), -6778i, vec2<u32>(4294967295u, var_0.x))).a, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_0.x, 5u)], u_input.b), var_0, u_input.b, abs(var_0.zy)), func_5(vec3<bool>(global2.x, global2.x, global2.x), func_5(vec3<bool>(false, true, global2.x), Struct_4(Struct_1(vec3<bool>(global2.x, true, global2.x)), 0i, var_0, 16547i, var_0.zx), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, global2.x)), -2147483647i, var_0, 17129i, var_0.xx)), Struct_4(Struct_1(vec3<bool>(true, false, global2.x)), global0[_wgslsmith_index_u32(u_input.a, 5u)], vec3<u32>(var_0.x, var_0.x, 1u), -1i, var_0.zx)))).e.x;
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1385f, 425f, -772f, _wgslsmith_div_f32(-2170f, -182f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2058f, -150f, 141f, -422f) + vec4<f32>(1496f, 169f, 1586f, 1378f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, 618f, 134f, -1000f)) - vec4<f32>(-303f, 1145f, 1911f, -1125f)))))));
    var var_4 = func_5(!(!vec3<bool>(any(vec4<bool>(global2.x, false, global2.x, true)), true, false)), Struct_4(func_5(select(vec3<bool>(true, global2.x, global2.x), !vec3<bool>(global2.x, true, global2.x), !vec3<bool>(global2.x, global2.x, true)), Struct_4(func_5(vec3<bool>(true, global2.x, false), Struct_4(Struct_1(vec3<bool>(true, global2.x, global2.x)), u_input.b, var_0, -2147483647i, vec2<u32>(u_input.c, 1u)), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, global2.x)), -2147483647i, var_0, -759i, vec2<u32>(var_0.x, var_2))).a, u_input.b, var_0, ~(-54095i), vec2<u32>(1u, u_input.c)), Struct_4(Struct_1(vec3<bool>(false, true, global2.x)), var_1.a, vec3<u32>(var_2, 16004u, var_0.x), 0i, vec2<u32>(0u, var_0.x) | var_0.zy)).a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(48587u, _wgslsmith_div_u32(~37893u, 45967u)), 5u)], _wgslsmith_div_vec3_u32(var_0, vec3<u32>(var_0.x, countOneBits(var_0.x), _wgslsmith_mult_u32(u_input.d, 54888u))), -2147483647i, vec2<u32>(u_input.a << (func_1(global2.x).x % 32u), 7419u)), Struct_4(func_5(select(func_3().yyz, select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, false)), true), Struct_4(Struct_1(vec3<bool>(true, true, global2.x)), ~var_1.a, vec3<u32>(30842u, 0u, 32609u), 0i, countOneBits(var_0.yz)), func_5(!vec3<bool>(false, global2.x, global2.x), func_5(vec3<bool>(true, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(false, false, global2.x)), u_input.b, var_0, 0i, var_0.xy), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, true)), u_input.b, vec3<u32>(40217u, var_0.x, var_2), var_1.b.x, vec2<u32>(var_2, 42014u))), func_5(vec3<bool>(global2.x, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(false, global2.x, global2.x)), global0[_wgslsmith_index_u32(var_2, 5u)], vec3<u32>(u_input.c, 73867u, var_0.x), -2147483647i, var_0.zx), Struct_4(Struct_1(vec3<bool>(true, global2.x, global2.x)), global0[_wgslsmith_index_u32(var_0.x, 5u)], vec3<u32>(18876u, 1u, 30500u), u_input.b, var_0.zy)))).a, abs(min(select(-31160i, u_input.b, global2.x), min(u_input.b, var_1.a))), ~var_0, _wgslsmith_div_i32(func_5(select(vec3<bool>(false, false, true), vec3<bool>(false, global2.x, global2.x), true), func_5(vec3<bool>(false, false, false), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, false)), -14773i, var_0, 0i, var_0.xz), Struct_4(Struct_1(vec3<bool>(true, global2.x, global2.x)), -2147483647i, var_0, -2147483647i, vec2<u32>(u_input.d, 1u))), func_5(vec3<bool>(false, global2.x, global2.x), Struct_4(Struct_1(vec3<bool>(global2.x, true, global2.x)), -19108i, vec3<u32>(u_input.a, 90951u, 0u), -1i, var_0.zx), Struct_4(Struct_1(vec3<bool>(global2.x, global2.x, false)), u_input.b, var_0, 35031i, var_0.yz))).d, -11245i), ~(var_0.xz >> (~var_0.yx % vec2<u32>(32u))))).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_vec2_f32(-var_3.wz));
}

