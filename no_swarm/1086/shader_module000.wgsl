struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, false, true, false);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(true, vec3<f32>(-197f, 747f, -1599f)), Struct_2(true, vec3<f32>(-2176f, -548f, -1000f)), Struct_2(true, vec3<f32>(-929f, -978f, -794f)), Struct_2(false, vec3<f32>(1163f, -1195f, -637f)), Struct_2(true, vec3<f32>(392f, -1638f, 197f)), Struct_2(true, vec3<f32>(1622f, 1084f, -729f)), Struct_2(true, vec3<f32>(724f, 347f, 666f)), Struct_2(true, vec3<f32>(-310f, 248f, 191f)), Struct_2(false, vec3<f32>(-2356f, -752f, -1462f)), Struct_2(true, vec3<f32>(725f, -888f, -1394f)), Struct_2(false, vec3<f32>(-608f, -1841f, -1518f)), Struct_2(true, vec3<f32>(-285f, 1741f, 564f)), Struct_2(false, vec3<f32>(-168f, 728f, 575f)), Struct_2(true, vec3<f32>(-104f, 796f, -100f)), Struct_2(true, vec3<f32>(227f, -1685f, 813f)), Struct_2(false, vec3<f32>(213f, -1119f, -472f)), Struct_2(true, vec3<f32>(-928f, 536f, -473f)), Struct_2(true, vec3<f32>(-899f, -1000f, -289f)), Struct_2(false, vec3<f32>(-685f, -1494f, -807f)), Struct_2(true, vec3<f32>(1103f, 950f, -1138f)), Struct_2(true, vec3<f32>(-969f, 1547f, 2416f)), Struct_2(false, vec3<f32>(313f, -487f, -460f)), Struct_2(true, vec3<f32>(564f, 1534f, 1457f)), Struct_2(false, vec3<f32>(-612f, 642f, 428f)), Struct_2(true, vec3<f32>(1000f, 485f, 542f)), Struct_2(true, vec3<f32>(1000f, -1403f, -1000f)), Struct_2(false, vec3<f32>(865f, 428f, -776f)), Struct_2(true, vec3<f32>(286f, -983f, 1292f)), Struct_2(true, vec3<f32>(1202f, -983f, -1295f)), Struct_2(false, vec3<f32>(1592f, 2508f, -523f)), Struct_2(true, vec3<f32>(711f, -432f, 397f)));

var<private> global2: Struct_2;

var<private> global3: vec2<f32> = vec2<f32>(-356f, -1459f);

var<private> global4: u32 = 54992u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(select(0u, arg_1.x, any(!(!(!vec3<bool>(arg_0.a, global2.a, global0[_wgslsmith_index_u32(u_input.c, 6u)]))))), 31u)];
    global0 = array<bool, 6>();
    var var_1 = Struct_3(abs(vec2<i32>(1i, 1i)), global1[_wgslsmith_index_u32(~(~countOneBits(arg_1.x)), 31u)], Struct_1(max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-20097i, 42092i, -30568i, 1i), vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(0i, 52400i, -17996i, -1i), vec4<i32>(44498i, -47061i, 2147483647i, -2147483647i))), vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(71274u, arg_1.x, 4294967295u, 58125u), vec4<u32>(1u, u_input.a, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), !select(vec4<bool>(arg_0.a, true, arg_0.a, var_0.a), select(vec4<bool>(arg_0.a, var_0.a, false, false), vec4<bool>(global2.a, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], false), arg_0.a), vec4<bool>(var_0.a, false, true, arg_0.a)), 1i), _wgslsmith_mult_u32(arg_1.x, ~u_input.b.x), vec2<f32>(global3.x, 426f));
    global0 = array<bool, 6>();
    let var_2 = select(select(select(var_1.c.b.xzz, vec3<bool>(arg_0.a, any(var_1.c.b.zzx), true), select(var_1.c.b.zyw, select(var_1.c.b.zyx, var_1.c.b.xwx, true), select(vec3<bool>(true, false, true), vec3<bool>(global2.a, var_1.c.b.x, false), false))), var_1.c.b.yzw, any(!vec2<bool>(global2.a, global0[_wgslsmith_index_u32(arg_1.x, 6u)]))), var_1.c.b.wzy, global2.a);
    return select(any(vec2<bool>(true, false)), true, true);
}

