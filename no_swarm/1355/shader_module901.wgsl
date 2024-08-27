struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    global0 = array<vec3<u32>, 5>();
    let var_0 = Struct_1(u_input.b, abs(u_input.c.x) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, -1i >> (u_input.a.x % 32u)), -1i));
    global0 = array<vec3<u32>, 5>();
    var var_1 = 0i;
    global0 = array<vec3<u32>, 5>();
    return countOneBits(firstTrailingBit(~_wgslsmith_div_vec2_i32(u_input.c, u_input.c)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = max(max(abs(-u_input.b), u_input.b), _wgslsmith_mult_i32(abs(u_input.c.x), ~(_wgslsmith_mod_i32(-18113i, u_input.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(59018u, 19225u, 32381u, 60058u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u))));
    var var_1 = reverseBits(-vec2<i32>(_wgslsmith_div_i32(-1i, 46463i) ^ u_input.c.x, ~var_0));
    global0 = array<vec3<u32>, 5>();
    var var_2 = (true & (select(true, true, false) & true)) | select(!(false || any(vec2<bool>(true, false))), true, false);
    let var_3 = Struct_1(max(_wgslsmith_add_i32(i32(-1i) * -1i, -72259i), _wgslsmith_mult_i32(1i, (u_input.b | 0i) >> (abs(u_input.a.x) % 32u))), u_input.b);
    return !select(false || select(true, true, true), (min(u_input.a.x, 1u) > u_input.a.x) & any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = !select(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, arg_1.x, -2147483647i), vec4<i32>(-11691i, arg_2.b, arg_2.b, u_input.b)) <= select(-1i, 29802i, true), true, true, true), vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, 121f, 1542f) - vec3<f32>(-1563f, -760f, 280f))), _wgslsmith_add_u32(u_input.a.x, 0u) != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 2412u, 9882u, arg_0.x), vec4<u32>(arg_0.x, 1u, 52423u, u_input.a.x)), true, true), true);
    let var_1 = _wgslsmith_div_u32(~(firstLeadingBit(_wgslsmith_sub_u32(arg_0.x, u_input.a.x)) >> (_wgslsmith_div_u32(1u, u_input.a.x) % 32u)), (u_input.a.x & 1u) & (1u >> ((u_input.a.x << (arg_0.x % 32u)) % 32u)));
    var var_2 = arg_3;
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = ~arg_1 & (~(-vec2<i32>(u_input.b, arg_1.x)) << (u_input.a % vec2<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.a.x, ~53921u)), _wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(4294967295u, 5u)] & global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(~u_input.a.x >> (u_input.a.x % 32u), 5u)]), u_input.a.x, ~u_input.a.x ^ abs(~u_input.a.x)), vec4<u32>(firstLeadingBit(1u), 32671u, ~firstLeadingBit(firstLeadingBit(4294967295u)), 2642u));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-408f, 697f, true)))))));
    var_1 = _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x & 39531u))));
    return Struct_1(arg_1.x ^ u_input.c.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.a.x, 22404u);
    let var_1 = _wgslsmith_div_vec2_i32(-func_1(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), vec2<i32>(u_input.c.x, select(-2147483647i, _wgslsmith_div_i32(-21589i, u_input.b) & (i32(-1i) * -5946i), true)));
    let var_2 = vec3<i32>(-var_1.x, u_input.c.x, -u_input.c.x);
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_u32(u_input.a, ~firstTrailingBit(~select(u_input.a, u_input.a, vec2<bool>(false, false))));
    var var_3 = func_4(!(!func_2(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], vec3<i32>(63711i, 1i, var_1.x), Struct_1(var_1.x, var_2.x), Struct_1(-36699i, 1i)) & any(vec4<bool>(false, false, false, true))), ~abs(countOneBits(vec2<i32>(var_2.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(322f * 438f), _wgslsmith_f_op_f32(step(1220f, 208f))))))));
}

