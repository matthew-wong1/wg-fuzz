struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = firstTrailingBit(firstTrailingBit(38848u));
    let var_1 = max(_wgslsmith_div_vec4_i32(vec4<i32>(-17032i, _wgslsmith_add_i32(-27276i, _wgslsmith_sub_i32(u_input.a, u_input.b)), -20401i, -41704i), vec4<i32>(-53515i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, 16140i), vec4<i32>(-2147483647i, arg_0, u_input.b, arg_0)) >> (1u % 32u), arg_0, countOneBits(arg_0 ^ u_input.b))), _wgslsmith_div_vec4_i32(min(vec4<i32>(0i, u_input.b, u_input.a, arg_0), vec4<i32>(-2147483647i, u_input.a, u_input.b, arg_0)) | -vec4<i32>(-2147483647i, 0i, u_input.a, -37276i), vec4<i32>(arg_0, countOneBits(-1i), 1i, ~13377i)) ^ countOneBits(firstLeadingBit(vec4<i32>(arg_0, arg_0, 44711i, -12274i))));
    var_0 = abs(4294967295u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1573u, 0u), vec2<u32>(6123u, 45568u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(62251u, 26893u), vec2<u32>(21947u, 0u)) % 32u)) % 32u)) | _wgslsmith_mod_u32(1u, 1u);
    var_0 = 1u;
    let var_2 = max(_wgslsmith_mult_vec2_i32(var_1.yy, -max(vec2<i32>(arg_0, arg_0), min(vec2<i32>(-1i, arg_0), vec2<i32>(1i, u_input.b)))), vec2<i32>(1i, arg_0));
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(!(!any(vec4<bool>(false, false, true, false))), true, true, true & func_3(u_input.b << (arg_1 % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-876f, -391f, _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-arg_2)) - vec4<f32>(_wgslsmith_f_op_f32(1633f * -282f), _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(-arg_2), -1163f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, arg_2, 374f, 538f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, 416f, -1076f, arg_2)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 776f, arg_2, arg_2) + vec4<f32>(526f, -236f, arg_2, -296f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -708f, arg_2, arg_2))))));
    var_0 = Struct_1(select(var_0.a, !(!vec4<bool>(true, var_0.a.x, false, var_0.a.x)), select(vec4<bool>(true, any(vec3<bool>(false, var_0.a.x, true)), false, !var_0.a.x), vec4<bool>(any(var_0.a.wx), true, all(vec3<bool>(true, var_0.a.x, true)), var_0.a.x | var_0.a.x), var_0.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_2, 174f, 437f))))), _wgslsmith_f_op_vec4_f32(abs(var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -1444f, -787f, arg_2), vec4<f32>(arg_2, -1077f, arg_2, 3386f), true)))))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b));
    var var_2 = any(vec4<bool>(all(var_0.a), _wgslsmith_mod_i32(u_input.a, arg_0.x) < arg_0.x, true && (var_0.a.x && var_0.a.x), var_0.a.x)) && false;
    var_0 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 57379u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_0.b), 2147483647i | _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b), -vec4<i32>(0i, 0i, u_input.a, -2147483647i)), -1i), ~vec2<u32>(countOneBits(firstTrailingBit(var_0)), var_0), _wgslsmith_clamp_i32(-u_input.b >> (_wgslsmith_div_u32(var_0, var_0) % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~u_input.a, 26373i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, -45514i, -2147483647i), min(2147483647i, u_input.b)), u_input.a), u_input.b));
    let var_2 = ~(~(~vec3<u32>(1u, 1u, 1u)) ^ (~(~vec3<u32>(83934u, 1u, var_0)) | vec3<u32>(var_1.c.x, ~var_1.c.x, 1u >> (var_0 % 32u))));
    var var_3 = Struct_1(vec4<bool>(true, false, func_2(reverseBits(-vec4<i32>(u_input.a, -1i, 1i, -2147483647i)), ~_wgslsmith_mod_u32(var_2.x, 26972u), arg_0.b.x, ~vec3<u32>(var_0, var_0, 48438u) << (countOneBits(var_2) % vec3<u32>(32u))).a.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1000f, -770f, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(-arg_0.b)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1415f, arg_0.b.x, var_1.a.x, var_1.a.x)))), select(vec4<bool>(arg_0.a.x, arg_0.a.x, -34411i >= var_1.d, arg_0.a.x), vec4<bool>(arg_0.a.x || arg_0.a.x, true, !arg_0.a.x, var_1.d <= 11543i), select(select(arg_0.a, arg_0.a, false), !vec4<bool>(false, arg_0.a.x, true, true), arg_0.a)))));
    var var_4 = Struct_2(all(!(!arg_0.a)));
    return func_2(~vec4<i32>(~abs(-7379i), 2147483647i, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -37117i), vec2<i32>(1459i, var_1.b))), ~1u, -142f, ~vec3<u32>(~_wgslsmith_mult_u32(4294967295u, 1u), ~min(var_0, 43255u), _wgslsmith_dot_vec3_u32(var_2 & var_2, ~var_2)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    let var_0 = func_4(func_2(vec4<i32>(u_input.b << (1u % 32u), i32(-1i) * -1i, u_input.a & ~1i, u_input.a), _wgslsmith_sub_u32(86710u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(43615u, 1u, 19545u, 58946u), vec4<u32>(1u, 45874u, 0u, 30128u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f))), ~vec3<u32>(4294967295u, 1u, 1u)));
    let var_1 = vec2<u32>(4294967295u, ~(~(~4294967295u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(var_0.b.xxx));
    var var_3 = ~abs(var_1);
    var_3 = vec2<u32>(~(~select(abs(0u), ~49826u, func_4(Struct_1(var_0.a, vec4<f32>(-625f, 849f, var_0.b.x, 919f))).a.x)), abs(1u >> (var_3.x % 32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(31500u, 1u), func_1(vec2<bool>(false, true), true)), countOneBits(vec2<u32>(13937u, 6287u))), abs(vec2<u32>(1u, 1u))) >> (vec2<u32>(1u, ~(~0u)) % vec2<u32>(32u));
    var var_1 = Struct_3(vec4<f32>(func_4(Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, -451f, 1150f, 101f) - vec4<f32>(-511f, 186f, 1833f, 138f)))).b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(680f, -794f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1728f)), -422f))), -673f, _wgslsmith_f_op_f32(abs(-1405f))), -1254i, vec2<u32>(max(_wgslsmith_add_u32(var_0.x, 0u), var_0.x), ~16697u), abs(-52932i));
    var_1 = Struct_3(var_1.a, abs((-43776i ^ select(0i, -1084i, false)) ^ abs(_wgslsmith_sub_i32(-7630i, var_1.b))), reverseBits(~max(vec2<u32>(var_0.x, 3974u), firstTrailingBit(var_0))), u_input.a);
    let var_2 = ~(select(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, 1u), vec3<u32>(18331u, var_0.x, var_1.c.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 27044u, var_0.x), vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x)), !func_2(vec4<i32>(-1439i, 43519i, 39172i, 1i), var_0.x, var_1.a.x, vec3<u32>(var_1.c.x, 43277u, 4294967295u)).a.xzz) ^ ~vec3<u32>(0u, 5806u, 1u));
    var var_3 = var_1.a.x;
    let var_4 = 33501i;
    let var_5 = var_2;
    let var_6 = Struct_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.zz), -60021i, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x) ^ vec3<u32>(var_5.x, 13075u, var_1.c.x), abs(var_2)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, var_5.x, var_5.x)), vec3<u32>(0u, 0u, 0u))) << (_wgslsmith_add_u32(var_5.x & 0u, min(~var_5.x, ~27212u)) % 32u));
}

