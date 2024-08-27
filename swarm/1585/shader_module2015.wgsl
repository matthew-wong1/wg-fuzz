struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(0u, 87153u));

var<private> global2: array<f32, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_3, 1>();
    return i32(-1i) * -49100i;
}

fn func_2(arg_0: Struct_3) -> f32 {
    global2 = array<f32, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f * global2[_wgslsmith_index_u32(53674u, 9u)]))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(38248u, 9u)]), 1628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~(~3893u), 9u)])) + -1237f));
    let var_1 = select(vec4<bool>(any(vec2<bool>(!global0.x, !global0.x)), min(-5500i << (arg_0.b % 32u), func_3(Struct_1(vec3<u32>(arg_0.a, arg_0.b, 4294967295u), global2[_wgslsmith_index_u32(arg_0.b, 9u)], vec2<bool>(global0.x, false)))) != ~(~45071i), !(!any(vec4<bool>(global0.x, global0.x, true, global0.x))), select(any(!vec3<bool>(true, false, global0.x)), global0.x, global0.x | false)), select(!vec4<bool>(false, global0.x || true, u_input.a.x <= u_input.a.x, true), !(!(!vec4<bool>(false, false, global0.x, global0.x))), vec4<bool>(any(select(vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, true), false)), global0.x, global0.x, any(vec2<bool>(true, true)))), vec4<bool>(global0.x, arg_0.a == firstLeadingBit(~89759u), any(!vec2<bool>(false, global0.x)), true));
    let var_2 = _wgslsmith_f_op_f32(1167f - 1235f);
    var var_3 = global1[_wgslsmith_index_u32(arg_0.b, 1u)];
    return _wgslsmith_f_op_f32(-897f * var_0.x);
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = vec2<bool>(global2[_wgslsmith_index_u32(reverseBits(min(_wgslsmith_dot_vec4_u32(vec4<u32>(12897u, 1u, 17570u, 3223u), vec4<u32>(10075u, 42725u, 0u, 4294967295u)), 1u)), 9u)] >= _wgslsmith_f_op_f32(242f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(42879u, 1u)])) + -660f)), global0.x || (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 16950u)) == 1u));
    let var_1 = ~(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-35206i, -33490i, u_input.a.x, u_input.a.x), vec4<i32>(-19666i, u_input.a.x, 445i, -39567i)), _wgslsmith_mod_i32(~606i, 26383i), u_input.a.x));
    let var_2 = global0.x || global0.x;
    var var_3 = Struct_2(!select(vec3<bool>(true, any(vec3<bool>(global0.x, false, global0.x)), var_2), !select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, false), vec3<bool>(global0.x, var_0.x, var_0.x)), var_0.x));
    var var_4 = func_3(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, firstLeadingBit(89420u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1482f), !select(var_0, vec2<bool>(true, false), vec2<bool>(true, true))));
    return Struct_2(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x)), select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(false, false))) || ((_wgslsmith_f_op_f32(-799f + global2[_wgslsmith_index_u32(36696u, 9u)]) <= global2[_wgslsmith_index_u32(_wgslsmith_div_u32(46979u, 4294967295u), 9u)]) || !global0.x), true);
    let var_1 = func_1(vec4<f32>(276f, global2[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) + _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 9u)]))), global2[_wgslsmith_index_u32(firstTrailingBit(~(22518u << (0u % 32u))), 9u)]));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(56448u, 9u)], 763f, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]))) + vec4<f32>(global2[_wgslsmith_index_u32(9549u, 9u)], 300f, global2[_wgslsmith_index_u32(42467u, 9u)], global2[_wgslsmith_index_u32(97330u, 9u)])), vec4<f32>(global2[_wgslsmith_index_u32(~4294967295u, 9u)], -385f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4294967295u, 9u)])), 1891f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 1u)), 1u)])), _wgslsmith_f_op_f32(f32(-1f) * -836f), global2[_wgslsmith_index_u32(~15568u, 9u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 9u)]), any(vec4<bool>(true, true, true, var_1.a.x)))))));
    var var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(44144u, 1u), 19533u))), 1u)];
    var var_4 = -6644i;
    global2 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-reverseBits(vec3<i32>(u_input.a.x, var_0, u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(var_3.b, 9u)], -494f) - vec4<f32>(var_2.x, 1653f, global2[_wgslsmith_index_u32(1883u, 9u)], -1718f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.x, var_2.x, -1006f) + vec4<f32>(-126f, 1000f, -317f, -120f)))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~4259u, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -730f), -988f, var_2.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1089f, var_2.x, var_2.x, global2[_wgslsmith_index_u32(13437u, 9u)]) + vec4<f32>(global2[_wgslsmith_index_u32(49237u, 9u)], 2296f, global2[_wgslsmith_index_u32(13873u, 9u)], var_2.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(~63053u, 9u)], 426f, var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.yxy, var_2.zww, vec3<bool>(var_1.a.x, false, global0.x))))), var_2.zww));
}

