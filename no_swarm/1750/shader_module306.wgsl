struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_dot_vec3_i32(~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d), vec3<i32>(37444i, u_input.c.x, u_input.c.x))), reverseBits(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.b, -28845i))) ^ (-(~1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-34845i, u_input.d, u_input.c.x), vec3<i32>(31355i, u_input.d, u_input.c.x)), vec3<i32>(-1i, u_input.d, -34005i), abs(vec3<i32>(u_input.d, -15448i, u_input.c.x))), ~(vec3<i32>(2147483647i, 1i, 1i) >> (u_input.a % vec3<u32>(32u)))));
    let var_2 = arg_0;
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<u32>(~(~(~(u_input.a.x ^ 0u))), firstTrailingBit(_wgslsmith_add_u32(~func_3(Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), vec4<bool>(false, true, false, true)), u_input.a.x)), ~(u_input.a.x & ~1u), ~(~u_input.a.x | select(~u_input.a.x, ~arg_0.a.x, true)));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_0.a.x, var_0.x), u_input.a) ^ var_0.zzx, _wgslsmith_sub_vec3_u32(u_input.a, firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(15116u, 13662u, 4294967295u), arg_0.a))));
    var_1 = ~vec3<u32>(var_1.x, 4294967295u, 0u);
    var_1 = arg_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) - _wgslsmith_f_op_f32(f32(-1f) * -1359f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)), _wgslsmith_f_op_f32(f32(-1f) * -1021f)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    let var_0 = reverseBits(~(~_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-464f * _wgslsmith_f_op_f32(abs(-1024f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1412f, 821f), 1663f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))))) + -474f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-226f)) + -697f))) * -696f));
    var var_2 = firstLeadingBit(~_wgslsmith_dot_vec3_u32(~(u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<u32>(min(1u, 9764u), ~4294967295u, 27688u)));
    var_2 = ~(~(~(~48869u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x & u_input.a.x, 21436u), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(u_input.a.x << (~(~(~40258u)) % 32u), u_input.a.x);
    let var_1 = func_1(!all(vec3<bool>(true, true, true)));
    var var_2 = false == all(vec2<bool>(true || all(vec2<bool>(false, true)), true));
    let var_3 = vec2<i32>(-1i, ((-1i << (_wgslsmith_add_u32(26969u, u_input.a.x) % 32u)) ^ ~firstTrailingBit(-34437i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.a.x, func_1(true).a.x, ~var_1.a.x), u_input.a) % 32u));
    global0 = array<Struct_1, 8>();
    var_0 = u_input.a.x;
    var var_4 = vec3<f32>(-2532f, _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(sign(1f)));
    var_0 = ~(~(~(~var_1.a.x)) ^ ~0u);
    var_2 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true && all(vec2<bool>(true, false))), func_3(Struct_1(vec3<u32>(13123u, 4294967295u, 26299u)), vec4<bool>(true, false, true, false)) >= _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(20547u, 31333u, 33533u)), ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x, ~(-_wgslsmith_add_i32(abs(1i), select(-2147483647i, -2147483647i, false))), var_4.yz, ~vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.c.x), 0i, _wgslsmith_sub_i32(-35365i, firstLeadingBit(1i))), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(619f))))))));
}

