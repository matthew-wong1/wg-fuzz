struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-482f);

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(arg_1, vec3<f32>(_wgslsmith_f_op_f32(1145f * 573f), -1117f, -558f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, _wgslsmith_f_op_f32(arg_1.x * -1000f), global3.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - arg_1))));
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(select(countOneBits(vec4<i32>(1i, 27201i, 7820i, -36785i)), -vec4<i32>(-2147483647i, 1i, -1i, -8104i), vec4<bool>(arg_0, true, global4.x, true)), ~vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, -6777i, 1i, -_wgslsmith_div_i32(reverseBits(1i), 1i)));
    global4 = select(vec4<bool>(!all(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(false, true, global4.x, global4.x), false)), all(!vec2<bool>(true, arg_0)), true, true), !select(vec4<bool>(!arg_0, !global4.x, !global4.x, all(vec3<bool>(true, global4.x, arg_0))), select(vec4<bool>(false, global4.x, arg_0, global4.x), select(vec4<bool>(global4.x, global4.x, true, arg_0), vec4<bool>(true, arg_0, global4.x, false), vec4<bool>(false, global4.x, arg_0, true)), select(vec4<bool>(arg_0, true, global4.x, global4.x), vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(true, arg_0, global4.x, false))), vec4<bool>(true || global4.x, global4.x, !arg_0, global4.x)), false);
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -239f)) * var_1.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a)))));
    return select(39894u, _wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a)), true);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 21u)];
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, 11433u) >> (vec4<u32>(4294967295u, 108492u, u_input.a, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, 1899u, u_input.a)), _wgslsmith_mod_u32(u_input.a, func_3(any(vec4<bool>(global4.x, true, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1416f, var_0.a))))), 21u)];
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), firstLeadingBit(u_input.a), 54783u, 113042u >> (u_input.a % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 78513u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, 31817u) << (vec4<u32>(43730u, u_input.a, 2619u, 69670u) % vec4<u32>(32u)))) << (~(~(~vec4<u32>(u_input.a, 27616u, 11917u, u_input.a) ^ ~vec4<u32>(u_input.a, 0u, 6617u, 44388u))) % vec4<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f * 1000f) * _wgslsmith_f_op_f32(trunc(736f)))), _wgslsmith_f_op_f32(trunc(global0.a)), global0.a));
    let var_1 = (vec4<u32>(22983u, ~51768u, ~(~62590u), 62723u) & ~(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) | (vec4<u32>(u_input.a, u_input.a, 28691u, 12732u) >> (vec4<u32>(1u, 0u, u_input.a, 53759u) % vec4<u32>(32u))))) << (~reverseBits(func_2(all(vec4<bool>(global4.x, false, global4.x, true)))) % vec4<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a));
    global2 = var_0.x;
    return var_1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f));
    var_0 = _wgslsmith_f_op_f32(-global0.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1105f + -505f) + global3.a));
    var var_1 = 933f;
    var_1 = -974f;
    let var_2 = firstLeadingBit(select(_wgslsmith_sub_vec2_u32(~(vec2<u32>(0u, u_input.a) | vec2<u32>(u_input.a, 43793u)), ~func_1(1218f, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])), vec2<u32>(min(_wgslsmith_sub_u32(22784u, 0u), func_3(true, vec3<f32>(2121f, 304f, -2245f))), ~u_input.a), global4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-1045f, _wgslsmith_div_f32(2007f, global0.a)), _wgslsmith_f_op_f32(-433f * _wgslsmith_f_op_f32(ceil(-302f))), -1354f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-904f, global0.a, 1084f, global0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, global0.a, 1058f, global3.a))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, global3.a, -1000f, -1949f)))))));
}

