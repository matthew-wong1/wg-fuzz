struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 23>;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: array<vec2<u32>, 13>;

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    global4 = !vec4<bool>(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.e)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(279f)), _wgslsmith_f_op_f32(-arg_0.b.e)), !arg_0.b.a.x, true);
    var var_0 = arg_0;
    global1 = array<u32, 23>();
    var var_1 = Struct_2(arg_0.b.a, arg_0.a.a, all(!select(select(vec3<bool>(var_0.b.a.x, true, var_0.b.a.x), vec3<bool>(false, global4.x, arg_0.b.a.x), vec3<bool>(global4.x, true, true)), select(vec3<bool>(true, true, var_0.b.c), vec3<bool>(false, var_0.b.c, false), var_0.b.c), false)), var_0.b.d, _wgslsmith_f_op_f32(max(arg_0.b.e, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b.e)), -381f))))));
    let var_2 = arg_0.b;
    return arg_1;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = arg_1.b;
    let var_1 = arg_0.a;
    global4 = select(vec4<bool>(select(81394u < arg_1.a.a.b, arg_1.b.a.x, true), true || (~arg_0.b >= func_3(arg_1, arg_3.x, 1i, vec2<u32>(arg_2.b.a, var_1.b))), all(!(!vec4<bool>(false, arg_1.b.c, arg_2.c, var_0.c))), global4.x && true), !(!(!(!vec4<bool>(false, false, arg_1.b.a.x, arg_1.b.c)))), !(!select(select(vec4<bool>(true, arg_1.b.a.x, arg_2.a.x, arg_1.b.c), vec4<bool>(global4.x, arg_2.a.x, var_0.c, arg_2.c), true), select(vec4<bool>(false, arg_2.c, global4.x, false), vec4<bool>(var_0.c, global4.x, arg_2.c, var_0.a.x), vec4<bool>(var_0.c, true, var_0.a.x, false)), select(vec4<bool>(arg_2.a.x, true, true, true), vec4<bool>(arg_1.b.a.x, false, true, arg_2.a.x), true))));
    global4 = !select(vec4<bool>(true, !(!global4.x), all(select(global4.yw, arg_1.b.a, arg_2.a)), any(vec4<bool>(var_0.a.x, false, var_0.c, false)) && var_0.a.x), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.c, var_0.c, false, global4.x), vec4<bool>(false, arg_2.a.x, global4.x, true)), vec4<bool>(true, global4.x, var_0.a.x, arg_1.b.c), select(vec4<bool>(true, arg_2.a.x, global4.x, arg_2.c), vec4<bool>(false, false, arg_1.b.c, arg_2.a.x), vec4<bool>(true, arg_2.c, arg_2.a.x, true))), !any(!global4.xwy));
    var var_2 = vec2<f32>(1026f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1491f, -1471f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.e - arg_2.e), arg_2.e), _wgslsmith_f_op_f32(1227f - -1224f), !all(arg_1.b.a))), !(4294967295u > firstLeadingBit(var_0.b.b)))));
    return Struct_3(Struct_1(~(global1[_wgslsmith_index_u32(arg_0.a.b >> (arg_0.a.b % 32u), 23u)] & 1u), min(~70580u, 1u)), _wgslsmith_add_i32(0i, 5367i));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> vec4<i32> {
    let var_0 = ~(~(-14503i));
    var var_1 = func_2(Struct_3(func_2(arg_0, Struct_4(func_2(arg_0, Struct_4(Struct_3(Struct_1(4294967295u, 39300u), -2147483647i), Struct_2(global4.yw, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], 57850u), arg_2.x, vec4<i32>(arg_1, -2147483647i, u_input.c.x, var_0), -1031f)), Struct_2(arg_2.wz, arg_0.a, arg_2.x, vec4<i32>(arg_1, arg_1, 73574i, 0i), 983f), vec4<i32>(arg_1, arg_0.b, u_input.c.x, -1i)), Struct_2(vec2<bool>(global4.x, arg_3), Struct_1(arg_0.a.a, arg_0.a.a), arg_3, vec4<i32>(33695i, 7661i, 0i, 0i), -1214f)), Struct_2(select(global4.wx, arg_2.wy, arg_3), arg_0.a, arg_0.a.a >= global1[_wgslsmith_index_u32(1u, 23u)], vec4<i32>(2147483647i, -19525i, 1i, u_input.b.x) | vec4<i32>(arg_0.b, arg_0.b, -2147483647i, -1i), -592f), max(vec4<i32>(arg_1, 33607i, -2147483647i, arg_1), -vec4<i32>(-30512i, -41918i, 29598i, var_0))).a, -24044i), Struct_4(arg_0, Struct_2(!(!vec2<bool>(arg_2.x, global4.x)), func_2(arg_0, Struct_4(Struct_3(arg_0.a, 32252i), Struct_2(arg_2.wz, Struct_1(arg_0.a.a, global1[_wgslsmith_index_u32(30428u, 23u)]), arg_3, vec4<i32>(arg_1, -17758i, 0i, -32662i), -1639f)), Struct_2(arg_2.zx, Struct_1(30800u, 4294967295u), global4.x, vec4<i32>(-65963i, 0i, arg_1, arg_0.b), 1182f), max(vec4<i32>(var_0, 4967i, arg_1, u_input.c.x), vec4<i32>(-1i, arg_0.b, arg_0.b, arg_1))).a, abs(u_input.a) > (global1[_wgslsmith_index_u32(54921u, 23u)] >> (u_input.a % 32u)), abs(~vec4<i32>(-1i, arg_0.b, arg_0.b, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -116f))), Struct_2(global4.wy, arg_0.a, true, firstLeadingBit(select(-vec4<i32>(0i, arg_1, -10463i, arg_0.b), vec4<i32>(var_0, var_0, arg_0.b, var_0), all(vec3<bool>(true, arg_3, global4.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(568f, 1138f) + _wgslsmith_f_op_f32(select(-1000f, -683f, arg_3))), _wgslsmith_f_op_f32(-1214f * _wgslsmith_f_op_f32(-841f + 879f))))), vec4<i32>(-1i) * -(vec4<i32>(arg_1, -5803i, var_0, -13674i) >> (vec4<u32>(1u, 47200u, 6134u, arg_0.a.a) % vec4<u32>(32u))));
    var var_2 = 0u;
    let var_3 = Struct_1(~(~u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.a.b, var_1.a.a, u_input.a), vec3<u32>(var_1.a.a, u_input.a, arg_0.a.a), arg_2.x), ~vec3<u32>(31285u, 37709u, 11529u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 1u), firstTrailingBit(vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 23u)], var_1.a.b)))), ~vec2<u32>(arg_0.a.a, var_1.a.b)));
    global4 = !vec4<bool>(global4.x, arg_3, !all(arg_2.zx), false);
    return -(vec4<i32>(-1i) * -(-vec4<i32>(var_0, u_input.b.x, -2147483647i, var_0) >> (vec4<u32>(var_1.a.a, 0u, 0u, arg_0.a.a) % vec4<u32>(32u))));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = min(-43454i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(countOneBits(0i), -48346i, arg_1.d.x, arg_1.d.x)), min(~arg_1.d, -vec4<i32>(arg_1.d.x, 7548i, arg_1.d.x, u_input.b.x) & firstTrailingBit(arg_1.d))));
    let var_1 = Struct_2(arg_1.a, arg_1.b, -arg_0 == min(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-24632i, -2147483647i), reverseBits(u_input.c.x))), countOneBits(_wgslsmith_div_vec4_i32(arg_1.d, _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.x, u_input.c.x, arg_1.d.x, u_input.c.x), reverseBits(arg_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f + arg_1.e)), -326f)));
    let var_2 = ~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b.a, global1[_wgslsmith_index_u32(4294967295u, 23u)]), firstTrailingBit(arg_1.b.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(266f, -425f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, arg_1.e)))), vec2<f32>(var_1.e, _wgslsmith_f_op_f32(abs(336f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 377f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, 438f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, arg_1.e) + vec2<f32>(arg_1.e, arg_1.e))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(max(-882f, var_1.e)))))));
    global3 = array<vec2<u32>, 13>();
    return Struct_3(var_1.b, ~(~func_4(func_2(Struct_3(Struct_1(u_input.a, 0u), -1i), Struct_4(Struct_3(var_1.b, arg_0), arg_1), var_1, var_1.d), _wgslsmith_mult_i32(arg_0, u_input.c.x), select(vec4<bool>(var_1.a.x, false, false, global4.x), vec4<bool>(true, true, true, global4.x), vec4<bool>(false, false, global4.x, arg_1.a.x)), any(global4.xxz)).x));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_4(func_5(23069i, Struct_2(!vec2<bool>(global4.x, global4.x), Struct_1(global1[_wgslsmith_index_u32(7692u, 23u)], u_input.a), true & (global4.x || global4.x), func_4(func_2(Struct_3(Struct_1(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)]), 0i), Struct_4(Struct_3(Struct_1(u_input.a, u_input.a), -47675i), Struct_2(vec2<bool>(global4.x, false), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3920u, 23u)], 23u)], 23u)]), global4.x, vec4<i32>(-12371i, arg_0.x, 84241i, 45689i), -939f)), Struct_2(vec2<bool>(global4.x, true), Struct_1(0u, 1u), global4.x, vec4<i32>(u_input.c.x, -34327i, -45560i, arg_0.x), -222f), vec4<i32>(-2147483647i, -18819i, -2930i, u_input.c.x)), firstLeadingBit(1i), vec4<bool>(global4.x, false, global4.x, false), true), 156f)), Struct_2(vec2<bool>(true, true), func_5(arg_0.x, Struct_2(vec2<bool>(false, true), Struct_1(0u, 29736u), global4.x, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 11944i, 2147483647i, -20830i), vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.b.x)), _wgslsmith_div_f32(-1043f, 1855f))).a, global4.x | (4294967295u < (u_input.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)], 23u)] % 32u))), firstTrailingBit(abs(abs(vec4<i32>(arg_0.x, -2147483647i, u_input.b.x, -60991i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f - 664f) + 1f)));
    let var_1 = Struct_1(u_input.a, ~(~1u));
    global2 = array<vec2<i32>, 7>();
    let var_2 = Struct_3(func_2(var_0.a, Struct_4(Struct_3(func_5(u_input.c.x, Struct_2(var_0.b.a, var_0.a.a, var_0.b.a.x, var_0.b.d, 1000f)).a, var_0.b.d.x & -2147483647i), Struct_2(vec2<bool>(var_0.b.a.x, true), Struct_1(4294967295u, 0u), global4.x & global4.x, vec4<i32>(-23559i, 2147483647i, var_0.b.d.x, u_input.c.x), _wgslsmith_f_op_f32(round(var_0.b.e)))), var_0.b, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, var_0.b.d.x), abs(u_input.c.x)), -34447i >> (func_5(var_0.b.d.x, Struct_2(global4.zy, Struct_1(var_0.a.a.a, 10297u), false, vec4<i32>(0i, var_0.a.b, -33910i, var_0.b.d.x), -288f)).a.b % 32u), _wgslsmith_sub_i32(func_2(var_0.a, Struct_4(Struct_3(var_0.b.b, 34168i), var_0.b), Struct_2(var_0.b.a, Struct_1(1u, var_1.b), global4.x, vec4<i32>(-629i, arg_0.x, var_0.a.b, u_input.c.x), -1000f), var_0.b.d).b, abs(u_input.b.x)), var_0.b.d.x)).a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i) ^ -arg_0, vec2<i32>(reverseBits(var_0.a.b), arg_0.x)) << (_wgslsmith_div_u32(~_wgslsmith_mod_u32(0u, 1u), 11855u) % 32u));
    global3 = array<vec2<u32>, 13>();
    return !(max(arg_0.x, var_2.b) < -36144i);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> i32 {
    global3 = array<vec2<u32>, 13>();
    let var_0 = ~(~_wgslsmith_mult_u32(~func_2(arg_3.a, arg_3, Struct_2(vec2<bool>(arg_1, arg_2), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], 25585u), arg_2, arg_3.b.d, arg_3.b.e), vec4<i32>(-17137i, 1818i, u_input.b.x, 0i)).a.a, arg_3.b.b.b));
    let var_1 = arg_3;
    return i32(-1i) * -2931i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.x ^ (_wgslsmith_add_i32(select(i32(-1i) * -31854i, u_input.c.x, global4.x | global4.x), ~u_input.b.x) ^ (i32(-1i) * -1i));
    var_0 = _wgslsmith_mult_i32(1041i, 33114i);
    let var_1 = -643f;
    var_0 = firstLeadingBit(func_6(var_1, !func_1(vec2<i32>(u_input.c.x, u_input.c.x)), global4.x, Struct_4(Struct_3(Struct_1(global1[_wgslsmith_index_u32(11047u, 23u)], 1u), 0i ^ u_input.c.x), Struct_2(!vec2<bool>(global4.x, true), func_5(u_input.b.x, Struct_2(global4.zw, Struct_1(44892u, global1[_wgslsmith_index_u32(29440u, 23u)]), global4.x, vec4<i32>(u_input.c.x, 2147483647i, u_input.b.x, u_input.c.x), var_1)).a, true, -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 4106i), _wgslsmith_f_op_f32(f32(-1f) * -145f)))));
    var var_2 = Struct_2(global4.xy, func_5(abs(func_5(u_input.b.x, Struct_2(global4.zw, Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 17627u), global4.x, vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 44245i), var_1)).b << (global1[_wgslsmith_index_u32(select(29340u, 1u, true), 23u)] % 32u)), Struct_2(vec2<bool>(true, true), Struct_1(0u, select(u_input.a, u_input.a, global4.x)), func_1(~global2[_wgslsmith_index_u32(0u, 7u)]), firstTrailingBit(vec4<i32>(-12862i, u_input.b.x, u_input.c.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a, select(global4.x, false, any(select(vec2<bool>(true, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, global4.x), global4.x), global4.zx))), select(min(vec4<i32>(-1i, u_input.b.x, -38970i, u_input.c.x), vec4<i32>(-32347i, u_input.b.x, 0i, u_input.b.x)), vec4<i32>(u_input.b.x, min(u_input.c.x, u_input.b.x), -2147483647i, u_input.b.x), !vec4<bool>(global4.x, global4.x, false, global4.x)) >> (~vec4<u32>(0u, 1u, ~4294967295u, ~4787u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(526f + 433f));
    let var_3 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(41047u, var_2.b.a, var_2.b.a), vec3<u32>(49189u, 87703u, 15841u)), vec3<u32>(4294967295u, 1u, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(88702u, 69213u, 4294967295u), vec3<u32>(54690u, 49225u, u_input.a))), 23u)] ^ firstTrailingBit(global1[_wgslsmith_index_u32(var_2.b.a, 23u)]), abs(~1u)), 23u)], 13u)];
    var var_4 = _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, _wgslsmith_div_u32(var_2.b.a, var_2.b.b), 24964u, var_2.b.b), ((vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(16802u, 23u)], 4294967295u) << (vec4<u32>(var_2.b.a, 1u, var_3.x, 38621u) % vec4<u32>(32u))) ^ ~vec4<u32>(118461u, u_input.a, var_3.x, 1u)) | vec4<u32>(u_input.a, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_3.x, 23u)], 4294967295u), 28423u, _wgslsmith_clamp_u32(var_3.x, 11867u, 1u))) ^ (~vec4<u32>(15813u, global1[_wgslsmith_index_u32(~var_2.b.a, 23u)], ~23933u, 0u) ^ firstLeadingBit(vec4<u32>(1u, 1u, _wgslsmith_sub_u32(var_3.x, global1[_wgslsmith_index_u32(var_3.x, 23u)]), ~global1[_wgslsmith_index_u32(4294967295u, 23u)])));
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(abs(142f))))), 52128u, abs(u_input.b), countOneBits(_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(var_3.x, 13u)], vec2<u32>(var_3.x, u_input.a))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 23u)])), ~vec2<u32>(24485u, 1u)))), ~func_2(func_5(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), Struct_2(vec2<bool>(var_2.c, false), var_2.b, false, vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x), 943f)), Struct_4(Struct_3(Struct_1(1u, 0u), 0i), Struct_2(global4.wy, var_2.b, true, var_2.d, 983f)), Struct_2(select(global4.wy, vec2<bool>(global4.x, false), global4.zw), Struct_1(59949u, u_input.a), all(var_2.a), vec4<i32>(var_2.d.x, u_input.b.x, 16095i, var_2.d.x), var_2.e), var_2.d).a.b);
}

