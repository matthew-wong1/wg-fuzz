struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    let var_0 = all(!vec2<bool>(false && all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(exp2(arg_3.b.x)) > _wgslsmith_f_op_f32(arg_1.b.x + arg_0.a.b.x)));
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(firstTrailingBit(arg_3.a) | ~arg_3.a, -reverseBits(0i), _wgslsmith_dot_vec2_i32(arg_2.wz, vec2<i32>(arg_0.a.a, 2147483647i)) | -1i, abs(2147483647i)), _wgslsmith_sub_vec4_i32(-select(max(vec4<i32>(2347i, 13i, 1i, arg_2.x), arg_2), vec4<i32>(0i, 11997i, -11716i, arg_1.a), !vec4<bool>(var_0, var_0, var_0, var_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, arg_3.a, u_input.a, 50383i) ^ arg_2, arg_2)));
    var_1 = ~select(arg_2, vec4<i32>(-arg_3.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.b.a, u_input.a), var_1.zwz), -1i, var_1.x), !(!(!vec4<bool>(true, var_0, var_0, var_0))));
    var var_2 = Struct_3(~((reverseBits(u_input.b) >> (~18154u % 32u)) | ~(arg_0.b.d & arg_1.d)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, ~var_1.x, -firstLeadingBit(0i)), var_1.x & firstTrailingBit(-1i), arg_0.b.a, -u_input.a), Struct_1(-37660i, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.b.x), -1296f), _wgslsmith_f_op_vec4_f32(-arg_0.a.c), arg_0.a.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x + arg_0.b.b.x))), _wgslsmith_f_op_f32(floor(730f)), 2371f, arg_1.c.x));
    var_2 = Struct_3(57984u, _wgslsmith_sub_vec4_i32(var_2.b, vec4<i32>(var_1.x, 9372i, _wgslsmith_mult_i32(2147483647i, arg_0.a.a) ^ arg_2.x, ~_wgslsmith_clamp_i32(-58913i, -37902i, 1i))), Struct_1(~var_2.b.x, vec2<f32>(1430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f - arg_1.b.x) + arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-642f, arg_0.b.b.x, var_2.d.x, arg_3.b.x))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1584f, var_2.c.c.x, arg_3.c.x, var_2.c.b.x)))))), 50980u), arg_3.c);
    return all(!(!select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, arg_0.d, 22285u) << (vec3<u32>(104113u, 0u, u_input.b) % vec3<u32>(32u))), vec3<u32>(max(6581u, 4294967295u), u_input.b, ~4294967295u)) | 1u);
    let var_1 = Struct_2(Struct_1(-1i, arg_0.c.yx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1917f, arg_0.c.x, -793f, arg_0.c.x)))), var_0.x), arg_0);
    let var_2 = vec3<bool>(!(any(vec3<bool>(false, false, true)) && true) && any(vec3<bool>(func_3(Struct_2(Struct_1(u_input.a, vec2<f32>(-1000f, var_1.a.c.x), vec4<f32>(arg_0.c.x, var_1.b.c.x, -879f, var_1.a.b.x), 4294967295u), Struct_1(arg_1.x, vec2<f32>(var_1.b.c.x, var_1.b.c.x), var_1.a.c, arg_0.d)), var_1.b, vec4<i32>(1i, var_1.a.a, var_1.a.a, -1i), var_1.a), func_3(Struct_2(Struct_1(2147483647i, vec2<f32>(arg_0.b.x, var_1.b.c.x), vec4<f32>(arg_0.b.x, -103f, -1543f, arg_0.c.x), var_1.b.d), var_1.b), Struct_1(var_1.b.a, vec2<f32>(595f, -211f), vec4<f32>(var_1.a.b.x, 676f, var_1.b.c.x, arg_0.b.x), var_1.a.d), vec4<i32>(1i, 0i, -66693i, arg_1.x), arg_0), true)), !all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(func_3(var_1, Struct_1(2892i, vec2<f32>(arg_0.b.x, var_1.b.b.x), vec4<f32>(var_1.a.b.x, var_1.b.b.x, var_1.a.b.x, var_1.b.b.x), 4294967295u), vec4<i32>(var_1.a.a, arg_1.x, -2147483647i, arg_1.x), var_1.a), true, arg_1.x >= u_input.a, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true))), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false)), true))));
    var var_3 = select(49500u, var_1.a.d, var_2.x);
    let var_4 = var_1.a.c.yyw;
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.d.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -211f, !(!any(vec2<bool>(true, false)))));
    var var_2 = vec3<u32>(abs(~arg_0.c.d), ~u_input.b, arg_0.a);
    var_2 = ~(~(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 22290u), vec3<u32>(53436u, 1u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, var_2.x), vec3<u32>(0u, u_input.b, u_input.b))) >> (vec3<u32>(0u, 51029u, ~u_input.b) % vec3<u32>(32u))));
    let var_3 = vec3<i32>(u_input.a, arg_0.b.x, -select(_wgslsmith_dot_vec3_i32(arg_0.b.xxw, ~arg_0.b.wzx), min(_wgslsmith_mod_i32(0i, 1i), _wgslsmith_mult_i32(-15571i, arg_0.b.x)), firstLeadingBit(-12072i) >= -arg_0.c.a));
    return Struct_2(arg_0.c, func_2(Struct_1(abs(-40799i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.d.yy))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -822f) - vec4<f32>(var_0, arg_0.c.b.x, 730f, var_0)))), arg_0.c.d), -_wgslsmith_mult_vec3_i32(var_3, vec3<i32>(u_input.a, 35169i, u_input.a)) ^ _wgslsmith_sub_vec3_i32(arg_0.b.zxz, -vec3<i32>(21242i, -5509i, -20920i))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(Struct_3(u_input.b, vec4<i32>(2147483647i | arg_0.b.x, u_input.a << (u_input.b % 32u), min(u_input.a, arg_2), u_input.a) ^ -vec4<i32>(arg_0.c.a, 0i, u_input.a, 23027i), func_2(arg_0.c, vec3<i32>(-41809i, 2147483647i, arg_2) ^ min(vec3<i32>(arg_2, 34799i, arg_2), vec3<i32>(1i, 0i, -60916i))), _wgslsmith_f_op_vec4_f32(-arg_0.d)));
    let var_1 = func_4(arg_0).b;
    var var_2 = func_4(arg_0);
    var var_3 = Struct_2(Struct_1(var_2.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.x, -122f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.a.c, vec4<f32>(var_0.a.c.x, -1739f, 1034f, var_0.a.c.x)))) * var_1.c), var_0.b.d), Struct_1(26218i, _wgslsmith_f_op_vec2_f32(select(func_2(var_2.a, arg_0.b.wzy).c.xz, arg_0.c.c.zx, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(566f * 244f), var_0.a.c.x, -764f, _wgslsmith_f_op_f32(840f + var_2.a.b.x)), var_0.b.c, any(vec2<bool>(false, false)))), _wgslsmith_mult_u32(1u, ~(~75271u))));
    var_3 = Struct_2(func_4(Struct_3(u_input.b, select(vec4<i32>(var_1.a, arg_2, 13014i, 2147483647i), arg_0.b, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)), Struct_1(1i, _wgslsmith_f_op_vec2_f32(-var_1.c.yy), vec4<f32>(313f, 1288f, 655f, arg_0.d.x), _wgslsmith_sub_u32(37143u, 4486u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.b.x, 879f, var_2.a.b.x, -1020f) - var_0.b.c))))).a, Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a.c.x, 945f), vec2<f32>(var_2.a.c.x, var_0.a.b.x))), _wgslsmith_f_op_vec2_f32(var_3.b.c.xy + var_3.b.b)))), arg_0.d, var_2.a.d));
    return var_1;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = !select(vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), true, false), !vec4<bool>(true, 1131f >= arg_0.b.b.x, u_input.a < 490i, true), vec4<bool>(false, true, firstLeadingBit(43565u) >= ~arg_0.b.d, all(vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_mult_i32(u_input.a >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, arg_0.a.d)), select(vec2<u32>(47374u, u_input.b), vec2<u32>(0u, arg_0.a.d), vec2<bool>(false, false)) << (vec2<u32>(u_input.b, arg_0.a.d) % vec2<u32>(32u))) % 32u), firstLeadingBit(i32(-1i) * -u_input.a));
    let var_2 = -(firstTrailingBit(abs(vec3<i32>(var_1, -77946i, var_1))) ^ vec3<i32>(19203i, abs(u_input.a), u_input.a)) | _wgslsmith_div_vec3_i32(-((vec3<i32>(var_1, 1i, 1i) & vec3<i32>(var_1, -1i, -2147483647i)) & ~vec3<i32>(u_input.a, var_1, 1i)), reverseBits(-firstTrailingBit(vec3<i32>(-1i, u_input.a, u_input.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -890f)), 947f, arg_0.a.b.x, arg_0.b.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(618f, -845f, _wgslsmith_div_f32(arg_0.a.c.x, arg_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -804f)) + vec4<f32>(_wgslsmith_f_op_f32(419f * 663f), arg_0.b.b.x, -1058f, arg_0.a.c.x))) * arg_0.b.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(func_1(Struct_3(firstTrailingBit(arg_0.a.d), vec4<i32>(-26002i & arg_0.a.a, -24901i, var_2.x, arg_0.a.a), Struct_1(firstTrailingBit(45409i), arg_0.b.c.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(1382f, -1265f, arg_0.a.b.x, 122f) + arg_0.b.c), 89436u), arg_0.a.c), ~abs(vec2<u32>(arg_0.b.d, arg_0.b.d)), ~firstLeadingBit(abs(-68255i))).c - func_4(Struct_3(~10661u, _wgslsmith_mod_vec4_i32(vec4<i32>(-5997i, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, arg_0.b.a, arg_0.a.a, arg_0.a.a)) & abs(vec4<i32>(39830i, 1i, 20792i, arg_0.a.a)), arg_0.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.c.x, 910f, var_3.x, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, var_3.x, var_3.x, arg_0.a.b.x)))))).a.c);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_5(Struct_2(func_1(Struct_3(u_input.b, vec4<i32>(26514i, u_input.a, u_input.a, 5680i), Struct_1(u_input.a, vec2<f32>(-903f, 152f), vec4<f32>(414f, 525f, 493f, 1018f), 104083u), vec4<f32>(-102f, -1075f, -121f, 545f)), vec2<u32>(u_input.b, u_input.b), u_input.a), Struct_1(-54033i, vec2<f32>(824f, -1584f), vec4<f32>(-711f, 1298f, 1115f, -233f), u_input.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, 727f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(300f, -720f), vec2<f32>(1460f, 1175f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1198f, 202f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, 961f, 1443f, -145f)) * vec4<f32>(377f, 2205f, -1496f, -441f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -523f, -298f, -2137f), vec4<f32>(-1412f, -547f, -791f, 2005f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1167f, 791f, 561f, -930f), vec4<f32>(893f, 417f, 533f, 2057f))))), 1u), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(854f - 848f), _wgslsmith_f_op_f32(1026f - -156f)))), _wgslsmith_f_op_vec4_f32(func_2(func_2(Struct_1(-1i, vec2<f32>(1000f, -594f), vec4<f32>(-2781f, -1969f, 482f, -475f), 4294967295u), vec3<i32>(u_input.a, -2147483647i, 1i)), vec3<i32>(u_input.a, 0i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)).c - _wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, 441f, 789f, -256f))), 2436u));
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -1i), -1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1769f))), _wgslsmith_f_op_f32(f32(-1f) * -699f)), var_0.b.c, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b.d, 0u), u_input.b)));
    var var_1 = -1203f;
    var var_2 = 45975u;
    var var_3 = ~(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.a, _wgslsmith_div_i32(60481i, ~(~(-1i)))), u_input.b);
}

