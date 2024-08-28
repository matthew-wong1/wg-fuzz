struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    var var_0 = vec4<bool>((((global0[_wgslsmith_index_u32(1u, 5u)] >> (35805u % 32u)) & _wgslsmith_sub_u32(arg_1.x, 21959u)) & _wgslsmith_div_u32(arg_0, _wgslsmith_div_u32(u_input.b, u_input.b))) == arg_0, true, false, false);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-2256f, _wgslsmith_f_op_f32(select(-455f, -765f, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1173f, 793f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(820f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1286f))), -1176f)), true == all(!select(var_0.zy, var_0.xx, vec2<bool>(var_0.x, false))));
    let var_2 = _wgslsmith_f_op_f32(trunc(-414f));
    let var_3 = u_input.a.x;
    global0 = array<u32, 5>();
    return 23331u;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(u_input.a.xx);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1600f + 169f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-217f, 875f))), _wgslsmith_f_op_f32(select(1087f, -1665f, true)), _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(sign(324f))))), true);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u & ~func_3(abs(_wgslsmith_div_u32(4294967295u, u_input.b)), vec3<u32>(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]) & vec3<u32>(u_input.b, 27062u, u_input.c.x)), 5u)];
    var_2 = global0[_wgslsmith_index_u32(max(u_input.b, 0u), 5u)];
    var var_3 = ~u_input.c;
    return vec4<u32>(54699u, 4294967295u, select(~114092u, ~var_3.x, true), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(u_input.c.x, 5u)] >> (u_input.c.x % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(25960u, global0[_wgslsmith_index_u32(var_3.x, 5u)])))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = ~func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(292f, -522f, -1079f, -1515f)))))));
    let var_2 = u_input.c;
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(36343u, arg_2, 0u, 11217u), vec4<u32>(var_0.x, 0u, 18189u, global0[_wgslsmith_index_u32(56584u, 5u)]))), vec4<u32>(0u, 55488u, _wgslsmith_dot_vec3_u32(var_0.wxy, ~var_0.wzz), select(~var_0.x, 6888u & var_2.x, var_0.x != 3785u))), func_2());
    let var_3 = !(reverseBits(0u) != _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 0u, u_input.c.x, arg_1)) ^ firstLeadingBit(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(79146u, 5u)], arg_2)), select(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], var_0.x, 6535u, 0u), vec4<u32>(u_input.b, 54653u, 4294967295u, 98264u) << (vec4<u32>(1u, arg_1, arg_2, 0u) % vec4<u32>(32u)), select(vec4<bool>(arg_0, false, true, arg_3), vec4<bool>(true, arg_0, false, false), arg_0))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    let var_0 = !select(vec2<bool>(u_input.d.x >= (u_input.a.x >> (global0[_wgslsmith_index_u32(u_input.c.x, 5u)] % 32u)), 82545u >= func_1(true, 1u, u_input.c.x, false)), vec2<bool>(true, true), vec2<bool>(false, true));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-158f)) + _wgslsmith_f_op_f32(-153f + -524f))))), 528f));
    global0 = array<u32, 5>();
    let var_2 = max(-1i, _wgslsmith_add_i32(u_input.d.x, 2147483647i));
    var var_3 = u_input.c.x << (global0[_wgslsmith_index_u32(4294967295u, 5u)] % 32u);
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_2, var_2)), vec2<i32>(-2147483647i, -2147483647i) | vec2<i32>(u_input.d.x, 57759i)), -(u_input.a.zy & u_input.d.xz)) | ~u_input.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2017f + -953f), _wgslsmith_f_op_f32(f32(-1f) * -709f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(845f)) * -364f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-667f)), _wgslsmith_f_op_f32(-297f * 159f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-385f, 1000f))), _wgslsmith_div_i32(-26390i, (2147483647i | var_4.a.x) >> (func_3(6861u, vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 5u)], u_input.c.x)) % 32u)) << (u_input.b % 32u), vec4<u32>(firstTrailingBit(~1u), ~(~42790u) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, global0[_wgslsmith_index_u32(24631u, 5u)]), _wgslsmith_mult_u32(27748u, 10023u)) % 32u), ~u_input.c.x, abs(35762u)), ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(52460u, global0[_wgslsmith_index_u32(0u, 5u)], u_input.b) ^ vec3<u32>(5911u, 18767u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(8698u, 5u)], 1u, global0[_wgslsmith_index_u32(u_input.b, 5u)]) & vec3<u32>(16256u, 11711u, u_input.c.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2, 3205i, 0i, u_input.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2347i, 2147483647i, -27850i) >> (vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u, 22635u) % vec4<u32>(32u)), vec4<i32>(var_2, -2147483647i, 5844i, var_4.a.x))) << (global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u) >> (vec2<u32>(global0[_wgslsmith_index_u32(10688u, 5u)], u_input.c.x) % vec2<u32>(32u)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 5u)]) ^ u_input.c), 5u)] % 32u));
}

