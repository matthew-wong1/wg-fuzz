struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, i32(-2147483648), 30593i, 39626i), vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, 15036i, -1i), vec4<i32>(i32(-2147483648), 3985i, 52119i, -19366i), vec4<i32>(4228i, i32(-2147483648), -1i, 30587i), vec4<i32>(-1i, -29170i, 2147483647i, 2147483647i), vec4<i32>(-36534i, -54252i, 0i, -5210i), vec4<i32>(-323i, 0i, 0i, 200i), vec4<i32>(0i, 1i, 22412i, -12601i), vec4<i32>(-46264i, i32(-2147483648), 34844i, 2147483647i), vec4<i32>(0i, 37898i, 2147483647i, -1i), vec4<i32>(37803i, -1i, 19730i, -47425i), vec4<i32>(0i, 0i, -2636i, -23075i), vec4<i32>(-1i, -1354i, 2147483647i, 28273i), vec4<i32>(630i, -1i, 0i, 2147483647i), vec4<i32>(5986i, 30874i, -33856i, -38476i), vec4<i32>(-62227i, 1126i, -1i, 1i), vec4<i32>(1i, 1i, 1i, -383i), vec4<i32>(-1i, 8963i, -8568i, 1i), vec4<i32>(51110i, i32(-2147483648), 25961i, -25513i), vec4<i32>(1i, 0i, 1i, 45341i), vec4<i32>(-69095i, 25325i, 1i, i32(-2147483648)), vec4<i32>(-49453i, 1i, 18993i, 57867i), vec4<i32>(2147483647i, -6283i, 2937i, -22838i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    global0 = _wgslsmith_mod_i32(u_input.b.x, arg_1.b.x);
    global1 = array<vec4<i32>, 24>();
    global1 = array<vec4<i32>, 24>();
    global1 = array<vec4<i32>, 24>();
    var var_0 = arg_1;
    return abs(abs(arg_1.b & var_0.b));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!(!(0u != u_input.a.x) == false), -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(func_3(vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(true, u_input.b, 0u, vec2<f32>(884f, -1008f)), 21210i), global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(0i, 20014i, 0i, -2147483647i)), func_3(vec2<u32>(0u, u_input.a.x), Struct_1(false, u_input.b, u_input.a.x, vec2<f32>(273f, -1000f)), 1i))), ~21582u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1387f, -1955f))) - vec2<f32>(_wgslsmith_f_op_f32(910f * 347f), 1108f)))));
    var var_1 = var_0;
    let var_2 = vec2<u32>(4294967295u, var_0.c);
    global1 = array<vec4<i32>, 24>();
    var_1 = var_0;
    return -1i;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x >> (140766u % 32u), ~0u), ((abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | ~vec4<u32>(u_input.a.x, 73233u, u_input.a.x, u_input.a.x)) & firstTrailingBit(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 21667u))) << (vec4<u32>(~59852u & _wgslsmith_mod_u32(63491u, u_input.a.x), ~u_input.a.x & (u_input.a.x & 1u), _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), u_input.a.x), ~(~26774u)) % vec4<u32>(32u)));
    global0 = 2147483647i;
    let var_1 = Struct_1(true, u_input.b << (vec4<u32>(~reverseBits(var_0.x), u_input.a.x, var_0.x, 49942u & ~u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~53145u, 53051u, 1u, 49424u), ~(~var_0)), ~(~(0u << (u_input.a.x % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-864f, 722f), _wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -598f) * vec2<f32>(-1136f, -763f)))) - vec2<f32>(-386f, 338f))));
    var var_2 = ~var_1.c;
    var var_3 = abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 2654i, u_input.b.x ^ u_input.b.x, 0i >> (1u % 32u)), vec4<i32>(~u_input.b.x, ~var_1.b.x, var_1.b.x, _wgslsmith_div_i32(27644i, func_2()))));
    return StorageBuffer(var_1.d.x, _wgslsmith_dot_vec3_u32(var_0.wzx, countOneBits(min(_wgslsmith_sub_vec3_u32(var_0.zwx, var_0.xzz), vec3<u32>(4294967295u, 11954u, u_input.a.x) | var_0.xxw))), -var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

