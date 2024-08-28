struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_4,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = Struct_2(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.c, arg_1.c, arg_1.a.x, -2147483647i), -vec4<i32>(-8939i, -7444i, -76505i, arg_1.c)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, arg_1.a.x, -37168i, -26564i), vec4<i32>(~arg_1.a.x, 39525i << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -1i, arg_1.c, arg_1.c), vec4<i32>(arg_1.c, arg_1.a.x, 2147483647i, -2147483647i)), arg_1.c << (u_input.a % 32u))), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), all(!vec2<bool>(arg_1.b.b, false)), any(vec2<bool>(arg_1.d, arg_1.d)))), arg_1.d, ~(~vec3<i32>(_wgslsmith_add_i32(arg_1.c, arg_1.c), arg_1.c, -arg_1.a.x)), !(!(!(!arg_1.b.a))));
    var var_1 = Struct_5(any(select(vec2<bool>(any(vec2<bool>(var_0.d, arg_1.d)), !arg_1.b.b), !vec2<bool>(var_0.b, true), select(select(vec2<bool>(arg_1.d, var_0.d), vec2<bool>(arg_1.b.a, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(arg_1.b.a, false))))), Struct_1(-627f, 1i, vec4<u32>(61907u, abs(37435u), 77589u, u_input.a), ~(~(vec3<u32>(1u, 0u, 53341u) << (vec3<u32>(arg_1.b.c, arg_2, 0u) % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_add_u32(arg_1.b.c, 4294967295u) | ~u_input.a, 90714u)), Struct_4(var_0.a.wyy, arg_1.b, ~(1i & -var_0.c.x), !(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(exp2(arg_0)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f * -308f))), 64251i, vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(arg_1.b.c, 0u)), 9791u, arg_2 | 1u, abs(_wgslsmith_mod_u32(35144u, u_input.a))), firstTrailingBit(vec3<u32>(1u, ~4294967295u, 4294967295u)), vec2<u32>(0u, ~_wgslsmith_div_u32(0u, 18158u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), arg_1.a.x, vec4<u32>(4294967295u, 109252u, _wgslsmith_mod_u32(~4624u, ~u_input.a), abs(~arg_1.b.c)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, 1095u, arg_1.b.c)), ~(vec3<u32>(arg_2, 36432u, 25063u) << (vec3<u32>(31631u, 78473u, 1u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec2_u32(~global0[_wgslsmith_index_u32(34419u, 15u)] ^ ~global0[_wgslsmith_index_u32(11411u, 15u)], min(~global0[_wgslsmith_index_u32(44761u, 15u)], global0[_wgslsmith_index_u32(arg_2, 15u)]), _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(35812u, 15u)], global0[_wgslsmith_index_u32(4726u, 15u)]))));
    var_1 = Struct_5(var_0.b, var_1.d, var_1.c, var_1.b, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.d.a, -1645f))), _wgslsmith_clamp_i32(arg_1.a.x, -26523i, 2147483647i), ((var_1.b.c >> (vec4<u32>(arg_2, arg_2, u_input.a, 35527u) % vec4<u32>(32u))) ^ vec4<u32>(88113u, arg_1.b.c, arg_1.b.c, var_1.c.b.c)) << (var_1.b.c % vec4<u32>(32u)), firstTrailingBit(var_1.b.c.yxw), vec2<u32>(min(1u, _wgslsmith_sub_u32(var_1.e.d.x, 0u)), _wgslsmith_sub_u32(abs(38627u), 34324u))));
    let var_2 = ~vec3<u32>(~(~_wgslsmith_mod_u32(0u, var_1.d.d.x)), ~17976u, ~_wgslsmith_clamp_u32(~2415u, var_1.d.c.x, u_input.a));
    let var_3 = Struct_1(var_1.d.a, _wgslsmith_sub_i32(-2147483647i, -2147483647i), var_1.b.c, var_2, reverseBits(vec2<u32>(u_input.a, var_2.x)));
    return arg_1.b.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_5(!(!all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_div_f32(-892f, 1005f)), ~arg_1, vec4<u32>(0u, abs(~u_input.a), u_input.a, u_input.a), ~(~vec3<u32>(79690u, 47146u, 4294967295u)), abs(global0[_wgslsmith_index_u32(max(77286u >> (0u % 32u), 1u), 15u)])), Struct_4(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2.x, arg_2.x, arg_0.x) << ((vec3<u32>(19287u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 9858u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(arg_1, arg_1, arg_1)), Struct_3(true, true, 0u), ~arg_1 >> (1u % 32u), !func_3(601f, Struct_4(vec3<i32>(arg_1, arg_0.x, arg_2.x), Struct_3(false, true, u_input.a), -2147483647i, false), ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-331f, 485f) * _wgslsmith_div_f32(1954f, 480f)), -1707f)), -arg_2.x, firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), abs(vec3<u32>(_wgslsmith_sub_u32(5300u, u_input.a), 1u, 37395u)), global0[_wgslsmith_index_u32(~u_input.a, 15u)]), Struct_1(222f, ~arg_1, ~(~(~vec4<u32>(u_input.a, 4294967295u, 0u, 16358u))), abs(vec3<u32>(reverseBits(27851u), _wgslsmith_div_u32(u_input.a, 38362u), u_input.a)), global0[_wgslsmith_index_u32(u_input.a, 15u)]));
    let var_1 = _wgslsmith_mult_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_0.d.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.d.x, 1u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(31490u, u_input.a, u_input.a), ~vec3<u32>(45234u, var_0.c.b.c, 15627u))), max(~abs(var_0.b.d), abs(var_0.d.c.wzy) | var_0.d.d)), var_0.d.d);
    var var_2 = _wgslsmith_clamp_u32(var_0.d.c.x, 29202u, countOneBits(3161u << ((_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(17671u, 15u)], vec2<u32>(0u, var_0.b.d.x)) >> (_wgslsmith_div_u32(var_0.e.c.x, u_input.a) % 32u)) % 32u)));
    global1 = !var_0.a;
    let var_3 = Struct_2(-(vec4<i32>(_wgslsmith_mod_i32(60009i, var_0.e.b), abs(-11654i), -66384i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 23485i), var_0.c.a)) << (vec4<u32>(firstLeadingBit(u_input.a), 13347u, firstLeadingBit(68644u), 24727u) % vec4<u32>(32u))), any(vec3<bool>(!var_0.c.b.a, !var_0.c.d, var_0.c.d)) & any(select(!vec3<bool>(var_0.c.d, var_0.c.d, var_0.a), !vec3<bool>(var_0.a, false, true), any(vec2<bool>(var_0.a, false)))), var_0.c.a, var_0.a);
    return select(select(vec3<bool>(!(var_0.b.a > var_0.b.a), all(vec4<bool>(false, var_3.d, var_3.d, true)), true), vec3<bool>(false, select(var_3.d == var_0.a, true, all(vec4<bool>(true, var_3.b, var_0.a, var_3.b))), !(!var_0.c.d)), !select(vec3<bool>(false, var_3.d, var_0.a), !vec3<bool>(var_0.a, false, false), select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, var_0.c.d, var_0.a), vec3<bool>(var_3.d, false, var_0.a)))), select(vec3<bool>(true, false, var_0.a), !vec3<bool>(false, arg_1 > var_0.d.b, true), vec3<bool>(true, false, true)), var_0.c.b.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(any(!(!func_2(vec2<i32>(arg_1.b, arg_1.b), arg_1.b, vec2<i32>(arg_1.b, arg_1.b)))), 4254i <= ~(_wgslsmith_div_i32(-1i, arg_1.b) << (abs(4294967295u) % 32u)), _wgslsmith_sub_u32(~(~_wgslsmith_add_u32(arg_1.c.x, 67087u)), ~_wgslsmith_add_u32(arg_1.c.x >> (44296u % 32u), _wgslsmith_add_u32(u_input.a, 0u))));
    let var_1 = ~(~abs(~vec2<u32>(1u, 4294967295u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0)));
    let var_3 = Struct_3(true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -1069f), -1079f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(496f))))), Struct_4(vec3<i32>(arg_1.b, -1i, 32428i) & -vec3<i32>(60339i, arg_1.b, arg_1.b), Struct_3(var_0.b, false, var_1.x ^ arg_1.d.x), -2147483647i, arg_1.a > arg_0.x), 0u), ~(~(~_wgslsmith_add_u32(var_0.c, var_0.c))));
    let var_4 = vec3<u32>(~1u, abs(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(16376u, var_0.c), arg_1.e))), var_1.x) << (arg_1.d % vec3<u32>(32u));
    return _wgslsmith_mult_u32(~(var_0.c & firstTrailingBit(_wgslsmith_mult_u32(var_1.x, arg_1.d.x))), ~29690u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(select(true, !(func_1(vec3<f32>(2627f, -1147f, 711f), Struct_1(-759f, -89789i, vec4<u32>(44819u, 49325u, 74063u, 24760u), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec2<u32>(1u, u_input.a))) <= u_input.a), false), !all(vec2<bool>(true, true)), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(325f, -330f)))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -347f)))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-21956i, -1i, -7407i) & (vec3<i32>(24283i, 2147483647i, -14179i) << (vec3<u32>(u_input.a, 0u, 44900u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -58833i, -1i), vec3<i32>(18397i, -2147483647i, 8523i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -462i, 1i), vec3<i32>(-1i, -2147483647i, 57046i), vec3<i32>(2147483647i, -1i, -2147483647i))) >> (u_input.a % 32u), -9521i);
    var_0 = vec3<bool>(false, false, var_0.x);
    global0 = array<vec2<u32>, 15>();
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-var_2), var_2, 11175i, _wgslsmith_mod_i32(9842i, var_2) ^ var_2), ~select(vec4<i32>(var_2, var_2, -14283i, 30703i), vec4<i32>(var_2, 54720i, var_2, 2147483647i), false) | ~(-vec4<i32>(1i, 1i, 2147483647i, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_2, -1i), -var_2, var_2), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(-20360i, 22903i, var_2), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2, -17682i, var_2), vec3<i32>(var_2, 2147483647i, var_2)))), var_2, -(_wgslsmith_div_i32(7706i, var_2) ^ (i32(-1i) * -34937i)), countOneBits(firstTrailingBit(1i))));
    var var_4 = ~u_input.a;
    var var_5 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(67167u, ~u_input.a, min(u_input.a, firstLeadingBit(1u))), vec3<u32>(38924u, u_input.a, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(countOneBits(var_2 & 0i), -24369i), var_3.x));
}

