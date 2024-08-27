struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: array<u32, 28> = array<u32, 28>(0u, 4294967295u, 1u, 61547u, 41118u, 0u, 1u, 4294967295u, 15309u, 32770u, 31937u, 60602u, 66989u, 3799u, 4294967295u, 44668u, 23611u, 4294967295u, 1u, 0u, 4294967295u, 1u, 64047u, 21004u, 81629u, 52398u, 4294967295u, 1u);

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = select(!vec2<bool>(any(!arg_2.a), !all(vec3<bool>(true, arg_2.a.x, false))), arg_2.a, !(!all(vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(~global2[_wgslsmith_index_u32(25762u, 28u)]), 13u)];
    var var_2 = _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u ^ _wgslsmith_mult_u32(114029u, firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.b.x, 28u)])), global2[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(65617u, arg_1.b.x, global2[_wgslsmith_index_u32(4294967295u, 28u)], 94u), vec4<u32>(arg_2.b.x, 1u, global2[_wgslsmith_index_u32(1u, 28u)], 67508u)), ~vec4<u32>(arg_1.b.x, 0u, 14251u, global2[_wgslsmith_index_u32(57625u, 28u)])), ~(~vec4<u32>(0u, arg_1.b.x, 1u, 0u))), 28u)], select(18119u, 1u, all(!arg_2.a))));
    var_2 = 82443u;
    global2 = array<u32, 28>();
    return 56969u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(521f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1114f, 952f, true)), _wgslsmith_f_op_f32(f32(-1f) * -818f)) - -1473f))), ~vec3<u32>(_wgslsmith_clamp_u32(40188u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)] % 32u), _wgslsmith_add_u32(0u, 4294967295u), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)])), func_3(1484f, Struct_2(-1000f, vec3<u32>(3512u, 1u, 0u)), global3[_wgslsmith_index_u32(arg_0, 30u)]) ^ _wgslsmith_mult_u32(arg_0, 4294967295u), ~arg_0 ^ abs(arg_0)));
    let var_1 = Struct_1(!(!vec2<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, true)))), ~vec2<u32>(~global2[_wgslsmith_index_u32(var_0.b.x, 28u)], max(arg_0, var_0.b.x)) >> (var_0.b.xz % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global1[_wgslsmith_index_u32(1u, 13u)])))))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(562f - -1479f)));
    let var_2 = Struct_2(var_1.c.x, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(var_0.b), vec3<u32>(arg_0, 145246u, 0u & var_1.b.x)), select(~(~vec3<u32>(arg_0, var_0.b.x, 32087u)), vec3<u32>(11158u, ~48383u, var_1.b.x), vec3<bool>(any(vec4<bool>(true, var_1.a.x, true, true)), true, !var_1.a.x))));
    let var_3 = ~reverseBits(u_input.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d - var_1.d));
    return Struct_1(vec2<bool>(select(any(!vec4<bool>(false, true, true, var_1.a.x)), var_1.a.x, true), true), vec2<u32>(~(var_1.b.x ^ global2[_wgslsmith_index_u32(15172u, 28u)]), global2[_wgslsmith_index_u32(~1u, 28u)]) ^ ~min(~vec2<u32>(var_0.b.x, arg_0), ~var_2.b.zz), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(-809f, 118f)), _wgslsmith_f_op_f32(-var_1.d.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 28u)]), ~global2[_wgslsmith_index_u32(var_1.b.x, 28u)], ~arg_0), vec3<u32>(arg_0 ^ var_1.b.x, var_2.b.x, 1u)), 13u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 13u)]) * _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_1.b.x, 13u)] * var_1.c))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(u_input.c.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -20715i, _wgslsmith_mod_i32(-1i, arg_2.b), 39427i), ~(u_input.c.yzx | vec3<i32>(-1i, -53058i, 2147483647i))), max(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 2147483647i), -33078i), true));
    let var_1 = arg_2;
    let var_2 = arg_1;
    global2 = array<u32, 28>();
    let var_3 = 1171f;
    return var_2;
}

