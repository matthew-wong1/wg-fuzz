struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(true, false, false), false, 2613f, -1790f, 887f), Struct_1(vec3<bool>(false, false, true), false, -1726f, -399f, 851f), Struct_1(vec3<bool>(true, false, true), false, -452f, -1320f, 386f), Struct_1(vec3<bool>(false, false, true), true, 342f, -197f, -107f), Struct_1(vec3<bool>(true, true, false), false, 886f, -1218f, 463f), Struct_1(vec3<bool>(false, false, true), false, 432f, 296f, 456f), Struct_1(vec3<bool>(true, true, true), true, 447f, 185f, 1000f), Struct_1(vec3<bool>(true, false, true), true, 1764f, -1063f, -1007f), Struct_1(vec3<bool>(true, false, false), true, -893f, -138f, 616f), Struct_1(vec3<bool>(false, true, false), true, 1712f, 139f, -831f), Struct_1(vec3<bool>(true, false, false), false, -155f, -1094f, 855f), Struct_1(vec3<bool>(true, false, true), false, -529f, 666f, 841f), Struct_1(vec3<bool>(true, false, true), false, 616f, 1944f, -1300f));

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1000f, 1531f, 1097f, -960f), vec4<f32>(1010f, 1806f, -857f, -489f), vec4<f32>(1256f, -214f, -216f, -389f), vec4<f32>(1172f, 1961f, 605f, -312f), vec4<f32>(-678f, 1000f, 748f, 539f), vec4<f32>(1121f, 224f, -215f, 1210f), vec4<f32>(461f, -415f, -300f, -962f), vec4<f32>(2899f, 741f, 1365f, -846f), vec4<f32>(-689f, 1000f, 1000f, 1180f), vec4<f32>(-192f, -513f, -758f, -1387f), vec4<f32>(1000f, -1000f, -992f, -371f), vec4<f32>(-1197f, 965f, 763f, -426f), vec4<f32>(-664f, -1000f, -1000f, 553f), vec4<f32>(-1387f, -1095f, 548f, -538f), vec4<f32>(693f, 262f, -1002f, -1541f), vec4<f32>(-429f, -254f, -877f, -729f), vec4<f32>(-496f, 1738f, 553f, -576f), vec4<f32>(-435f, -1228f, 1040f, 176f), vec4<f32>(977f, -907f, 369f, 921f), vec4<f32>(309f, -104f, 797f, 652f), vec4<f32>(-780f, 650f, -1785f, -225f), vec4<f32>(-1400f, -1195f, 208f, 762f), vec4<f32>(1122f, -1450f, 263f, -305f), vec4<f32>(-1337f, 1587f, -235f, 1139f), vec4<f32>(1255f, 502f, -213f, 208f));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(!vec3<bool>(any(!vec4<bool>(global2.b.a.x, false, global2.b.b, global2.c.a.x)), abs(u_input.d.x) > (i32(-1i) * -2147483647i), (global2.b.a.x | global2.c.b) || true), global2.c.a.x, 660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) - global2.a.x)), -580f);
    var var_1 = var_0;
    var var_2 = select(!select(vec4<bool>(false, var_0.a.x, u_input.c.x == arg_1.x, false), vec4<bool>(false, global2.b.b & global2.b.a.x, true, true), vec4<bool>(any(var_0.a.yx), true, false, true)), select(vec4<bool>(false, true || !var_1.b, any(select(vec3<bool>(true, true, var_0.a.x), var_0.a, global2.b.a)), true), vec4<bool>(var_0.b, all(vec3<bool>(global2.c.b, var_0.a.x, global2.c.a.x)), var_1.b, false), false), false);
    var var_3 = global2.b;
    let var_4 = global2.a;
    return vec4<i32>(u_input.d.x, u_input.d.x, -1i, ~_wgslsmith_mult_i32(u_input.d.x, 49723i));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - global2.c.d), global2.b.e, global2.b.d)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.d, 1000f, -888f))), vec3<f32>(195f, _wgslsmith_f_op_f32(max(arg_0, 330f)), _wgslsmith_div_f32(global2.b.d, 946f))))));
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(824f)), 294f, !global2.c.b))))), global2.b, global0[_wgslsmith_index_u32(select(firstLeadingBit(~firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(u_input.c.x, 23771u), !any(global2.b.a.yx)), 13u)]);
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1479f)))), vec2<u32>(~(1u << (u_input.b.x % 32u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 1u), 55955u)));
    global0 = array<Struct_1, 13>();
    var var_2 = reverseBits(vec3<u32>(abs(u_input.b.x), reverseBits(~43204u) >> (0u % 32u), ~(~29282u)));
    return 1340f;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = !vec4<bool>(all(!(!vec4<bool>(false, false, arg_0, false))), true, arg_0, select(false, any(global2.b.a), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c.d + 1353f), _wgslsmith_f_op_f32(abs(-380f)))) - _wgslsmith_f_op_f32(-arg_3.x))) + _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1f)))));
    var_1 = arg_3.x;
    var_1 = 170f;
    var var_2 = vec4<bool>(var_0.x, ~((u_input.d.x ^ u_input.d.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 55333u), u_input.c) % 32u)) <= _wgslsmith_mod_i32(~_wgslsmith_div_i32(-1038i, u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(12571i, u_input.d.x, u_input.d.x, -1i), abs(vec4<i32>(arg_1.x, -1i, 39583i, arg_1.x)))), var_0.x, true);
    return Struct_2(vec2<f32>(_wgslsmith_div_f32(global2.c.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(196f, 983f) - _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-1f)), global2.c, Struct_1(!(!vec3<bool>(var_2.x, var_2.x, true)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-143f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(606f, 937f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, -661f)))), global2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(31318i);
    var var_1 = global2.a.x;
    let var_2 = countOneBits(-10214i >> (1u % 32u));
    var_1 = global2.a.x;
    global2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.e - global2.a.x) - _wgslsmith_f_op_f32(max(-118f, 563f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x)))) <= global2.a.x, vec3<i32>(0i, 1i, select(_wgslsmith_dot_vec2_i32(u_input.d.wx, -vec2<i32>(52240i, u_input.d.x)), ~2147483647i, !any(global2.c.a))), u_input.c.x, global2.a);
    var var_3 = u_input.d;
    global2 = func_1(func_1(any(global2.b.a.zz), var_3.yzw, u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.d, global2.b.c)))), _wgslsmith_f_op_vec2_f32(ceil(global2.a)), global2.c.a.x))).b.a.x, _wgslsmith_add_vec3_i32(u_input.d.xwx, min(_wgslsmith_sub_vec3_i32(-u_input.d.zww, var_3.zxz & vec3<i32>(-30931i, var_3.x, 48096i)), vec3<i32>(-4036i, firstLeadingBit(var_2), u_input.d.x))), _wgslsmith_mod_u32(~min(~u_input.a, ~u_input.b.x), u_input.b.x | ~4294967295u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a - global2.a) + global2.a)), _wgslsmith_f_op_vec2_f32(global2.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(global2.c.c, -1654f))))));
    var var_4 = vec4<i32>(firstLeadingBit(u_input.d.x), -(_wgslsmith_dot_vec2_i32(vec2<i32>(16220i, 63223i) ^ vec2<i32>(var_2, var_3.x), countOneBits(var_3.xw)) ^ (var_2 & u_input.d.x)), u_input.d.x | var_3.x, -2349i);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(~28550u, ~u_input.c.x, global2.c.a.x), u_input.b.x), vec2<u32>(~u_input.c.x, 34052u), -var_4.wzx >> (~vec3<u32>(41668u, max(u_input.b.x, 1u), u_input.a) % vec3<u32>(32u)), abs(4294967295u) << (~u_input.c.x % 32u));
}

