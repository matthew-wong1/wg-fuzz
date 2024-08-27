struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(476f, -869f, -618f, -184f, 251f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = !select(vec3<bool>(arg_1.b, false, arg_1.a), !select(!vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(false, true, arg_1.b), false), vec3<bool>(arg_1.b, arg_1.b, true));
    global0 = array<f32, 5>();
    var var_1 = max(~arg_0.zz, ~arg_0.xy);
    let var_2 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~1u << (arg_2 % 32u), 5u)]));
    var var_3 = 0i;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = arg_0;
    var var_1 = ~(~abs(firstLeadingBit(select(vec4<u32>(48977u, 4294967295u, 0u, 0u), vec4<u32>(0u, 81286u, 0u, 1u), true))));
    return Struct_1(all(vec2<bool>(!select(false, arg_1.a, false), arg_0.c.x > _wgslsmith_add_i32(u_input.a, var_0.c.x))), true, vec2<i32>(max(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), arg_1.c), arg_1.c.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, arg_1.c.x), arg_0.c) ^ 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    global0 = array<f32, 5>();
    var var_0 = func_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 17519u, arg_1.x), vec3<u32>(24599u, 4294967295u, 4869u)), ~vec3<u32>(1u, 54443u, 6029u)), ~(arg_1.x ^ ~arg_1.x), firstTrailingBit(31199u), ~(~arg_1.x)), func_1(abs(~abs(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), func_3(arg_0, func_1(abs(vec4<u32>(0u, 26246u, 9176u, arg_1.x)), Struct_1(arg_3, true, vec2<i32>(arg_0.c.x, -7051i)), reverseBits(27945u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1059f)), global0[_wgslsmith_index_u32(arg_1.x, 5u)])), _wgslsmith_mult_u32(~arg_1.x, ~arg_1.x)), _wgslsmith_mod_u32(arg_1.x, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x)));
    var var_1 = ~(vec4<u32>(1u, 4294967295u, ~21628u, arg_1.x) >> (~(~(~vec4<u32>(1u, 1u, arg_1.x, 0u))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(64747u, ~0u, arg_1.x, 74925u), ~(_wgslsmith_div_vec4_u32(vec4<u32>(45537u, var_1.x, var_1.x, var_1.x), vec4<u32>(0u, 1u, 0u, 61059u)) ^ vec4<u32>(arg_1.x, var_1.x, var_1.x, var_1.x))), (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1.x, var_1.x, 1u, var_1.x)), vec4<u32>(88082u, arg_1.x, 9778u, 18987u)) >> (vec4<u32>(var_1.x, 45284u, firstLeadingBit(41266u), 70620u) % vec4<u32>(32u))) << (vec4<u32>(1u, reverseBits(_wgslsmith_add_u32(1u, var_1.x)), var_1.x, ~countOneBits(var_1.x)) % vec4<u32>(32u)));
    let var_2 = max(20329u, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 26555u, 20775u, 79080u)), firstLeadingBit(select(vec4<u32>(0u, arg_1.x, 1u, 10967u), vec4<u32>(var_1.x, var_1.x, 1u, 43506u), vec4<bool>(true, true, arg_0.b, false)))));
    return select(vec2<bool>(arg_0.b, all(vec3<bool>(true, true, true))), select(vec2<bool>(!any(vec2<bool>(arg_0.b, false)), false), vec2<bool>(!any(vec4<bool>(arg_0.a, true, arg_3, arg_0.a)), true), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(~reverseBits(51943u), 5u)] < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2017f, 379f, arg_3)) - -1352f), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_2, var_1.x, 0u) << (vec4<u32>(11752u, 1u, 4294967295u, 5806u) % vec4<u32>(32u)), vec4<u32>(1u, 0u, 4294967295u, 24047u), abs(vec4<u32>(0u, 4294967295u, 4294967295u, arg_1.x))), Struct_1(arg_0.a, arg_0.b, vec2<i32>(2147483647i, -12631i)), ~var_1.x).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!func_2(func_1(vec4<u32>(828u, 97158u, 79069u, 43614u), Struct_1(true, false, vec2<i32>(0i, 2147483647i)), 2390u), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(895f, global0[_wgslsmith_index_u32(4248u, 5u)], global0[_wgslsmith_index_u32(7606u, 5u)]) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 262f, 855f)), true)), 21002i != u_input.a);
    let var_1 = true;
    var_0 = !select(vec2<bool>(!var_1, var_0.x), select(vec2<bool>(func_3(Struct_1(false, true, vec2<i32>(-1i, -35492i)), Struct_1(var_1, var_1, vec2<i32>(12009i, -1i)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(55216u, 5u)])).a, true), !(!vec2<bool>(false, var_0.x)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_div_i32(u_input.a, firstLeadingBit(u_input.a)), countOneBits(-6376i) << (1u % 32u), u_input.a << (countOneBits(99437u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-31274i, u_input.a, 0i, u_input.a), vec4<i32>(28659i, u_input.a, u_input.a, 1i)) & -u_input.a)), 1f, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 5u)], -348f, -579f, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(33040u, 5u)], -1059f, -528f, global0[_wgslsmith_index_u32(1u, 5u)]), vec4<f32>(global0[_wgslsmith_index_u32(51039u, 5u)], global0[_wgslsmith_index_u32(71128u, 5u)], global0[_wgslsmith_index_u32(33153u, 5u)], -743f), vec4<bool>(true, var_0.x, false, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 5u)], -502f), _wgslsmith_f_op_f32(trunc(-1681f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31584u, 5u)] - 463f)) * vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(8536u, 5u)], -819f), _wgslsmith_div_f32(-156f, global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(18813u, 5u)]))))), vec4<i32>(-4726i, u_input.a, -20070i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10684i, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(30395i, -35022i), vec2<i32>(u_input.a, -1i)))) >> (max(vec4<u32>(min(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(10621u, 65949u, 1u), vec3<u32>(8629u, 4294967295u, 47140u)), min(38197u, 20191u), ~1u), ~vec4<u32>(13465u, 1u, 18381u, 620u)) % vec4<u32>(32u)), -abs(-(~vec4<i32>(u_input.a, -2147483647i, 1i, -1i))));
}

