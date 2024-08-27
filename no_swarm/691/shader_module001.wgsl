struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(11164u, 4294967295u);

var<private> global1: array<f32, 30>;

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(147f, 1000f, 756f), vec3<f32>(-124f, 1946f, -627f), vec3<f32>(321f, 940f, 424f), vec3<f32>(208f, 717f, -548f), vec3<f32>(-515f, -125f, -702f), vec3<f32>(-411f, -1183f, -1768f), vec3<f32>(680f, -1000f, 890f), vec3<f32>(1822f, -655f, 1000f), vec3<f32>(-2169f, -112f, -133f), vec3<f32>(-233f, -539f, -1580f), vec3<f32>(159f, -544f, -217f), vec3<f32>(-877f, -819f, 1000f), vec3<f32>(-164f, -666f, -522f), vec3<f32>(-316f, -326f, 283f), vec3<f32>(2267f, -753f, -340f), vec3<f32>(1139f, 518f, 1527f), vec3<f32>(143f, 201f, -1572f), vec3<f32>(1117f, 1880f, -1697f), vec3<f32>(153f, 1002f, -503f), vec3<f32>(324f, -1149f, 376f), vec3<f32>(-835f, 168f, -1440f), vec3<f32>(836f, -301f, 1000f), vec3<f32>(412f, 276f, 210f), vec3<f32>(1705f, -1272f, -809f), vec3<f32>(154f, 1710f, 2245f), vec3<f32>(-1639f, -523f, -1000f));

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.x + global1[_wgslsmith_index_u32(u_input.c.x, 30u)]) * _wgslsmith_f_op_f32(-878f * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-arg_1.x), arg_2.b))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3, ~_wgslsmith_mult_u32(arg_3, arg_3)), 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(545f, arg_2.a.x, arg_2.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.x, arg_1.x))))), any(arg_2.d), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2.c.yw, arg_2.c.yx), 4294967295u, 4294967295u, abs(u_input.c.x))), select(select(select(arg_2.d, select(arg_2.d, arg_2.d, arg_2.d.x), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_2.b, arg_2.d.x), arg_2.d.x)), select(select(arg_2.d, arg_2.d, arg_2.d), select(arg_2.d, arg_2.d, vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.b)), false), arg_2.d.x), !(!(!vec3<bool>(false, false, arg_2.d.x))), arg_2.d.x), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global0.x, 26u)] * vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.x, arg_3), 30u)], 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(834f, -486f)))));
    global1 = array<f32, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.wy + vec2<f32>(var_0.e.x, -1400f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(32257u, 30u)], 1051f))) * var_0.a.zz)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(-1860f)))), 575f, arg_2.a.x))), arg_2.d.x, _wgslsmith_sub_vec4_u32(firstTrailingBit(arg_2.c & vec4<u32>(2201u, arg_3, 1u, 4294967295u)) >> (~(~var_0.c) % vec4<u32>(32u)), var_0.c), select(arg_2.d, var_0.d, false), _wgslsmith_f_op_vec3_f32(floor(arg_1.ywz)));
    global2 = array<vec3<f32>, 26>();
    return arg_1.x;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(435f)), 421f, 715f, global1[_wgslsmith_index_u32(global0.x, 30u)]), arg_0 && arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(~42830u, global0.x, ~_wgslsmith_div_u32(global0.x, 109925u), ~select(global0.x, 7692u, true)), vec4<u32>(min(4294967295u, global0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 18531u, global0.x, 121670u), vec4<u32>(30437u, 4294967295u, 47653u, u_input.c.x)), global0.x, global0.x)), vec3<bool>(any(select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), true)), false, arg_0), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 26u)]);
    var var_1 = ~(~firstLeadingBit(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(1512i, -17267i, u_input.d)), vec3<i32>(u_input.d, 61235i, -1i), u_input.a.ywy)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.e.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-405f * global1[_wgslsmith_index_u32(var_0.c.x, 30u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.a.xyx, vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], -727f, 1934f, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), Struct_1(var_0.a, arg_0, vec4<u32>(global0.x, var_0.c.x, var_0.c.x, 38362u), var_0.d, global2[_wgslsmith_index_u32(20454u, 26u)]), var_0.c.x)))))), arg_0, ~vec4<u32>(var_0.c.x | (u_input.c.x & 1u), abs(_wgslsmith_sub_u32(global0.x, 1u)), countOneBits(1u & var_0.c.x), ~abs(global0.x)), var_0.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 30u)] - global1[_wgslsmith_index_u32(var_0.c.x, 30u)])) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 30u)] * 407f)), -312f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-196f))))));
    var_1 = -u_input.a.ywx >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.c.x, u_input.c.x, u_input.c.x ^ 1u), vec3<u32>(countOneBits(global0.x & var_2.c.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, var_2.c.x, 21235u), vec3<u32>(4294967295u, 103613u, 4294967295u))), ~u_input.c.x << (var_0.c.x % 32u))) % vec3<u32>(32u));
    return firstTrailingBit(global0.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.d;
    global1 = array<f32, 30>();
    global3 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 30u)] * -1978f), _wgslsmith_f_op_f32(-arg_0.x), -436f, _wgslsmith_f_op_f32(abs(arg_1.x))))), false, ~(vec4<u32>(0u, _wgslsmith_add_u32(global0.x, u_input.c.x), ~39356u, ~global0.x) >> (vec4<u32>(u_input.c.x, 98666u, 32935u, _wgslsmith_add_u32(1u, 0u)) % vec4<u32>(32u))), vec3<bool>(~_wgslsmith_div_u32(0u, u_input.c.x) >= (global0.x << (~9992u % 32u)), true, true), arg_1.zzx);
    let var_2 = var_1.c.zzz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 30u)] * 961f), 1861f, arg_0.x), arg_1)), !(!any(select(var_1.d, var_1.d, false))), vec4<u32>(_wgslsmith_sub_u32(var_1.c.x, _wgslsmith_sub_u32(global0.x, 1u) | u_input.c.x), ~global0.x, ~var_2.x, ~(~_wgslsmith_mod_u32(1u, 43296u))), !(!select(var_1.d, vec3<bool>(var_1.d.x, false, var_1.d.x), select(false, var_1.b, false))), _wgslsmith_f_op_vec3_f32(arg_0.yxy - vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~global0.x, 30u)], _wgslsmith_f_op_f32(arg_0.x * 582f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), -1929f)));
}

