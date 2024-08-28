struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec3<u32> = vec3<u32>(77022u, 9956u, 4294967295u);

var<private> global3: array<bool, 23> = array<bool, 23>(false, true, false, true, true, true, false, false, false, false, true, false, false, false, true, false, true, false, true, false, true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, 989f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, global0[_wgslsmith_index_u32(global2.x, 13u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(54325u, 13u)]), vec2<f32>(-1000f, -527f)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], 1000f), vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(46031u, 13u)])))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], -388f, 829f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-946f)), global0[_wgslsmith_index_u32(global2.x, 13u)]), true, all(!(!vec4<bool>(false, false, false, arg_0)))), !(!select(select(vec4<bool>(arg_1.x, false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(29393u, 23u)], true, global3[_wgslsmith_index_u32(global2.x, 23u)], arg_0), arg_1.x), select(vec4<bool>(false, false, arg_0, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(11591u, 23u)], arg_0), vec4<bool>(arg_0, arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(0u, 23u)])), vec4<bool>(global3[_wgslsmith_index_u32(1u, 23u)], true, true, false))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = func_1(all(!(!select(vec3<bool>(false, arg_0.d, global3[_wgslsmith_index_u32(31766u, 23u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.x, 23u)], false), true))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-277f, 685f)) * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1400u, 13u)], -259f))) <= global0[_wgslsmith_index_u32(37363u, 13u)], arg_0.e));
    var var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-695f + 397f), _wgslsmith_f_op_f32(max(1102f, arg_0.c.x)))) >= var_0.a.b.x, vec2<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 13u)] > 1578f) & true, (abs(u_input.b.x) << (global2.x % 32u)) <= -1i));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.b.xx - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(15275u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]) * var_1.a.b.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, var_0.a.b.x) - var_1.a.c)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(80714u, global2.x), max(0u, 44382u)), 23u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-827f, -910f, -1610f))), vec3<f32>(_wgslsmith_div_f32(var_1.a.c.x, global0[_wgslsmith_index_u32(global2.x, 13u)]), var_1.a.b.x, _wgslsmith_f_op_f32(693f * global0[_wgslsmith_index_u32(global2.x, 13u)])), arg_0.d && true)), _wgslsmith_f_op_vec2_f32(-var_1.a.c), false, var_0.b.x), var_0.b);
    global0 = array<f32, 13>();
    var_2 = var_0;
    return _wgslsmith_mult_vec3_u32(~select(reverseBits(vec3<u32>(global2.x, 26465u, global2.x) >> (vec3<u32>(global2.x, 4294967295u, global2.x) % vec3<u32>(32u))), vec3<u32>(0u | global2.x, ~1u, global2.x), any(vec3<bool>(true, true, var_0.b.x))), vec3<u32>(4294967295u, 18975u, _wgslsmith_dot_vec3_u32(vec3<u32>(~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 61240u, global2.x, 1u), vec4<u32>(global2.x, 1u, 0u, global2.x)), 4294967295u), vec3<u32>(74151u << (global2.x % 32u), _wgslsmith_add_u32(global2.x, 33181u), ~global2.x))));
}

fn func_2() -> StorageBuffer {
    var var_0 = reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x & 60205u, ~global2.x, 8094u), ~_wgslsmith_mult_vec3_u32(func_3(Struct_1(vec2<f32>(-509f, -289f), vec3<f32>(-1483f, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<f32>(global0[_wgslsmith_index_u32(322u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), global3[_wgslsmith_index_u32(global2.x, 23u)], true)), vec3<u32>(4294967295u, global2.x, global2.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x & var_0.x, 13u)] - 1322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f * global0[_wgslsmith_index_u32(15155u, 13u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 13u)]))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(419f, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)]), vec3<f32>(-109f, -1855f, 1016f))))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 13u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.x, 13u)], -1736f), _wgslsmith_f_op_f32(select(-1324f, global0[_wgslsmith_index_u32(24042u, 13u)], global3[_wgslsmith_index_u32(global2.x, 23u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 13u)]) - vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 13u)], global0[_wgslsmith_index_u32(15312u, 13u)]))))), !(func_1(1i > u_input.b.x, select(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 23u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(false, true))).a.d || any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 23u)], global3[_wgslsmith_index_u32(global2.x, 23u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(50174u, 23u)]), true))), global3[_wgslsmith_index_u32(var_0.x, 23u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.a.x), global0[_wgslsmith_index_u32(~global2.x, 13u)], _wgslsmith_f_op_f32(-var_1.b.x))));
    var var_3 = global2.x & ~global2.x;
    var var_4 = Struct_1(vec2<f32>(-618f, _wgslsmith_f_op_f32(min(var_2.x, -603f))), _wgslsmith_f_op_vec3_f32(round(var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), 1731f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zw + vec2<f32>(-243f, 490f)))))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(13980u, select(var_0.x, max(global2.x, max(0u, var_0.x)), any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 23u)], var_1.e, global3[_wgslsmith_index_u32(4993u, 23u)], false)))), 23u)], true);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.x, 13u)], 862f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) * _wgslsmith_f_op_f32(max(var_2.x, var_1.a.x))))), ~firstLeadingBit(1u) << ((select(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, 59957u), vec3<u32>(global2.x, var_0.x, 4294967295u)), 17410u, !var_1.d) << ((~9022u << (_wgslsmith_mult_u32(global2.x, 11557u) % 32u)) % 32u)) % 32u), var_4.a.x, 15426u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, !(!vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 23u)] != false, -19173i == u_input.a.x)));
    let x = u_input.a;
    s_output = func_2();
}

