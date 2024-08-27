struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 4294967295u, 0u, 4294967295u, 1u, 19506u);

var<private> global2: bool = false;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_1(select(vec4<bool>(true, true, u_input.a == u_input.a, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), false)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, ~u_input.d.x) | ~arg_0.x, 6u)] | ~u_input.a, Struct_1(vec4<bool>(true, false || select(false, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 0u, global1[_wgslsmith_index_u32(0u, 6u)]), vec4<u32>(u_input.d.x, 34029u, 1u, global1[_wgslsmith_index_u32(32799u, 6u)])) < ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 6u)], any(vec4<bool>(true, true, true, true)))), Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(34367u <= u_input.a, all(vec4<bool>(false, false, false, false)), u_input.e == -327i, select(false, false, false)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, false, false), true))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_dot_vec3_i32(~(~min(firstLeadingBit(vec3<i32>(u_input.e, var_1, -8729i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, var_1, u_input.e), vec3<i32>(-43118i, 2835i, u_input.e)))), select(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, var_1, u_input.b), -vec3<i32>(1i, 2147483647i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, 2147483647i), abs(vec3<i32>(0i, var_1, var_1))) ^ vec3<i32>(min(u_input.b, u_input.e), -20158i, 2147483647i | u_input.b), vec3<bool>(true, var_0.a.a.x, var_0.a.a.x)));
    let var_3 = Struct_5(Struct_4(max(max(vec4<i32>(0i, var_2, 1i, u_input.b), vec4<i32>(var_1, 53219i, var_1, -26749i)), _wgslsmith_add_vec4_i32(vec4<i32>(-29401i, u_input.e, u_input.e, -1i), vec4<i32>(var_2, var_1, var_1, 2147483647i))) & -(vec4<i32>(var_2, 1i, u_input.b, var_2) << (vec4<u32>(8551u, 17402u, global1[_wgslsmith_index_u32(var_0.b, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)]) % vec4<u32>(32u))), 4294967295u), Struct_4(~(~vec4<i32>(var_1, -1i, 1i, var_1)), var_0.b), global0[_wgslsmith_index_u32(1u, 31u)], Struct_4(max(vec4<i32>(_wgslsmith_clamp_i32(-15282i, 0i, var_2), ~42786i, var_1, -u_input.b), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 1i, var_1, var_1), vec4<i32>(var_2, 1i, 0i, 9485i), vec4<i32>(2147483647i, 0i, -9165i, var_1)), ~vec4<i32>(2147483647i, 12263i, -52302i, -4881i))), ~(~(~36381u))));
    var var_4 = arg_0.x;
    return any(!select(var_0.c.a, var_3.c.c.a, !(!vec4<bool>(var_3.c.d.a.x, false, false, false))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(abs(u_input.b), _wgslsmith_mult_i32(u_input.e, 28638i) << (_wgslsmith_mod_u32(u_input.c.x ^ u_input.a, 4294967295u) % 32u), select(u_input.e, -_wgslsmith_sub_i32(30613i, u_input.b) ^ (~u_input.e & u_input.b), ~(~arg_0.x) < u_input.c.x), ~u_input.e);
    var var_1 = select(!func_3(vec2<u32>(~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 0u, u_input.d.x), vec3<u32>(57903u, global1[_wgslsmith_index_u32(arg_0.x, 6u)], 4294967295u)))), any(vec4<bool>(true, true, true, true)), true);
    var var_2 = select(!select(vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true), vec3<bool>(any(vec2<bool>(false, false)), true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 6u)], 6u)], 6u)], 6u)], 4294967295u), vec3<u32>(1777u, arg_0.x, 4294967295u)) == ~1u), vec3<bool>(true, true, true), true);
    let var_3 = Struct_3(Struct_1(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), any(vec3<bool>(var_2.x, var_2.x, false))), vec4<bool>(!var_2.x, false | var_2.x, false, select(var_2.x, true, true)), var_2.x)), 0u, Struct_1(!vec4<bool>(true || var_2.x, !var_2.x, var_2.x, true)), Struct_1(!(!select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(true, false, false, var_2.x), vec4<bool>(false, true, false, var_2.x)))));
    var var_4 = true;
    return Struct_2(~(~(~53737u)) ^ reverseBits(firstTrailingBit(4294967295u) & 31395u));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(round(772f)) <= _wgslsmith_f_op_f32(1000f - -1000f)), vec4<bool>(arg_1 == 357f, false, all(vec3<bool>(false, true, false)), true), false && func_3(firstLeadingBit(vec2<u32>(45287u, arg_2.a)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-541f)))), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1078f + arg_1))) == _wgslsmith_f_op_f32(-arg_1))), 296f);
    var var_2 = global0[_wgslsmith_index_u32(arg_0 >> (64636u % 32u), 31u)];
    let var_3 = var_2.c;
    let var_4 = Struct_4(vec4<i32>(select(abs(i32(-1i) * -1i), -28561i, func_3(vec2<u32>(43689u, var_2.b))), _wgslsmith_add_i32(-1i, u_input.b), u_input.b, 0i), _wgslsmith_add_u32(~max(~u_input.d.x, max(0u, 27685u)), _wgslsmith_mult_u32(4294967295u, var_2.b)));
    return var_4.a.x;
}

