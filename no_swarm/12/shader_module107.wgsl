struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(0u, 0u, 4294967295u, 97700u), false, 43486u, Struct_3(0i, vec4<f32>(-982f, -771f, -582f, -665f)), Struct_2(vec2<bool>(true, false), false, 1868f, Struct_1(true, -1000f, vec4<i32>(0i, 0i, -1i, 14904i), -1000f, -1000f)));

var<private> global1: array<u32, 9> = array<u32, 9>(0u, 29970u, 253u, 73657u, 1u, 2600u, 5166u, 4294967295u, 1u);

var<private> global2: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_5) -> u32 {
    global0 = Struct_4(min(reverseBits(global0.a), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(arg_1.a.x, 0u, 26304u, 4294967295u)), vec4<u32>(global1[_wgslsmith_index_u32(0u, 9u)], 10473u, u_input.a, global1[_wgslsmith_index_u32(arg_1.c, 9u)]) << (global0.a % vec4<u32>(32u))), ~min(1214u, global0.a.x), 0u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(global0.c, global0.c, u_input.b.x), vec3<u32>(25745u, global0.a.x, global0.a.x)), abs(u_input.b.yzw)))), !all(vec4<bool>(!arg_0.d.a, !arg_0.d.a, all(arg_0.a), false)), 23320u, global0.d, global0.e);
    global1 = array<u32, 9>();
    global2 = _wgslsmith_sub_u32(~arg_1.c, ~0u);
    var var_0 = arg_3;
    var var_1 = false;
    return 13479u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 9u)], _wgslsmith_add_u32(max(_wgslsmith_sub_u32(u_input.b.x, 1u << (global0.a.x % 32u)), ~44146u & func_3(global0.e, Struct_4(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, 109724u), arg_1.x, global1[_wgslsmith_index_u32(global0.c, 9u)], global0.d, global0.e), Struct_2(arg_1, global0.b, -198f, Struct_1(false, global0.e.c, arg_0.c, 1580f, global0.d.b.x)), Struct_5(vec2<f32>(global0.e.c, -1214f), global0.d, arg_0.c.wx))), func_3(Struct_2(vec2<bool>(true, true), global0.d.b.x >= -1618f, arg_0.e, global0.e.d), Struct_4(vec4<u32>(u_input.a, 33163u, 4295u, global1[_wgslsmith_index_u32(43117u, 9u)]), true, ~u_input.b.x, global0.d, Struct_2(vec2<bool>(global0.e.a.x, arg_0.a), arg_0.a, -1059f, global0.e.d)), Struct_2(vec2<bool>(global0.b, false), global0.e.a.x, arg_0.d, Struct_1(global0.b, -740f, vec4<i32>(arg_0.c.x, -2147483647i, global0.e.d.c.x, global0.e.d.c.x), 1000f, -1622f)), Struct_5(vec2<f32>(-1560f, -476f), Struct_3(-1i, vec4<f32>(-597f, global0.d.b.x, global0.d.b.x, -400f)), firstTrailingBit(vec2<i32>(arg_0.c.x, -48475i))))));
    var var_1 = -1i;
    var var_2 = -1i;
    var var_3 = ~4294967295u;
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.a.xx, global0.a.yz), 4294967295u, ~(10647u ^ ~global1[_wgslsmith_index_u32(var_0.x, 9u)]), ~4294967295u), vec4<u32>(7228u, u_input.b.x, 0u, ~505u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(542f, global0.e.d.e, _wgslsmith_f_op_f32(-global0.e.d.e), _wgslsmith_f_op_f32(min(global0.e.d.b, -1245f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.x, global0.d.b.x, global0.e.d.e, arg_0.e)), global0.d.b)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1657f)))), _wgslsmith_f_op_f32(547f + 1153f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * 365f)), -1466f)) - vec4<f32>(226f, _wgslsmith_f_op_f32(global0.e.d.e - -1135f), global0.e.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.b.x * global0.d.b.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(global0.a, any(arg_1.xz), 74410u, Struct_3(_wgslsmith_add_i32(arg_0.a, 0i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.d.b))), vec4<f32>(739f, -412f, -307f, 925f))), Struct_2(arg_1.xy, any(arg_1.yw), -382f, Struct_1(!any(arg_1.wwy), _wgslsmith_f_op_f32(-arg_0.b.x), global0.e.d.c, _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(arg_2 - arg_0.b.x)), -311f)));
    let var_1 = reverseBits(u_input.a);
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1233f - global0.e.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f * _wgslsmith_f_op_f32(959f + arg_2)))), var_0.e.d.c << (vec4<u32>(var_0.c, 4294967295u, var_1, 47617u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(global0.e.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1698f))), _wgslsmith_f_op_f32(ceil(var_0.d.b.x)));
    var var_3 = -2067i < _wgslsmith_mult_i32(global0.e.d.c.x, ~(-(~(-12199i))));
    global1 = array<u32, 9>();
    return Struct_2(select(var_0.e.a, vec2<bool>(any(!vec2<bool>(arg_1.x, arg_1.x)), false), any(!arg_1.xw) & global0.b), var_0.e.d.a, arg_0.b.x, global0.e.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    global1 = array<u32, 9>();
    global2 = ~(~3648u);
    global2 = ~4294967295u;
    let var_0 = Struct_5(global0.d.b.wz, Struct_3((~u_input.c & (arg_1.x | global0.d.a)) << (~global0.c % 32u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, arg_0.d.e, arg_2, global0.d.b.x))), _wgslsmith_f_op_vec4_f32(trunc(global0.d.b))))), func_4(global0.d, vec4<bool>(any(select(vec4<bool>(global0.b, global0.e.a.x, global0.e.a.x, arg_0.d.a), vec4<bool>(false, global0.e.d.a, global0.e.a.x, arg_0.d.a), arg_0.d.a)), false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f * global0.e.d.d) * _wgslsmith_f_op_f32(min(-349f, -130f))))).d.c.yy);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2)), global0.e.d.d), _wgslsmith_f_op_f32(global0.e.c + _wgslsmith_f_op_f32(-arg_2)))))));
    return min(min(u_input.b.x, abs(countOneBits(4294967295u))), ~u_input.b.x);
}

