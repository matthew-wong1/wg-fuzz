struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
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

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(1i));

var<private> global1: array<f32, 10> = array<f32, 10>(1730f, 404f, -876f, -512f, 897f, 113f, 769f, 1935f, -1642f, 789f);

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4294967295u, 29698u), vec2<u32>(56506u, 4294967295u), vec2<u32>(0u, 7844u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(51644u, 19925u), vec2<u32>(4294967295u, 1u), vec2<u32>(22994u, 17439u), vec2<u32>(0u, 31106u), vec2<u32>(44576u, 1u), vec2<u32>(80620u, 1u), vec2<u32>(33122u, 50977u), vec2<u32>(43958u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(84562u, 34389u), vec2<u32>(4294967295u, 39172u), vec2<u32>(47979u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 99841u), vec2<u32>(17393u, 11571u), vec2<u32>(0u, 21070u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 59119u), vec2<u32>(0u, 69695u));

var<private> global3: array<i32, 29> = array<i32, 29>(-33721i, -29419i, 3292i, 0i, -23666i, 2147483647i, 11506i, -10745i, 1i, 1i, 2147483647i, 2589i, 32276i, 0i, 1i, -984i, 2147483647i, 2147483647i, 56919i, -1i, 2147483647i, -1i, -21493i, 64176i, 1i, i32(-2147483648), -33002i, 1i, 15652i);

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 1>();
    var var_0 = Struct_2(~_wgslsmith_mult_i32(select(32541i, abs(global3[_wgslsmith_index_u32(119314u, 29u)]), true), u_input.a.x));
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.b.x), 1u)];
    var var_1 = Struct_2(0i);
    var var_2 = any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, true, all(vec3<bool>(false, false, false))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))), select(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, 1i > global3[_wgslsmith_index_u32(arg_0.a.x, 29u)], true)), true));
    return max(_wgslsmith_mult_vec2_u32(abs(select(vec2<u32>(0u, 83967u), vec2<u32>(1u, arg_0.b.x), vec2<bool>(true, true))) | ~firstTrailingBit(vec2<u32>(arg_1.x, u_input.b)), arg_0.a), ~(~(vec2<u32>(39716u, 0u) | firstTrailingBit(arg_1.yz))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(u_input.c, 25u)], _wgslsmith_div_vec4_u32(arg_1, arg_1), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_1(~vec2<u32>(arg_1.x, arg_1.x), vec4<u32>(4294967295u, 40625u, 13701u, arg_1.x), -1343f), vec3<u32>(arg_1.x, 67148u, u_input.b) >> (~arg_1.zwz % vec3<u32>(32u)), Struct_1(~arg_1.xw, ~vec4<u32>(u_input.b, 4294967295u, u_input.d, 50389u), -351f)), vec2<u32>(~func_3(Struct_1(arg_1.wx, vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), -1444f), vec3<u32>(arg_1.x, 73986u, u_input.d), Struct_1(vec2<u32>(u_input.b, 4294967295u), vec4<u32>(45705u, arg_1.x, 0u, 0u), -1594f)).x, u_input.c)), 10u)]);
    var var_1 = Struct_2(-2147483647i);
    global2 = array<vec2<u32>, 25>();
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b, u_input.c)), _wgslsmith_add_vec2_u32(arg_1.zw, ~global2[_wgslsmith_index_u32(u_input.d, 25u)])), _wgslsmith_div_vec2_u32(arg_1.wy, firstTrailingBit(abs(vec2<u32>(arg_1.x, arg_1.x)))) >> (global2[_wgslsmith_index_u32(1u >> (~_wgslsmith_mult_u32(var_0.b.x, arg_1.x) % 32u), 25u)] % vec2<u32>(32u)));
    global1 = array<f32, 10>();
    return ~(~(~vec4<u32>(~6270u, var_2, _wgslsmith_dot_vec4_u32(arg_1, arg_1), 1424u)));
}

fn func_1() -> vec4<u32> {
    return func_2(Struct_2(~global4.x), vec4<u32>(u_input.b, ~u_input.c, 1u, ~u_input.d)) << (vec4<u32>(~(u_input.c >> (_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.b, 25u)], vec2<u32>(u_input.c, u_input.d)) % 32u)), u_input.b, 1u, u_input.d) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(u_input.b, 4294967295u), abs(1u), true), 25u)], (abs(vec2<u32>(7374u, 0u)) >> (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u))) >> (vec2<u32>(abs(u_input.d), u_input.c) % vec2<u32>(32u))), func_1(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(776f))), global1[_wgslsmith_index_u32(u_input.c, 10u)])))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1619f), 634f);
    let var_3 = vec4<u32>(4294967295u, 11059u ^ ~var_1.b.x, 71018u | _wgslsmith_clamp_u32(select(~u_input.d, 28578u, true), u_input.c, firstTrailingBit(_wgslsmith_add_u32(0u, var_1.a.x))), 4294967295u);
    let var_4 = var_3.yy;
    let var_5 = 3148u;
    let var_6 = firstTrailingBit(41772u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_2.x)), global1[_wgslsmith_index_u32(u_input.b, 10u)]))))));
}

