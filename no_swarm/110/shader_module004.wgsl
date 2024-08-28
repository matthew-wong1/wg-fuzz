struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, true, false, true, true, false, true, false, true, false, false, true, false, false, false, true, true, false, false, true, false, false, true, false, false, true, false);

var<private> global1: vec4<i32>;

var<private> global2: f32 = -727f;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(0i, 17742i, i32(-2147483648), 2147483647i), vec2<f32>(-1000f, -138f), -18644i, 1u), Struct_1(vec4<i32>(2147483647i, 8759i, -17351i, -31169i), vec2<f32>(-1049f, -832f), 0i, 0u), Struct_1(vec4<i32>(0i, -40740i, 15329i, -55022i), vec2<f32>(-392f, 335f), 1i, 17539u), Struct_1(vec4<i32>(31457i, -4467i, 0i, i32(-2147483648)), vec2<f32>(2710f, -156f), -7423i, 0u), Struct_1(vec4<i32>(2147483647i, -51145i, -1393i, -1i), vec2<f32>(-840f, 706f), 1i, 0u), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 21983i), vec2<f32>(2276f, 544f), -4192i, 1923u), Struct_1(vec4<i32>(26336i, i32(-2147483648), 45972i, -12622i), vec2<f32>(-214f, -586f), 0i, 42535u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    global3 = array<Struct_1, 7>();
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(-abs(2147483647i), global1.x), firstTrailingBit(_wgslsmith_mod_i32(-1i, select(global1.x, global1.x, false))), 2147483647i, global1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)))), u_input.b, firstLeadingBit(51074u));
    var_0 = global3[_wgslsmith_index_u32(~countOneBits(1u), 7u)];
    global3 = array<Struct_1, 7>();
    let var_1 = !(!vec3<bool>(!(69i <= u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.d, ~3259u), 29u)], all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(var_0.d, 29u)]))));
    return vec4<bool>(var_1.x, true, true, false);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = !func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-762f, -2054f, 385f, 364f), vec4<f32>(669f, -857f, 503f, 809f), true))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), -1000f, -961f, _wgslsmith_f_op_f32(min(1323f, -354f)))));
    var var_1 = Struct_1(vec4<i32>(26422i, _wgslsmith_sub_i32(-1i, 2147483647i), -2147483647i, 29987i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(896f, -176f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(271f, -939f))))))), global1.x, 0u);
    let var_2 = true;
    let var_3 = Struct_2(vec2<u32>(~(~_wgslsmith_mult_u32(0u, var_1.d)), abs(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, 448f, global1.x == _wgslsmith_sub_i32(-1i, -19683i)))), var_1.b);
    var_1 = Struct_1(reverseBits(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.b, var_1.c, -1i) >> (vec4<u32>(31582u, var_3.a.x, 0u, 0u) % vec4<u32>(32u))), vec4<i32>(select(u_input.b, 0i, var_0.x), global1.x, firstTrailingBit(54256i), 1i))), vec2<f32>(var_1.b.x, 590f), -2147483647i, abs(var_3.a.x));
    return 0u;
}

