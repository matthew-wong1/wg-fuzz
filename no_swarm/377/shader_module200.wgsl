struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1254f, -1393f, -1265f, -524f, 483f, -447f, -119f, -1943f, -211f, 551f, -2923f, -492f, 301f, 183f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_3.a)), 1332f))), 32138u);
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    global0 = array<f32, 14>();
    var var_0 = Struct_1(-929f, ~(67943u << (1u % 32u)));
    let var_1 = ~countOneBits(~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(26817i, arg_0, -1i, arg_0), vec4<i32>(u_input.a.x, arg_0, -1i, u_input.a.x), vec4<i32>(0i, u_input.a.x, -1i, u_input.a.x))));
    let var_2 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(22763u, abs(arg_1.b), ~(~arg_1.b), ~(~var_0.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, var_0.b, var_0.b, 4294967295u), vec4<u32>(61908u, var_0.b, var_0.b, var_0.b)) ^ reverseBits(vec4<u32>(var_0.b, 0u, var_0.b, arg_1.b) ^ vec4<u32>(4294967295u, var_0.b, 48800u, var_0.b)), firstTrailingBit(firstLeadingBit(min(vec4<u32>(arg_1.b, 4294967295u, 0u, 27964u), vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b))))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, arg_1.b, arg_1.b), vec3<u32>(13992u, var_0.b, var_0.b)), 46617u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 0u, 24644u, 0u), vec4<u32>(arg_1.b, arg_1.b, 0u, 4294967295u)), arg_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, 1u, 4294967295u, arg_1.b), vec4<u32>(4294967295u, arg_1.b, arg_1.b, var_0.b)) | (vec4<u32>(var_0.b, var_0.b, var_0.b, arg_1.b) & vec4<u32>(var_0.b, 3879u, 4294967295u, arg_1.b))), vec4<bool>(false, any(!(!vec3<bool>(arg_2, arg_2, arg_2))), false & arg_2, reverseBits(u_input.b.x) > -1i));
    let var_3 = -1259f;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3, 158f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, arg_1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, global0[_wgslsmith_index_u32(14061u, 14u)]))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f - global0[_wgslsmith_index_u32(var_0.b, 14u)]) - _wgslsmith_f_op_f32(var_0.a * var_3))), -1447f));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 14u)] + _wgslsmith_f_op_f32(f32(-1f) * -776f)) + 1f), 1u);
    var var_1 = ~firstLeadingBit(vec4<u32>(46992u, 4294967295u, ~25367u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 60909u, 0u, 4294967295u), vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b)))));
    global0 = array<f32, 14>();
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_i32(~(~(-8792i)), func_3(-vec3<i32>(47533i, u_input.b.x, -9833i) << (vec3<u32>(28026u, 69222u, var_0.b) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(var_0.b >> (_wgslsmith_add_u32(0u, 1u) % 32u), 14u)], var_0, var_0)), var_0, any(vec2<bool>(any(vec3<bool>(true, true, true)), true))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, 1146f), vec2<f32>(1922f, 344f))))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, var_2.x))), -1184f)));
    return vec4<i32>(-1i) * -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -1i, u_input.b.x) | vec4<i32>(-2761i, 2147483647i, -38954i, -2147483647i), vec4<i32>(25867i, u_input.b.x, -24422i, u_input.a.x)));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 14>();
    var var_0 = abs(4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1768f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 14u)] * global0[_wgslsmith_index_u32(4294967295u, 14u)]))))), ~1u);
    var var_2 = func_2() >> (max(~abs(vec4<u32>(var_1.b, var_1.b, var_1.b, 51087u)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b, var_1.b, 1u, 4294967295u), vec4<u32>(var_1.b, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, 9965u, var_1.b, var_1.b), vec4<u32>(var_1.b, var_1.b, var_1.b, 1u)))) % vec4<u32>(32u));
    global0 = array<f32, 14>();
    return Struct_1(-731f, _wgslsmith_add_u32(~(~(var_1.b | var_1.b)), var_1.b));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    global0 = array<f32, 14>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(min(arg_2.a, -171f))))), var_0.b);
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-2166f)), ~var_0.b);
    var_0 = func_1();
    return var_1;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(389f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]), arg_2.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(208f)), firstTrailingBit(~(~func_5(u_input.a.zz, arg_1, arg_1).b)));
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    let var_2 = !any(select(!(!vec3<bool>(true, arg_0, true)), vec3<bool>(all(vec3<bool>(arg_0, arg_0, true)), any(vec3<bool>(arg_0, arg_0, false)), 3057i < u_input.b.x), -1i > u_input.b.x));
    return vec4<i32>(-1i) * -(vec4<i32>(-1i) * -min(vec4<i32>(0i, u_input.b.x, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    var var_0 = func_6(false, func_5(u_input.a.yy, func_1(), func_1()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(4294967295u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 14u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1121f, global0[_wgslsmith_index_u32(4294967295u, 14u)]))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 14u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(494f, global0[_wgslsmith_index_u32(4294967295u, 14u)])))))));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~29377u, countOneBits(1u), 1u), 14u)], func_5(~(~firstTrailingBit(vec2<i32>(u_input.b.x, 1i))), Struct_1(432f, firstTrailingBit(26435u)), func_1()).b);
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x & u_input.a.x, u_input.a.x, 19364i), abs(vec4<i32>(-1i, -1i, 0i, var_0.x))), countOneBits(-1i));
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(-969f - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(18906u, 14u)], global0[_wgslsmith_index_u32(var_1.b, 14u)], true))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1012f, -653f) * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_1.b, 14u)]))), reverseBits(firstLeadingBit(-2147483647i)) < func_6(true, Struct_1(-1051f, var_1.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-428f, 103f)))).x);
    var var_4 = vec2<u32>(var_1.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.b, 1u, var_1.b, var_1.b)), vec4<u32>(87994u, var_1.b, _wgslsmith_clamp_u32(22831u, 1u, var_1.b), _wgslsmith_div_u32(var_1.b, 0u))) & ~(~(~4294967295u)));
    var_2 = 1i;
    var var_5 = Struct_1(100f, reverseBits(_wgslsmith_sub_u32(var_4.x, firstLeadingBit(4294967295u)) ^ ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-909f)), -1420f)));
}

