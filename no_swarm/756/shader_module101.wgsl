struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = 1655f;
    global0 = array<vec4<u32>, 10>();
    let var_1 = false;
    var var_2 = vec2<i32>(u_input.b.x, ~u_input.b.x);
    var var_3 = vec3<bool>(true, var_1, !(!arg_0.a) & false);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2.e)), _wgslsmith_f_op_f32(arg_2.e - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(758f * -2688f), _wgslsmith_f_op_f32(select(arg_0.e, arg_2.e, arg_2.c))))))) != _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, _wgslsmith_div_f32(-158f, arg_2.e))));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    let var_0 = countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) >> (global0[_wgslsmith_index_u32(~1u, 10u)] % vec4<u32>(32u));
    global0 = array<vec4<u32>, 10>();
    let var_1 = !(!vec4<bool>(true, true, ~0u < (27720u ^ var_0.x), true));
    return ~(~vec3<i32>(-4742i, ~(~u_input.b.x), u_input.b.x));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> vec3<i32> {
    global0 = array<vec4<u32>, 10>();
    var var_0 = ~vec4<i32>(u_input.b.x, arg_0, u_input.b.x, 2147483647i);
    let var_1 = vec3<i32>(~arg_0, -var_0.x, -78549i);
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    return -firstTrailingBit(func_3());
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    var var_0 = arg_1;
    var_0 = 0i;
    let var_1 = Struct_1(!(-_wgslsmith_mod_i32(-22114i, arg_0.x) != arg_1), global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(u_input.a.x)), 10u)], all(vec4<bool>(true, true, true, true)), u_input.a.x, 175f);
    let var_2 = true;
    global0 = array<vec4<u32>, 10>();
    return StorageBuffer((firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(u_input.b.x, arg_0.x, 0i))) << (min(_wgslsmith_mod_u32(var_1.d, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.b.x, u_input.a.x), var_1.b.ywy)) % 32u)) << (abs(abs(var_1.b.x)) % 32u), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1, arg_1), _wgslsmith_div_i32(2147483647i, u_input.b.x), func_2(0i, vec3<u32>(0u, u_input.a.x, u_input.a.x)).x), _wgslsmith_clamp_i32(33473i, arg_0.x >> (4294967295u % 32u), arg_0.x), -2570i), select(abs(arg_0), arg_0, false) ^ _wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 37426i, -20813i), select(arg_0, arg_0, vec3<bool>(false, var_2, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(21512u != _wgslsmith_add_u32(u_input.a.x, 4294967295u), true));
    let var_1 = Struct_1(var_0.x & (!var_0.x != var_0.x), abs(global0[_wgslsmith_index_u32((firstTrailingBit(4294967295u) ^ 30938u) & ~(u_input.a.x | u_input.a.x), 10u)]), false, ~(~u_input.a.x & (u_input.a.x | 4294967295u)) << (u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(340f, -506f)))));
    var_0 = vec2<bool>(var_1.c, !(!(!var_0.x) || true));
    var var_2 = vec4<i32>(1i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -24529i, -55418i, u_input.b.x), ~vec4<i32>(-1i, 26091i, -42257i, u_input.b.x)), 611i) << (select(vec4<u32>(select(1u, ~5602u, func_1(var_1, vec2<u32>(u_input.a.x, 119739u), Struct_1(true, vec4<u32>(var_1.d, u_input.a.x, 21507u, 0u), var_0.x, 5489u, -1082f), u_input.a.x)), 4294967295u, ~1u, 28300u), firstTrailingBit(global0[_wgslsmith_index_u32(~var_1.d, 10u)]), false) % vec4<u32>(32u));
    global0 = array<vec4<u32>, 10>();
    var var_3 = max(firstLeadingBit(var_2.x), u_input.b.x);
    var_3 = countOneBits(firstLeadingBit(_wgslsmith_mult_i32(-var_2.x, 0i)) | -1i);
    let x = u_input.a;
    s_output = func_4(~func_2(0i, var_1.b.zxz) & var_2.ywz, u_input.b.x);
}