fn func_1() -> vec2<f32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a) ^ u_input.a, 7u)];
    global1 = ~(-countOneBits(select(~var_0.a, select(vec4<i32>(1i, global1.x, var_0.c, 0i), vec4<i32>(2147483647i, global1.x, u_input.b, global1.x), global0[_wgslsmith_index_u32(var_0.d, 29u)]), 22799u >= var_0.d)));
    var_0 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~(~var_0.d), firstTrailingBit(113771u))), 7u)];
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(func_2(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(11742u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)])))), 7u)], _wgslsmith_mod_u32(max(12421u, 4294967295u), firstLeadingBit(1u)), global3[_wgslsmith_index_u32(~((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_0.d, 1u), vec3<u32>(17524u, u_input.a, 27346u)) >> (min(0u, u_input.a) % 32u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(6869u, var_0.d), abs(vec2<u32>(var_0.d, u_input.a))) % 32u)), 7u)], Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(var_0.d, u_input.a)), vec2<u32>(4294967295u, var_0.d | var_0.d)), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(ceil(var_0.b.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-289f, var_0.b.x, global0[_wgslsmith_index_u32(var_0.d, 29u)])), -1018f), var_0.b.x)));
    var var_2 = _wgslsmith_f_op_f32(var_1.a.b.x + _wgslsmith_f_op_f32(trunc(-796f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.b, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1058f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -446f) - vec2<f32>(var_0.b.x, var_0.b.x))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~1u, 29u)], func_3(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - _wgslsmith_f_op_f32(exp2(arg_0.x))), 1683f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_div_f32(arg_0.x, 156f), true)))).x);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(~vec3<u32>(0u, u_input.a, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 124416u, u_input.a), vec3<u32>(u_input.a, 1u, 0u))) | _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(vec3<u32>(u_input.a, 6583u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 10384u) % vec3<u32>(32u)))), vec3<u32>(1u ^ u_input.a, u_input.a, _wgslsmith_div_u32(reverseBits(func_2(vec3<bool>(global0[_wgslsmith_index_u32(60586u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], false))), u_input.a))), 29u)];
    var var_2 = Struct_1(vec4<i32>(global1.x | (u_input.b | -2147483647i), _wgslsmith_add_i32(1i, global1.x), u_input.b, abs(max(~global1.x, _wgslsmith_sub_i32(global1.x, -1i)))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f * -1339f))), countOneBits(global1.x), ~(~(14379u << (u_input.a % 32u))) | u_input.a);
    return Struct_4(~select(min(vec4<i32>(var_2.c, var_2.c, -81524i, -2147483647i), vec4<i32>(1i, var_2.c, var_2.c, -500i) ^ var_2.a), _wgslsmith_mod_vec4_i32(~var_2.a, ~vec4<i32>(global1.x, var_2.a.x, -38621i, var_2.c)), ~var_2.d == _wgslsmith_dot_vec3_u32(vec3<u32>(47012u, 18920u, 4294967295u), vec3<u32>(var_2.d, 0u, 0u))), vec2<u32>(firstLeadingBit(var_2.d), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36922u, 36187u) ^ vec3<u32>(1u, u_input.a, 43733u), firstLeadingBit(vec3<u32>(1u, 0u, var_2.d)))) >> (select(abs(max(vec2<u32>(1u, 2388u), vec2<u32>(u_input.a, 0u))), ~vec2<u32>(var_2.d, 1u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -1195f, arg_0.x, arg_0.x) + vec4<f32>(2595f, -361f, arg_0.x, var_2.b.x))).wz) % vec2<u32>(32u)), Struct_2(reverseBits(~(~vec2<u32>(u_input.a, var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1238f, 2042f), vec2<f32>(942f, var_2.b.x))), arg_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-515f, var_2.b.x) + arg_0)))), !var_0);
}

fn func_5(arg_0: Struct_4) -> vec3<f32> {
    global2 = arg_0.c.b;
    let var_0 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2541f) + _wgslsmith_f_op_f32(exp2(arg_0.c.c.x)))), _wgslsmith_div_f32(149f, arg_0.c.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.b - arg_0.c.c.x), arg_0.c.b)))), arg_0.c.b)).ww;
    global0 = array<bool, 29>();
    global1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.c.c))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1020f)), _wgslsmith_div_f32(arg_0.c.c.x, arg_0.c.c.x)))) * _wgslsmith_f_op_vec2_f32(arg_0.c.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.c)) * arg_0.c.c)))).a;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.c.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(694f * -775f))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(-arg_0.c.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c.x, -632f, 951f) * vec3<f32>(var_1, var_1, arg_0.c.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - arg_0.c.b) + _wgslsmith_f_op_f32(f32(-1f) * -636f)), 1f, _wgslsmith_f_op_f32(arg_0.c.c.x + _wgslsmith_f_op_f32(f32(-1f) * -3042f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -256f;
    global0 = array<bool, 29>();
    let var_0 = global1.x >= global1.x;
    global0 = array<bool, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1000f, -459f), _wgslsmith_f_op_vec3_f32(vec3<f32>(150f, 438f, 1854f) * vec3<f32>(-2253f, 253f, -1346f)), !vec3<bool>(false, global0[_wgslsmith_index_u32(42656u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(456f, -770f, -1000f) * vec3<f32>(-1833f, -114f, 502f)))))), _wgslsmith_f_op_vec3_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(999f, -864f))))))));
    let var_2 = vec4<i32>(reverseBits(global1.x), abs(firstTrailingBit(global1.x) ^ u_input.b), ~global1.x, -(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.b), min(global1.zy, global1.ww)) ^ u_input.b));
    global2 = -919f;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1.x, global1.x), var_2.wy)));
}

