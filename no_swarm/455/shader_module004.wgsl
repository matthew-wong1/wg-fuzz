struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(!any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.b.yx, firstTrailingBit(u_input.b.zx), ~u_input.b.zw), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.b.x), u_input.b.zy)) > ~(~_wgslsmith_add_u32(4294967295u, 0u)), false == select(arg_0 == max(8605u, 48183u), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(467f + global0[_wgslsmith_index_u32(arg_0, 2u)]) <= _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 2u)]))), u_input.c, !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)));
    global0 = array<f32, 2>();
    let var_1 = -1000f;
    var var_2 = Struct_1(all(!select(select(vec3<bool>(true, var_0.e.x, false), vec3<bool>(var_0.c, var_0.c, var_0.a), false), vec3<bool>(var_0.e.x, var_0.b, false), var_0.e.x)), false, var_0.c | (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(424f)), _wgslsmith_f_op_f32(abs(355f)), var_0.a == true)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-124f + global0[_wgslsmith_index_u32(var_0.d, 2u)])))), 55685u, vec4<bool>(!var_0.e.x, _wgslsmith_f_op_f32(min(967f, _wgslsmith_f_op_f32(select(265f, -636f, var_0.a)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + global0[_wgslsmith_index_u32(12421u, 2u)])), false, countOneBits(~arg_0) < 4294967295u));
    global0 = array<f32, 2>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, _wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(arg_0, 1u))) << (~vec2<u32>(1u, 8218u) % vec2<u32>(32u)), ~(firstTrailingBit(u_input.b.yz) << (u_input.b.xy % vec2<u32>(32u)))) << (~_wgslsmith_mult_u32(0u, 50787u) % 32u);
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 2>();
    let var_0 = u_input.d;
    global0 = array<f32, 2>();
    let var_1 = Struct_1(!all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false))), (all(vec3<bool>(true, true, true)) & true) || !select(any(vec3<bool>(true, true, true)), true, true), true, 0u, !vec4<bool>(true, !(global0[_wgslsmith_index_u32(1u, 2u)] <= global0[_wgslsmith_index_u32(4294967295u, 2u)]), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true));
    global0 = array<f32, 2>();
    return Struct_1(true, any(!vec2<bool>(!var_1.a, true)), true, func_3(~(1u >> (max(var_1.d, u_input.b.x) % 32u))), select(!vec4<bool>(var_1.c, var_1.d < u_input.b.x, var_1.c | true, var_1.c), var_1.e, true));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(~(~countOneBits(vec2<i32>(1i, arg_0)) ^ ~vec2<i32>(arg_0, -2147483647i)), func_2());
    var var_1 = vec2<bool>(arg_1.a | (((27125u & arg_1.d) < (u_input.a | 40050u)) & true), false || arg_1.e.x);
    let var_2 = Struct_2(vec2<i32>(min(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 0i)), vec2<i32>(1i, u_input.d) << (vec2<u32>(4294967295u, arg_1.d) % vec2<u32>(32u))), ~reverseBits(0i)), arg_0 ^ (var_0.a.x | 1i)), arg_2);
    global0 = array<f32, 2>();
    var_0 = var_2;
    return var_2.a;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    var var_0 = select(arg_0, arg_0, arg_0);
    var var_1 = select(func_4(i32(-1i) * -11461i, Struct_1(arg_0 && all(vec4<bool>(false, arg_0, true, true)), arg_0, true, ~select(u_input.b.x, u_input.b.x, arg_0), vec4<bool>(false, true, true, true)), func_2()), abs(~vec2<i32>(u_input.d, -8832i) ^ -vec2<i32>(u_input.d, u_input.d)) >> (u_input.b.yx % vec2<u32>(32u)), func_2().e.yz);
    let var_2 = Struct_2(vec2<i32>(1i, -1i), func_2());
    var_1 = ~var_2.a;
    let var_3 = ~_wgslsmith_add_vec4_i32(vec4<i32>(~(~u_input.d), _wgslsmith_mod_i32(u_input.d, ~var_2.a.x), var_1.x, u_input.d << (var_2.b.d % 32u)), firstLeadingBit(~(-vec4<i32>(u_input.d, var_1.x, -2147483647i, 0i))));
    return ~(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    var_0 = 27265i >= _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~1i, ~7959i), firstLeadingBit(u_input.d ^ -2147483647i), func_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1419f, global0[_wgslsmith_index_u32(70377u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]))))), vec3<i32>(-firstLeadingBit(u_input.d), 1i, firstTrailingBit(-u_input.d)));
    let var_1 = 38684u;
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~vec4<i32>(u_input.d, 57866i, 2147483647i, -18063i))));
}

