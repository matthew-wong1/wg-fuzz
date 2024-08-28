struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-11209i, i32(-2147483648), -34904i), vec3<i32>(-33647i, 1i, -1i));

var<private> global1: bool;

var<private> global2: array<f32, 22> = array<f32, 22>(-339f, 807f, 684f, -1633f, -1078f, -883f, -384f, -611f, 856f, -260f, -727f, 1530f, 1704f, -479f, -1126f, -496f, -525f, -347f, -216f, 470f, 508f, -1333f);

var<private> global3: Struct_2 = Struct_2(Struct_1(739f, vec4<f32>(1158f, 106f, -580f, 886f), vec2<u32>(27424u, 24749u), vec4<bool>(false, false, true, true), -1000f), 13760u, vec3<f32>(504f, 501f, -467f), vec4<f32>(-1323f, -2323f, -765f, -306f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    var var_0 = ~vec4<i32>(u_input.b.x & _wgslsmith_dot_vec2_i32(u_input.b.ww, ~vec2<i32>(u_input.d, u_input.e.x)), ~u_input.d, u_input.d, u_input.d);
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a << (1u % 32u), 22u)])))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a, global2[_wgslsmith_index_u32(26279u, 22u)]) + _wgslsmith_f_op_f32(580f + -403f))), -1000f, global3.c.x, -1130f), reverseBits(arg_2.xy), global3.a.d, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(113099u, 6866u), ~(arg_0.x >> (4294967295u % 32u))), 22u)] * global2[_wgslsmith_index_u32(min(0u, arg_2.x), 22u)]));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.d.x, -1476f)) + -612f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.c.x, 274f)) + _wgslsmith_f_op_f32(-342f + -1825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1353f, 1152f)))))));
    var var_4 = ~_wgslsmith_div_i32(reverseBits(var_0.x) | countOneBits(var_0.x), firstLeadingBit(37105i));
    return -161f;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> vec4<bool> {
    global3 = Struct_2(global3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u ^ ~u_input.a, global3.b, min(global3.a.c.x, 5153u), ~max(global3.b, 1u)), ~(firstLeadingBit(vec4<u32>(u_input.a, 55960u, 0u, global3.b)) << (~vec4<u32>(arg_2.x, u_input.c, u_input.a, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.e), _wgslsmith_f_op_f32(1263f + global2[_wgslsmith_index_u32(8294u, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -122f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_f_op_f32(-867f - _wgslsmith_f_op_f32(global3.a.a + global3.a.e)), _wgslsmith_f_op_f32(-671f - -205f), _wgslsmith_f_op_f32(trunc(1000f)))));
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.a.c.x, 51096u), vec3<u32>(138932u, u_input.a, arg_2.x)), ~u_input.a, abs(global3.b), 22114u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 19249u, u_input.a), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 21997u) ^ vec4<u32>(u_input.a, arg_2.x, u_input.c, global3.a.c.x))) & global3.b, arg_2.x);
    var_0 = 4530u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1188f * global2[_wgslsmith_index_u32(u_input.a, 22u)]) + _wgslsmith_f_op_f32(floor(global3.c.x))) + 561f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, arg_2.x), arg_1, vec3<u32>(u_input.a, 2511u, u_input.c)))))));
    var var_2 = global3.a;
    return !select(select(select(!var_2.d, !global3.a.d, select(vec4<bool>(false, true, arg_1, true), vec4<bool>(false, global3.a.d.x, false, true), vec4<bool>(true, true, false, false))), var_2.d, true), !global3.a.d, vec4<bool>((-683f < global2[_wgslsmith_index_u32(arg_2.x, 22u)]) & all(var_2.d.zz), !var_2.d.x, true, !any(global3.a.d)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> f32 {
    global1 = any(!global3.a.d);
    var var_0 = !arg_1.x;
    let var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.b.x), arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(global3.a.b - global3.a.b), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a.c, arg_0.a.c), vec2<u32>(var_1.a.c.x, 45581u)) & (var_1.a.c << (abs(arg_0.a.c) % vec2<u32>(32u))), select(var_1.a.d, global3.a.d, !(u_input.c <= var_1.a.c.x)), _wgslsmith_f_op_f32(-arg_3)), ~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-599f, arg_3, -507f))))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(400f, -1000f, _wgslsmith_f_op_f32(-551f + arg_0.a.e)), vec3<f32>(_wgslsmith_div_f32(arg_2, -158f), 891f, _wgslsmith_f_op_f32(f32(-1f) * -1002f)), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.d.x, global3.d.x, global3.d.x, arg_0.a.b.x))), _wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(241f, 1000f, -1666f, global3.c.x))), vec4<bool>(any(vec2<bool>(false, true)), true, arg_1.x, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, 154f, global2[_wgslsmith_index_u32(global3.b, 22u)], arg_3) + _wgslsmith_f_op_vec4_f32(global3.d - vec4<f32>(1001f, arg_2, arg_3, arg_0.d.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(997f, 547f, 686f, arg_3) - _wgslsmith_f_op_vec4_f32(select(var_1.d, var_1.d, true))))));
    global1 = select(!arg_0.a.d.x, _wgslsmith_f_op_f32(floor(1f)) != _wgslsmith_f_op_f32(-1358f - global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(68140u, 2775u, 0u), vec3<u32>(var_2.a.c.x, global3.b, var_1.a.c.x)), ~vec3<u32>(u_input.a, arg_0.b, var_1.a.c.x)), 22u)]), true);
    return var_2.a.b.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_div_f32(-716f, _wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), -1063f, global3.a.e), arg_1.c), arg_1.c.x, arg_1.a, arg_1.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-1f), global3.d.x)));
    let var_2 = Struct_1(-1417f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(722f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1264f * 158f) + _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(func_3(~var_0.e.c, any(arg_1.a.d), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 8686u, 8515u), vec3<u32>(var_0.e.c.x, arg_1.a.c.x, 50894u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2608f))))), global3.a.c, var_0.d.d, 3409f);
    global1 = true;
    let var_3 = select(arg_1.a.d.zyw, select(global3.a.d.yxy, var_0.e.d.wyw, func_2(-88718i, arg_1.a.d.x, vec2<u32>(var_2.c.x, _wgslsmith_div_u32(17788u, u_input.c))).zwz), false);
    return Struct_2(arg_1.a, var_2.c.x, global3.c, _wgslsmith_f_op_vec4_f32(var_0.e.b * vec4<f32>(890f, _wgslsmith_f_op_f32(max(-416f, -670f)), _wgslsmith_f_op_f32(abs(-768f)), _wgslsmith_f_op_f32(min(-248f, _wgslsmith_f_op_f32(-var_2.a))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    global1 = !(!(!arg_0.e.d.x));
    let var_0 = arg_0.d;
    let var_1 = func_5(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(1000f, var_0.b, vec2<u32>(u_input.a, var_0.c.x), var_0.d, arg_2.x), ~0u, vec3<f32>(arg_0.b.x, -431f, -128f), vec4<f32>(arg_2.x, arg_0.b.x, arg_0.e.a, -1000f)), func_2(select(arg_1.x, u_input.b.x, false), !global3.a.d.x, var_0.c), arg_0.b.x, global2[_wgslsmith_index_u32(~4294967295u, 22u)]))), Struct_2(arg_0.e, 26969u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), var_0.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(var_1.a.b.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.b.yx + global3.c.zx), var_1.c.zy, arg_0.d.d.x))))));
    global0 = array<vec3<i32>, 2>();
    return func_5(_wgslsmith_f_op_vec3_f32(global3.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c + -702f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.b.wwz, global3.a.b.xxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, global2[_wgslsmith_index_u32(1u, 22u)], -1876f)), true)))), var_1).b;
}

