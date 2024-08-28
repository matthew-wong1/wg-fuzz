struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, false, false, false, false, true, false, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, false, true, true, true, true, true, false, true);

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-1000f, -429f, -1079f, 1038f), vec4<f32>(348f, -409f, -409f, -618f), vec4<f32>(-142f, -317f, -207f, 430f), vec4<f32>(1679f, 965f, -1826f, 543f), vec4<f32>(906f, 324f, -1000f, -584f), vec4<f32>(-1000f, -498f, -237f, -828f), vec4<f32>(-1668f, -1090f, -508f, 1850f), vec4<f32>(479f, 635f, 295f, -1657f), vec4<f32>(210f, 1338f, 491f, 2289f), vec4<f32>(175f, 1000f, -833f, 232f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1744f - -314f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)));
    global1 = array<vec4<f32>, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2083f), _wgslsmith_f_op_f32(f32(-1f) * -419f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-111f)), -1499f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(585f - -1424f)))));
    global0 = array<bool, 31>();
    var var_2 = Struct_4(_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 71059u), ~vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, u_input.b) << (~vec2<u32>(8555u, u_input.b) % vec2<u32>(32u)), true), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 456u), firstTrailingBit(~vec2<u32>(0u, u_input.b)))));
    return global0[_wgslsmith_index_u32(u_input.b, 31u)];
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    global1 = array<vec4<f32>, 10>();
    var var_0 = any(!(!vec2<bool>(!global0[_wgslsmith_index_u32(36914u, 31u)], !global0[_wgslsmith_index_u32(u_input.b, 31u)])));
    let var_1 = u_input.a.x;
    let var_2 = 1u;
    global0 = array<bool, 31>();
    return select(!select(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 31u)], global0[_wgslsmith_index_u32(arg_0.a, 31u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(14281u, 31u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true, true), global0[_wgslsmith_index_u32(84783u, 31u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], false), !global0[_wgslsmith_index_u32(u_input.b, 31u)]), func_2(-u_input.a.x)), !vec3<bool>(func_2(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), arg_0.a < 1u, false & global0[_wgslsmith_index_u32(var_2 >> (var_2 % 32u), 31u)]), u_input.a.x <= _wgslsmith_div_i32(min(min(var_1, var_1), var_1), countOneBits(23573i << (arg_0.a % 32u))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec3<i32> {
    global0 = array<bool, 31>();
    global1 = array<vec4<f32>, 10>();
    let var_0 = Struct_1(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(112200u, 31u)], true, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(arg_1.x, 31u)]))), vec2<bool>(all(!func_1(Struct_4(110915u))), true), select(vec2<i32>(~(-u_input.a.x), abs(-u_input.a.x)), u_input.a.yw, false), _wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 10u)])), reverseBits(reverseBits(~(vec4<u32>(119331u, u_input.b, 4294967295u, 0u) << (vec4<u32>(u_input.b, arg_1.x, arg_1.x, u_input.b) % vec4<u32>(32u))))));
    global1 = array<vec4<f32>, 10>();
    return ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x >> ((arg_1.x << (u_input.b % 32u)) % 32u), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 13515i), _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.a.zyy, vec3<i32>(u_input.a.x, var_0.c.x, 0i)), vec3<i32>(-28598i, 14266i, abs(var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(u_input.b));
    let var_1 = reverseBits(select(func_3(global0[_wgslsmith_index_u32(~u_input.b, 31u)] && true, firstLeadingBit(~vec2<u32>(u_input.b, 26019u))), firstTrailingBit(u_input.a.xzw), func_1(Struct_4(~u_input.b))));
    let var_2 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(11705i, var_1.x)), -vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a.x), _wgslsmith_dot_vec2_i32(-u_input.a.ww, vec2<i32>(var_1.x, 0i))));
    let var_3 = Struct_1(var_0, var_0.yx, -vec2<i32>(~var_2, var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, -1344f, -1256f, -1429f) + _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.b, 10u)] * vec4<f32>(-381f, 684f, -1026f, -399f))) * vec4<f32>(_wgslsmith_f_op_f32(997f * 261f), -1087f, _wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_div_f32(-1000f, 804f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1194f, -379f, 251f, 102f))))), vec4<u32>(_wgslsmith_mult_u32(abs(17546u), u_input.b), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(26061u, u_input.b) ^ max(vec2<u32>(33163u, u_input.b), vec2<u32>(u_input.b, 1u)), vec2<u32>(32875u & u_input.b, 1u)), ~u_input.b));
    let var_4 = vec4<bool>(false, all(vec4<bool>(any(vec4<bool>(var_0.x, var_3.b.x, var_3.b.x, true)), all(!vec4<bool>(true, global0[_wgslsmith_index_u32(37142u, 31u)], true, var_0.x)), global0[_wgslsmith_index_u32(var_3.e.x, 31u)], true)), !var_0.x, !(true | (_wgslsmith_f_op_f32(select(1579f, var_3.d.x, var_3.b.x)) == -267f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<i32>(var_2, min(36773i, var_1.x)));
}

