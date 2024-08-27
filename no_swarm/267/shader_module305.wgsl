struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1000f, vec4<f32>(276f, 1000f, -888f, 1311f), vec3<bool>(true, false, false), vec2<f32>(139f, -698f)), Struct_1(-1542f, vec4<f32>(399f, -789f, 855f, -733f), vec3<bool>(false, true, true), vec2<f32>(1000f, 816f)), Struct_1(1303f, vec4<f32>(716f, 912f, -358f, -446f), vec3<bool>(false, true, true), vec2<f32>(474f, -721f)), Struct_1(508f, vec4<f32>(1284f, 932f, 509f, -1000f), vec3<bool>(false, false, true), vec2<f32>(-528f, 379f)), Struct_1(-568f, vec4<f32>(-1090f, -722f, 699f, 1178f), vec3<bool>(true, false, false), vec2<f32>(1868f, 108f)), Struct_1(228f, vec4<f32>(-1386f, 950f, -202f, 859f), vec3<bool>(true, false, false), vec2<f32>(-1000f, 868f)), Struct_1(113f, vec4<f32>(-913f, -1000f, 1035f, -896f), vec3<bool>(false, true, true), vec2<f32>(-575f, 370f)), Struct_1(-1022f, vec4<f32>(409f, 775f, 1163f, 1018f), vec3<bool>(false, false, false), vec2<f32>(1000f, -589f)), Struct_1(-1525f, vec4<f32>(-1919f, 337f, -1087f, -1000f), vec3<bool>(false, false, false), vec2<f32>(2177f, -585f)), Struct_1(963f, vec4<f32>(1256f, 274f, -2498f, -1000f), vec3<bool>(true, true, false), vec2<f32>(304f, -2288f)), Struct_1(1442f, vec4<f32>(1441f, -3390f, 1072f, 642f), vec3<bool>(false, false, false), vec2<f32>(-540f, -773f)), Struct_1(-281f, vec4<f32>(-551f, 1382f, -478f, 254f), vec3<bool>(false, false, false), vec2<f32>(348f, -1000f)), Struct_1(-1615f, vec4<f32>(-632f, 572f, -562f, 372f), vec3<bool>(false, false, false), vec2<f32>(-2202f, 901f)), Struct_1(2288f, vec4<f32>(1210f, 455f, -513f, 1264f), vec3<bool>(true, false, true), vec2<f32>(-927f, -917f)), Struct_1(-335f, vec4<f32>(273f, -154f, 119f, -1000f), vec3<bool>(true, false, true), vec2<f32>(-1000f, 723f)), Struct_1(-332f, vec4<f32>(-620f, 1000f, 1027f, 1600f), vec3<bool>(true, false, true), vec2<f32>(-2344f, 542f)), Struct_1(1000f, vec4<f32>(-885f, -928f, 937f, 252f), vec3<bool>(false, true, true), vec2<f32>(-456f, -218f)), Struct_1(-522f, vec4<f32>(959f, -122f, 1000f, -458f), vec3<bool>(false, true, true), vec2<f32>(-581f, 145f)), Struct_1(-261f, vec4<f32>(140f, -116f, 1539f, 993f), vec3<bool>(true, false, false), vec2<f32>(-552f, 1393f)), Struct_1(-268f, vec4<f32>(1380f, -1000f, 1000f, 601f), vec3<bool>(false, true, true), vec2<f32>(-223f, 634f)), Struct_1(-862f, vec4<f32>(1591f, -1000f, 1464f, -3357f), vec3<bool>(true, false, true), vec2<f32>(451f, 127f)), Struct_1(-1000f, vec4<f32>(1687f, -577f, 456f, 852f), vec3<bool>(false, false, false), vec2<f32>(-219f, 1387f)), Struct_1(-1508f, vec4<f32>(1532f, 1000f, 440f, 492f), vec3<bool>(false, true, true), vec2<f32>(-1112f, 493f)), Struct_1(-1000f, vec4<f32>(1018f, 226f, -807f, 600f), vec3<bool>(false, true, true), vec2<f32>(-833f, 2178f)), Struct_1(-338f, vec4<f32>(-388f, 1837f, -787f, -853f), vec3<bool>(false, true, false), vec2<f32>(-1839f, -261f)), Struct_1(-1767f, vec4<f32>(1587f, 1487f, -625f, -914f), vec3<bool>(true, false, true), vec2<f32>(803f, 307f)));

