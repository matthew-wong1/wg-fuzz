struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(1u, vec3<i32>(-28734i, 37882i, 1i)), Struct_2(0u, vec3<i32>(1i, -1i, 2147483647i)), Struct_2(18754u, vec3<i32>(2147483647i, 14271i, 15297i)), Struct_2(19825u, vec3<i32>(629i, 46454i, 18042i)), Struct_2(40278u, vec3<i32>(16317i, i32(-2147483648), 2147483647i)), Struct_2(1u, vec3<i32>(-20588i, 2147483647i, 0i)), Struct_2(24818u, vec3<i32>(i32(-2147483648), i32(-2147483648), -7933i)), Struct_2(571u, vec3<i32>(-1i, 448i, -1i)), Struct_2(4294967295u, vec3<i32>(1i, 2147483647i, 59709i)), Struct_2(0u, vec3<i32>(-5918i, 16204i, 24485i)), Struct_2(10938u, vec3<i32>(-5282i, 2147483647i, 28646i)), Struct_2(4294967295u, vec3<i32>(-7020i, 1i, -1i)), Struct_2(50235u, vec3<i32>(-61741i, -15848i, 1i)), Struct_2(77971u, vec3<i32>(0i, 1i, i32(-2147483648))), Struct_2(21306u, vec3<i32>(-1i, -76212i, 1i)), Struct_2(4294967295u, vec3<i32>(-12533i, 0i, 1i)), Struct_2(21087u, vec3<i32>(2147483647i, 29386i, -1i)), Struct_2(54132u, vec3<i32>(50544i, 2147483647i, 0i)), Struct_2(77749u, vec3<i32>(1i, -90587i, 1i)), Struct_2(54935u, vec3<i32>(1i, -19006i, -39427i)), Struct_2(16398u, vec3<i32>(-1i, -22601i, -37902i)), Struct_2(8695u, vec3<i32>(17195i, 12098i, 0i)), Struct_2(11530u, vec3<i32>(37205i, 16109i, -1i)), Struct_2(1u, vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_2(4294967295u, vec3<i32>(1i, 33132i, -8224i)), Struct_2(1u, vec3<i32>(-1i, -8886i, i32(-2147483648))), Struct_2(4294967295u, vec3<i32>(32964i, 2147483647i, -1i)), Struct_2(0u, vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_2(5753u, vec3<i32>(0i, i32(-2147483648), -1i)), Struct_2(54623u, vec3<i32>(8664i, -22976i, 35680i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -899f)), _wgslsmith_f_op_f32(-980f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -525f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f - 1156f) + -934f)))), ~u_input.a >= 48245u));
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(259f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(2210i, 3045i, 6728i, u_input.c), u_input.c, vec3<u32>(u_input.a, u_input.d, u_input.a))) * -772f) + -301f)));
    var var_1 = vec3<i32>(1i, u_input.b, _wgslsmith_mod_i32(36330i, u_input.e.x));
    var_1 = ~(~vec3<i32>(u_input.e.x, 40101i, ~u_input.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1012f, -865f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -363f), vec2<f32>(var_0, var_0), vec2<bool>(true, true)))))))));
    var var_3 = Struct_1(~firstLeadingBit(u_input.d));
    return abs(firstTrailingBit(vec2<i32>(-43227i, u_input.b))) << (abs(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(10439u, 1u), vec2<u32>(11097u, var_3.a)))) % vec2<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = vec2<i32>(~(-1i), ~_wgslsmith_mod_i32(6856i, ~firstTrailingBit(-51200i)));
    var_0 = ~func_2();
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(min(vec4<i32>(10919i, var_0.x, -1i, -58839i), vec4<i32>(arg_1, u_input.e.x, 2147483647i, -2147483647i))) | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-14357i, 11212i, arg_1, 1i), vec4<i32>(0i, var_0.x, var_0.x, var_0.x)), min(vec4<i32>(arg_1, var_0.x, u_input.c, arg_1), vec4<i32>(9962i, var_0.x, -51932i, 0i))), vec4<i32>(1i, (arg_1 | 75038i) >> (0u % 32u), abs(var_0.x ^ arg_1), 2147483647i)), vec4<i32>(countOneBits(reverseBits(arg_1)) ^ ~max(1i, arg_1), 2147483647i, -max(-1i, -22867i), _wgslsmith_sub_i32(reverseBits(arg_1 & -1i), _wgslsmith_mod_i32(0i, arg_1 & -2564i))));
    global0 = array<Struct_2, 30>();
    var var_2 = Struct_1(select(_wgslsmith_mod_u32(~u_input.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(86632u, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(1u, 66466u)))), 4294967295u, true));
    return Struct_1(abs(~(reverseBits(arg_0) ^ arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.d, u_input.e.x);
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_1 = countOneBits(reverseBits(vec4<u32>(max(1u, 4622u), 1u & var_0.a, var_0.a, var_0.a)));
    global0 = array<Struct_2, 30>();
    let var_2 = vec4<f32>(-169f, -1407f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-283f))) - -348f))), _wgslsmith_f_op_f32(1f * 391f));
    let var_3 = ~(~max(var_1.x, var_0.a)) & _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, 4294967295u) ^ (var_1.xz & var_1.xy), var_1.xz, select(false, -19987i < u_input.c, any(vec4<bool>(true, true, false, true)))), vec2<u32>(var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.d, var_0.a), ~var_1.xwy)));
    let x = u_input.a;
    s_output = StorageBuffer(1047f, var_1.zyw, max(var_1.x, 1u), var_2.zxz, abs(~select(vec3<u32>(87081u, 0u, var_3), vec3<u32>(var_3, var_0.a, var_0.a), true) & var_1.zzw));
}