fn func_1() -> Struct_1 {
    global0 = reverseBits(u_input.c ^ ~vec2<u32>(abs(42427u), ~27486u));
    return func_4(vec4<f32>(147f, global1[_wgslsmith_index_u32(func_2(true), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -1633f), -390f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1542f, global1[_wgslsmith_index_u32(45531u, 30u)], 1674f, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<f32>(908f, 675f, global1[_wgslsmith_index_u32(11476u, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 128f, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(41157u, 30u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-647f, -953f, global1[_wgslsmith_index_u32(global0.x, 30u)], -507f) * vec4<f32>(205f, -757f, global1[_wgslsmith_index_u32(u_input.c.x, 30u)], -957f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(4539u, 30u)], global1[_wgslsmith_index_u32(u_input.c.x, 30u)], 317f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], -748f, 167f))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    var var_0 = func_4(arg_1.a, vec4<f32>(-1000f, global1[_wgslsmith_index_u32(firstLeadingBit(global0.x), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(983f * func_4(arg_1.a, vec4<f32>(arg_2, arg_2, global1[_wgslsmith_index_u32(global0.x, 30u)], 145f)).e.x)), -142f));
    var var_1 = ~func_4(vec4<f32>(905f, _wgslsmith_f_op_f32(-1000f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) + -1359f), global1[_wgslsmith_index_u32(~(~6101u), 30u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.a)))))).c.x;
    var var_2 = func_4(vec4<f32>(arg_2, arg_2, 1622f, -272f), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 30u)] + arg_1.e.x), -606f, _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(step(var_0.e.x, global1[_wgslsmith_index_u32(40705u, 30u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - var_0.a)))))).b;
    global1 = array<f32, 30>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(287f, 860f, global1[_wgslsmith_index_u32(57731u, 30u)], global1[_wgslsmith_index_u32(69618u, 30u)]), vec4<f32>(var_0.a.x, arg_1.a.x, 1412f, 459f))))), false, vec4<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~var_0.c.x), _wgslsmith_clamp_vec2_u32(select(u_input.c, arg_1.c.zz, false), var_0.c.xw, _wgslsmith_mod_vec2_u32(arg_1.c.wy, var_0.c.xz))), ~(~(~u_input.c.x)), (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 8322u, u_input.c.x), vec4<u32>(0u, arg_1.c.x, arg_0.x, 47898u)) ^ 59311u) << ((23309u >> (~u_input.c.x % 32u)) % 32u)), vec3<bool>(true, false, false || select(select(true, true, arg_1.d.x), any(vec4<bool>(true, arg_1.d.x, var_0.d.x, arg_1.d.x)), arg_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(arg_1.c.x, 26u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.e.x, global1[_wgslsmith_index_u32(29402u, 30u)])) + vec3<f32>(var_0.a.x, arg_1.a.x, arg_2)))));
    return _wgslsmith_f_op_vec4_f32(-var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(-(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, u_input.a.x, 6129i, 12899i), vec4<i32>(11848i, u_input.d, u_input.b, 0i)), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)) | 2147483647i));
    global1 = array<f32, 30>();
    global2 = array<vec3<f32>, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(select(vec3<u32>(1u | u_input.c.x, _wgslsmith_clamp_u32(0u, 12581u, u_input.c.x), ~1u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.c.x, global0.x, 24872u)), vec3<u32>(u_input.c.x, 10210u, 1u)), false), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -844f))), any(vec4<bool>(true, true, true, true)), vec4<u32>(u_input.c.x, ~1u, max(abs(54744u), select(firstTrailingBit(u_input.c.x), ~global0.x, true)), ~global0.x), vec3<bool>(true, !(!select(true, false, true)), 21822i < _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, -62058i)), 27003i, ~0i)), vec3<f32>(-573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 30u)] * global1[_wgslsmith_index_u32(10695u, 30u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]))), _wgslsmith_div_f32(956f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(select(1u, 90083u, false), 30u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17145u, 30u)])))));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, var_1.c.x, vec2<u32>(~u_input.c.x, firstLeadingBit(global0.x) & 29385u), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c.x)), var_1.c.yw >> (vec2<u32>(var_0.c.x, var_1.c.x) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(28208u), _wgslsmith_mult_u32(1u, 109215u))), var_0.a.x);
}

