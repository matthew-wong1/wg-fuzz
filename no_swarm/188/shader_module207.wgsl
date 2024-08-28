struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1202i, 2147483647i);

var<private> global1: array<f32, 10>;

var<private> global2: Struct_2;

var<private> global3: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, global2.a, _wgslsmith_mod_u32(4294967295u, global2.a), u_input.a), vec4<u32>(abs(u_input.a), u_input.a | u_input.a, global2.a ^ u_input.a, _wgslsmith_mod_u32(global2.a, global2.a))), vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(countOneBits(1u), global2.a | 4294967295u), 4294967295u, 1u));
    var var_1 = vec4<i32>(-u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(~_wgslsmith_mult_i32(609i, -64707i), -u_input.b | 2147483647i), u_input.b), -2147483647i, (_wgslsmith_div_i32(u_input.b, -36916i) & global0.x) << (~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1u), global2.a) % 32u));
    var var_2 = ~_wgslsmith_div_u32(4294967295u | global2.a, global2.a);
    global3 = !arg_0.x;
    var var_3 = 49949i;
    return Struct_1(~reverseBits(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, global2.a, u_input.a, 44330u), true)) & vec4<u32>(global2.a & 28944u, ~(4036u & global2.a), global2.a, ~0u), max(vec2<i32>(reverseBits(-2147483647i), var_1.x), _wgslsmith_clamp_vec2_i32(var_1.zy << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), var_1.zz)) >> (~vec2<u32>(49767u, 5080u) % vec2<u32>(32u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    global0 = vec2<i32>(~((-arg_1.b.x & func_2(vec4<bool>(true, false, true, true)).b.x) & 1i), min(global0.x & -(u_input.b ^ 33696i), 40782i));
    global1 = array<f32, 10>();
    global2 = Struct_2(u_input.a);
    var var_0 = Struct_2(abs(35515u));
    global1 = array<f32, 10>();
    return global0.x | firstTrailingBit(i32(-1i) * -51624i);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = ~firstLeadingBit(~global2.a | (~arg_0.a.x | 1u));
    global3 = any(vec3<bool>(true, (~u_input.b & _wgslsmith_div_i32(arg_0.b.x, 0i)) >= global0.x, true));
    global2 = Struct_2(0u);
    let var_1 = !all(!vec2<bool>(true, all(vec4<bool>(true, false, true, false))));
    let var_2 = Struct_2(u_input.a);
    return var_2;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = func_4(func_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, false))), ~(-func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(118284u, 10u)], -2098f))), func_2(vec4<bool>(false, true, true, true)))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(59320u, 10u)]) + global1[_wgslsmith_index_u32(global2.a, 10u)]) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-899f)), 493f))));
    var var_1 = ~17099u;
    global1 = array<f32, 10>();
    var var_2 = 1i;
    return Struct_1((min(~vec4<u32>(global2.a, global2.a, global2.a, 0u), ~vec4<u32>(47305u, global2.a, 35183u, global2.a)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global2.a, 52457u, global2.a), vec4<u32>(0u, 54215u, 1u, global2.a)) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, u_input.a, 49504u, u_input.a) >> (vec4<u32>(u_input.a, global2.a, global2.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, global2.a, 0u, 16997u), vec4<u32>(12743u, global2.a, global2.a, global2.a))), ~vec4<u32>(4294967295u, 6512u, u_input.a, 26935u)), -arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(u_input.b | (i32(-1i) * -10857i), global0.x) << (max(~(~vec2<u32>(global2.a, u_input.a)), vec2<u32>(global2.a & 82895u, ~0u)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(0u, global2.a)), 10u)]));
    global1 = array<f32, 10>();
    let var_2 = func_4(func_1(var_0.b), 39395i);
    global0 = vec2<i32>(-51769i, -58974i);
    var var_3 = reverseBits(~_wgslsmith_sub_vec2_u32(countOneBits(firstLeadingBit(var_0.a.yy)), _wgslsmith_mult_vec2_u32(~var_0.a.xy, ~var_0.a.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(global2.a, 10u)], var_3.x);
}

