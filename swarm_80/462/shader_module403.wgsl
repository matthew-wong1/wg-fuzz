struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(false, vec2<i32>(20508i, 0i), false, vec4<f32>(-978f, -132f, 492f, 3336f), 1000f)), Struct_2(Struct_1(true, vec2<i32>(-1i, 1i), true, vec4<f32>(1883f, 673f, 1236f, 250f), -492f)), Struct_2(Struct_1(false, vec2<i32>(18350i, -43932i), false, vec4<f32>(-1217f, -1367f, 1473f, 222f), -540f)), Struct_2(Struct_1(true, vec2<i32>(40425i, 16194i), false, vec4<f32>(-298f, 362f, -673f, 496f), -1175f)), Struct_2(Struct_1(false, vec2<i32>(-28630i, 42827i), true, vec4<f32>(-723f, 2362f, 1497f, -1185f), 706f)), Struct_2(Struct_1(true, vec2<i32>(-25364i, -66941i), true, vec4<f32>(-2615f, -698f, -1310f, 958f), 635f)), Struct_2(Struct_1(false, vec2<i32>(10317i, 1524i), false, vec4<f32>(2018f, 658f, 1000f, 1699f), -868f)), Struct_2(Struct_1(true, vec2<i32>(-2760i, -8055i), false, vec4<f32>(2465f, 1297f, 259f, -1581f), 1211f)), Struct_2(Struct_1(false, vec2<i32>(-55681i, -37179i), false, vec4<f32>(351f, 775f, 626f, 1411f), -675f)), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 2147483647i), true, vec4<f32>(305f, 588f, -987f, -1628f), -916f)), Struct_2(Struct_1(false, vec2<i32>(2147483647i, 2147483647i), true, vec4<f32>(1631f, -1508f, 872f, -182f), -553f)), Struct_2(Struct_1(true, vec2<i32>(-40937i, 0i), true, vec4<f32>(1807f, 957f, 620f, -1365f), -2014f)), Struct_2(Struct_1(false, vec2<i32>(-10309i, 0i), true, vec4<f32>(-1000f, -2077f, 834f, 718f), -962f)), Struct_2(Struct_1(false, vec2<i32>(50987i, 67372i), false, vec4<f32>(-357f, 520f, -991f, 1386f), 1028f)), Struct_2(Struct_1(true, vec2<i32>(16481i, 0i), false, vec4<f32>(1000f, -1000f, -777f, 1275f), 410f)), Struct_2(Struct_1(false, vec2<i32>(-1i, 1i), true, vec4<f32>(-1157f, 807f, -260f, -1188f), 1080f)));

var<private> global1: array<Struct_3, 24>;

var<private> global2: vec4<f32> = vec4<f32>(-1134f, 236f, 721f, 1000f);

var<private> global3: array<bool, 15>;

