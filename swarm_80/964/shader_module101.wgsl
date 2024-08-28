struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec3<bool>, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = vec4<bool>(false, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 54813u), abs(u_input.b.yw)) >= ~firstLeadingBit(48574u), true, true);
    let var_1 = ~((reverseBits(-vec4<i32>(arg_1.a.a, arg_2.x, 41187i, arg_2.x)) & abs(~vec4<i32>(-13723i, arg_2.x, u_input.a, -18490i))) & -vec4<i32>(u_input.a, 53698i, arg_2.x, abs(-42487i)));
    var var_2 = countOneBits(arg_2.x);
    var_2 = 21276i;
    var_2 = arg_1.a.a;
    return Struct_2(Struct_1(~(-18274i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    let var_0 = arg_0;
    var var_1 = 521f;
    var var_2 = arg_1.x;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_4, 32>();
    let var_0 = vec2<u32>(countOneBits(u_input.c.x), u_input.c.x);
    var var_1 = ~countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xzz, u_input.c.wxx), u_input.b.wxx), vec3<u32>(select(1u, 1u, false), 4294967295u, _wgslsmith_div_u32(var_0.x, 0u))));
    var var_2 = global1[_wgslsmith_index_u32(129625u, 7u)];
    global0 = array<Struct_4, 32>();
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -40714i >= ~_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, 12006i, 0i, -1i), vec4<i32>(arg_0.a, -669i, -1479i, 51195i)), firstTrailingBit(-2147483647i)), u_input.a);
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_i32(~arg_0.a ^ (i32(-1i) * -74382i), 1i)));
    var var_2 = var_1;
    var var_3 = firstTrailingBit(-vec4<i32>(i32(-1i) * -51733i, _wgslsmith_div_i32(u_input.a, 0i), 1i, 0i));
    var_0 = select(-2147483647i, -43659i, false) == func_4(Struct_2(func_4(Struct_2(Struct_1(var_3.x)), vec2<i32>(47795i, arg_1.a), ~u_input.c.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(328f, 787f, 3694f))))), -var_3.yw, ~abs(15198u) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.c.x), u_input.c.x) % 32u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(183f, -1802f, _wgslsmith_f_op_f32(716f - 292f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, -335f, -899f))))))).a;
    return Struct_1(min(var_3.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(-39752i, arg_1.a), i32(-1i) * -38073i)) ^ arg_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_5(Struct_1(u_input.a << (u_input.b.x % 32u)), func_4(func_3(func_2(Struct_3(global1[_wgslsmith_index_u32(61791u, 7u)]), Struct_3(Struct_1(-2147483647i)), vec3<i32>(-2147483647i, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(760f, -1688f, 298f) + vec3<f32>(422f, -530f, 807f)), Struct_4(false)), ~vec2<i32>(u_input.a, u_input.a), 42473u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1319f, 2764f, -1287f)))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, ~(~u_input.c.x)), 0u, ~_wgslsmith_add_u32(u_input.c.x >> (37588u % 32u), u_input.b.x >> (u_input.c.x % 32u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(0u, u_input.b.x)), u_input.b.x) >> (reverseBits(_wgslsmith_add_u32(u_input.c.x, reverseBits(u_input.b.x))) % 32u)), 32u)];
    global1 = array<Struct_1, 7>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1223f, 284f)), _wgslsmith_f_op_f32(min(-1724f, -855f)))) - _wgslsmith_f_op_f32(sign(906f))) * 1437f);
    var var_3 = select(select(select(vec4<bool>(!var_1.a, true, false, var_1.a), vec4<bool>(false, true, var_1.a, !var_1.a), !select(vec4<bool>(true, var_1.a, true, true), vec4<bool>(var_1.a, true, true, true), vec4<bool>(false, true, false, var_1.a))), !vec4<bool>(true, true, true, var_1.a), false), !vec4<bool>(false, !any(vec2<bool>(var_1.a, true)), var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b.x, 0u)) <= u_input.b.x), vec4<bool>(var_1.a, true, true, true));
    return func_5(func_4(func_2(Struct_3(Struct_1(-1i)), var_0, vec3<i32>(~(-20707i), var_0.a.a | 1i, 2469i)), vec2<i32>(var_0.a.a >> (u_input.c.x % 32u), _wgslsmith_sub_i32(u_input.a, -2147483647i)) & ~_wgslsmith_div_vec2_i32(vec2<i32>(-6370i, 2147483647i), vec2<i32>(1i, -2147483647i)), ~u_input.c.x, vec3<f32>(1f, 1f, 1f)), func_3(Struct_2(func_5(Struct_1(35980i), Struct_1(var_0.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1819f, 344f, 767f) + vec3<f32>(-750f, 362f, 598f))), Struct_4(true)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    var var_0 = -441f;
    let var_1 = Struct_2(func_1());
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(171f, -988f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, -1522f, 687f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(711f, -1230f, 843f) - vec3<f32>(-279f, 934f, 1469f)))));
    var var_3 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -128f))), 1000f), u_input.b.xw, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(8835u, u_input.b.x), ~u_input.b.x), ~(~u_input.b.x), 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(49206u), u_input.c.x, u_input.b.x, ~u_input.b.x), ~(~vec4<u32>(0u, u_input.c.x, 40917u, 1u))), vec4<u32>(u_input.c.x ^ u_input.c.x, ~u_input.c.x | 1u, u_input.b.x, reverseBits(~u_input.b.x))));
}