fn func_6(arg_0: u32) -> Struct_2 {
    return func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), global2[_wgslsmith_index_u32(func_1(Struct_3(_wgslsmith_div_f32(-1200f, 1000f), func_5(vec3<f32>(global2[_wgslsmith_index_u32(1u, 22u)], -792f, global3.a.e), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)], global3.d, vec2<u32>(90883u, arg_0), global3.a.d, global2[_wgslsmith_index_u32(u_input.a, 22u)]), 1u, global3.c, global3.d)).a.b.zyz, _wgslsmith_div_f32(625f, -827f), global3.a, global3.a), vec2<i32>(~u_input.b.x, u_input.d << (4294967295u % 32u)), global3.d.wz), 22u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~func_5(vec3<f32>(-587f, 1000f, global2[_wgslsmith_index_u32(arg_0, 22u)]), Struct_2(global3.a, 1u, global3.a.b.ywz, vec4<f32>(global3.d.x, -1000f, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(34717u, 22u)]))).b, 22u)])), Struct_2(global3.a, countOneBits(global3.b), _wgslsmith_f_op_vec3_f32(floor(global3.d.zxy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], -343f, -687f, global2[_wgslsmith_index_u32(55812u, 22u)]), vec4<f32>(-609f, global3.c.x, global2[_wgslsmith_index_u32(arg_0, 22u)], global3.d.x))) * global3.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, _wgslsmith_clamp_u32(global3.b, 0u, 23726u), 40071u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(func_1(Struct_3(global3.c.x, vec3<f32>(global2[_wgslsmith_index_u32(global3.b, 22u)], 588f, global3.d.x), 343f, global3.a, Struct_1(-296f, vec4<f32>(202f, global3.d.x, global3.d.x, -1351f), vec2<u32>(0u, 42978u), vec4<bool>(global3.a.d.x, global3.a.d.x, true, global3.a.d.x), global2[_wgslsmith_index_u32(30390u, 22u)])), vec2<i32>(u_input.e.x, 35255i), global3.a.b.wz), abs(0u), 37696u, ~global3.b), vec4<u32>(u_input.c, 4294967295u, ~global3.a.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(22555u, 21397u, 23118u), vec3<u32>(37456u, u_input.a, global3.b))))));
    global1 = !(~reverseBits(countOneBits(37298u)) != global3.a.c.x);
    let var_1 = !var_0.a.d.wxw;
    global0 = array<vec3<i32>, 2>();
    var var_2 = vec4<bool>(any(select(global3.a.d.zxz, select(func_5(global3.c, Struct_2(Struct_1(-1216f, var_0.a.b, vec2<u32>(1u, global3.b), var_0.a.d, -862f), 0u, global3.c, var_0.a.b)).a.d.zyx, var_1, func_2(u_input.d, var_1.x, vec2<u32>(u_input.a, u_input.c)).xyw), func_5(var_0.a.b.wzz, func_6(global3.a.c.x)).a.d.xzz)), global3.a.d.x, !any(vec3<bool>(true | var_0.a.d.x, false, false)), true);
    let var_3 = var_0.a.b;
    var var_4 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, var_3.x, global3.a.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global3.a.c.x, 22u)], -1000f, 231f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d.x)), -849f, 698f))), func_6(~(~var_0.a.c.x & (58290u ^ var_0.a.c.x)))).a;
    var_2 = vec4<bool>(true, true, !(-916f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1773f * var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 1u, global3.b), vec4<u32>(1u, global3.a.c.x, var_4.c.x, 143928u)) ^ ~vec4<u32>(1u, 86136u, var_0.b, 0u)), max(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_0.b, u_input.c, 27217u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.b, 95103u, 0u, var_0.b), vec4<u32>(4294967295u, var_4.c.x, 58294u, 4294967295u))), abs(vec4<u32>(49348u, 0u, 12764u, u_input.c))), !var_4.d));
}