var<private> global4: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(1495f), Struct_4(309f), Struct_4(-490f), Struct_4(1073f), Struct_4(720f), Struct_4(-609f), Struct_4(-425f), Struct_4(-399f), Struct_4(384f), Struct_4(-1336f), Struct_4(477f), Struct_4(384f), Struct_4(860f), Struct_4(-339f), Struct_4(448f), Struct_4(-211f), Struct_4(-609f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 15u)], vec2<i32>(_wgslsmith_sub_i32(~(-3166i), 21417i), -19353i), false, vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1383f, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-331f, global2.x), global2.x)) * _wgslsmith_f_op_f32(min(942f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) * 119f)))), 1531f);
    global0 = array<Struct_2, 16>();
    let var_1 = all(vec3<bool>(true, true, any(vec2<bool>(true, var_0.a)) || false));
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1939f)), _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(1669f * var_0.e), var_0.e) + vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(ceil(var_0.d.x)), global2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, global2.x, -194f, _wgslsmith_div_f32(1000f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, 101f, var_0.d.x, 845f) - vec4<f32>(var_0.e, var_0.d.x, var_0.e, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d)))) - var_0.d), select(select(!vec4<bool>(false, true, var_1, false), !vec4<bool>(var_1, global3[_wgslsmith_index_u32(u_input.b, 15u)], false, global3[_wgslsmith_index_u32(u_input.b, 15u)]), global3[_wgslsmith_index_u32(0u, 15u)] || all(vec2<bool>(var_0.c, false))), select(vec4<bool>(true, var_0.b.x > var_0.b.x, all(vec2<bool>(var_0.a, true)), true), vec4<bool>(var_1 && true, var_0.a || var_1, var_0.c & false, var_0.c), !select(vec4<bool>(var_0.a, true, var_0.a, global3[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(50174u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], true, global3[_wgslsmith_index_u32(1u, 15u)], false))), select(select(select(vec4<bool>(false, var_1, true, false), vec4<bool>(var_1, true, global3[_wgslsmith_index_u32(25685u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(true, var_1, var_1, var_0.a)), vec4<bool>(var_0.a, var_0.a, var_0.a, global3[_wgslsmith_index_u32(u_input.b, 15u)]), !vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.a)), select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b, 15u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], false, false, global3[_wgslsmith_index_u32(u_input.b, 15u)]), var_0.a), vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * var_0.e), _wgslsmith_div_f32(var_0.d.x, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -177f) + _wgslsmith_f_op_f32(275f + global2.x))), true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = global4[_wgslsmith_index_u32(~140802u & ~countOneBits(u_input.b), 17u)];
    global3 = array<bool, 15>();
    let var_1 = Struct_5(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_1, 15u)], global3[_wgslsmith_index_u32(~arg_1, 15u)] | any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]))), vec2<bool>(global3[_wgslsmith_index_u32(1u, 15u)], !(-2147483647i > u_input.a.x)), vec2<bool>(~47169u < min(arg_1, 44912u), select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37979u), vec2<u32>(0u, arg_1)), 15u)], global3[_wgslsmith_index_u32(1u, 15u)], true))), Struct_1(global3[_wgslsmith_index_u32(~(~arg_1), 15u)], abs(vec2<i32>(firstLeadingBit(arg_0.x), -1i)), global3[_wgslsmith_index_u32(945u, 15u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, -1747f, _wgslsmith_f_op_f32(-920f * -1308f), -339f))), _wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_3(vec4<u32>(~31352u, (57205u << (u_input.b % 32u)) | 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(22852u, arg_1), abs(vec2<u32>(4294967295u, u_input.b))), reverseBits(_wgslsmith_div_u32(min(u_input.b, 0u), min(21465u, arg_1)))), !select(!select(vec3<bool>(var_1.a.x, global3[_wgslsmith_index_u32(arg_1, 15u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(26932u, 15u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], var_1.a.x, false)), select(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(arg_1, 15u)]), vec3<bool>(false, true, false), false), vec3<bool>(true, true, var_1.b.a), global3[_wgslsmith_index_u32(min(1u, 12756u), 15u)]), vec3<bool>(true, true, true)), Struct_2(var_1.b), _wgslsmith_div_i32(0i, -_wgslsmith_div_i32(arg_2.x, var_1.b.b.x) & reverseBits(1i)));
    var var_3 = var_2.c.a;
    return select(select(!(!vec3<bool>(var_3.c, true, false)), !vec3<bool>(var_2.c.a.a, !var_3.a, var_3.a), !vec3<bool>(var_3.d.x < -485f, select(var_3.a, var_2.c.a.a, var_3.a), var_3.a != true)), select(select(select(var_2.b, var_2.b, all(vec4<bool>(false, var_3.c, global3[_wgslsmith_index_u32(0u, 15u)], true))), !vec3<bool>(false, true, var_3.c), !global3[_wgslsmith_index_u32(var_2.a.x, 15u)] || false), vec3<bool>(!any(var_2.b.zx), true, var_2.c.a.c), false), select(!select(vec3<bool>(var_3.c, true, false), select(var_2.b, var_2.b, var_2.b), true), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(93139u, 15u)], var_1.b.c, global3[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(var_1.b.a, false, false), var_1.b.a), select(vec3<bool>(var_3.a, global3[_wgslsmith_index_u32(u_input.b, 15u)], true), vec3<bool>(var_1.b.c, global3[_wgslsmith_index_u32(var_2.a.x, 15u)], true), false), select(var_2.c.a.c, var_3.c, var_2.b.x)), !select(vec3<bool>(var_2.c.a.c, var_3.c, false), var_2.b, vec3<bool>(true, true, true)), select(vec3<bool>(var_1.b.c, true, global3[_wgslsmith_index_u32(arg_1, 15u)]), !vec3<bool>(var_1.b.c, false, true), vec3<bool>(true, false, false))), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32) -> Struct_5 {
    global0 = array<Struct_2, 16>();
    let var_0 = !func_2(vec2<i32>(u_input.a.x, ~u_input.a.x), 61360u, ~vec3<i32>(~(-1i), ~u_input.a.x, u_input.a.x)).yy;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 252f, global2.x))), _wgslsmith_f_op_vec3_f32(min(global2.ywx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1926f, -1684f, -895f) * vec3<f32>(594f, arg_2, arg_2))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global2.x));
    let var_3 = Struct_1(u_input.a.x != -51953i, ~u_input.a.yx, true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_1.x, 1f, var_2.x))))), _wgslsmith_f_op_f32(sign(-598f)));
    return Struct_5(!(!select(select(vec2<bool>(var_3.a, arg_1.x), arg_0.xw, vec2<bool>(arg_0.x, arg_0.x)), select(var_0, arg_0.yx, global3[_wgslsmith_index_u32(0u, 15u)]), var_0)), var_3);
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = func_4(vec4<bool>(!(!all(vec2<bool>(true, global3[_wgslsmith_index_u32(6726u, 15u)]))), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, 0u), 15u)], !((0i << (u_input.b % 32u)) >= ~(-2147483647i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b)), select(vec2<u32>(4294967295u, 111867u), vec2<u32>(1u, u_input.b), vec2<bool>(false, true)) << (vec2<u32>(29234u, 0u) % vec2<u32>(32u))), 15u)]), select(!select(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(8845u, 15u)]), vec3<bool>(true, true, false), true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(73059u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(false, false, true)), select(func_2(vec2<i32>(-10405i, u_input.a.x) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), 12u & u_input.b, u_input.a), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], true, global3[_wgslsmith_index_u32(36658u, 15u)]), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(58735u, 15u)], true)), select(select(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 15u)], true, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], true, global3[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(65666u, 15u)])), select(vec3<bool>(global3[_wgslsmith_index_u32(44906u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(21924u, 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(true, false, false), vec3<bool>(true, false, global3[_wgslsmith_index_u32(52426u, 15u)])), all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(15896u, 15u)], false))), vec3<bool>(func_2(vec2<i32>(12999i, -2147483647i), 1u, vec3<i32>(u_input.a.x, -11743i, u_input.a.x)).x, global3[_wgslsmith_index_u32(4294967295u, 15u)], any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)]))))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) - _wgslsmith_f_op_f32(global2.x - -114f))))));
    let var_1 = firstLeadingBit(~0u);
    var var_2 = Struct_5(select(var_0.a, var_0.a, global3[_wgslsmith_index_u32(u_input.b ^ abs(~4294967295u), 15u)]), Struct_1(!any(!vec4<bool>(true, var_0.b.c, true, false)), var_0.b.b, arg_0.a < _wgslsmith_f_op_f32(func_3()), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1043f, -241f))), global2.x, -836f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(797f - arg_0.a)))));
    let var_3 = var_2.a.x;
    global4 = array<Struct_4, 17>();
    return -7596i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(func_1(global4[_wgslsmith_index_u32(u_input.b, 17u)]), (i32(-1i) * -2147483647i) >> (abs(1u) % 32u)), ~(u_input.a.x | (u_input.a.x & 1i)), _wgslsmith_mult_i32((u_input.a.x ^ -u_input.a.x) >> (((u_input.b & 4230u) << (u_input.b % 32u)) % 32u), 7782i), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-664f, -1000f, _wgslsmith_f_op_f32(round(936f)), global2.x), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 1070f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, -579f, -426f), vec4<f32>(global2.x, -1183f, 1050f, global2.x))), !vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(121561u, 15u)])))))));
    let var_2 = u_input.b;
    global4 = array<Struct_4, 17>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-100f, var_1.x)))), _wgslsmith_div_f32(var_1.x, 742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + _wgslsmith_f_op_f32(step(-349f, var_1.x))) - _wgslsmith_f_op_f32(-695f + _wgslsmith_f_op_f32(trunc(-213f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = !select(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(~u_input.b, 15u)], all(vec4<bool>(true, global3[_wgslsmith_index_u32(var_2, 15u)], false, global3[_wgslsmith_index_u32(4294967295u, 15u)])), true), select(vec4<bool>(true, global3[_wgslsmith_index_u32(min(var_2, u_input.b), 15u)], -1i > u_input.a.x, true & global3[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(!global3[_wgslsmith_index_u32(25096u, 15u)], true, all(vec4<bool>(true, false, global3[_wgslsmith_index_u32(var_2, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])), global3[_wgslsmith_index_u32(u_input.b | u_input.b, 15u)]), any(vec4<bool>(global3[_wgslsmith_index_u32(var_2, 15u)], global3[_wgslsmith_index_u32(79812u, 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)], false)) & global3[_wgslsmith_index_u32(abs(u_input.b), 15u)]), !vec4<bool>(global3[_wgslsmith_index_u32(~4294967295u, 15u)], any(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(1u, 15u)], false)), all(vec3<bool>(false, global3[_wgslsmith_index_u32(26795u, 15u)], global3[_wgslsmith_index_u32(var_2, 15u)])), false));
    global0 = array<Struct_2, 16>();
    global1 = array<Struct_3, 24>();
    var var_4 = Struct_2(Struct_1(var_3.x, vec2<i32>(1i, var_0.x), !(983f >= _wgslsmith_f_op_f32(393f * global2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1167f, 509f, 1014f) * vec4<f32>(1373f, -584f, var_1.x, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1244f, var_1.x, -741f, var_1.x), vec4<f32>(-214f, global2.x, var_1.x, var_1.x)) * vec4<f32>(var_1.x, global2.x, -1000f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(trunc(global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))));
}

