struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 12>;

var<private> global2: array<i32, 12> = array<i32, 12>(1i, i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i, 45359i, 2147483647i, 1609i, 9724i, i32(-2147483648), 2147483647i, i32(-2147483648));

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_3, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<bool> {
    return vec3<bool>(any(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true, global1[_wgslsmith_index_u32(0u, 12u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(arg_0.x, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], false), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 12u)], true, true, global1[_wgslsmith_index_u32(arg_0.x, 12u)])))), any(!(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(12253u, 12u)], true)))), all(vec4<bool>(global1[_wgslsmith_index_u32(~76424u, 12u)] != global1[_wgslsmith_index_u32(1u | u_input.d.x, 12u)], 146f != _wgslsmith_f_op_f32(global3.x * -188f), select(any(vec4<bool>(global1[_wgslsmith_index_u32(27806u, 12u)], global1[_wgslsmith_index_u32(arg_2.x, 12u)], true, true)), global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(~arg_2.x, 12u)]), -973f >= global3.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    var var_0 = u_input.d.x;
    global1 = array<bool, 12>();
    global1 = array<bool, 12>();
    let var_1 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(38863i, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.c), min(vec4<i32>(7925i, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -2147483647i, 2722i), vec4<i32>(u_input.c, u_input.c, 18920i, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))) & _wgslsmith_clamp_i32(-47904i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(20978i, u_input.c, 0i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(49363u, 12u)], u_input.c))), abs(-1i) << (u_input.a % 32u)), abs(vec2<i32>(~4931i, u_input.c)));
    var var_2 = false;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f))));
}

fn func_2(arg_0: u32) -> bool {
    global2 = array<i32, 12>();
    global2 = array<i32, 12>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(select(func_3(u_input.d.zwy, Struct_1(u_input.c, vec2<i32>(-32000i, -44406i)), u_input.b.wz, Struct_3(vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(74972u, 12u)], -17360i), Struct_1(19285i, vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 12u)], u_input.c)), vec4<f32>(497f, 992f, global3.x, 2038f))), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 12u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(27276u, 12u)], false), global1[_wgslsmith_index_u32(arg_0, 12u)]), true), global1[_wgslsmith_index_u32(~21763u, 12u)] || !global1[_wgslsmith_index_u32(u_input.b.x, 12u)], vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 0u), u_input.b.zyx), 12u)], all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))))), _wgslsmith_f_op_f32(global3.x * -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), global3.x)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-560f * -1054f))) + global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1346f));
    return true;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = vec4<bool>(func_2(35452u), !(!(_wgslsmith_f_op_f32(step(-495f, arg_0.x)) < _wgslsmith_f_op_f32(global3.x + 1332f))), global1[_wgslsmith_index_u32(~u_input.b.x, 12u)], !global1[_wgslsmith_index_u32(u_input.b.x, 12u)]);
    global4 = array<Struct_3, 20>();
    global1 = array<bool, 12>();
    global4 = array<Struct_3, 20>();
    let var_1 = _wgslsmith_f_op_f32(select(-1283f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global3.x)), global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f - arg_0.x)), global3.x) != _wgslsmith_f_op_f32(f32(-1f) * -1006f)));
    return max(u_input.b.x, abs(49790u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global1 = array<bool, 12>();
    global0 = true;
    let var_1 = select(vec4<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(12034u, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)], true)), true, true, _wgslsmith_f_op_f32(round(global3.x)) > 872f), vec4<bool>(all(!vec2<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)])) | select(u_input.b.x > 4294967295u, var_0 < var_0, true), all(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], true, false, false)), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false, true, true)), all(vec2<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], true)), global1[_wgslsmith_index_u32(58258u >> (var_0 % 32u), 12u)])), (firstTrailingBit(-26424i) > global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 67361u), 12u)]) && global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(var_0, var_0), func_1(vec4<f32>(-351f, global3.x, global3.x, global3.x))), 12u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, global1[_wgslsmith_index_u32(var_0, 12u)])) | true, true, func_3(vec3<u32>(u_input.d.x, var_0, 0u), Struct_1(29221i, vec2<i32>(0i, global2[_wgslsmith_index_u32(var_0, 12u)])), vec2<u32>(var_0, 0u), global4[_wgslsmith_index_u32(u_input.d.x, 20u)]).x && all(vec3<bool>(global1[_wgslsmith_index_u32(27243u, 12u)], global1[_wgslsmith_index_u32(25644u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]))));
    let var_2 = ~vec4<u32>(countOneBits(_wgslsmith_clamp_u32(4294967295u >> (u_input.b.x % 32u), ~22577u, 0u)), _wgslsmith_sub_u32(0u, ~var_0), 0u, (var_0 ^ 1u) ^ ~u_input.a);
    var var_3 = Struct_1(u_input.c, (vec2<i32>(u_input.c, -2147483647i) | -vec2<i32>(2147483647i, u_input.c)) & vec2<i32>(reverseBits(abs(global2[_wgslsmith_index_u32(0u, 12u)])), ~(-global2[_wgslsmith_index_u32(1u, 12u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x);
}

