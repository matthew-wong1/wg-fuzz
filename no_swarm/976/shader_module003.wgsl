struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~select(max(vec2<i32>(-54443i, 1i), vec2<i32>(20723i, 13313i)), ~vec2<i32>(8362i, -2147483647i), arg_0.b.x));
    let var_1 = arg_0;
    let var_2 = countOneBits(countOneBits(~max(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, arg_0.a))));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(781f)))) - _wgslsmith_f_op_f32(abs(-2358f)))));
    return select(vec4<i32>(32495i, var_0, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, 2147483647i), -vec2<i32>(var_0, var_0)), 21938i), vec4<i32>(var_0, 1i, var_0, -var_0), !select(select(vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(var_1.b.x, false, false, var_1.b.x), false), select(vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.b.x, false), vec4<bool>(arg_0.b.x, true, false, false), arg_0.b.x), select(arg_0.b, vec4<bool>(true, var_1.b.x, false, var_1.b.x), var_1.b.x))) << (_wgslsmith_add_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_3, 1u, u_input.a), vec4<u32>(60695u, 4294967295u, 7541u, 4294967295u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(14520u, arg_0.a, var_2.x, var_2.x), vec4<u32>(arg_0.a, 0u, var_3, var_3)) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(43404u, arg_0.a, arg_0.a, 4880u), vec4<u32>(var_1.a, var_1.a, 21174u, 32126u)) >> (max(vec4<u32>(25769u, 0u, var_1.a, var_2.x), vec4<u32>(31137u, 1u, 101541u, 17098u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(~(-1i)), ~(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(func_3(Struct_1(17184u, vec4<bool>(false, false, false, true))), vec4<i32>(-1i, 1i, 0i, 36907i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 32195u) % vec4<u32>(32u))), -2147483647i) >> (vec4<u32>(12321u, u_input.a & 117959u, 22316u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_add_i32(1i, ~35903i), ~(~34654i), max(0i, abs(2147483647i)), ~_wgslsmith_clamp_i32(2147483647i, -56273i, 0i))));
    var_2 = ~_wgslsmith_mult_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(var_2.x, var_2.x, -2147483647i, -2147483647i))), -(-vec4<i32>(-1i, 21642i, var_2.x, var_2.x) ^ vec4<i32>(-1i, var_2.x, var_2.x, var_2.x)));
    var_2 = select(abs(-max(select(vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x), vec4<i32>(-22990i, var_2.x, -34198i, var_2.x), var_1), vec4<i32>(13711i, -47063i, 1i, var_2.x))), abs(func_3(Struct_1(4294967295u, select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, var_0, true, true), vec4<bool>(true, true, true, var_0))))), !select(vec4<bool>(var_0, true, true & var_0, true), select(!vec4<bool>(var_0, false, var_1, var_1), !vec4<bool>(var_0, true, true, true), select(vec4<bool>(false, var_0, true, false), vec4<bool>(true, var_0, var_1, var_0), vec4<bool>(true, var_0, false, true))), any(!vec2<bool>(var_1, false))));
    return Struct_1(abs(4294967295u), vec4<bool>(any(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, true), u_input.a > u_input.a)), any(!select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_1, true), vec3<bool>(var_0, var_1, var_1))), true, !var_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1 & arg_1, select(min(select(arg_1, arg_1, true), abs(vec2<u32>(10651u, arg_1.x))), vec2<u32>(~arg_0.a, arg_0.a | 11852u), !(!arg_0.b.ww))), 4294967295u);
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.x, 1u), arg_1 | arg_1), vec2<u32>(~arg_0.a, abs(var_0))), _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(abs(arg_1), vec2<u32>(60148u, var_0) | vec2<u32>(0u, arg_0.a), vec2<u32>(4294967295u, 35797u)), _wgslsmith_mult_vec2_u32(arg_1, arg_1) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), !(!vec2<bool>(arg_2, true))), ~arg_1));
    var var_2 = 0u;
    var_2 = var_1;
    var var_3 = Struct_1(arg_1.x << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(80376u, var_1), 1u), 1u, 0u) % 32u), arg_0.b);
    return func_2();
}

fn func_1() -> Struct_1 {
    var var_0 = -1i;
    var_0 = _wgslsmith_clamp_i32((i32(-1i) * -29266i) ^ _wgslsmith_sub_i32(firstTrailingBit(-1i), -3866i), 1i, -(~2147483647i));
    var_0 = ~(i32(-1i) * -(-1i >> (1u % 32u)));
    var var_1 = func_4(func_2(), _wgslsmith_clamp_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(28117u, u_input.a))), vec2<u32>(~firstTrailingBit(u_input.a), 88081u), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_sub_u32(1u, u_input.a)), select(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a), true))), false);
    var_1 = func_4(Struct_1(1u, func_2().b), (min(vec2<u32>(var_1.a, 6014u), vec2<u32>(4818u, 20119u)) ^ abs(~vec2<u32>(u_input.a, 0u))) | vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 41106u), abs(1u), 79118u), var_1.a), !var_1.b.x);
    return Struct_1(var_1.a << (0u % 32u), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_5(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(1u, 10418u), var_0.a, 2542u, abs(var_0.a))) | (abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 56951u, 4294967295u), vec4<u32>(17534u, var_0.a, 11624u, 24249u))) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 0u, 68915u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, u_input.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-838f, 202f) + vec2<f32>(159f, 428f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, 817f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1535f, 1954f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1905f, -1175f), vec2<f32>(-1257f, -384f), false))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2406f, -969f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, -1002f)))))))), Struct_2(Struct_1(30298u, select(func_1().b, vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_0.b.x)), func_4(Struct_1(func_2().a, vec4<bool>(false, var_0.b.x, var_0.b.x, false)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(4033u, 4294967295u)), var_0.b.x), Struct_1(1u, !(!var_0.b))), Struct_1(0u, select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), !(!vec4<bool>(false, var_0.b.x, var_0.b.x, false)), all(var_0.b.zy))));
    var_0 = Struct_1(_wgslsmith_sub_u32(abs(19200u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(31573u, var_1.c.c.a, ~var_0.a), _wgslsmith_clamp_u32(u_input.a, u_input.a, ~var_0.a))), var_0.b);
    var var_2 = ~_wgslsmith_dot_vec4_u32(var_1.a, var_1.a);
    let var_3 = ~(~(~0u));
    var_2 = 1u | u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, vec4<u32>(1u, ~_wgslsmith_mult_u32(0u, 9782u), 1u, ~(var_3 & ~u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1951f, -106f, 710f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -340f, -1262f)))), _wgslsmith_add_i32(-1i << (var_1.a.x % 32u), firstLeadingBit(-14767i)));
}

