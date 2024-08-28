struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(global0.a);
    var var_1 = var_0;
    var_1 = Struct_1(select(vec3<u32>(var_1.a.x, ~4294967295u, var_1.a.x) >> (reverseBits(_wgslsmith_div_vec3_u32(global0.a, global0.a)) % vec3<u32>(32u)), max(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global0.a.x, var_1.a.x, global0.a.x)), var_1.a), vec3<u32>(var_0.a.x, 0u, 4294967295u)), !arg_0));
    return -select(-min(_wgslsmith_div_i32(u_input.a.x, -12864i), -u_input.a.x), 2147483647i, true);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1188f, -3148f)));
    let var_1 = select(global0.a.x, arg_1, all(vec4<bool>(any(arg_0), true, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(true, all(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x))));
    var var_2 = 4294967295u;
    global0 = Struct_1(~(~vec3<u32>(_wgslsmith_mult_u32(arg_1, 1u), _wgslsmith_dot_vec3_u32(global0.a, global0.a), max(0u, global0.a.x))));
    let var_3 = select(~_wgslsmith_mult_vec2_i32(~(-vec2<i32>(1i, 1868i)), u_input.a), vec2<i32>(abs(_wgslsmith_mod_i32(2147483647i, 1i)), arg_2), arg_0);
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_mult_i32(-func_2(vec3<bool>(true, false, false), true), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 0i), vec3<i32>(11794i, -2147483647i, u_input.a.x)), vec3<i32>(-26258i, 2147483647i, 1i)) << ((~1u ^ _wgslsmith_add_u32(global0.a.x, global0.a.x)) % 32u));
    global0 = Struct_1(global0.a);
    var var_1 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false)), false), vec2<bool>(true, true), true), !select(select(func_3(vec2<bool>(true, false), 4294967295u, u_input.a.x, 0i), vec2<bool>(true, true), true), !func_3(vec2<bool>(false, false), global0.a.x, 41855i, u_input.a.x), any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(select(true, false, true), any(vec3<bool>(true, false, false))), func_3(vec2<bool>(true, false), 20084u, -_wgslsmith_add_i32(6032i, u_input.a.x), -2147483647i)));
    var var_2 = -u_input.a.x;
    var var_3 = vec3<i32>(-12755i, u_input.a.x, abs(~(-1i)));
    return Struct_1(reverseBits(vec3<u32>(firstLeadingBit(4294967295u >> (global0.a.x % 32u)), global0.a.x, global0.a.x)));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = ~(73815i | u_input.a.x);
    global0 = Struct_1(vec3<u32>(min(23598u, select(global0.a.x, _wgslsmith_mult_u32(global0.a.x, 8858u), select(true, false, false))), ~max(~14864u, ~67310u), reverseBits(global0.a.x)));
    let var_1 = func_1();
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1859f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(726f, 429f) + -1000f) * -809f), 704f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -289f), -445f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(396f)))))));
    return StorageBuffer(vec3<f32>(var_3.x, 450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-767f * 762f)))), _wgslsmith_mult_i32(-u_input.a.x, firstLeadingBit(u_input.a.x)), ~global0.a.x, -1i ^ (-20875i << (~var_2.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

