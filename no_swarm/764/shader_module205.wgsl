struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<f32, 31>;

var<private> global2: array<bool, 4> = array<bool, 4>(false, false, true, true);

var<private> global3: vec3<u32> = vec3<u32>(50101u, 1u, 65040u);

var<private> global4: array<f32, 12> = array<f32, 12>(-524f, -374f, -171f, 1000f, -2223f, -307f, -1113f, 1000f, 1000f, -219f, 1000f, -1401f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_3.b;
    let var_1 = true;
    return !select(select(select(vec4<bool>(var_0, true, var_1, true), vec4<bool>(true, var_0, arg_3.b, arg_3.c.x), var_1), vec4<bool>(true, true, true, arg_3.b), ~arg_0.x <= 4294967295u), !vec4<bool>(var_1, true, true, !var_1), vec4<bool>(any(!vec4<bool>(var_1, var_1, false, false)), false, true, var_0));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<vec2<bool>, 4>();
    var var_0 = reverseBits(arg_0);
    let var_1 = -2747f;
    var_0 = arg_0 & -1924i;
    var var_2 = !(!any(select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 4u)]), func_1(vec3<u32>(u_input.a.x, 1u, 4294967295u), 13416i, 732f, Struct_1(arg_0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)])).zxw, true)));
    return !(!any(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(global3.x, 4u)])));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(-1i, func_3(_wgslsmith_mult_i32(min(-1i, reverseBits(2147483647i)), -30824i)), select(global0[_wgslsmith_index_u32(1645u, 4u)], vec2<bool>(any(func_1(vec3<u32>(global3.x, global3.x, u_input.a.x), -4006i, global1[_wgslsmith_index_u32(0u, 31u)], Struct_1(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(18992u, 4u)]))), (global2[_wgslsmith_index_u32(4294967295u, 4u)] != global2[_wgslsmith_index_u32(global3.x, 4u)]) || false), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(49593u, 4u)]), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global3.x, global3.x)), 4u)], vec2<bool>(true, true), global3.x >= 22591u), select(!vec2<bool>(global2[_wgslsmith_index_u32(2480u, 4u)], false), global0[_wgslsmith_index_u32(global3.x, 4u)], true))));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-18612i), var_0.a >> (12649u % 32u)), vec2<i32>(firstTrailingBit(var_0.a | var_0.a), _wgslsmith_add_i32(~var_0.a, -595i))), true, select(!vec2<bool>(!var_0.b, any(vec4<bool>(true, true, var_0.c.x, false))), vec2<bool>(true, false), global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~14439u, ~u_input.a.x, ~4294967295u)), 4u)]));
    let var_2 = -max(-38520i, var_1.a);
    var var_3 = Struct_1(_wgslsmith_div_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, var_1.a, -2147483647i, var_1.a), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.a, 25087i, var_1.a), vec4<i32>(var_0.a, var_2, var_1.a, var_0.a))))), !any(func_1(vec3<u32>(74906u, u_input.a.x, u_input.a.x) >> (vec3<u32>(global3.x, 18996u, 49799u) % vec3<u32>(32u)), 2147483647i, global1[_wgslsmith_index_u32(abs(u_input.a.x), 31u)], Struct_1(var_0.a, true, var_0.c)).xx), func_1(vec3<u32>(max(8251u, 37959u) << (u_input.a.x % 32u), ~(~u_input.a.x), countOneBits(27400u)), -firstTrailingBit(-894i), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.x, 31u)] + -300f), Struct_1(var_2, any(var_1.c), select(!var_0.c, global0[_wgslsmith_index_u32(global3.x, 4u)], all(var_1.c)))).wx);
    var var_4 = vec3<i32>(55267i, -1i, -17649i);
    return vec4<bool>(false, var_0.b, var_1.b || select(true, global2[_wgslsmith_index_u32(firstTrailingBit(~43489u), 4u)], any(select(vec3<bool>(global2[_wgslsmith_index_u32(44723u, 4u)], var_3.c.x, var_3.b), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), var_0.c.x))), any(!select(!vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(4451u, 4u)], true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * global1[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_1 = select(!(!(!func_1(vec3<u32>(56829u, 4294967295u, 0u), -37492i, 457f, Struct_1(2147483647i, false, vec2<bool>(true, true))))), vec4<bool>(false == select(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)] && global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), false, all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], true, true), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3.x, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(global3.x, 4u)], true))), false), any(func_1(vec3<u32>(53944u, u_input.a.x, 88179u << (global3.x % 32u)), _wgslsmith_add_i32(~(-2147483647i), -1i), global1[_wgslsmith_index_u32(~min(global3.x, 33676u), 31u)], Struct_1(-6302i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 4u)], global0[_wgslsmith_index_u32(1u, 4u)]))));
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    var_0 = -146f;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(399f, 2016f) + vec2<f32>(-400f, 1439f))), vec2<f32>(-954f, global4[_wgslsmith_index_u32(u_input.a.x, 12u)]))))));
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(32845i, ~(~_wgslsmith_mult_i32(1i, 1i))), ~(-27774i), min(vec2<i32>(_wgslsmith_sub_i32(reverseBits(-39916i), -89058i), -(~(-26805i))), vec2<i32>(-7446i, -(i32(-1i) * -40676i))));
}

