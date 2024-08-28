struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(true), vec3<f32>(-312f, 1758f, -1549f)), Struct_3(Struct_1(false), vec3<f32>(-2373f, 1000f, 1978f)), Struct_3(Struct_1(false), vec3<f32>(-535f, 2181f, 1000f)), Struct_3(Struct_1(false), vec3<f32>(-610f, -1059f, 833f)), Struct_3(Struct_1(false), vec3<f32>(1399f, -305f, -419f)), Struct_3(Struct_1(false), vec3<f32>(-151f, -130f, -644f)), Struct_3(Struct_1(false), vec3<f32>(522f, -1041f, -402f)), Struct_3(Struct_1(false), vec3<f32>(1792f, 358f, -848f)), Struct_3(Struct_1(true), vec3<f32>(-379f, 358f, 1298f)), Struct_3(Struct_1(true), vec3<f32>(-1442f, 1928f, 325f)), Struct_3(Struct_1(false), vec3<f32>(-1941f, -1229f, 100f)), Struct_3(Struct_1(false), vec3<f32>(1000f, -834f, 1000f)), Struct_3(Struct_1(false), vec3<f32>(-899f, -1116f, 1000f)), Struct_3(Struct_1(true), vec3<f32>(156f, -167f, 300f)), Struct_3(Struct_1(true), vec3<f32>(-338f, 287f, 424f)), Struct_3(Struct_1(true), vec3<f32>(1652f, 363f, -169f)), Struct_3(Struct_1(true), vec3<f32>(1000f, 772f, 1326f)));

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(true), vec3<f32>(-712f, -523f, -816f)), Struct_3(Struct_1(true), vec3<f32>(818f, -459f, -1687f)), Struct_3(Struct_1(true), vec3<f32>(706f, -2180f, 811f)), Struct_3(Struct_1(false), vec3<f32>(138f, -260f, -565f)), Struct_3(Struct_1(true), vec3<f32>(1615f, -102f, 767f)), Struct_3(Struct_1(false), vec3<f32>(-1125f, -854f, -587f)), Struct_3(Struct_1(false), vec3<f32>(1334f, -826f, -2385f)), Struct_3(Struct_1(true), vec3<f32>(615f, -2714f, -1586f)), Struct_3(Struct_1(false), vec3<f32>(875f, -2070f, -1705f)), Struct_3(Struct_1(true), vec3<f32>(340f, -1000f, -541f)), Struct_3(Struct_1(false), vec3<f32>(933f, 612f, 251f)), Struct_3(Struct_1(true), vec3<f32>(-281f, -700f, -467f)), Struct_3(Struct_1(false), vec3<f32>(636f, 101f, 1533f)), Struct_3(Struct_1(false), vec3<f32>(1986f, 1836f, -1000f)), Struct_3(Struct_1(true), vec3<f32>(-163f, -1427f, 1254f)), Struct_3(Struct_1(true), vec3<f32>(425f, 1000f, -1422f)), Struct_3(Struct_1(false), vec3<f32>(598f, -1361f, -1576f)), Struct_3(Struct_1(true), vec3<f32>(-1000f, 397f, 1000f)), Struct_3(Struct_1(true), vec3<f32>(347f, 491f, 1014f)), Struct_3(Struct_1(true), vec3<f32>(688f, -511f, 1163f)), Struct_3(Struct_1(true), vec3<f32>(-370f, -119f, 776f)), Struct_3(Struct_1(true), vec3<f32>(-626f, 148f, -535f)));

var<private> global2: Struct_3 = Struct_3(Struct_1(true), vec3<f32>(-828f, 1531f, 681f));

var<private> global3: i32;

