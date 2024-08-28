struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec4<f32>(-155f, -497f, 950f, 177f), -18815i, vec3<f32>(-1217f, 159f, -1000f)), Struct_1(false, vec4<f32>(1530f, -892f, 781f, 1000f), i32(-2147483648), vec3<f32>(706f, -471f, 1099f)), Struct_1(false, vec4<f32>(-216f, -233f, 1736f, 1000f), 20839i, vec3<f32>(-153f, -1688f, 220f)), Struct_1(false, vec4<f32>(205f, 557f, 1000f, -1123f), 34156i, vec3<f32>(-672f, -164f, -2272f)), Struct_1(false, vec4<f32>(-3178f, -792f, 955f, 553f), -40673i, vec3<f32>(-1805f, -652f, -945f)), Struct_1(true, vec4<f32>(-434f, 932f, -1280f, 416f), -15342i, vec3<f32>(-341f, -630f, -1922f)), Struct_1(false, vec4<f32>(-699f, 687f, -1603f, 1347f), -12235i, vec3<f32>(560f, -554f, -259f)), Struct_1(false, vec4<f32>(1054f, -285f, 1000f, 100f), 46835i, vec3<f32>(-574f, 1814f, -175f)), Struct_1(false, vec4<f32>(782f, -1000f, -2205f, 710f), 2147483647i, vec3<f32>(204f, 1289f, -2125f)), Struct_1(false, vec4<f32>(1000f, -1000f, -728f, -718f), 0i, vec3<f32>(314f, -466f, -586f)), Struct_1(false, vec4<f32>(-1726f, -273f, -914f, -158f), -34802i, vec3<f32>(-1824f, 209f, -787f)), Struct_1(true, vec4<f32>(-1000f, -241f, 604f, -752f), -20480i, vec3<f32>(-940f, 787f, 2852f)), Struct_1(true, vec4<f32>(703f, -1192f, 1806f, -180f), 2147483647i, vec3<f32>(-1349f, -459f, 688f)), Struct_1(true, vec4<f32>(1991f, -1957f, -387f, -1000f), 20401i, vec3<f32>(803f, -487f, 690f)), Struct_1(false, vec4<f32>(-1000f, -408f, -588f, -263f), 25854i, vec3<f32>(-1000f, 509f, 360f)), Struct_1(true, vec4<f32>(-1160f, -387f, -712f, 1700f), 1i, vec3<f32>(-539f, 474f, 1356f)));

var<private> global1: Struct_1;

