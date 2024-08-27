struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-35235i, 2147483647i, i32(-2147483648), 1i, 2147483647i, -1i, i32(-2147483648), -1i, i32(-2147483648), 70193i);

var<private> global1: Struct_4;

var<private> global2: bool;

var<private> global3: array<bool, 29> = array<bool, 29>(false, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, false, true, true, false, true, false, true, true, false, true, false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    global3 = array<bool, 29>();
    var var_0 = Struct_2(~vec4<i32>(-abs(2147483647i), firstTrailingBit(_wgslsmith_sub_i32(9691i, global0[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~0u, 10u)], _wgslsmith_dot_vec2_i32(arg_2.yz, arg_2.xx)), ~(~(-1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-204f + arg_0.x), _wgslsmith_f_op_f32(sign(-151f)), global1.a, global1.a) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x, _wgslsmith_f_op_f32(ceil(global1.a)), _wgslsmith_f_op_f32(-1000f - arg_0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_div_f32(arg_0.x, 154f), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(167f, 1747f, 347f, -1000f), arg_0, vec4<bool>(global3[_wgslsmith_index_u32(arg_1, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)], true)))))), ~32308i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 991f) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f * 115f)))));
    let var_1 = !(!(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(global1.b, 29u)], false, global3[_wgslsmith_index_u32(global1.b, 29u)], global3[_wgslsmith_index_u32(29997u, 29u)])))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(35728i, _wgslsmith_mod_i32(firstLeadingBit(reverseBits(-14980i)), _wgslsmith_div_i32(-14538i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(arg_2.x, global0[_wgslsmith_index_u32(global1.b, 10u)], var_0.c, global0[_wgslsmith_index_u32(arg_1, 10u)]))))));
    var var_3 = u_input.d.wzw;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2226f) + -1000f), global1.a);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -582f);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(global1.a - 1191f), 0u);
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-778f, 1455f, var_1.a, global1.a), 1u, vec3<i32>(u_input.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -20909i))), _wgslsmith_f_op_f32(-var_0))))) != -506f;
    var var_2 = vec3<u32>(~(_wgslsmith_mult_u32(u_input.a.x & 31809u, 105726u) >> (~var_1.b % 32u)), _wgslsmith_sub_u32(~(~56567u), _wgslsmith_mod_u32(~select(var_1.b, var_1.b, global3[_wgslsmith_index_u32(var_1.b, 29u)]), u_input.a.x)), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.a.x, 44443u, 49221u, global1.b) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, var_1.b) % vec4<u32>(32u)), vec4<u32>(global1.b, 45666u, 74594u, global1.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, global1.b, global1.b) % vec4<u32>(32u))), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 46119u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 48328u, var_1.b), vec4<u32>(34304u, 6616u, u_input.a.x, 8435u)), _wgslsmith_mult_u32(1u, 22604u))));
    let var_3 = -u_input.d.x & global0[_wgslsmith_index_u32(~(~var_1.b), 10u)];
    return Struct_1(countOneBits(1i), select(select(u_input.d.wyx, u_input.d.ywy, vec3<bool>(global3[_wgslsmith_index_u32(var_1.b, 29u)], !global3[_wgslsmith_index_u32(4294967295u, 29u)], any(vec2<bool>(false, global3[_wgslsmith_index_u32(global1.b, 29u)])))), u_input.d.zyy, global3[_wgslsmith_index_u32(47973u, 29u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2287f, global1.a, var_0, 1773f), vec4<f32>(var_0, var_1.a, var_1.a, var_0), vec4<bool>(global3[_wgslsmith_index_u32(21662u, 29u)], true, true, global3[_wgslsmith_index_u32(49879u, 29u)]))) * vec4<f32>(var_0, -1253f, var_1.a, 912f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, var_0, -994f, 1704f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, -1206f, global1.a, -322f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.a, -715f, 440f)))))), any(vec4<bool>(any(vec2<bool>(true, global3[_wgslsmith_index_u32(35026u, 29u)])), global3[_wgslsmith_index_u32(abs(u_input.a.x), 29u)], true, !all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(23497u, 29u)], true)))), -2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(vec4<i32>(-36485i, 0i | arg_0, 1i, _wgslsmith_mod_i32(abs(abs(global0[_wgslsmith_index_u32(arg_1.x, 10u)])), ~abs(-46788i))), _wgslsmith_f_op_vec4_f32(-func_2().c), -2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.c.x, arg_3.c.x, _wgslsmith_div_f32(-547f, arg_3.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3.c.xyx, arg_3.c.yzw)) * func_2().c.wwy) + _wgslsmith_f_op_vec3_f32(-arg_3.c.yxx))));
    global2 = arg_3.e < (i32(-1i) * -48388i);
    let var_1 = abs(_wgslsmith_clamp_u32(0u, 4294967295u, global1.b)) << (global1.b % 32u);
    var var_2 = arg_3;
    let var_3 = arg_3.d;
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1439f, -529f)), _wgslsmith_f_op_f32(global1.a + var_0.c.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global2 = all(vec4<bool>((var_0.d | true) && (all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], true, var_0.d, false)) || false), all(select(vec2<bool>(true, true), vec2<bool>(var_0.d, global3[_wgslsmith_index_u32(4294967295u, 29u)]), !vec2<bool>(false, global3[_wgslsmith_index_u32(35036u, 29u)]))), all(vec2<bool>(11551i < arg_1.a.x, true)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 10u)], arg_1.c, -1i), vec3<i32>(2147483647i, arg_2.x, arg_2.x)) < ~u_input.d.x));
    global0 = array<i32, 10>();
    let var_2 = var_0.d;
    return ~global1.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_5(Struct_4(arg_1, u_input.a.x), func_4(u_input.e.x, _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 23300u), vec4<u32>(global1.b, 4294967295u, 4294967295u, u_input.a.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, global1.b, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, global1.b, 85733u, 1502u), vec4<u32>(120213u, global1.b, 1u, u_input.a.x))), select(select(!vec2<bool>(true, global3[_wgslsmith_index_u32(71446u, 29u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(75870u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(54303u, 29u)]), true), true), !(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(global1.b, 29u)])), !(!global3[_wgslsmith_index_u32(global1.b, 29u)])), func_2()), abs(~u_input.d.xz));
    var var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.x) + arg_0.x)) + arg_1));
    var_2 = global1.a;
    var var_3 = func_2();
    return Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, var_3.e) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 50766u) << (vec2<u32>(1u, 42948u) % vec2<u32>(32u)), ~u_input.a.zx) % vec2<u32>(32u)), ~vec2<i32>(var_3.e, var_3.a | global0[_wgslsmith_index_u32(9402u, 10u)])), abs((vec3<i32>(-2147483647i, -12009i, var_3.a) ^ u_input.d.yxz) << (vec3<u32>(var_0, firstTrailingBit(global1.b), global1.b << (0u % 32u)) % vec3<u32>(32u))), arg_0, !(!all(!vec3<bool>(global3[_wgslsmith_index_u32(var_0, 29u)], var_3.d, var_3.d))), select(func_2().a, firstTrailingBit(22526i), !(var_3.d && !var_3.d)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.d.x, abs(-2147483647i), firstLeadingBit(u_input.b))) & (_wgslsmith_add_vec3_i32(arg_0.b, countOneBits(vec3<i32>(u_input.e.x, -1i, arg_0.e))) << (select(vec3<u32>(global1.b, global1.b, 9039u), u_input.a, vec3<bool>(true, false, true)) % vec3<u32>(32u))), ~vec3<i32>(i32(-1i) * -2147483647i, abs(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) | arg_0.b.x, func_4(~(-19147i), vec4<u32>(4294967295u, u_input.a.x, global1.b, 75803u), select(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], true)), arg_0).c));
    global1 = arg_1;
    let var_1 = !select(!select(vec3<bool>(global3[_wgslsmith_index_u32(global1.b, 29u)], true, true), !vec3<bool>(false, arg_0.d, true), all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 29u)], false))), !vec3<bool>(arg_1.a <= 448f, any(vec4<bool>(global3[_wgslsmith_index_u32(6884u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.d, true)), true), vec3<bool>(true, true, !arg_0.d & !global3[_wgslsmith_index_u32(52391u, 29u)]));
    var var_2 = Struct_1(-1i, ~vec3<i32>(arg_0.a, -2147483647i, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, _wgslsmith_f_op_f32(global1.a * 1768f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, arg_0.c.x, global1.a, 302f)))), true, u_input.c);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, global1.a, global1.a, global1.a))))), -1000f), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_4(-36262i, vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec2<bool>(true, true), Struct_1(global0[_wgslsmith_index_u32(global1.b, 10u)], vec3<i32>(u_input.c, u_input.d.x, u_input.d.x), vec4<f32>(-1106f, global1.a, global1.a, global1.a), global3[_wgslsmith_index_u32(u_input.a.x, 29u)], -1i)).d.x)) - global1.a), _wgslsmith_clamp_u32(u_input.a.x | global1.b, _wgslsmith_add_u32(~77525u, _wgslsmith_add_u32(u_input.a.x, global1.b)), 21756u)));
    global2 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_add_u32(global1.b, u_input.a.x));
    let var_2 = vec3<i32>(firstTrailingBit(min(_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(7796u, 10u)], global0[_wgslsmith_index_u32(var_1.b, 10u)]), _wgslsmith_div_i32(u_input.b, 0i | u_input.e.x))), _wgslsmith_clamp_i32(5802i, _wgslsmith_sub_i32(u_input.d.x, -global0[_wgslsmith_index_u32(var_1.b, 10u)]) | _wgslsmith_mult_i32(countOneBits(global0[_wgslsmith_index_u32(10310u, 10u)]), _wgslsmith_div_i32(0i, 42566i)), u_input.b), countOneBits(-1i));
    global3 = array<bool, 29>();
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(u_input.a.x & 9967u, global1.b)), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, u_input.a.x), vec2<u32>(u_input.a.x, 0u)), u_input.a.yy)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.b), ~(-12402i << (abs(~var_1.b) % 32u)), func_2().c.x);
}

