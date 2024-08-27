struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<i32>(-69505i, 4125i, 3290i), vec3<f32>(450f, -695f, 177f)), Struct_1(vec3<i32>(-322i, 2312i, i32(-2147483648)), vec3<f32>(-1157f, -119f, 1931f)), Struct_1(vec3<i32>(1i, 53387i, 1i), vec3<f32>(639f, -2234f, 1168f)), Struct_1(vec3<i32>(9935i, -28576i, 34996i), vec3<f32>(-1307f, 525f, -1669f)), Struct_1(vec3<i32>(-1i, 14784i, -1i), vec3<f32>(110f, -1918f, 528f)), Struct_1(vec3<i32>(2147483647i, -19676i, i32(-2147483648)), vec3<f32>(1320f, -1473f, 885f)), Struct_1(vec3<i32>(64800i, 2147483647i, 1i), vec3<f32>(321f, -954f, 482f)), Struct_1(vec3<i32>(-28160i, 2147483647i, 1i), vec3<f32>(107f, -1393f, 471f)), Struct_1(vec3<i32>(-29664i, 0i, i32(-2147483648)), vec3<f32>(-399f, 1615f, 125f)), Struct_1(vec3<i32>(0i, 1i, 2147483647i), vec3<f32>(1000f, 192f, 1422f)), Struct_1(vec3<i32>(0i, 4317i, 2147483647i), vec3<f32>(-1247f, -1437f, -1188f)), Struct_1(vec3<i32>(-23421i, -24471i, 28985i), vec3<f32>(-353f, -192f, 629f)), Struct_1(vec3<i32>(43892i, 0i, -1i), vec3<f32>(1073f, -505f, -1180f)), Struct_1(vec3<i32>(-1i, 11902i, 2147483647i), vec3<f32>(-349f, -292f, -719f)), Struct_1(vec3<i32>(32318i, -20566i, 0i), vec3<f32>(158f, 1143f, -267f)), Struct_1(vec3<i32>(-37731i, i32(-2147483648), -1i), vec3<f32>(-1078f, 306f, 571f)), Struct_1(vec3<i32>(0i, 9696i, -31445i), vec3<f32>(257f, -1727f, 292f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), vec3<f32>(2432f, -607f, 407f)), Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec3<f32>(-2104f, -2132f, -1068f)), Struct_1(vec3<i32>(2147483647i, -40593i, 12064i), vec3<f32>(-1634f, 488f, 414f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<f32>(530f, -274f, -293f)), Struct_1(vec3<i32>(-7395i, 0i, -22586i), vec3<f32>(-260f, -728f, 1355f)), Struct_1(vec3<i32>(i32(-2147483648), -30789i, 2147483647i), vec3<f32>(354f, -1111f, 1007f)), Struct_1(vec3<i32>(-1i, 10123i, 1i), vec3<f32>(-556f, 1442f, 1826f)), Struct_1(vec3<i32>(-51116i, 24042i, 999i), vec3<f32>(2084f, 1000f, 1191f)), Struct_1(vec3<i32>(2147483647i, 1i, 1369i), vec3<f32>(-495f, -318f, 757f)));

var<private> global2: f32 = 102f;

var<private> global3: array<u32, 10> = array<u32, 10>(5901u, 47810u, 1u, 28071u, 45040u, 103878u, 855u, 4294967295u, 41352u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    global3 = array<u32, 10>();
    global0 = !(!(!select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(global0.x, false, arg_0)), select(vec3<bool>(true, arg_0, global0.x), vec3<bool>(false, global0.x, false), global0.x), all(global0.zx))));
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_2(max(51008u, 1u), u_input.b.x, Struct_1(vec3<i32>(u_input.a.x, u_input.b.x | u_input.a.x, -1i), vec3<f32>(arg_1.x, -253f, _wgslsmith_f_op_f32(min(arg_1.x, -1489f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1165f + _wgslsmith_f_op_f32(-arg_1.x))) - 235f), Struct_1(min(max(~vec3<i32>(0i, u_input.a.x, 5371i), vec3<i32>(u_input.b.x, u_input.a.x, -2147483647i)), _wgslsmith_clamp_vec3_i32(~u_input.b, select(u_input.b, vec3<i32>(u_input.a.x, 1i, 27721i), vec3<bool>(false, arg_0, arg_0)), u_input.b)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - -169f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2281f, arg_1.x), arg_1.x)))));
    let var_1 = var_0.c;
    return var_1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = !(u_input.a.x <= arg_0.a.x);
    let var_1 = Struct_2(34706u, _wgslsmith_clamp_i32(-min(countOneBits(-28649i), u_input.c.x), -2147483647i, -arg_0.a.x), Struct_1(-vec3<i32>(1i, ~arg_0.a.x, func_3(true, vec2<f32>(arg_0.b.x, 1320f))), arg_0.b), arg_0.b.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x << (1u % 32u), ~(u_input.d | ~25598u)), 26u)]);
    var_0 = true;
    global2 = var_1.d;
    var_0 = true;
    return !all(global0.yx);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    let var_1 = vec2<bool>(select(any(vec3<bool>(false, global0.x, !global0.x)), true, all(vec3<bool>(!global0.x, true, func_2(arg_1.c, vec4<u32>(67769u, arg_1.a, global3[_wgslsmith_index_u32(var_0.a, 10u)], 1005u))))), select(true, global0.x, func_2(var_0.c, vec4<u32>(~21962u, select(1u, var_0.a, global0.x), u_input.d ^ 53495u, ~39559u))));
    let var_2 = ~abs(~arg_1.b);
    global2 = _wgslsmith_f_op_f32(-var_0.e.b.x);
    global1 = array<Struct_1, 26>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -7412i;
    global2 = _wgslsmith_f_op_f32(select(-250f, 393f, !global0.x));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, ~(~u_input.d & global3[_wgslsmith_index_u32(func_1(Struct_1(u_input.b, vec3<f32>(-1423f, -1148f, 156f)), Struct_2(u_input.d, u_input.c.x, Struct_1(vec3<i32>(-2147483647i, 18839i, u_input.c.x), vec3<f32>(-125f, -831f, -1000f)), -1038f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67689u, 10u)], 26u)])), 10u)])), 26u)];
    global0 = vec3<bool>(all(!(!(!vec4<bool>(global0.x, global0.x, true, global0.x)))), all(select(select(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, true), false), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x & global0.x), vec4<bool>(true, global0.x, true, global0.x), select(!vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, global0.x, false, false)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), true);
    let var_2 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(func_1(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 10u)], 26u)], Struct_2(70806u, 0i, global1[_wgslsmith_index_u32(1u, 26u)], var_1.b.x, Struct_1(var_1.a, var_1.b))), 1u), ~firstLeadingBit(vec2<u32>(22227u, u_input.d))) ^ _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(u_input.d, 10u)], 0u)), vec2<u32>(1u, 3597u) << (abs(vec2<u32>(global3[_wgslsmith_index_u32(u_input.d, 10u)], 33629u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.b.x * -286f));
}

