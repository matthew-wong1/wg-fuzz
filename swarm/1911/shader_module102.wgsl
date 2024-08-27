struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = global0.a;
    global0 = Struct_1(1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var_0 = select(~firstTrailingBit(18840u), ~(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global0.a), vec2<u32>(global0.a, global0.a)), firstLeadingBit(vec2<u32>(39009u, global0.a))) | global0.a), (~_wgslsmith_add_u32(global0.a, global0.a) & 16659u) == ~(~46916u));
    var var_2 = _wgslsmith_clamp_u32(min(global0.a, firstLeadingBit(countOneBits(global0.a) ^ global0.a)), global0.a, ~global0.a);
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(max(u_input.a.x, u_input.a.x >> (1u % 32u)) ^ (0i >> (0u % 32u)), u_input.a.x, u_input.a.x ^ (~u_input.a.x | max(43633i, 2147483647i))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, _wgslsmith_mult_i32(17518i, -1i), -2147483647i | u_input.a.x), firstLeadingBit(~vec3<i32>(0i, 1i, u_input.a.x)), vec3<bool>(true, select(false, true, false), true)), countOneBits(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(u_input.a.x, -17087i, -1i)))), vec3<i32>(~(-2147483647i), 2147483647i, -(_wgslsmith_add_i32(1i, u_input.a.x) | 0i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.a, 9711u), ~0u)), ~(~1u)));
    let var_2 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(u_input.a.x))) & ~reverseBits(func_3()), min(~abs(-vec3<i32>(-9962i, u_input.a.x, u_input.a.x)), vec3<i32>(i32(-1i) * -2147483647i, firstLeadingBit(~0i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(-49133i, u_input.a.x, 20584i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, 53658i) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_3 = Struct_1(firstTrailingBit(0u));
    var var_4 = vec2<bool>(true, !any(vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    return ~(~vec2<u32>(~(~var_0.a), ~(~var_3.a)));
}

fn func_1() -> i32 {
    var var_0 = vec2<u32>(4937u, ~_wgslsmith_sub_u32(global0.a, _wgslsmith_clamp_u32(global0.a, 1u, 2011u)) & ~global0.a);
    var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(11715u, global0.a) | vec2<u32>(20587u, 1u)), select(~vec2<u32>(global0.a, 322u), reverseBits(vec2<u32>(var_0.x, var_0.x)), vec2<bool>(false, true)), vec2<u32>(_wgslsmith_mult_u32(var_0.x, global0.a), global0.a)), func_2(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global0.a, global0.a, 9677u), vec4<u32>(var_0.x, global0.a, 11433u, global0.a)), vec4<u32>(var_0.x, 38240u, var_0.x, 183u)), Struct_1(var_0.x)));
    let var_1 = Struct_1(func_2(~global0.a, Struct_1(_wgslsmith_mod_u32(~3300u, ~global0.a))).x);
    var_0 = func_2(countOneBits(~_wgslsmith_add_u32(var_0.x, abs(127151u))), Struct_1(global0.a));
    let var_2 = var_1;
    return -16033i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~global0.a);
    var var_0 = true;
    var var_1 = true;
    let var_2 = false;
    var var_3 = u_input.a.x;
    let var_4 = vec3<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), !vec2<bool>(var_2, true))), ((func_1() > u_input.a.x) && true) & ((any(vec3<bool>(var_2, var_2, var_2)) | true) & (~(-2147483647i) <= u_input.a.x)));
    var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(2147483647i, 1i, -19286i) ^ func_3(), -select(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x), var_2), var_4.x) | ((vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, 4781i)) ^ _wgslsmith_sub_vec3_i32(select(vec3<i32>(-9886i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_4), vec3<i32>(0i, u_input.a.x, -1i) >> (vec3<u32>(global0.a, global0.a, 130835u) % vec3<u32>(32u)))), -1i);
}