fn func_1(arg_0: Struct_3) -> u32 {
    global2 = 0u;
    global2 = func_5(func_4(Struct_3(48003i, _wgslsmith_f_op_vec4_f32(func_2(Struct_1(true, global0.d.b.x, global0.e.d.c, arg_0.b.x, 705f), vec2<bool>(true, global0.b)))), select(vec4<bool>(global0.e.b & global0.b, true, true, global0.d.a < global0.e.d.c.x), !select(vec4<bool>(global0.b, false, global0.e.d.a, global0.e.a.x), vec4<bool>(global0.e.b, global0.b, global0.e.a.x, false), vec4<bool>(false, false, true, false)), global0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d.b.x)) * _wgslsmith_f_op_f32(-global0.d.b.x))))), global0.e.d.c.xx, _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_0 = select(!vec3<bool>(firstTrailingBit(global0.c) < ~global0.c, true, !(!global0.e.d.a)), vec3<bool>(true, all(!func_4(global0.d, vec4<bool>(global0.e.b, global0.e.d.a, global0.e.d.a, true), arg_0.b.x).a), (reverseBits(global0.e.d.c.x) << (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(20945u, global0.a.x), 9u)] % 32u)) == 1i), vec3<bool>(true, false, !all(global0.e.a)));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2201f, 464f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -722f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.zw)))) * vec2<f32>(-625f, global0.e.d.e)), Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.e.c, arg_0.b.x, arg_0.b.x, arg_0.b.x))))))), abs(vec2<i32>(1i, 1i)));
    global2 = abs(59326u);
    return min(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(func_5(global0.e, countOneBits(global0.e.d.c.xy), -147f), ~(25079u >> (u_input.a % 32u)), ~_wgslsmith_sub_u32(1u, global0.a.x), firstLeadingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(global0.e.d.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.b.zw) - _wgslsmith_f_op_vec2_f32(exp2(global0.d.b.xw)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f - 852f) * -1766f), 989f, _wgslsmith_add_u32(global0.a.x, func_1(global0.d)) <= u_input.a)) - global0.e.c);
    global2 = global0.a.x;
    global2 = _wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(global0.a.xy, vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_sub_u32(4294967295u, 27146u)), u_input.b), ~global0.a.x & (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwz, u_input.b.xyw), 9u)] ^ u_input.b.x)), _wgslsmith_mod_u32(~global0.a.x, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], countOneBits(_wgslsmith_clamp_u32(0u, global0.a.x, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -491f), -71345i, ~(~select(1u, 17199u, global0.b)));
}