var<private> global2: array<bool, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 26u)];
    global0 = array<bool, 16>();
    var var_1 = Struct_1(1566f, var_0.b, !vec3<bool>(select(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], arg_0.c.x)), arg_0.c.x & var_0.c.x, true), var_0.c.x, any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(u_input.d, 16u)], true, var_0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.d)) * vec2<f32>(1195f, var_0.a)))));
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(51513u, ~u_input.c.x), _wgslsmith_div_u32(u_input.d << (1u % 32u), ~u_input.d)) | 4294967295u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1422f), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(345f - _wgslsmith_f_op_f32(step(-2660f, var_0.a))) * _wgslsmith_f_op_f32(abs(902f))), -102f, var_0.b.x), vec3<bool>(false, var_1.c.x, false), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(2219f * var_0.a)), -777f))));
    return _wgslsmith_f_op_f32(-var_0.d.x) == -223f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global2 = array<bool, 27>();
    var var_0 = arg_1.x << (firstTrailingBit(u_input.d) % 32u);
    var var_1 = Struct_1(-1010f, arg_0.b, select(select(vec3<bool>(any(arg_0.c.zx), false, !global0[_wgslsmith_index_u32(56323u, 16u)]), arg_0.c, true), vec3<bool>(any(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(4294967295u, 27u)])), func_3(arg_0), !global0[_wgslsmith_index_u32(u_input.d, 16u)]), arg_0.c), _wgslsmith_f_op_vec2_f32(exp2(arg_0.d)));
    var var_2 = _wgslsmith_div_vec4_u32(~u_input.c, ~vec4<u32>(reverseBits(4294967295u), abs(9109u), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(37947u, u_input.c.x, 7332u), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), max(u_input.c.ywx, vec3<u32>(u_input.d, u_input.d, u_input.c.x)))));
    let var_3 = vec4<u32>(var_2.x, ~(~12044u & select(_wgslsmith_mult_u32(var_2.x, u_input.d), u_input.c.x, any(var_1.c))), abs(65051u), _wgslsmith_dot_vec4_u32(abs(u_input.c << (u_input.c % vec4<u32>(32u))) >> (vec4<u32>(~var_2.x, var_2.x << (91578u % 32u), 1u, reverseBits(339u)) % vec4<u32>(32u)), ~reverseBits(firstLeadingBit(u_input.c))));
    return _wgslsmith_f_op_f32(trunc(arg_0.a));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(278f)) - _wgslsmith_f_op_f32(func_2(Struct_1(623f, vec4<f32>(337f, -822f, 322f, -723f), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 16u)]), vec2<f32>(1452f, -450f)), vec3<i32>(u_input.e.x, 9758i, u_input.b))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(422f))))))));
    var var_1 = reverseBits(~u_input.e.x);
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.d);
    let var_4 = vec4<bool>(!(!global0[_wgslsmith_index_u32(u_input.d, 16u)]), false, any(!var_2.c.yy) | true, all(var_2.c) || func_3(global1[_wgslsmith_index_u32(max(4294967295u, u_input.c.x) & ~u_input.d, 26u)]));
    return ~34371u > reverseBits(reverseBits(u_input.d) >> (firstTrailingBit(0u) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32) -> vec2<u32> {
    global1 = array<Struct_1, 26>();
    var var_0 = select(select(select(vec2<bool>(false, any(vec3<bool>(arg_0, false, global2[_wgslsmith_index_u32(1u, 27u)]))), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true), vec2<bool>(true, true)), !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 16u)], true))), vec2<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.d), 27u)], true), select(!vec2<bool>(global2[_wgslsmith_index_u32(9571u, 27u)], false), !vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 27u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)]), vec2<bool>(true, true)), select(vec2<bool>(arg_0, global0[_wgslsmith_index_u32(23204u, 16u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 27u)], false), global2[_wgslsmith_index_u32(u_input.d, 27u)])))), !vec2<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, arg_1 >= 2147483647i), global2[_wgslsmith_index_u32(0u, 27u)]), select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(46889u, 16u)]))), vec2<bool>(any(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], false))), false), select(vec2<bool>(all(vec3<bool>(true, true, false)), false && global2[_wgslsmith_index_u32(u_input.c.x, 27u)]), !vec2<bool>(global2[_wgslsmith_index_u32(34926u, 27u)], false), true)));
    global1 = array<Struct_1, 26>();
    var var_1 = vec4<bool>(arg_0 && !((arg_1 <= arg_1) | (u_input.c.x < u_input.c.x)), arg_0, !all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 16u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.d, 16u)], true, global0[_wgslsmith_index_u32(u_input.d, 16u)]), var_0.x), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, global0[_wgslsmith_index_u32(4294967295u, 16u)], false), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], false, arg_0, global0[_wgslsmith_index_u32(u_input.c.x, 16u)])), global0[_wgslsmith_index_u32(u_input.c.x, 16u)] | false)), var_0.x);
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    return min(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), max(vec2<u32>(u_input.d, u_input.c.x), u_input.c.xw)), vec2<u32>(4294967295u, ~u_input.c.x), vec2<bool>(true, true)) << (_wgslsmith_div_vec2_u32(~(u_input.c.zw ^ u_input.c.zx), ~(~vec2<u32>(u_input.c.x, u_input.c.x))) % vec2<u32>(32u)), vec2<u32>(0u, ~12650u) ^ max(vec2<u32>(~1u, 9361u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 12925u) | u_input.c.zz, reverseBits(u_input.c.wx))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = array<bool, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) * 1260f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -609f))), _wgslsmith_f_op_f32(abs(1002f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(124f, vec4<f32>(-907f, -1804f, 1439f, 266f), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(arg_0, 27u)]), vec2<f32>(1000f, 564f)), vec3<i32>(0i, u_input.e.x, -1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f * -242f) * _wgslsmith_f_op_f32(sign(-225f))), _wgslsmith_f_op_f32(f32(-1f) * -376f)), select(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(50894u, 27u)], false)), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(arg_2.x, 27u)], global2[_wgslsmith_index_u32(arg_1, 27u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 16u)], true, false)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(8806u, 27u)], global0[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(~1u, 16u)]), vec3<bool>(!global2[_wgslsmith_index_u32(~arg_2.x, 27u)], global0[_wgslsmith_index_u32(reverseBits(11286u), 16u)] & global2[_wgslsmith_index_u32(min(55080u, 6888u), 27u)], false)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1313f, 1003f), vec2<f32>(-859f, -2151f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1176f, -1084f) - vec2<f32>(-235f, -331f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1552f, 1110f)))))));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)));
    let var_3 = vec2<u32>(~_wgslsmith_div_u32(63574u, ~(4294967295u << (arg_1 % 32u))), 1u & (~arg_2.x >> (~(~4294967295u) % 32u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(select(var_2.x, var_0.a, true))), _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(var_0.a * var_2.x), all(var_0.c)))) - vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(var_2.x, var_2.x)), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + 635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 27>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1357f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f + 406f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-331f, -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1480f - -759f)))), _wgslsmith_f_op_vec4_f32(func_5(5033u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(46689u, u_input.c.x, u_input.d), vec3<u32>(65274u, u_input.d, 9665u)) >> (_wgslsmith_mult_u32(u_input.d, u_input.c.x) % 32u), ~(~u_input.d)), func_4(func_1(), select(-46615i, 1i, all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], true)))))), vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, u_input.d))), 27u)], global2[_wgslsmith_index_u32(1u, 27u)], !any(vec3<bool>(global2[_wgslsmith_index_u32(63681u, 27u)], false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(328f, 218f)), 1000f), vec2<f32>(_wgslsmith_f_op_f32(935f + 114f), _wgslsmith_f_op_f32(f32(-1f) * -476f)), false))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 26u)];
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))) - vec4<f32>(1001f, _wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, var_1.b, var_1.c, vec2<f32>(-1226f, var_1.b.x)), -vec3<i32>(0i, u_input.e.x, 0i))), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * -678f))), select(!vec3<bool>(true, false, var_1.c.x), vec3<bool>((var_0.b.x > var_1.a) && true, true, u_input.c.x == u_input.c.x), !select(var_1.c, vec3<bool>(false, var_0.c.x, var_0.c.x), global2[_wgslsmith_index_u32(~u_input.c.x, 27u)])), var_0.d);
    var_0 = global1[_wgslsmith_index_u32(u_input.d, 26u)];
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zx, -abs(~(-vec4<i32>(u_input.b, u_input.e.x, 0i, u_input.a))), u_input.c.zw & vec2<u32>(abs(func_4(false, -20594i).x), _wgslsmith_clamp_u32(42897u, countOneBits(u_input.d), 84529u)));
}

