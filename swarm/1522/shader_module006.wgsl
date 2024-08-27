struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = u_input.a.x;
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    let var_1 = vec4<u32>(max(~(~1u), ~abs(122246u)) ^ _wgslsmith_div_u32(~17170u, ~u_input.a.x >> (4294967295u % 32u)), countOneBits(4294967295u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 10563u), vec4<u32>(u_input.a.x, 1u, u_input.b.x, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, 71687u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u)), vec4<u32>(52506u, 1u, u_input.b.x, u_input.a.x)), ~(vec4<u32>(89999u, 68022u, 79744u, 5779u) << (vec4<u32>(38657u, u_input.a.x, u_input.b.x, 0u) % vec4<u32>(32u)))), ~abs(u_input.b.x));
    global0 = array<vec2<i32>, 29>();
    return u_input.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(arg_0.x, firstLeadingBit(arg_0.x & u_input.e.x));
    var var_1 = arg_1;
    var_1 = true;
    let var_2 = ~2147483647i;
    var_1 = !arg_1;
    return ~_wgslsmith_dot_vec2_i32(select(select(abs(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec2<i32>(arg_0.x, u_input.e.x), !arg_1), vec2<i32>(select(-5775i, arg_0.x, arg_1), abs(u_input.e.x)), false), vec2<i32>(_wgslsmith_sub_i32(14592i, u_input.c.x), func_3(!vec3<bool>(true, arg_1, false))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = min((vec3<i32>(firstTrailingBit(2147483647i), ~(-2147483647i), 33060i) << (countOneBits(countOneBits(u_input.b)) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(-arg_0, u_input.c.x ^ arg_0, -u_input.e.x), reverseBits(vec3<i32>(arg_0, arg_0, 16855i))), vec3<i32>(u_input.e.x, arg_0, -78255i));
    let var_1 = Struct_2(Struct_1(u_input.e.x, func_2(vec3<i32>(-12827i, firstTrailingBit(2147483647i), var_0.x), true)), ~u_input.e, select(true && all(arg_1), select((arg_1.x && arg_1.x) && true, false, !(!arg_1.x)), true), vec2<f32>(559f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(664f)), _wgslsmith_f_op_f32(-146f - _wgslsmith_div_f32(932f, 487f)), arg_1.x))), max(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.d, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, 1028u, u_input.a.x, 4221u))), _wgslsmith_clamp_u32(min(1u, u_input.b.x << (u_input.a.x % 32u)), u_input.a.x, ~_wgslsmith_add_u32(u_input.b.x, 17126u))));
    let var_2 = var_1.b;
    let var_3 = 37233u;
    let var_4 = _wgslsmith_div_i32(select(_wgslsmith_dot_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(21574i, 2147483647i, -1i))), vec3<i32>(_wgslsmith_mult_i32(var_1.a.a, arg_0), -var_0.x, _wgslsmith_mult_i32(var_2.x, 2147483647i))), -(var_1.a.b & select(var_1.b.x, 0i, true)), !arg_1.x), func_2(vec3<i32>(~arg_0 >> (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), var_1.b.x, ~_wgslsmith_clamp_i32(var_0.x, var_0.x, 14494i)), var_1.e <= max(select(var_1.e, u_input.a.x, var_1.c), _wgslsmith_add_u32(var_1.e, var_1.e))));
    return Struct_1(6508i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a, arg_0, var_2.x, 1260i) << (vec4<u32>(var_1.e, var_1.e, 17250u, 29609u) % vec4<u32>(32u)), reverseBits(vec4<i32>(30407i, var_2.x, var_4, arg_0))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(1i, -25102i, u_input.c.x, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.a, 0i, -2147483647i, arg_0), vec4<i32>(var_4, var_1.b.x, var_4, 33358i))), vec4<i32>(-1i) * -vec4<i32>(var_2.x, var_2.x, var_1.a.b, -6744i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.c.x);
    let var_1 = Struct_2(func_1(2147483647i, vec3<bool>(true, select(false, true, false), true)), u_input.e, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1590f)), -276f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1033f - 208f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - _wgslsmith_f_op_f32(sign(204f))))), firstTrailingBit(_wgslsmith_mult_u32(63643u, ~u_input.b.x)));
    global0 = array<vec2<i32>, 29>();
    let var_2 = var_1;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(71050u, _wgslsmith_f_op_f32(f32(-1f) * -758f));
}

