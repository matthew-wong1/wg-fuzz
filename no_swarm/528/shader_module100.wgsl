struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 9>;

var<private> global2: vec4<bool>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    let var_0 = true;
    let var_1 = arg_0;
    var var_2 = ~reverseBits(vec2<i32>(1i, -1i));
    global1 = array<f32, 9>();
    global2 = !select(!select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global2.x, false, true, global2.x), arg_0.b.x > 15026u), !(!(!vec4<bool>(var_0, var_0, global2.x, false))), true);
    return global2.wz;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(firstLeadingBit(countOneBits(_wgslsmith_div_vec3_i32(max(global0.wyw, global0.wwx), ~vec3<i32>(global0.x, -2147483647i, -44200i)))), ~1u, reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_3.x, ~arg_2.x, 1u), arg_3)), abs((~u_input.a << (arg_2.x % 32u)) ^ ~13254i));
    return Struct_1(_wgslsmith_div_vec3_i32(var_0.a, _wgslsmith_mod_vec3_i32(firstTrailingBit(countOneBits(global0.xxy)), select(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(global0.x, -10241i, 2147483647i), !vec3<bool>(true, true, global2.x)))), ~_wgslsmith_div_u32(arg_3.x & ~992u, arg_2.x), countOneBits(_wgslsmith_sub_vec3_u32(~arg_3, reverseBits(vec3<u32>(var_0.c.x, arg_0.x, 55794u)))), 2147483647i);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_3(abs(~(~vec4<u32>(58330u, 1u, 1u, 59846u))), vec2<bool>(all(vec4<bool>(global2.x, select(global2.x, global2.x, true), true, global1[_wgslsmith_index_u32(0u, 9u)] <= arg_0)), all(!func_2(Struct_2(vec2<f32>(1312f, -1302f), vec2<u32>(4294967295u, 2522u)), Struct_2(vec2<f32>(188f, -216f), vec2<u32>(28011u, 1u)), u_input.a))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, _wgslsmith_add_u32(17777u, 38530u))), vec3<u32>(~1u, 1u, 1u));
    var var_1 = 1u;
    var_1 = ~(~66684u);
    let var_2 = vec2<u32>(~var_0.c.x, 4294967295u);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-741f, 529f) - vec2<f32>(-647f, 729f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 9u)], arg_0), vec2<f32>(1536f, -2972f), global2.yy))) + vec2<f32>(704f, _wgslsmith_f_op_f32(min(-524f, global1[_wgslsmith_index_u32(21475u, 9u)]))))), vec2<u32>(1u, ~countOneBits(0u)));
    return _wgslsmith_f_op_f32(arg_0 + -2229f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(-vec3<i32>(global0.x, _wgslsmith_mod_i32(-1355i, -15545i), u_input.a & 0i));
    global2 = select(!vec4<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 9u)] + global1[_wgslsmith_index_u32(1u, 9u)]) <= 2052f, _wgslsmith_f_op_f32(func_1(-328f)) >= global1[_wgslsmith_index_u32(1u, 9u)], true, true), select(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !(!select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, false, true, global2.x))), !select(global1[_wgslsmith_index_u32(38840u, 9u)] > global1[_wgslsmith_index_u32(0u, 9u)], global2.x, true)), !any(vec3<bool>(select(true, global2.x, true), false, true)));
    global1 = array<f32, 9>();
    global2 = vec4<bool>(true, all(select(select(vec4<bool>(true, global2.x, true, true), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true)), select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, false, true, true), vec4<bool>(global2.x, false, false, false)), vec4<bool>(false, true, true, false))) != global2.x, all(select(vec3<bool>(var_0.x != var_0.x, global2.x, !global2.x), vec3<bool>(func_2(Struct_2(vec2<f32>(768f, -286f), vec2<u32>(48985u, 104310u)), Struct_2(vec2<f32>(-699f, global1[_wgslsmith_index_u32(1u, 9u)]), vec2<u32>(47537u, 69744u)), var_0.x).x, any(vec4<bool>(false, true, false, global2.x)), true), !global2.x | true)), global2.x);
    global1 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(4149i, ~(~u_input.a), -65445i), _wgslsmith_clamp_i32(74915i, _wgslsmith_sub_i32(~var_0.x, firstLeadingBit(u_input.c.x)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(43785u, 0u, 13737u), vec3<u32>(33181u, 4294967295u, 3469u)) << (abs(4294967295u) % 32u)) % 32u), -2147483647i));
}