var<private> global2: array<f32, 23>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = !(!arg_1);
    global1 = Struct_1(!arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(462f - global2[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_div_f32(global1.d.x, arg_0.x), _wgslsmith_f_op_f32(-1795f - arg_0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, global2[_wgslsmith_index_u32(38255u, 23u)], global1.b.x, 964f) - arg_0)))))), abs(~(-2147483647i)) << (_wgslsmith_sub_u32(u_input.b, 0u) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))))));
    var var_1 = !vec2<bool>(arg_1.x & select(var_0.x, true, !var_0.x), !all(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(831f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) == _wgslsmith_f_op_f32(ceil(-1837f)), _wgslsmith_f_op_vec4_f32(-arg_0), global1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1656f, _wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)] + 162f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a, 23u)]))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1406f, _wgslsmith_f_op_f32(exp2(global1.d.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global1.b.x, -789f) + global1.d))))), var_1.x)));
    var var_3 = Struct_1(0i <= _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, -28326i, global1.c, 0i), max(vec4<i32>(global1.c, 39588i, var_2.c, var_2.c), vec4<i32>(global1.c, 48012i, global1.c, 0i))), -22493i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-305f, global1.d.x)), 1746f)))), 0i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), 250f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1790f)))), vec3<f32>(_wgslsmith_div_f32(1438f, _wgslsmith_f_op_f32(max(var_2.d.x, var_2.b.x))), arg_0.x, global1.d.x)));
    return arg_1.zx;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_1(true, global1.b, 19049i, global1.b.xzw);
    var var_1 = vec2<bool>(true & arg_3, all(select(!(!vec2<bool>(global1.a, false)), func_3(var_0.b, vec3<bool>(true, true, global1.a)), any(select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, false, false, false), vec4<bool>(global1.a, false, var_0.a, global1.a))))));
    var var_2 = -(-var_0.c | _wgslsmith_mod_i32(29113i, var_0.c));
    return vec4<u32>(max(firstTrailingBit(u_input.b), abs(0u)), ~select(_wgslsmith_dot_vec2_u32(arg_2, _wgslsmith_div_vec2_u32(vec2<u32>(9883u, u_input.a), vec2<u32>(arg_2.x, arg_2.x))), ~14040u, arg_3), _wgslsmith_sub_u32(~u_input.b, 67100u), u_input.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(func_2(-14622i, global2[_wgslsmith_index_u32(4294967295u, 23u)], vec2<u32>(u_input.b, 3027u), arg_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(14809u, u_input.b, u_input.a, u_input.b), vec4<u32>(0u, 0u, 4294967295u, 1u)), !vec4<bool>(arg_0.x, arg_1.x, true, global1.a)), ~(vec4<u32>(1u, 0u, u_input.b, 4294967295u) & vec4<u32>(0u, u_input.b, u_input.a, 16819u))), ~(~(u_input.a << (u_input.b % 32u)))) >> ((33027u | (u_input.b | firstTrailingBit(4294967295u))) % 32u), 16u)];
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-814f, -816f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(floor(-804f))))), -1i, _wgslsmith_f_op_vec3_f32(min(global1.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.d + var_0.b.xxy))))))));
    var var_2 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(68429u << (firstLeadingBit(~49159u) % 32u), 4294967295u));
    global0 = array<Struct_1, 16>();
    var var_3 = arg_1.x;
    return _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32((abs(vec2<i32>(6098i, -1i)) ^ vec2<i32>(var_0.c, var_1.c)) << (firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), select(vec2<i32>(74998i, 0i), select(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, global1.c), vec2<i32>(-1i, 2147483647i)), vec2<i32>(-27758i, var_1.c), true), !arg_2), ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, 13783i), vec2<i32>(-1i, global1.c)) << (~(~vec2<u32>(1876u, 4294967295u)) % vec2<u32>(32u))), vec2<i32>(var_1.c, _wgslsmith_sub_i32(global1.c, 35867i) | -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(min((func_1(vec4<bool>(false, global1.a, global1.a, true), vec3<bool>(global1.a, true, true), vec2<bool>(global1.a, true), vec4<bool>(global1.a, false, global1.a, true)) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) << (vec2<u32>(select(u_input.a, u_input.a, global1.a), _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a)) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(62221i, global1.c))), ~(-abs(vec2<i32>(global1.c, 1i)) ^ firstTrailingBit(max(vec2<i32>(global1.c, 5692i), vec2<i32>(-2147483647i, -18562i)))));
    global0 = array<Struct_1, 16>();
    global2 = array<f32, 23>();
    var var_1 = global2[_wgslsmith_index_u32(max(4294967295u, func_2(-global1.c, _wgslsmith_f_op_f32(f32(-1f) * -293f), vec2<u32>(20223u, u_input.a), true).x | (func_2(global1.c, global1.b.x, vec2<u32>(169467u, 0u), global1.a).x & abs(4294967295u))) ^ ~_wgslsmith_sub_u32(u_input.a, countOneBits(4294967295u)), 23u)];
    let var_2 = select(!select(select(select(vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(global1.a, global1.a, true, false)), vec4<bool>(true, true, true, true), -672f > global1.d.x), vec4<bool>(all(vec3<bool>(global1.a, global1.a, false)), func_3(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], global1.b.x, global2[_wgslsmith_index_u32(58253u, 23u)]), vec3<bool>(true, true, true)).x, true, true), select(global1.a, true, false)), vec4<bool>(all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(global1.a, global1.a, false, true), vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(false, false, global1.a, true)), !vec4<bool>(false, global1.a, false, global1.a))), any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), any(select(!vec3<bool>(global1.a, true, false), vec3<bool>(global1.a, global1.a, global1.a), all(vec3<bool>(false, false, false))))), false && all(!select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(firstTrailingBit(vec3<i32>(var_0.x, global1.c, -7801i)), vec3<i32>(1237i, var_0.x, global1.c) >> (vec3<u32>(u_input.b, 1u, u_input.a) % vec3<u32>(32u)))), global1.b.zw);
}

