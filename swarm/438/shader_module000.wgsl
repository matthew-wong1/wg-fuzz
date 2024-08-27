struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(37245u, vec4<f32>(-1843f, 1416f, -402f, -471f)), Struct_1(4294967295u, vec4<f32>(425f, -1061f, 1710f, 841f)), -482f), Struct_1(9942u, vec4<f32>(906f, -343f, -499f, -655f)), vec4<bool>(false, false, false, true), 13758i, Struct_1(4294967295u, vec4<f32>(852f, 344f, -1745f, 1568f)));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(272u, vec4<f32>(1526f, -1524f, -334f, 1007f)), Struct_1(65941u, vec4<f32>(1052f, -1193f, -145f, -1479f)), Struct_1(4294967295u, vec4<f32>(436f, -1464f, 544f, 875f)), Struct_1(0u, vec4<f32>(483f, -1000f, 202f, 1000f)), Struct_1(4294967295u, vec4<f32>(547f, 563f, 1000f, 323f)), Struct_1(30269u, vec4<f32>(-849f, -988f, 661f, -535f)), Struct_1(33176u, vec4<f32>(286f, 1701f, -1194f, -1339f)), Struct_1(1u, vec4<f32>(-205f, -956f, 553f, -1000f)), Struct_1(1u, vec4<f32>(1055f, -275f, 1662f, -171f)), Struct_1(53363u, vec4<f32>(-459f, -566f, 160f, -254f)), Struct_1(92231u, vec4<f32>(639f, 533f, 863f, 1665f)), Struct_1(24261u, vec4<f32>(1107f, -1000f, -389f, -1000f)), Struct_1(0u, vec4<f32>(254f, 1092f, -1018f, -1214f)), Struct_1(16422u, vec4<f32>(-620f, 251f, 1192f, -822f)), Struct_1(0u, vec4<f32>(-2144f, -434f, 532f, -554f)), Struct_1(1u, vec4<f32>(300f, -1000f, 2646f, -958f)), Struct_1(30596u, vec4<f32>(-192f, -815f, 741f, 581f)), Struct_1(17252u, vec4<f32>(1682f, -257f, -130f, -310f)), Struct_1(8567u, vec4<f32>(657f, -1313f, -1344f, -169f)), Struct_1(42794u, vec4<f32>(328f, 1566f, 567f, -962f)), Struct_1(14511u, vec4<f32>(-1162f, 1000f, -1053f, -952f)), Struct_1(40040u, vec4<f32>(-2330f, -802f, 958f, -503f)), Struct_1(1u, vec4<f32>(609f, 769f, -294f, -600f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    let var_0 = Struct_2(Struct_1(48999u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f + global1.e.b.x)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(floor(global1.a.c))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1110f))), Struct_1(~select(_wgslsmith_mult_u32(1u, 1u), countOneBits(24798u), false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.b.b)))))), _wgslsmith_f_op_f32(global1.a.b.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1108f)) - 182f)));
    global1 = Struct_3(Struct_2(Struct_1(~arg_1, vec4<f32>(_wgslsmith_f_op_f32(532f + global1.b.b.x), _wgslsmith_f_op_f32(trunc(1052f)), var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x))), global1.b, 1f), global1.e, global1.c, global1.d, Struct_1(~_wgslsmith_clamp_u32(~4294967295u, var_0.a.a, arg_1), _wgslsmith_f_op_vec4_f32(-global1.e.b)));
    var var_1 = global2[_wgslsmith_index_u32(arg_1, 23u)];
    var var_2 = Struct_1(~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -482f, -297f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-global1.b.b))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), global1.b.b.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(-285f, 1235f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(-1791f, arg_0.x)), _wgslsmith_f_op_f32(-var_1.b.x), global1.e.b.x, -1484f)));
    var var_3 = !(!(!vec3<bool>(false, true, all(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true)))));
    return _wgslsmith_sub_i32(~_wgslsmith_sub_i32(2147483647i, u_input.b), -23053i) ^ _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-39169i, -23941i, -1i), vec3<i32>(u_input.b, 29690i, u_input.b)), vec3<i32>(global1.d, u_input.b, global1.d)), global1.d, _wgslsmith_clamp_i32(global1.d, global1.d, u_input.b)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = global1.e.b.x;
    global1 = Struct_3(global1.a, global1.b, select(!(!vec4<bool>(global1.c.x, true, global1.c.x, true)), global1.c, false), func_3(_wgslsmith_f_op_vec4_f32(global1.e.b * _wgslsmith_f_op_vec4_f32(step(global1.a.b.b, global1.b.b))), ~u_input.d | ~4294967295u) << (73796u % 32u), global1.e);
    var var_0 = _wgslsmith_mod_i32(firstTrailingBit(-20762i), arg_0);
    var_0 = -abs(_wgslsmith_add_i32(countOneBits(u_input.b), u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global1.a.b.b.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, global1.b.b.x)), all(!global1.c.zw))))) - _wgslsmith_f_op_vec2_f32(global1.b.b.yy - global1.e.b.zx));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_sub_u32(firstLeadingBit(u_input.e), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.b))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 19441u, u_input.c.x), ~vec3<u32>(4294967295u, u_input.c.x, global1.e.a)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * global1.a.a.b.x), _wgslsmith_div_f32(global1.e.b.x, -2543f), -1175f, _wgslsmith_f_op_f32(global1.b.b.x - 2579f))), _wgslsmith_f_op_f32(trunc(var_1.x))), global2[_wgslsmith_index_u32(abs(43081u), 23u)], vec4<bool>(!(false || global1.c.x) | true, global1.b.b.x >= _wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true, global1.c.x), countOneBits(~1i), Struct_1(~(~80488u), _wgslsmith_f_op_vec4_f32(global1.e.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.e.b * global1.b.b) * _wgslsmith_f_op_vec4_f32(global1.a.a.b * vec4<f32>(691f, var_1.x, var_1.x, -488f))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(i32(-1i) * -38431i);
    var_0 = func_2(u_input.b);
    var_0 = func_2(1i & u_input.b);
    var_0 = func_2(-1i);
    var var_1 = func_2(_wgslsmith_mod_i32(1i, countOneBits(-37450i)));
    return var_0.a.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = global1.a;
    global0 = _wgslsmith_f_op_f32(1902f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.b.x)))) - arg_1.e.b.x));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.e.b.x)), 1000f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_1(vec2<bool>(true, true)).b.x, arg_2.b.b.x))));
    var var_2 = func_1(global1.c.wy);
    global2 = array<Struct_1, 23>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_u32(global1.a.a.a, ~global1.e.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, 1594f, global1.a.a.b.x, 1035f))), func_4(global1.d, Struct_3(global1.a, func_1(global1.c.xz), vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), -2147483647i, global2[_wgslsmith_index_u32(1u, 23u)]), Struct_2(Struct_1(0u, global1.a.a.b), global1.a.a, _wgslsmith_f_op_f32(global1.e.b.x * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1046f)), global2[_wgslsmith_index_u32(global1.b.a, 23u)], global1.c, global1.d, global1.a.a);
    let var_0 = Struct_1(_wgslsmith_add_u32(~32150u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(~u_input.e, countOneBits(global1.b.a), func_4(global1.d, Struct_3(global1.a, global2[_wgslsmith_index_u32(global1.e.a, 23u)], vec4<bool>(global1.c.x, false, false, true), 2147483647i, Struct_1(u_input.c.x, global1.e.b)), Struct_2(Struct_1(u_input.a.x, vec4<f32>(global1.b.b.x, global1.a.a.b.x, 122f, -546f)), Struct_1(global1.b.a, global1.b.b), -214f)).a))), global1.e.b);
    var var_1 = ~_wgslsmith_mult_vec3_i32(select(-abs(vec3<i32>(u_input.b, global1.d, u_input.b)), vec3<i32>(-u_input.b, ~0i, u_input.b), true), select(vec3<i32>(-1i) * -vec3<i32>(global1.d, u_input.b, u_input.b), firstLeadingBit(abs(vec3<i32>(global1.d, 18685i, -1i))), all(!vec2<bool>(global1.c.x, false))));
    var var_2 = 2147483647i;
    let var_3 = -reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x | global1.d, ~u_input.b), ~vec2<i32>(var_1.x, 29947i)));
    var_1 = vec3<i32>(-1i, ~2147483647i, _wgslsmith_mult_i32(abs(var_1.x), ~(-global1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(min((~u_input.d & countOneBits(global1.e.a)) << ((_wgslsmith_dot_vec2_u32(u_input.c, u_input.c) >> (firstLeadingBit(0u) % 32u)) % 32u), 1u));
}

