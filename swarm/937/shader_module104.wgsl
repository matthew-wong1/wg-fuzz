struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(26892i, 23538i));

var<private> global1: array<u32, 18>;

var<private> global2: f32 = -411f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = Struct_1(vec2<i32>((max(global0.a.x, 2147483647i) << (u_input.a.x % 32u)) & global0.a.x, -firstTrailingBit(10029i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-985f)));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(vec2<i32>(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-737f, 553f)) * 1511f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) + _wgslsmith_f_op_f32(func_3())))), vec3<i32>(1i, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.x, -1i), reverseBits(global0.a.x)), -16120i));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, global0.a.x) | vec2<i32>(1550i, -9302i), max(vec2<i32>(-3715i, -21972i), vec2<i32>(global0.a.x, global0.a.x)) | ~vec2<i32>(-9388i, -19957i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1797f, -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<i32>(-5113i, -3785i, global0.a.x));
    global0 = Struct_1(global0.a);
    let var_1 = !(var_0.b != var_0.b);
    var var_2 = func_2();
    var_0 = func_2();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 18u)];
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global0.a.x, global0.a.x), -2147483647i), global0.a), global0.a));
    let var_2 = Struct_2(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(428f * -364f)))), abs(vec3<i32>(_wgslsmith_sub_i32(-global0.a.x, ~var_1.a.x), 2147483647i, min(global0.a.x ^ 2147483647i, firstLeadingBit(-36048i)))));
    var var_3 = select(min(vec3<i32>(global0.a.x, _wgslsmith_mod_i32(var_1.a.x, var_1.a.x), -var_2.c.x), vec3<i32>(var_1.a.x ^ -14485i, 2147483647i, var_2.a.a.x >> (0u % 32u))), (var_2.c | ~var_2.c) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 24465u), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10666u, 18u)], 18u)], 0u, 28958u))) % vec3<u32>(32u)), true) & var_2.c;
    global0 = var_1;
    var var_4 = vec3<u32>(~_wgslsmith_mult_u32(~(~global1[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_clamp_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 18u)], u_input.d.x), 0u, ~123925u)), u_input.d.x, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~(4294967295u << (0u % 32u)), 18u)] & 67670u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxz, u_input.a.wwy), 18u)]), 18u)] >> ((select(1u, 36035u, false) >> (_wgslsmith_div_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) % 32u)) % 32u), 18u)]));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_2.b))))), 1000f, -491f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 897f)))), ~(6666u ^ max(10869u, select(17293u, 0u, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -112f))) + _wgslsmith_f_op_f32(var_2.b * 596f)), 0u);
}

