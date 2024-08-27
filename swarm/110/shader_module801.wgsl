struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true));

var<private> global1: array<u32, 17>;

var<private> global2: Struct_4;

var<private> global3: array<u32, 31>;

var<private> global4: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1521f, -349f), vec2<f32>(1646f, 368f), vec2<f32>(818f, -881f), vec2<f32>(1000f, 668f), vec2<f32>(-156f, 966f), vec2<f32>(-1603f, -528f), vec2<f32>(1064f, -1696f), vec2<f32>(757f, -2620f), vec2<f32>(523f, -368f), vec2<f32>(-489f, -126f), vec2<f32>(1000f, 896f), vec2<f32>(1099f, 873f), vec2<f32>(-1471f, -379f), vec2<f32>(-1042f, 437f), vec2<f32>(1036f, 130f), vec2<f32>(917f, 1562f), vec2<f32>(-200f, -491f), vec2<f32>(1563f, -259f), vec2<f32>(-1276f, -310f), vec2<f32>(774f, 439f), vec2<f32>(-979f, 545f), vec2<f32>(-1628f, -131f), vec2<f32>(-1470f, -191f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_5(firstTrailingBit(abs(-1i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(895f * arg_0))))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(518f - arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -793f)))), vec2<bool>(false, !(_wgslsmith_div_f32(arg_0, 202f) >= -503f)), u_input.a);
    let var_1 = Struct_3(vec2<bool>(var_0.d.x, all(vec2<bool>(var_0.d.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, arg_0, var_0.b.a))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.c.a)), var_0.c.a, 1579f), var_0.d.x)) * vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), var_0.b, max(select(reverseBits(u_input.a), var_0.e, var_0.d.x), u_input.a), global2.a.wxx);
    global1 = array<u32, 17>();
    global2 = Struct_4(global2.a, 1u);
    global0 = array<vec4<bool>, 12>();
    return var_1.c.a != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1603f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -253f)), !var_1.a.x)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = arg_0;
    global0 = array<vec4<bool>, 12>();
    let var_1 = vec4<bool>(true, any(vec4<bool>((17029i << (global3[_wgslsmith_index_u32(77663u, 31u)] % 32u)) >= -43403i, true && arg_1, true && (var_0 && arg_0), true)), false, all(vec4<bool>(true, func_3(-1645f), true, arg_0 && all(vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_dot_vec4_u32(global2.a, max(global2.a, vec4<u32>(abs(_wgslsmith_sub_u32(global2.b, global1[_wgslsmith_index_u32(48350u, 17u)])), ~(global3[_wgslsmith_index_u32(global2.a.x, 31u)] ^ 0u), ~_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 31u)]), 4294967295u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1049f + 229f))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(arg_2.x, 23u)] - global4[_wgslsmith_index_u32(~0u, 23u)])));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.a.x;
    let var_1 = -1i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2440f));
    var var_2 = vec3<bool>(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), false, false);
    global3 = array<u32, 31>();
    return vec3<bool>(var_2.x, var_2.x, any(global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(~global2.b, 17u)]), 12u)]));
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    return all(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(true, false, global2.a.yww)))), abs(u_input.a.zz) << (~global2.a.wy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    let var_0 = Struct_3(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2159f, -833f, 887f) - vec3<f32>(582f, 354f, 382f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(778f, -1092f, -1497f), vec3<f32>(235f, -335f, -1003f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(471f, -2106f, 251f), vec3<f32>(1347f, -1000f, 122f)))), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1860f)))), u_input.a, ~global2.a.zyz);
    global4 = array<vec2<f32>, 23>();
    global3 = array<u32, 31>();
    let var_1 = firstTrailingBit(max(global2.a, vec4<u32>(41396u, ~global3[_wgslsmith_index_u32(4294967295u, 31u)], 57506u, select(var_0.e.x, 16430u, false)) & ~vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 31u)], 17u)], global2.a.x, 0u, 37213u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-640f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x)))) * var_0.c.a));
    global0 = array<vec4<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) + var_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f * 793f) - 952f)))), global2.b >> (~60850u % 32u), _wgslsmith_clamp_i32(countOneBits(u_input.a.x), select(-1i, u_input.b.x, func_1(var_0.a.x, global1[_wgslsmith_index_u32(38817u, 17u)] >= global2.b)), u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1902f + var_2), var_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), -1000f)))));
}

