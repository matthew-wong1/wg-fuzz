struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(31254i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_div_i32(22070i, u_input.a)) >= 15754i, true), 43045u >> (firstLeadingBit(~min(0u, 78680u)) % 32u), !(_wgslsmith_f_op_f32(2063f * -616f) > _wgslsmith_f_op_f32(round(-1468f))) & (any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)) || true), -157f, u_input.a);
    var_0 = Struct_1(var_0.a, var_0.b, all(!select(select(var_0.a.yx, vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.xw), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1783f)) - var_0.d), _wgslsmith_mult_i32(var_0.e, firstLeadingBit(1i)));
    var var_1 = firstLeadingBit(46434u);
    let var_2 = _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-1f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_2, _wgslsmith_f_op_f32(max(var_2, arg_0)), _wgslsmith_f_op_f32(var_2 - var_0.d))))));
    return 8712u;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(arg_1.b, func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-149f, 1055f) * _wgslsmith_f_op_f32(1000f - -925f))))));
    let var_1 = vec2<u32>((arg_1.b >> (~4294967295u % 32u)) ^ ~countOneBits(arg_1.b ^ 45882u), arg_1.b);
    var var_2 = Struct_2(!arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, countOneBits(1u) >> (func_3(453f) % 32u), arg_1.b, 59428u), reverseBits(~vec4<u32>(var_1.x, arg_1.b, 88860u, 14974u))), any(select(select(!vec4<bool>(true, arg_1.d, arg_1.d, false), select(vec4<bool>(true, arg_1.d, true, false), vec4<bool>(arg_1.a.x, arg_1.d, false, true), vec4<bool>(true, arg_1.d, true, arg_1.d)), vec4<bool>(arg_1.c, false, true, arg_1.a.x)), vec4<bool>(!arg_1.c, true, -30147i != u_input.a, false), select(vec4<bool>(true, arg_1.a.x, true, arg_1.c), !vec4<bool>(arg_1.d, true, arg_1.c, true), !vec4<bool>(true, arg_1.d, arg_1.a.x, true)))), arg_1.c);
    let var_3 = arg_1;
    var_0 = var_3.b;
    return var_2.a.xx;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_i32(~u_input.a, 30911i);
    var var_1 = arg_0.a.xz;
    var_1 = func_2(_wgslsmith_mult_i32(1i, -1i), Struct_2(select(select(arg_0.a, select(arg_0.a, arg_0.a, var_1.x), var_1.x), !(!arg_0.a), vec3<bool>(arg_0.a.x, var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, true)))), ~105672u, all(vec4<bool>(true, false, true, false)) | var_1.x, arg_0.a.x));
    var_1 = arg_0.a.yy;
    var var_2 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_1.x, arg_1.x) ^ arg_1.x, abs(firstLeadingBit(2085u)), 4294967295u ^ countOneBits(arg_1.x), ~_wgslsmith_mult_u32(arg_0.b, arg_1.x)), firstTrailingBit((vec4<u32>(4294967295u, arg_1.x, 0u, arg_1.x) | vec4<u32>(4294967295u, 70931u, 1u, arg_0.b)) >> (vec4<u32>(arg_1.x, arg_0.b, 6733u, arg_0.b) % vec4<u32>(32u)))));
    return Struct_2(arg_0.a, 10980u, true, !(!var_1.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = func_1(Struct_2(vec3<bool>(false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_2.c, true, false, arg_1.c), true)), true), _wgslsmith_div_u32(arg_0.x, _wgslsmith_clamp_u32(arg_1.b, 4294967295u, ~arg_1.b)), arg_2.c, 35341u <= arg_2.b), _wgslsmith_sub_vec3_u32(vec3<u32>(~(arg_2.b ^ arg_1.b), 0u, 0u), vec3<u32>(54278u, ~4294967295u, min(~32145u, arg_1.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 709f, -575f, -395f), vec4<f32>(-366f, 1660f, 878f, 1000f), vec4<bool>(arg_1.a.x, arg_1.c, arg_1.a.x, arg_2.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2765f)))))));
    let var_1 = Struct_1(!(!vec4<bool>(arg_1.d, false, arg_2.c != arg_2.c, true)), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 13536u, var_0.b), arg_0), _wgslsmith_sub_u32(0u, arg_0.x)), var_0.b), false, 409f, ~(reverseBits(firstLeadingBit(-9566i)) | countOneBits(~u_input.a)));
    let var_2 = var_1.b;
    let var_3 = var_1;
    let var_4 = arg_2.b;
    return func_3(_wgslsmith_f_op_f32(-var_1.d));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_3.a, _wgslsmith_div_u32(~(~arg_1) >> (1u % 32u), ~firstLeadingBit(max(arg_3.b, arg_3.b))), ((!arg_0 == arg_0) != true) & (-20262i >= arg_2.x), !any(select(!vec4<bool>(false, arg_0, arg_3.d, arg_3.d), !vec4<bool>(arg_0, arg_3.c, arg_0, true), any(vec2<bool>(arg_0, true)))));
    let var_1 = var_0;
    var var_2 = firstTrailingBit(~((countOneBits(vec2<u32>(1u, 86255u)) << ((vec2<u32>(arg_1, 84185u) | vec2<u32>(var_0.b, arg_1)) % vec2<u32>(32u))) << (abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(35359u, arg_1))) % vec2<u32>(32u))));
    var_2 = vec2<u32>(var_0.b, ~abs(~0u));
    let var_3 = var_0;
    return Struct_1(!(!vec4<bool>(all(vec3<bool>(arg_3.a.x, false, var_0.c)), var_0.a.x, any(var_0.a.yx), var_0.c & var_0.a.x)), _wgslsmith_div_u32(max(func_1(Struct_2(vec3<bool>(true, var_0.c, true), 13746u, false, true), vec3<u32>(arg_3.b, var_2.x, arg_3.b), vec4<f32>(636f, -123f, 1064f, 741f)).b, var_0.b), ~var_0.b) >> (countOneBits(4294967295u) % 32u), true, 731f, max(select(abs(2157i), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -1i), -1615i), 0i < -arg_2.x), u_input.a));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -u_input.a;
    var var_1 = _wgslsmith_sub_u32(~arg_0.b, ~func_3(1480f));
    var var_2 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_div_u32(arg_0.b ^ 33882u, 41910u), arg_0.b >> (31626u % 32u), func_3(arg_0.d))), vec3<u32>(1u, _wgslsmith_div_u32(func_4(vec3<u32>(arg_0.b, 2422u, 4294967295u), Struct_2(arg_0.a.xyz, 56217u, arg_0.a.x, arg_0.a.x), Struct_2(arg_0.a.zxz, arg_0.b, arg_0.a.x, arg_0.a.x)), 19533u & arg_0.b), arg_0.b) ^ _wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0.b, arg_0.b, 1u)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 23985u), vec3<u32>(arg_0.b, 25824u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 13409u)), min(vec3<u32>(1u, arg_0.b, arg_0.b), vec3<u32>(0u, 38363u, 60764u)))));
    var var_3 = ~0u;
    var_3 = var_2.x;
    return Struct_2(vec3<bool>((false | arg_0.a.x) || true, true, arg_0.c), 41040u, !arg_0.c | true, arg_0.a.x);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = select(func_5(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, arg_1.b), firstTrailingBit(vec3<u32>(1u, arg_0.b, 1u))) > (~arg_0.b << ((1u ^ arg_0.b) % 32u)), ~reverseBits(arg_1.b >> (arg_0.b % 32u)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.e, 2147483647i, 1i), vec3<i32>(u_input.a, 17292i, 2147483647i)), vec3<i32>(u_input.a, -26502i, 38439i)), Struct_2(vec3<bool>(arg_1.d >= arg_1.d, arg_2.x || true, arg_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, arg_1.b, 59933u) ^ vec3<u32>(1u, arg_0.b, 0u), vec3<u32>(arg_0.b, 4294967295u, 0u) << (vec3<u32>(arg_1.b, 45444u, 0u) % vec3<u32>(32u))), false, !any(arg_0.a))).a.yz, vec2<bool>(false, true | arg_0.c), arg_1.a.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(true, func_4(vec3<u32>(4294967295u, 4294967295u, 46618u), func_1(Struct_2(vec3<bool>(false, false, false), 29364u, false, false), vec3<u32>(1u, 4294967295u, 28464u), vec4<f32>(1462f, -427f, -859f, -398f)), func_1(Struct_2(vec3<bool>(false, true, true), 4294967295u, true, true), vec3<u32>(4294967295u, 4294967295u, 39119u), vec4<f32>(-776f, -1000f, -602f, -1458f))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(11693i, 0i, -49933i), vec3<i32>(u_input.a, u_input.a, 22960i))), func_1(Struct_2(vec3<bool>(false, false, false), 0u, true, true), countOneBits(vec3<u32>(1u, 39770u, 1514u)), vec4<f32>(-1231f, 1000f, -1057f, 728f)))), Struct_1(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), _wgslsmith_div_u32(_wgslsmith_mult_u32(max(9613u, 1u), _wgslsmith_sub_u32(1u, 1u)), 1u), !func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-9534i, u_input.a, u_input.a, 39948i)), Struct_2(vec3<bool>(true, false, true), 1u, true, false)).x, _wgslsmith_f_op_f32(max(1509f, 1f)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a)) >> (func_5(true, ~3919u, vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(vec3<bool>(false, false, true), 33386u, false, true)).b % 32u)), vec3<bool>(-13141i != ~min(u_input.a, -2699i), func_6(Struct_1(vec4<bool>(true, true, true, true), ~14236u, all(vec4<bool>(false, true, true, true)), _wgslsmith_div_f32(-156f, -831f), i32(-1i) * -40686i)).c, true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(vec4<u32>(var_0.b, 1u, var_0.b, var_0.b))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.b), vec2<u32>(var_0.b, var_0.b), max(vec2<u32>(0u, var_0.b), vec2<u32>(var_0.b, var_0.b))) << (vec2<u32>(var_0.b, ~16363u) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.d)), var_0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d)))))));
}

