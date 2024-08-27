struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    let var_0 = u_input.a.x;
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    return 1i;
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(reverseBits(-_wgslsmith_sub_i32(2147483647i >> (1u % 32u), -27014i)), u_input.b.x, max(~(~u_input.b.x), 0u), ~u_input.a.x);
    let var_1 = max(_wgslsmith_add_i32(var_0.a, _wgslsmith_div_i32(var_0.a, -14265i)), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), -_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, -25040i, 1i, 1i), vec4<i32>(4202i, var_0.a, var_0.a, 12864i), vec4<bool>(true, true, true, true)), -vec4<i32>(var_0.a, -1i, var_0.a, var_0.a))));
    var var_2 = Struct_1(~(-(_wgslsmith_mult_i32(var_0.a, var_1) | 2306i)), 1u, 33151u, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(35262u, var_0.c))), _wgslsmith_sub_u32(4294967295u, 20346u) << (_wgslsmith_mod_u32(0u, 9515u) % 32u))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~var_3.a, var_3.a, -15890i), _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, var_1, 1i) ^ (vec3<i32>(1i, var_0.a, -1i) | vec3<i32>(2147483647i, var_1, var_1)), firstTrailingBit(vec3<i32>(-10716i, var_2.a, 6310i)) >> (vec3<u32>(0u, var_0.d, u_input.b.x) % vec3<u32>(32u))) | reverseBits(firstLeadingBit(firstLeadingBit(vec3<i32>(var_0.a, var_0.a, -38111i)))), ~vec3<i32>(_wgslsmith_sub_i32(var_2.a ^ var_2.a, var_1 & 30625i), -22312i, func_2()));
    return vec4<u32>(1u, u_input.b.x, 38708u, ~abs(~(~var_0.c)));
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<vec4<bool>, 30>();
    let var_0 = -func_2() != _wgslsmith_dot_vec2_i32(~(-select(vec2<i32>(-31178i, -16269i), vec2<i32>(2147483647i, 2147483647i), true)), vec2<i32>(_wgslsmith_mult_i32(~(-2147483647i), 1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-23443i, -2147483647i), vec2<i32>(0i, 2147483647i))));
    var var_1 = Struct_1(5376i, 31720u, ~1u, ~_wgslsmith_mod_u32(~reverseBits(0u), _wgslsmith_add_u32(12220u, arg_0) & 1u));
    global0 = array<vec4<bool>, 30>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 18044u, ~84379u), ~func_3()), vec4<u32>(111229u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0, 97692u << (arg_0 % 32u), ~arg_0), 2631u), ~abs(_wgslsmith_clamp_u32(50017u, var_1.b, 85393u)), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2419i, 1u, _wgslsmith_div_u32(67305u, _wgslsmith_clamp_u32(15841u, _wgslsmith_mod_u32(func_1(u_input.a.x), 1u), 40547u)), abs(u_input.b.x));
    var var_1 = 813f;
    var var_2 = 1483f;
    var var_3 = vec4<u32>(1u, 15503u, 50693u, _wgslsmith_mult_u32(var_0.b, 0u) & 58979u);
    let var_4 = 1f;
    var var_5 = ~select(-vec3<i32>(var_0.a | 1i, var_0.a, 1i), ~(firstLeadingBit(vec3<i32>(var_0.a, 123i, 0i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.a, -10639i), vec3<i32>(-2147483647i, -47385i, 18933i))), vec3<bool>(var_3.x > _wgslsmith_dot_vec3_u32(var_3.zyw, vec3<u32>(38410u, 1u, 29323u)), all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), _wgslsmith_add_i32(var_5.x, 0i), _wgslsmith_f_op_f32(ceil(1219f)));
}

