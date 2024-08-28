struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> i32 {
    return -_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c), vec3<i32>(~_wgslsmith_div_i32(6646i, u_input.a), max(firstLeadingBit(u_input.d), ~u_input.c.x), ~8640i));
}

fn func_3() -> vec4<i32> {
    global1 = array<Struct_3, 28>();
    var var_0 = true;
    global1 = array<Struct_3, 28>();
    var var_1 = Struct_1(-(firstTrailingBit(-vec4<i32>(-683i, 73312i, u_input.c.x, u_input.c.x)) << (~reverseBits(vec4<u32>(25522u, u_input.b, u_input.b, 0u)) % vec4<u32>(32u))), ~(-firstLeadingBit(vec4<i32>(-1i, u_input.d, u_input.c.x, u_input.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1447f, 825f)), _wgslsmith_f_op_f32(max(332f, _wgslsmith_f_op_f32(f32(-1f) * -181f))), -942f, _wgslsmith_f_op_f32(min(-304f, _wgslsmith_f_op_f32(select(-645f, -1238f, false)))))), max(-_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, 25752i, 2147483647i, u_input.d), select(vec4<i32>(u_input.a, -8354i, -54807i, u_input.d), vec4<i32>(-19595i, u_input.c.x, 0i, -1i), false)), -abs(~vec4<i32>(u_input.c.x, u_input.a, u_input.a, 0i))));
    var_0 = false;
    return -reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.xx, u_input.c.zx) ^ countOneBits(-1i), reverseBits(u_input.c.x & var_1.d.x), var_1.b.x, 1i));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(~(-vec4<i32>(39762i, u_input.a, u_input.d, 0i)) ^ -abs(vec4<i32>(u_input.a, -1i, 2147483647i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(func_2(global1[_wgslsmith_index_u32(15338u, 28u)], 157f), -1i, -5943i, -2147483647i), countOneBits(vec4<i32>(u_input.a, u_input.d, 29412i, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -1665f, -989f, 357f) + vec4<f32>(1f, 1f, 1f, 1f))), func_3()), Struct_1(vec4<i32>(u_input.a, u_input.d, min(u_input.c.x, u_input.a), reverseBits(-2147483647i)) & -vec4<i32>(-13515i, 0i, 7076i, u_input.a), vec4<i32>(select(26332i, u_input.c.x, false), select(-1i, u_input.c.x, true), countOneBits(-1i), u_input.a) >> (vec4<u32>(~54187u, 1u, ~u_input.b, countOneBits(u_input.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -884f), 657f, _wgslsmith_f_op_f32(min(1000f, -1000f)), _wgslsmith_f_op_f32(step(1226f, 499f))) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, 8868i, 1i, -25546i))), ~(~_wgslsmith_add_u32(~0u, 1u & u_input.b)), u_input.b);
    let var_1 = 1082f;
    let var_2 = -2147483647i;
    global1 = array<Struct_3, 28>();
    let var_3 = _wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(u_input.b, 36085u), select(max(vec2<u32>(var_0.d, u_input.b), vec2<u32>(var_0.d, 6626u)), ~vec2<u32>(37694u, var_0.c), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec2<u32>(u_input.b, var_0.d));
    return StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_0.b.c.x))), var_1)), var_1, var_0.d, max(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u & var_3, 1u << (var_0.c % 32u)), ~abs(vec2<u32>(var_0.c, var_0.d)))), ~var_0.b.b.yxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = abs(select(~u_input.b, u_input.b, true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(536f))) * 337f), -510f, true)));
    let var_2 = u_input.c.x >> (~26006u % 32u);
    global1 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = func_1();
}

