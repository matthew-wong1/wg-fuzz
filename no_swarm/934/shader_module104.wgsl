struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<u32, 26> = array<u32, 26>(4294967295u, 0u, 45025u, 4294967295u, 28687u, 4816u, 61103u, 0u, 1u, 20424u, 1u, 0u, 1u, 4294967295u, 80682u, 53635u, 49614u, 39231u, 1u, 48721u, 75794u, 1u, 92889u, 1u, 17269u, 4294967295u);

var<private> global2: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(20628u, 4688u, 22224u));

var<private> global3: array<bool, 18> = array<bool, 18>(true, true, true, false, false, false, false, false, false, false, false, true, true, true, true, true, false, true);

var<private> global4: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = abs(u_input.b.x);
    return vec4<i32>(_wgslsmith_add_i32(min(16782i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) | u_input.b.x), -abs(u_input.b.x)), u_input.b.x, -_wgslsmith_sub_i32(u_input.e, 1945i), u_input.e);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_4(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a)), ~((u_input.c.x << (4294967295u % 32u)) ^ global1[_wgslsmith_index_u32(u_input.d, 26u)]), 1u), Struct_3(u_input.a.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, arg_0.x, global4.x, global4.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, global4.x, global4.x))))));
    let var_1 = select(!select(select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec3<bool>(global3[_wgslsmith_index_u32(34041u, 18u)], true, global3[_wgslsmith_index_u32(1u, 18u)]), true), select(vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(28939u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(var_0.b.a.x, 18u)]), global3[_wgslsmith_index_u32(19614u, 18u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)], false)), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.a.x, 18u)], global3[_wgslsmith_index_u32(4766u, 18u)])), select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.b.a.x, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(14629u, 18u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false)), select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(64015u, 18u)], false), vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 26u)], 18u)], global3[_wgslsmith_index_u32(var_0.b.a.x, 18u)], false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(46043u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)], true))), vec3<bool>(all(vec2<bool>(false, all(vec4<bool>(false, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35506u, 26u)], 18u)], global3[_wgslsmith_index_u32(42454u, 18u)])))), global3[_wgslsmith_index_u32(1u, 18u)], true == (4294967295u != _wgslsmith_add_u32(44573u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]))), _wgslsmith_dot_vec4_i32(-func_3(Struct_3(vec2<u32>(68043u, 65403u), var_0.b.b)), abs(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x))) < reverseBits(func_3(var_0.b).x));
    let var_2 = var_0.a;
    let var_3 = u_input.b.x;
    let var_4 = all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(var_2.x, 18u)] && global3[_wgslsmith_index_u32(var_2.x, 18u)], !var_1.x, global3[_wgslsmith_index_u32(4294967295u, 18u)], var_1.x & var_1.x), all(!vec3<bool>(var_1.x, var_1.x, var_1.x))), select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(5109u, 18u)], true, false, true), vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), global3[_wgslsmith_index_u32(4294967295u, 18u)]), !var_1.x), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, false), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], var_1.x, false), var_1.x), !vec4<bool>(var_1.x, true, false, global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(false, var_1.x, true, false)), var_1.x), var_1.x));
    return all(!(!(!(!vec2<bool>(true, var_1.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    global4 = vec4<f32>(-826f, _wgslsmith_f_op_f32(trunc(arg_1)), -216f, _wgslsmith_f_op_f32(-global4.x));
    let var_0 = select(vec2<bool>(select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 7196u ^ arg_3), 18u)], func_2(vec2<f32>(arg_2.x, 542f)), func_2(vec2<f32>(2514f, arg_2.x))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(min(global4.x, arg_1))))), select(select(select(vec2<bool>(false, true), select(arg_0, vec2<bool>(global3[_wgslsmith_index_u32(0u, 18u)], true), arg_0), all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], arg_0.x))), vec2<bool>(!arg_0.x, !arg_0.x), arg_0.x), select(vec2<bool>(true, true), select(arg_0, select(vec2<bool>(false, false), arg_0, true), arg_0), !arg_0), !select(vec2<bool>(arg_0.x, global3[_wgslsmith_index_u32(arg_3, 18u)]), vec2<bool>(false, arg_0.x), !vec2<bool>(arg_0.x, true))), any(vec4<bool>(!all(vec3<bool>(arg_0.x, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38972u, 26u)], 26u)], 18u)])), false, all(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false, global3[_wgslsmith_index_u32(4294967295u, 18u)], arg_0.x), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(arg_3, 18u)]), true)), true)));
    let var_1 = vec2<i32>(-1i) * -(~select(countOneBits(vec2<i32>(-2147483647i, 0i)), vec2<i32>(38759i, -1i), select(var_0, arg_0, arg_0.x)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-981f * arg_1)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, arg_3), min(31485u, u_input.a.x)), 52176u), arg_3, arg_3), 7u)], u_input.e);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f * arg_2.x))))));
    return ~abs(_wgslsmith_clamp_u32(48804u, select(4294967295u, 5909u, false), _wgslsmith_mod_u32(max(4294967295u, 1u), _wgslsmith_add_u32(arg_3, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 1>();
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    let var_0 = select(select(!vec3<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(11866u, 18u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 18u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), 55477u > global1[_wgslsmith_index_u32(u_input.d, 26u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(func_1(!vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 18u)]), global4.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-139f, 1000f))), _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)])), 18u)], !select(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 18u)])), all(!vec4<bool>(global3[_wgslsmith_index_u32(27773u, 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)], true, true))), select(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 18u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 18u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 26u)], 18u)]), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7316u, 26u)], 18u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]), true), vec3<bool>(false, !all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])), !(u_input.e > u_input.b.x)), vec3<bool>(func_2(global4.yw), !(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(277u, 26u)], 18u)]), any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(14216u, 18u)])))), all(select(!vec3<bool>(true, global3[_wgslsmith_index_u32(24027u, 18u)], global3[_wgslsmith_index_u32(97674u, 18u)]), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(66159u, 18u)], false), vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(48781u, 18u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(4382u, 18u)], !global3[_wgslsmith_index_u32(7133u, 18u)]))));
    let var_1 = false;
    var var_2 = any(vec2<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(1u << (_wgslsmith_div_u32(4294967295u, u_input.d) % 32u)), 18u)], var_0.x));
    let var_3 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -910f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-769f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * 776f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global4.x)))))));
}

