struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(-1023f, -990f, -1000f)), Struct_1(vec3<f32>(545f, -225f, -497f)), Struct_1(vec3<f32>(962f, -1000f, 1000f)), Struct_1(vec3<f32>(612f, -228f, 1000f)), Struct_1(vec3<f32>(1828f, -1099f, -442f)), Struct_1(vec3<f32>(-192f, -869f, 147f)), Struct_1(vec3<f32>(474f, 783f, 869f)), Struct_1(vec3<f32>(264f, 2182f, 421f)), Struct_1(vec3<f32>(600f, -581f, 520f)), Struct_1(vec3<f32>(-372f, -1008f, -102f)), Struct_1(vec3<f32>(1361f, 849f, -1026f)), Struct_1(vec3<f32>(-411f, 1150f, -732f)), Struct_1(vec3<f32>(1354f, 408f, -605f)), Struct_1(vec3<f32>(1608f, -388f, -1000f)), Struct_1(vec3<f32>(-1416f, 2304f, 1000f)), Struct_1(vec3<f32>(-309f, -178f, -630f)), Struct_1(vec3<f32>(-2394f, 1000f, 1191f)), Struct_1(vec3<f32>(-568f, 372f, -1334f)), Struct_1(vec3<f32>(-966f, -136f, 287f)), Struct_1(vec3<f32>(-374f, -1060f, 625f)), Struct_1(vec3<f32>(1000f, 1243f, -824f)), Struct_1(vec3<f32>(-688f, 162f, 140f)), Struct_1(vec3<f32>(1569f, 256f, 1078f)), Struct_1(vec3<f32>(-1367f, 331f, 973f)), Struct_1(vec3<f32>(-303f, -1000f, 272f)), Struct_1(vec3<f32>(1026f, -1931f, 1000f)), Struct_1(vec3<f32>(688f, -2006f, 352f)), Struct_1(vec3<f32>(500f, -446f, -1000f)), Struct_1(vec3<f32>(-862f, -1000f, -1461f)), Struct_1(vec3<f32>(1217f, -1000f, -901f)), Struct_1(vec3<f32>(-1000f, 896f, -523f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(-global0.a.x)), -528f, _wgslsmith_f_op_f32(abs(global0.a.x)) > _wgslsmith_f_op_f32(abs(215f)))), global0.a.x)));
    let var_1 = ~firstLeadingBit(vec2<u32>(reverseBits(0u), select(~0u, 81977u, global0.a.x == 482f)));
    global0 = global2[_wgslsmith_index_u32(20603u, 31u)];
    let var_2 = global2[_wgslsmith_index_u32(~(~var_1.x), 31u)];
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(164f + 344f), global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x)))));
    return -291f;
}

fn func_2() -> f32 {
    var var_0 = -vec4<i32>(-8093i, 2147483647i, countOneBits(~u_input.a.x), u_input.a.x);
    var var_1 = global0.a.yz;
    var var_2 = var_1.x > _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, true), false, u_input.a.x, false))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)));
    global2 = array<Struct_1, 31>();
    return _wgslsmith_div_f32(-1095f, _wgslsmith_f_op_f32(f32(-1f) * -312f));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 731f, 691f))), vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(func_2()), -1000f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 705f)), vec3<f32>(-927f, global0.a.x, -726f), vec3<bool>(true, true, true)))))));
    global2 = array<Struct_1, 31>();
    global1 = array<vec3<bool>, 15>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a))));
    global2 = array<Struct_1, 31>();
    return arg_3.zzz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 15>();
    var var_0 = global2[_wgslsmith_index_u32(16390u, 31u)];
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.a))), u_input.a.yxw, 1u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(70828u, 1u), vec2<u32>(42560u, 0u)), max(vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u))) % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1627f, var_0.a.x, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -435f))) - vec4<f32>(global0.a.x, 1036f, global0.a.x, var_0.a.x)))))));
    let var_1 = all(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true));
    global2 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), -248f)), _wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 956f), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(39753i, u_input.a.x), u_input.a.ww)), ~(-u_input.a.x), u_input.a.x));
}

