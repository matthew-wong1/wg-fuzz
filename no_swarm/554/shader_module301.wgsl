struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: Struct_2 = Struct_2(Struct_1(2147483647i, vec4<i32>(2147483647i, 0i, 34498i, -1i), vec3<bool>(true, false, true), vec2<f32>(198f, -2276f), 1000f), Struct_1(1i, vec4<i32>(-1i, 1i, -1i, 0i), vec3<bool>(false, true, true), vec2<f32>(-785f, 370f), 1000f), 828f, 1416f);

var<private> global2: array<f32, 20>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = countOneBits(vec2<u32>(u_input.a, _wgslsmith_div_u32(7295u, ~u_input.a)));
    global2 = array<f32, 20>();
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(~min(~3183u, ~(var_0.x ^ u_input.a)), 13u)], Struct_1(~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-67457i, arg_0, global1.b.a), vec3<i32>(arg_0, 2147483647i, 48616i))), -(countOneBits(vec4<i32>(2147483647i, 55758i, -30637i, -2147483647i)) ^ vec4<i32>(-2147483647i, -1748i, global1.b.a, 2147483647i)), select(global1.a.c, !(!global1.b.c), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.d + global1.a.d) * _wgslsmith_f_op_vec2_f32(select(global1.b.d, global1.a.d, global1.b.c.x)))), -610f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(50935u, 20u)]) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22173u, 20u)] * 580f))), -514f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(654f)))));
    var var_2 = global3[_wgslsmith_index_u32(var_0.x, 13u)];
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0, _wgslsmith_sub_i32(2147483647i, arg_0)), _wgslsmith_sub_i32(-1i, max(var_1.b.a, -27186i))), global1.a.b, !var_1.a.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a.d))))), global2[_wgslsmith_index_u32(~u_input.a << (abs(~u_input.a) % 32u), 20u)]), Struct_1(firstTrailingBit(_wgslsmith_mult_i32(6685i << (u_input.a % 32u), ~arg_0)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-14084i, 2147483647i, arg_0, arg_0)) ^ min(global1.a.b, vec4<i32>(arg_0, 0i, var_1.a.a, 2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(global1.b.b.zyy, var_2.b.yzw), _wgslsmith_dot_vec4_i32(vec4<i32>(44889i, var_1.a.b.x, var_1.a.b.x, -4395i), var_2.b), -32635i, -2189i)), !var_1.a.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(217f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 20u)])), 911f), _wgslsmith_f_op_f32(f32(-1f) * -798f), 917f);
    return firstTrailingBit(max(-(-34208i ^ arg_0) | 1i, var_3.a.a));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(13388i, global1.b.b.x), func_3(_wgslsmith_mult_i32(global1.a.a, global1.a.b.x))), -reverseBits(vec4<i32>(global1.b.a, 49459i, global1.b.b.x, 0i)), arg_0.xww, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(~u_input.a, 20u)], 1233f))), -1000f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 15328u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(29184u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 1u))) & u_input.a, 13u)], _wgslsmith_f_op_f32(round(582f)), global1.b.d.x);
    var var_1 = vec3<u32>(~u_input.a, 0u, _wgslsmith_clamp_u32(32647u, min(u_input.a, 0u), 37302u));
    var var_2 = -516f;
    global2 = array<f32, 20>();
    var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, ~u_input.a, u_input.a), vec3<u32>(~var_1.x, 1u, ~91191u)), ~max(~vec3<u32>(4294967295u, 4294967295u, 69292u), ~vec3<u32>(30495u, 2966u, var_1.x))) >> (~firstTrailingBit(select(~vec3<u32>(0u, u_input.a, var_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(1u, var_1.x, 74144u)), vec3<bool>(global1.b.c.x, var_0.a.c.x, global0[_wgslsmith_index_u32(u_input.a, 24u)]))) % vec3<u32>(32u));
    return ~19351u;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = ~vec4<u32>(func_2(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 24u)], global1.a.c.x, true, global1.a.c.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.b.c.x), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], false, false), vec4<bool>(true, global1.b.c.x, global0[_wgslsmith_index_u32(3450u, 24u)], false), vec4<bool>(true, global1.a.c.x, global1.a.c.x, false))), global0[_wgslsmith_index_u32(0u, 24u)]), 14347u, arg_0.x, firstLeadingBit(~(~u_input.a)));
    let var_1 = 0i;
    let var_2 = global1.b.b.zzy;
    var var_3 = Struct_2(global1.b, global1.b, 1470f, _wgslsmith_f_op_f32(-global1.d));
    var var_4 = 1u;
    return var_3.a.c.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = global1.a;
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(var_1.e - _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(arg_2, 4294967295u), 20u)] * -1113f))));
    var var_3 = Struct_2(Struct_1(arg_3.a, vec4<i32>(var_0.a, -1i, _wgslsmith_mult_i32(-55900i, var_1.b.x), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(arg_1.x, 2147483647i, 2147483647i, var_1.a))) ^ abs(var_0.b), global1.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-566f, -1073f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-905f, global2[_wgslsmith_index_u32(u_input.a, 20u)]))))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 20u)]))), Struct_1(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1.b.xwy, var_1.b.zxz), _wgslsmith_add_i32(16480i, 35i), -20474i), var_1.b, vec3<bool>(any(!vec3<bool>(false, arg_3.c.x, true)), true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 20u)], 573f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.e + var_1.e), var_0.d.x, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + 1865f) - global1.a.d.x))))), _wgslsmith_f_op_f32(trunc(757f)));
    let var_4 = Struct_2(var_3.a, Struct_1(arg_1.x, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -2147483647i), vec2<i32>(global1.a.b.x, -2147483647i)), _wgslsmith_sub_i32(var_3.a.b.x, arg_3.a) | _wgslsmith_add_i32(2147483647i, var_1.a), -59899i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i) | arg_3.b.yz, global1.b.b.xz << (vec2<u32>(18728u, arg_2) % vec2<u32>(32u)))), var_3.b.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1553f, global1.a.d.x))), arg_3.d.x), _wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~u_input.a), 20u)]))), 631f);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(1u & arg_2), u_input.a << (1u % 32u), _wgslsmith_add_u32(~arg_2, 0u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~select(vec3<u32>(u_input.a, arg_2, 0u), vec3<u32>(arg_2, arg_2, arg_2), var_0.c)), vec3<u32>(~4294967295u ^ (16532u >> (arg_2 % 32u)), arg_2, _wgslsmith_sub_u32(4294967295u, arg_2) & firstLeadingBit(arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b.x;
    global3 = array<Struct_1, 13>();
    global1 = Struct_2(global3[_wgslsmith_index_u32(func_4(select(vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 24u)], any(global1.b.c.yy)), !global1.a.c.xy, vec2<bool>(func_1(vec2<u32>(18391u, 1u)), global1.a.c.x)), ~max(_wgslsmith_add_vec3_i32(vec3<i32>(-47272i, 1i, global1.b.b.x), vec3<i32>(-55642i, global1.b.b.x, -10375i)), ~vec3<i32>(global1.b.a, global1.b.a, 4480i)), 21230u, global1.b), 13u)], global3[_wgslsmith_index_u32(countOneBits(abs(1u)), 13u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(-1f));
    global1 = Struct_2(Struct_1(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.b.a, global1.a.b.x, -21755i), select(vec4<i32>(48450i, global1.a.b.x, global1.b.b.x, -2147483647i), global1.a.b, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(5178u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])))), vec4<i32>(~(-global1.b.a), global1.b.b.x, global1.a.a, max(-global1.b.b.x, -67353i >> (u_input.a % 32u))), select(select(global1.a.c, vec3<bool>(global1.b.c.x, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), !vec3<bool>(global1.b.c.x, global1.b.c.x, global1.a.c.x)), global1.a.c, select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], false, false), true), global1.b.c, !global1.a.c)), vec2<f32>(-667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-355f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(91703u, 29032u), 20u)] + _wgslsmith_f_op_f32(min(674f, global1.d))))), Struct_1(_wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(global1.a.b.x, 46564i), 21889i)), min(~global1.b.b, global1.b.b), select(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a), 24u)], all(global1.a.c.xy)), vec3<bool>(true, func_1(vec2<u32>(u_input.a, 67980u)), false), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], global1.a.c.x), global1.b.c, vec3<bool>(global1.b.c.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.a.c.x)), !vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], false), global1.b.c)), vec2<f32>(_wgslsmith_f_op_f32(-1f), -237f), global1.a.e), _wgslsmith_f_op_f32(step(-678f, _wgslsmith_f_op_f32(global1.c * global1.c))), global2[_wgslsmith_index_u32(24123u, 20u)]);
    let var_1 = -_wgslsmith_clamp_vec3_i32(select(-min(vec3<i32>(0i, 94517i, 0i), vec3<i32>(2147483647i, global1.b.b.x, -65862i)), vec3<i32>(-1i) * -vec3<i32>(0i, global1.a.b.x, global1.b.b.x), true), _wgslsmith_mod_vec3_i32(-(vec3<i32>(global1.b.a, global1.a.b.x, global1.a.b.x) | vec3<i32>(1i, -60001i, -1i)), ~global1.a.b.zzx), _wgslsmith_mult_vec3_i32(-vec3<i32>(-7384i, global1.b.a, 2147483647i), global1.a.b.wwx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.a.e, _wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(79336u, u_input.a), vec2<u32>(1229u, 30105u), vec2<u32>(u_input.a, 66576u))) >> (0u % 32u), 20u)]), ~2147483647i);
}

