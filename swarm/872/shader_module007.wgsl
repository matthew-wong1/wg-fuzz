struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<i32> = vec2<i32>(-23625i, 1i);

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<u32, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global0 = select(select(select(!(!vec3<bool>(true, global0.x, false)), vec3<bool>(false, true, all(vec3<bool>(global0.x, global0.x, false))), vec3<bool>(28498u <= arg_1, true, false)), vec3<bool>(_wgslsmith_mult_u32(arg_1, u_input.d.x) <= u_input.a, any(vec4<bool>(global0.x, true, global0.x, true)) & true, global0.x), !((-2147483647i >> (1u % 32u)) == arg_0.c)), vec3<bool>(true, all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, global0.x), !global0.x)), any(!(!global0.zz))), vec3<bool>(arg_1 == (_wgslsmith_div_u32(26763u, 60223u) >> (~arg_1 % 32u)), !global0.x, global0.x));
    let var_0 = -(~u_input.c.x);
    global0 = vec3<bool>(any(vec2<bool>(false, !any(global0.zz))), global0.x, false | (~u_input.a >= _wgslsmith_dot_vec4_u32(select(vec4<u32>(4682u, 0u, 0u, 90254u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], 1592u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 1u), vec4<bool>(true, true, true, false)), countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 1u, 11283u, 0u)))));
    return all(select(select(!(!vec4<bool>(global0.x, false, true, global0.x)), select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, false, false), true), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), true), !vec4<bool>(true, false, global0.x, global0.x)), vec4<bool>(-arg_0.c > 1i, global0.x, global0.x, global0.x), !select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, true, true, true), !global0.x)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = vec3<bool>(global0.x, func_3(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(1u ^ ~u_input.d.x), 22u)], 16u)], firstTrailingBit(~global3[_wgslsmith_index_u32(~u_input.a, 22u)])), any(!(!select(vec3<bool>(false, false, global0.x), vec3<bool>(false, true, true), vec3<bool>(false, false, global0.x)))));
    var var_0 = select(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.a, u_input.d.x)) & firstLeadingBit(1u), global3[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19824u, 22u)], 22u)], 11271u), 22u)]), vec3<u32>(~(global3[_wgslsmith_index_u32(1u, 22u)] | 12290u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), ~vec3<u32>(30670u, global3[_wgslsmith_index_u32(49099u, 22u)], 31763u)), abs(u_input.d.x))), true);
    var var_1 = select(select(vec3<bool>(global0.x, true, true), vec3<bool>(all(select(vec2<bool>(false, global0.x), global0.zz, true)), any(vec4<bool>(true, global0.x, global0.x, global0.x)), true), vec3<bool>(-291f < _wgslsmith_f_op_f32(floor(-1287f)), all(!vec4<bool>(global0.x, global0.x, true, global0.x)), all(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(false, false, global0.x, global0.x), global0.x)))), !vec3<bool>(true, false, -1149f <= _wgslsmith_f_op_f32(floor(-615f))), any(vec2<bool>(true, func_3(global2[_wgslsmith_index_u32(0u, 16u)], 22354u) & global0.x)));
    let var_2 = 162f;
    global2 = array<Struct_2, 16>();
    return vec3<bool>(var_1.x, true, false);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1073f + 493f), 1f);
    var var_1 = _wgslsmith_mod_u32(~(~(~17529u)), ~0u) ^ (~u_input.d.x << (4294967295u % 32u));
    let var_2 = Struct_2(1494f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-446f, 1000f))), vec2<f32>(559f, -223f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -1164f))))), 6772i);
    global0 = vec3<bool>(any(vec3<bool>(false, global0.x, !(global0.x | true))), !(all(select(vec2<bool>(true, global0.x), global0.xx, global0.yx)) & all(func_2(-499f))), global0.x);
    var_0 = -261f;
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~4294967295u, ~global3[_wgslsmith_index_u32(0u, 22u)]), 1076u, 4294967295u, u_input.a), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(24438u, 22u)], global3[_wgslsmith_index_u32(25034u, 22u)], u_input.a, 3074u), vec4<u32>(u_input.d.x, global3[_wgslsmith_index_u32(1u, 22u)], 26466u, 48111u), vec4<u32>(0u, u_input.d.x, 48869u, u_input.a))), ~vec4<u32>(u_input.d.x & 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(51741u, 0u, 38815u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], u_input.d.x)), reverseBits(global3[_wgslsmith_index_u32(u_input.d.x, 22u)]), 1u)), -vec4<i32>(0i ^ var_2.c, reverseBits(u_input.c.x), 0i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, global0.x, all(select(select(!vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(global0.x, global0.x, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false), global0.x)), false)), !global0.x);
    let x = u_input.a;
    s_output = func_1();
}