fn func_2() -> u32 {
    global0 = array<bool, 6>();
    let var_0 = !global2.a;
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, -205f), _wgslsmith_f_op_f32(sign(global2.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-583f, -299f) + _wgslsmith_f_op_vec2_f32(-global2.b.yy))))));
    let var_1 = Struct_3(reverseBits(~vec2<i32>(2147483647i, 1i)), Struct_2(false, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(global3.x)), 802f, _wgslsmith_f_op_f32(floor(2120f))), vec3<f32>(-595f, global3.x, global2.b.x)))), Struct_1(countOneBits(-vec4<i32>(1i, 1i, 1i, 1i)), !(!(!vec4<bool>(global2.a, var_0, false, global2.a))), 0i), ~(~u_input.c) | ~(~0u), _wgslsmith_f_op_vec2_f32(global2.b.yy - global2.b.yy));
    let var_2 = vec3<bool>(var_1.c.b.x, any(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(44490u, 6u)]), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), global0[_wgslsmith_index_u32(82957u, 6u)]), var_1.b.a), select(select(vec2<bool>(var_1.c.b.x, true), vec2<bool>(var_1.b.a, var_0), global0[_wgslsmith_index_u32(var_1.d, 6u)]), var_1.c.b.zz, var_1.c.b.wy), func_3(global1[_wgslsmith_index_u32(u_input.a, 31u)], vec3<u32>(39717u, var_1.d, 80027u) ^ vec3<u32>(var_1.d, 4294967295u, u_input.c)))), ~abs(15147u << (var_1.d % 32u)) < _wgslsmith_clamp_u32(~(~var_1.d), abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.d)), max(~51983u, var_1.d)));
    return ~(var_1.d ^ u_input.d.x) >> (12713u % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = u_input.b.x;
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_1 = -firstTrailingBit(vec4<i32>(0i, _wgslsmith_mult_i32(arg_0.c.c, -2147483647i), ~(-2147483647i), arg_0.c.a.x));
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(arg_0.c.a), vec4<i32>((firstLeadingBit(arg_0.c.c) >> (73899u % 32u)) >> (func_2() % 32u), reverseBits(0i), select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(12052i, -1i), var_1.x), var_1.x, select(u_input.a, u_input.b.x, true) != 9729u), -(~abs(arg_0.a.x))));
    return 10957u;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    var var_0 = func_4(arg_2, _wgslsmith_div_u32(u_input.a, func_2()));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.d, 4294967295u, u_input.c), vec3<u32>(countOneBits(~arg_2.d) >> (abs(_wgslsmith_mult_u32(408u, u_input.b.x)) % 32u), 9757u, arg_2.d));
    let var_2 = -1i;
    global4 = _wgslsmith_add_u32(1u, ~u_input.b.x);
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x)), _wgslsmith_f_op_vec2_f32(select(arg_2.b.b.xx, arg_2.b.b.zx, !vec2<bool>(true, arg_2.c.b.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1280f + -1916f), -2002f)))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.zy;
    var var_1 = vec3<i32>(countOneBits(_wgslsmith_mod_i32(22560i, -1934i >> (1u % 32u))), 32404i, countOneBits(countOneBits(abs(i32(-1i) * -2147483647i))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1105f - 1272f), -341f, 863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1500f * _wgslsmith_f_op_f32(-global2.b.x))));
    var var_3 = global1[_wgslsmith_index_u32(~1u, 31u)];
    var var_4 = countOneBits(_wgslsmith_add_i32(-(i32(-1i) * -26958i), -23258i));
    let var_5 = vec2<i32>(abs(~_wgslsmith_div_i32(firstTrailingBit(var_1.x), var_1.x | var_1.x)), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(66578i, func_1(var_1.x, Struct_2(false, var_2.xzz), Struct_3(vec2<i32>(var_1.x, var_1.x), global1[_wgslsmith_index_u32(57699u, 31u)], Struct_1(vec4<i32>(var_1.x, var_1.x, 14472i, 0i), vec4<bool>(global0[_wgslsmith_index_u32(28487u, 6u)], true, true, true), 1i), u_input.a, vec2<f32>(-1147f, -945f)), vec2<bool>(true, global0[_wgslsmith_index_u32(30537u, 6u)]))), 59376i));
    let x = u_input.a;
    s_output = StorageBuffer(30946u);
}

