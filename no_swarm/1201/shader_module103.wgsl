struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 8761u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 17933u, 23086u), vec3<u32>(28599u, u_input.b, u_input.c))), u_input.b, _wgslsmith_sub_u32(u_input.c ^ u_input.b, _wgslsmith_div_u32(u_input.b, 4294967295u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1870u, u_input.b), vec2<u32>(11821u, 53582u)), ~vec2<u32>(37621u, u_input.b))), ~(~vec4<u32>(u_input.a, u_input.b, 658u, 59982u))) ^ firstTrailingBit(~vec4<u32>(1u, ~4294967295u, 50887u, 35280u));
    var_0 = reverseBits(vec4<u32>(var_0.x, var_0.x & u_input.b, _wgslsmith_mult_u32(~countOneBits(u_input.b), abs(4294967295u)), ~var_0.x));
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-66194i, -26803i, 8204i, 21508i)), vec4<i32>(arg_1.x >> (var_0.x % 32u), _wgslsmith_mod_i32(2147483647i, -47492i), ~(-10955i), countOneBits(-7312i)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 2147483647i, 1i, 60227i), -vec4<i32>(u_input.d.x, -13747i, 0i, -2147483647i)), ~16870i, abs(arg_0), u_input.d.x), vec4<i32>(arg_1.x, arg_0, _wgslsmith_div_i32(-2147483647i, 59109i), arg_1.x & 0i)));
    var_1 = -firstTrailingBit(-2147483647i);
    let var_2 = true;
    return _wgslsmith_dot_vec3_u32(var_0.wxx, var_0.xxz);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = -1i;
    var_0 = ~(~arg_3.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.d.x), arg_3.x), ~vec2<i32>(-39224i, arg_1) ^ ~vec2<i32>(arg_1, -2147483647i)), vec2<i32>(arg_3.x, _wgslsmith_sub_i32(u_input.d.x, max(0i, -2147483647i)))));
    let var_2 = ~(-1i);
    let var_3 = Struct_1(~vec2<i32>(arg_3.x, 43083i));
    return _wgslsmith_sub_u32(func_3(firstTrailingBit(-6186i) ^ -min(u_input.d.x, u_input.d.x), u_input.d << (vec3<u32>(arg_0, arg_0, 1u) % vec3<u32>(32u))), u_input.b);
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.c), 0u), u_input.c, ~func_2(u_input.b, u_input.d.x, false, vec3<i32>(u_input.d.x, -38139i, -39601i)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.b)) % 32u));
    var var_1 = Struct_3(_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 770i), u_input.d), u_input.d), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -235f), !vec3<bool>(true, true, any(vec2<bool>(false, false)))), vec2<u32>(func_2(u_input.b, abs(u_input.d.x), false, u_input.d), u_input.c), vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1543f, -1200f, true)))), 2067f, _wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(abs(-630f)))));
    var_0 = 28912u;
    var_0 = ~_wgslsmith_mod_u32(firstTrailingBit(reverseBits(10973u)), ~4294967295u) & (~(4294967295u ^ _wgslsmith_add_u32(u_input.a, var_1.c.x)) | countOneBits(40901u));
    var var_2 = Struct_1(vec2<i32>(-(i32(-1i) * -5565i), var_1.a.x));
    return Struct_3(vec3<i32>(-1i) * -(vec3<i32>(1i, 2147483647i, var_2.a.x) | var_1.a), Struct_2(var_1.b.a, var_1.b.b), ~var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, -1325f, -120f)), select(vec3<bool>(var_1.b.b.x, var_1.b.b.x, true), vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), var_1.b.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(trunc(245f)));
    var_0 = func_1();
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x ^ _wgslsmith_sub_i32(-u_input.d.x, var_0.a.x), _wgslsmith_mult_i32(var_0.a.x, -1i >> ((var_0.c.x >> (var_0.c.x % 32u)) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.a.x, 8909i), reverseBits(1i), -20508i | _wgslsmith_mult_i32(13911i, var_0.a.x))), vec3<i32>(func_1().a.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(-36200i, u_input.d.x, var_0.a.x, var_0.a.x) & vec4<i32>(-2147483647i, var_0.a.x, -2147483647i, u_input.d.x)), ~vec4<i32>(u_input.d.x, var_0.a.x, -36326i, -2147483647i)), -1i));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))));
    var var_4 = func_1();
    var var_5 = Struct_4(Struct_1(var_2.yy), _wgslsmith_clamp_u32(u_input.b, 16268u, ~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, var_0.c.x, u_input.c, 22814u) & vec4<u32>(var_4.c.x, 89316u, var_5.b, 34732u)), vec4<u32>(u_input.c, 24828u, 41707u, _wgslsmith_mod_u32(var_0.c.x, _wgslsmith_mod_u32(var_4.c.x, u_input.c)))));
}

