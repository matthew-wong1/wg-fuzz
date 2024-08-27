struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<u32>, 3>;

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<f32> {
    global0 = array<vec4<i32>, 23>();
    let var_0 = arg_2;
    var var_1 = vec3<bool>(arg_3.x, true, all(select(!(!arg_3.zxz), !(!arg_3.xxz), vec3<bool>(u_input.a.x < 2147483647i, any(arg_3), true))));
    var var_2 = global1[_wgslsmith_index_u32(0u, 19u)];
    global2 = array<vec2<u32>, 3>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-167f)) * arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f + 105f) + _wgslsmith_f_op_f32(abs(arg_1.b)))), -573f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(272f, 789f, -2218f, -1782f))), _wgslsmith_f_op_vec4_f32(step(var_2.a, var_2.a))))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    var var_0 = min(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(max(5775u, 7099u), 94702u, _wgslsmith_sub_u32(4294967295u, 12641u)), abs(firstLeadingBit(71846u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26945u, 1u) ^ global2[_wgslsmith_index_u32(4294967295u, 3u)], vec2<u32>(0u, 35188u)), ~1u), 1u));
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-130f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)) * 262f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f - -167f)), _wgslsmith_f_op_f32(-2448f - _wgslsmith_f_op_f32(-1000f + 881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(457f)) * _wgslsmith_f_op_f32(f32(-1f) * -786f))))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -42592i, 23272i), u_input.a) >> (62787u % 32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1405f, 236f, 262f, 109f), vec4<f32>(-1744f, 544f, 747f, -713f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1328f, -635f, 1075f, 282f) + vec4<f32>(-1000f, 128f, 731f, 584f)))), true)), 937f);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(-(~(-47447i)), u_input.a.x), global1[_wgslsmith_index_u32(min(~min(0u, 36889u), ~11952u), 19u)], Struct_1(~_wgslsmith_mod_i32(26636i, var_0.a)), vec4<bool>(select(true, arg_0.x, false) | any(vec4<bool>(true, true, false, arg_0.x)), true || all(arg_0.xy), false, false))).x));
    var var_3 = arg_0.x | false;
    var var_4 = Struct_1(~(3908i | reverseBits(max(var_0.a, 0i))));
    return var_4.a;
}

fn func_4(arg_0: vec3<i32>) -> StorageBuffer {
    global0 = array<vec4<i32>, 23>();
    global1 = array<Struct_2, 19>();
    global3 = array<vec2<f32>, 30>();
    global2 = array<vec2<u32>, 3>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~1u), 1u), 23u)];
    return StorageBuffer(-1i, _wgslsmith_div_f32(-1170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -257f), -197f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(~0u, min(~max(67953u, 34127u), ~4294967295u), countOneBits(_wgslsmith_sub_u32(~1u, 1u)), ~51399u), _wgslsmith_sub_vec2_u32(vec2<u32>(select(~21551u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], vec2<u32>(25594u, 28884u)), true), firstTrailingBit(_wgslsmith_mod_u32(3418u, 63900u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(countOneBits(1u), 3u)], global2[_wgslsmith_index_u32(51378u, 3u)]), 3u)]), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f * 1450f)))));
    let var_1 = vec4<i32>(-1i, ~u_input.a.x, 1i, 1i);
    global2 = array<vec2<u32>, 3>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(-38662i, 0i), global1[_wgslsmith_index_u32(29754u, 19u)], Struct_1(var_1.x), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, true)))))));
    global1 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, func_2(vec3<bool>(true, true, true)), _wgslsmith_div_i32(abs(u_input.a.x), _wgslsmith_clamp_i32(var_1.x, 0i, var_1.x))), var_1.xxx));
}