fn func_1() -> bool {
    global0 = array<vec3<u32>, 2>();
    global3 = array<Struct_1, 30>();
    var var_0 = func_4(func_2(80904u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)]).c.x, 137f) + _wgslsmith_f_op_f32(select(-468f, -570f, true))), vec3<u32>(0u, 26317u, _wgslsmith_mod_u32(abs(0u), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 28u)], 28u)]))), Struct_3(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(reverseBits(4294967295u), 28u)], 28u)], ~(~0u)), u_input.b), vec2<bool>(true, !(_wgslsmith_f_op_f32(step(-886f, 1000f)) >= -1000f)));
    var_0 = func_4(Struct_1(vec2<bool>(true, true), var_0.b.yx, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~max(var_0.b.x, ~5868u), 28u)], 13u)], vec2<f32>(var_0.a, 880f)), func_4(global3[_wgslsmith_index_u32(var_0.b.x, 30u)], Struct_2(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(sign(var_0.a)))), var_0.b), Struct_3(_wgslsmith_sub_u32(var_0.b.x ^ 128801u, 1u), u_input.b), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, select(true, false, false)))), Struct_3(32306u, -(~u_input.a.x ^ (u_input.c.x ^ u_input.a.x))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), 1u <= global2[_wgslsmith_index_u32(1u, 28u)]), !vec2<bool>(var_0.b.x <= 89151u, true), all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))))));
    let var_1 = ~func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-544f, -138f, false)), _wgslsmith_f_op_f32(max(var_0.a, var_0.a))), Struct_2(612f, ~vec3<u32>(21159u, var_0.b.x, 0u)), Struct_1(vec2<bool>(true, true), vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]) >> (var_0.b.yy % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_vec2_f32(abs(global1[_wgslsmith_index_u32(var_0.b.x, 13u)])))) <= ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), func_4(Struct_1(vec2<bool>(true, false), vec2<u32>(var_0.b.x, 46633u), vec2<f32>(-729f, var_0.a), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.x, 28u)], 28u)], 13u)]), func_4(Struct_1(vec2<bool>(false, false), var_0.b.xz, vec2<f32>(-663f, 1561f), global1[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_2(1205f, var_0.b), Struct_3(global2[_wgslsmith_index_u32(54794u, 28u)], u_input.a.x), vec2<bool>(true, false)), Struct_3(1u, u_input.a.x), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), vec2<u32>(var_0.b.x, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -206f) * global1[_wgslsmith_index_u32(var_0.b.x, 13u)]), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-341f, var_0.a)))));
    return all(select(vec4<bool>(true, true, any(!vec3<bool>(true, true, var_1)), false), vec4<bool>(all(vec4<bool>(var_1, false, false, true)) | var_1, _wgslsmith_f_op_f32(var_0.a * var_0.a) < _wgslsmith_f_op_f32(var_0.a * -278f), any(vec4<bool>(true, false, true, false)), var_1), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 30>();
    var var_0 = select(vec2<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true), select(vec2<bool>(!any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(false, true)) || false, !any(vec3<bool>(true, true, false))), vec2<bool>(true, true)), !(func_1() || (_wgslsmith_f_op_f32(sign(-1502f)) > -712f)));
    var var_1 = 20615u;
    var var_2 = func_4(func_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30834u, 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(1063u, 28u)]), _wgslsmith_add_vec2_u32(vec2<u32>(13786u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27875u, 28u)], 28u)]), vec2<u32>(global2[_wgslsmith_index_u32(0u, 28u)], 55932u)))), func_4(global3[_wgslsmith_index_u32(~67312u, 30u)], func_4(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), vec2<bool>(false, true)), firstLeadingBit(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 28u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 13u)], _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(2876u, 13u)] * vec2<f32>(2049f, 529f))), func_4(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(1u, 28u)]), 30u)], Struct_2(189f, global0[_wgslsmith_index_u32(11513u, 2u)]), Struct_3(4294967295u, -2147483647i), vec2<bool>(true, true)), Struct_3(75578u, u_input.b >> (4294967295u % 32u)), select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(true, true), true)), Struct_3(_wgslsmith_div_u32(17594u, global2[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)]), firstTrailingBit(2147483647i)), vec2<bool>(!func_2(17654u).a.x, !all(vec2<bool>(var_0.x, true)))), Struct_3(~69633u, -2147483647i), func_2(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -844f), Struct_2(641f, vec3<u32>(55518u, 76424u, 30863u)), Struct_1(vec2<bool>(var_0.x, var_0.x), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec2<f32>(-1302f, -1616f), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 13u)]))).a);
    let var_3 = countOneBits(max(select(_wgslsmith_sub_vec4_u32(~vec4<u32>(62107u, 59885u, var_2.b.x, 4294967295u), ~vec4<u32>(global2[_wgslsmith_index_u32(25829u, 28u)], global2[_wgslsmith_index_u32(49921u, 28u)], 27176u, 11023u)), firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_2.b.x, 28u)], 73743u, var_2.b.x, 80787u)) >> (firstTrailingBit(vec4<u32>(12938u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5360u, 28u)], 28u)], var_2.b.x, var_2.b.x)) % vec4<u32>(32u)), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(16541u, global2[_wgslsmith_index_u32(4294967295u, 28u)], 27281u, 4294967295u), vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.b.x, 28u)], 28u)], 6506u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17890u, 28u)], 28u)]), vec4<u32>(var_2.b.x, 53151u, 56868u, global2[_wgslsmith_index_u32(4294967295u, 28u)])))));
    global3 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1573f, -2259f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_3.x, 13u)] + global1[_wgslsmith_index_u32(var_2.b.x, 13u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1987f)))))), var_2.a, -vec3<i32>(_wgslsmith_add_i32(~u_input.c.x, _wgslsmith_add_i32(-25721i, 2147483647i)), -(~(-12853i)), firstLeadingBit(u_input.c.x) ^ max(u_input.a.x, u_input.c.x)), _wgslsmith_f_op_f32(var_2.a * -847f));
}