fn func_5(arg_0: vec2<i32>) -> Struct_4 {
    global0 = array<Struct_3, 31>();
    let var_0 = u_input.c.zzy;
    var var_1 = vec4<bool>(true, !(true & any(vec3<bool>(false, false, true))) & true, !(abs(-24158i) <= (firstLeadingBit(u_input.b) | countOneBits(-8723i))), false | all(vec4<bool>(all(vec2<bool>(true, false)), true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2110f * _wgslsmith_f_op_f32(sign(370f))) - _wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(step(168f, -331f))))));
    global0 = array<Struct_3, 31>();
    return Struct_4(~vec4<i32>(-arg_0.x, -u_input.b, 1i, arg_0.x) & ~vec4<i32>(1i, i32(-1i) * -41965i, -1i, u_input.e), var_0.x);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global2 = all(vec3<bool>(true, select(global1[_wgslsmith_index_u32(4294967295u, 6u)] < global1[_wgslsmith_index_u32(u_input.a, 6u)], all(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, false))) && all(vec2<bool>(true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    global0 = array<Struct_3, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_0, _wgslsmith_f_op_f32(-arg_0))))))));
    let var_1 = func_5(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 10980i, u_input.e), max(vec3<i32>(u_input.b, u_input.b, -41640i), vec3<i32>(-1i, u_input.e, u_input.e))), func_4(1u, -670f, func_2(vec4<u32>(u_input.d.x, u_input.c.x, global1[_wgslsmith_index_u32(0u, 6u)], 46089u)))), select(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(24207i, -1i, 7464i, -1i) & vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, u_input.b, 24254i)), !func_3(vec2<u32>(global1[_wgslsmith_index_u32(27908u, 6u)], 1u)))));
    let var_2 = select(select(vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], 88516u), 1u), vec2<u32>(~global1[_wgslsmith_index_u32(1u, 6u)], u_input.d.x), any(vec2<bool>(true, true))) | ~(~u_input.d.wy << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), u_input.c.zw ^ abs(u_input.d.xz), true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(any(vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_f32(256f - 430f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-423f, 148f) - vec2<f32>(-1948f, 496f))), true && all(vec3<bool>(true, true, true)), func_3(abs(u_input.d.zy))));
    let var_1 = var_0;
    var var_2 = vec3<bool>(!all(vec2<bool>(true, true)) & (true & var_0.a.x), true, all(vec4<bool>(all(select(var_1.a, var_0.a, vec4<bool>(true, var_1.a.x, true, false))), !var_1.a.x, var_0.a.x, true)));
    global1 = array<u32, 6>();
    let var_3 = func_5(min(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(u_input.b, u_input.e)), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-793i, -2147483647i))) >> (vec2<u32>(~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 6u)]), countOneBits(min(36916u, u_input.c.x))) % vec2<u32>(32u)));
    global0 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_3.a.ww, (~vec2<i32>(1i, u_input.e) & ~var_3.a.yx) << (vec2<u32>(select(global1[_wgslsmith_index_u32(0u, 6u)], 16342u, var_2.x), _wgslsmith_add_u32(68149u, var_3.b)) % vec2<u32>(32u))), firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(var_3.a.x, var_3.a.x, -45957i), vec3<i32>(u_input.e, u_input.b, -23704i))));
}

