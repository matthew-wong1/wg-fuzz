struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-213f, -220f, -162f);

var<private> global1: i32;

var<private> global2: array<i32, 32> = array<i32, 32>(0i, 0i, i32(-2147483648), -18019i, 2147483647i, 0i, -34550i, i32(-2147483648), 1i, -1i, 2147483647i, i32(-2147483648), -6547i, 10394i, i32(-2147483648), -20402i, 0i, i32(-2147483648), 1i, 2147483647i, 0i, 8651i, 7658i, 0i, 2147483647i, -19193i, i32(-2147483648), 0i, 1i, -1i, 3822i, -16490i);

var<private> global3: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -138f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -279f, 854f)))))), select(any(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, true, arg_1))), true, true)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -455f, global0.x) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(384f, global0.x, 1078f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -836f), -534f, _wgslsmith_f_op_f32(-180f - -677f)), select(arg_1, true, select(arg_1, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1289f, _wgslsmith_f_op_f32(min(-1456f, -439f))), vec3<bool>(false, true, _wgslsmith_f_op_f32(max(-559f, global0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -368f)))));
    let var_0 = vec4<bool>(0u != _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19133u, arg_0, arg_0, 1u), vec4<u32>(arg_0, 26058u, arg_0, arg_0)), select(4294967295u, 0u, false)), ~arg_0), true, select(true, all(!select(global3[_wgslsmith_index_u32(arg_0, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], arg_1)), arg_1), false);
    let var_1 = 29141u;
    global1 = 0i;
    return ~_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1, 32u)], u_input.b) >> ((vec2<u32>(36585u, 78267u) | ~vec2<u32>(arg_0, var_1)) % vec2<u32>(32u)), max(-(vec2<i32>(global2[_wgslsmith_index_u32(var_1, 32u)], -1i) ^ vec2<i32>(u_input.b, arg_2)), firstLeadingBit(abs(vec2<i32>(u_input.b, u_input.b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    let var_0 = vec4<f32>(arg_0.b.x, 107f, -434f, arg_0.b.x);
    global3 = array<vec3<bool>, 16>();
    let var_1 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(~arg_0.c, func_3(1u, false, -11902i)) << (~arg_3.yw % vec2<u32>(32u)), arg_1.c);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), -410f) * arg_1.a) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1422f + 952f))))), 452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1573f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(907f))))));
    global2 = array<i32, 32>();
    return 33276u;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global0 = arg_1.b;
    return firstTrailingBit(countOneBits(~(~func_2(Struct_1(global0.x, vec3<f32>(-1423f, -634f, -766f), vec2<i32>(20885i, u_input.b)), Struct_1(global0.x, vec3<f32>(global0.x, global0.x, -1803f), vec2<i32>(23172i, global2[_wgslsmith_index_u32(0u, 32u)])), arg_1.a, vec4<u32>(1u, 4294967295u, 4294967295u, 13728u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!any(!global3[_wgslsmith_index_u32(func_1(vec2<i32>(9929i, u_input.a), Struct_1(-351f, vec3<f32>(-856f, global0.x, -571f), vec2<i32>(-1i, 1i))), 16u)]), !(true & !(global0.x != global0.x)));
    global1 = global2[_wgslsmith_index_u32(1u << ((~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 52793u), vec2<u32>(0u, 1u)), vec2<u32>(0u, 4294967295u)) >> (countOneBits(1u) % 32u)) % 32u), 32u)];
    let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(10768u, 0u, 1u << (0u % 32u), 4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 0u, 40301u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(13687u, 23814u, 1u, 1u))) | max(select(~select(vec4<u32>(574u, 15222u, 75507u, 22310u), vec4<u32>(27823u, 11041u, 97595u, 4294967295u), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<u32>(4883u, _wgslsmith_add_u32(45816u, 61799u), ~4294967295u, ~1547u), !select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, var_0.x, true))), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = select(-2147483647i, 23832i, true) >> (50450u % 32u);
    global3 = array<vec3<bool>, 16>();
    let var_3 = !vec3<bool>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)) > _wgslsmith_mod_u32(func_1(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(var_1.x, 32u)]), Struct_1(139f, vec3<f32>(-408f, 1475f, -353f), vec2<i32>(-2147483647i, -63731i))), var_1.x), true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), global2[_wgslsmith_index_u32(reverseBits(~(0u << (~var_1.x % 32u))), 32u)], var_1.x, -620f);
}