var<private> global4: array<vec4<u32>, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> vec4<bool> {
    global2 = Struct_3(Struct_1(true), global2.b);
    var var_0 = arg_0;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, reverseBits(0u)), 17u)];
    let var_1 = !arg_2.wz;
    global4 = array<vec4<u32>, 21>();
    return !vec4<bool>(!(arg_3.x < -217f), false | (select(arg_2.x, true, arg_2.x) & global2.a.a), any(vec2<bool>(arg_2.x, var_1.x)), true || global2.a.a);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> i32 {
    var var_0 = select(func_3(vec4<i32>(min(u_input.a, u_input.a), u_input.a, u_input.a << ((4294967295u & u_input.d.x) % 32u), firstLeadingBit(1i)), u_input.d, vec4<bool>(true, (u_input.d.x & 0u) < u_input.b, true, all(!vec3<bool>(global2.a.a, false, global2.a.a))), arg_2.wxy), !(!(!(!vec4<bool>(true, global2.a.a, arg_1.a.a, false)))), vec4<bool>(false, true, (!arg_1.a.a && !global2.a.a) | arg_1.a.a, true));
    let var_1 = u_input.c.x;
    global3 = _wgslsmith_dot_vec2_i32(abs(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(54017i, u_input.a), vec2<i32>(u_input.a, u_input.a)) | -vec2<i32>(-1i, 12627i))), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -23695i), -vec2<i32>(1i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-24539i & u_input.a, -27610i), ~abs(vec2<i32>(u_input.a, 0i)))));
    var var_2 = Struct_2(select(!vec3<bool>(false, false || global2.a.a, arg_2.x <= arg_2.x), vec3<bool>(!(!global2.a.a), global2.a.a, _wgslsmith_f_op_f32(select(global2.b.x, 421f, true)) == _wgslsmith_f_op_f32(arg_2.x + global2.b.x)), vec3<bool>(all(!var_0.wyy), var_0.x, true)), 29774i, Struct_1(false), u_input.a);
    var_2 = Struct_2(select(select(func_3(select(vec4<i32>(u_input.a, var_2.b, var_2.d, u_input.a), vec4<i32>(u_input.a, -31437i, u_input.a, 7593i), false), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d), !vec4<bool>(arg_1.a.a, false, global2.a.a, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, arg_1.b.x, arg_2.x))).xxz, select(!var_0.zyz, select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, var_0.x, arg_1.a.a), vec3<bool>(true, var_0.x, var_2.a.x)), all(vec4<bool>(false, global2.a.a, var_2.c.a, false))), var_0.xxy), !(!func_3(vec4<i32>(var_2.b, var_2.d, var_2.b, u_input.a), u_input.d, vec4<bool>(true, true, global2.a.a, false), arg_1.b).xwy), false), abs(var_2.d), arg_1.a, var_2.b);
    return abs(44496i);
}

fn func_1() -> f32 {
    var var_0 = vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(u_input.c.x, ~(~50407u ^ _wgslsmith_div_u32(u_input.b, 4294967295u))));
    global1 = array<Struct_3, 22>();
    var var_1 = !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global2.a.a, true, global2.a.a), global2.a.a || false)) | select(true, all(select(select(vec2<bool>(true, global2.a.a), vec2<bool>(false, global2.a.a), vec2<bool>(global2.a.a, false)), select(vec2<bool>(global2.a.a, false), vec2<bool>(true, false), vec2<bool>(global2.a.a, true)), !vec2<bool>(global2.a.a, global2.a.a))), !global2.a.a);
    var var_2 = vec2<bool>(!(func_2(_wgslsmith_f_op_f32(trunc(-413f)), global1[_wgslsmith_index_u32(7181u, 22u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-669f, -582f, -1495f, -246f), vec4<f32>(-1180f, 1621f, global2.b.x, global2.b.x)))) <= reverseBits(u_input.a)), global2.a.a);
    var_1 = global2.a.a;
    return -184f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(-global2.b));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1507f)))));
    global4 = array<vec4<u32>, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(min(1370f, global2.b.x))))), 103f, var_0));
    global1 = array<Struct_3, 22>();
    let var_2 = vec2<i32>(~func_2(_wgslsmith_f_op_f32(max(494f, _wgslsmith_f_op_f32(ceil(var_0)))), Struct_3(Struct_1(global2.a.a), _wgslsmith_f_op_vec3_f32(-global2.b)), vec4<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -173f), var_0, var_0)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-708f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -803f), -1148f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), global2.b.x)), ~(~(vec2<u32>(u_input.b, u_input.d.x) ^ ~u_input.d.xy)), global4[_wgslsmith_index_u32(~abs(~0u), 21u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.b.xz, _wgslsmith_f_op_vec2_f32(var_1.zx * global2.b.xx)))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-1518f + global2.b.x)))));
}

