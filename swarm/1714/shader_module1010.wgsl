struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> u32 {
    global0 = arg_0.d;
    var var_0 = arg_2.e.zw;
    var_0 = arg_2.e.yy;
    var var_1 = 3949u;
    var var_2 = ~_wgslsmith_sub_u32(arg_0.c, ~(~select(25918u, 1u, arg_2.e.x)));
    return _wgslsmith_add_u32(arg_0.a.x, arg_0.c);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(max(countOneBits(vec2<u32>(firstTrailingBit(8051u), max(4294967295u, 0u))), abs(~abs(vec2<u32>(u_input.b, 0u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 14762u), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 44205u), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(~39578u, u_input.c))));
    global0 = !select(true, 69898u >= max(~u_input.c, _wgslsmith_sub_u32(u_input.c, 4294967295u)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false), false)));
    var_0 = ~reverseBits(func_3(Struct_1(vec3<u32>(4294967295u, 0u, 41890u), vec4<u32>(4604u, u_input.b, u_input.b, 0u), 4294967295u, false, vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a), true), Struct_3(false, 5470u, vec3<f32>(-1407f, -183f, 542f), u_input.a, vec4<bool>(false, true, true, true)))) & 1u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -568f);
    global0 = true;
    return Struct_3(any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, false), true)), max(firstLeadingBit(4294967295u), ~44751u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, 2218f, _wgslsmith_f_op_f32(1513f + 443f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(252f, 172f), -689f, _wgslsmith_f_op_f32(trunc(-936f)))))), -2147483647i, vec4<bool>(false, false, true, false));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = !select(arg_1.e.xy, arg_1.e.xz, arg_1.a);
    var var_1 = func_2();
    var_0 = vec2<bool>(!arg_1.a, any(func_2().e.zyw));
    var var_2 = abs(~arg_1.d);
    let var_3 = var_1.c;
    return Struct_2(Struct_1(vec3<u32>(abs(1u), ~countOneBits(0u), 10321u), ~(~(vec4<u32>(u_input.b, var_1.b, 4294967295u, var_1.b) ^ vec4<u32>(arg_1.b, 0u, 35303u, u_input.c))), 1u, arg_1.a, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, arg_1.d), 2147483647i, select(u_input.a, 1i, var_0.x)), ~(~(-36124i)), _wgslsmith_div_i32(countOneBits(-2147483647i), var_1.d & 5861i), abs(-u_input.a))), ~20096u, arg_1.e.x, var_1.e.xw);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_1.a.e.x;
    var var_1 = !(!(!vec3<bool>(true, true, arg_1.b >= 4294967295u)));
    let var_2 = func_4(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.b.x, _wgslsmith_clamp_u32(reverseBits(arg_2.c), arg_2.c, _wgslsmith_mult_u32(8449u, arg_1.a.a.x)), u_input.b), arg_2.b.yzw), Struct_3(func_2().a, arg_2.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1477f, 1000f, -586f) - vec3<f32>(247f, -1521f, 857f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(931f, 1092f, 1084f) - vec3<f32>(-1764f, -1509f, 1071f)), true))), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.e.x, 0i, -2147483647i), vec4<i32>(2147483647i, arg_1.a.e.x, 10375i, arg_1.a.e.x)), arg_1.a.e.x >> (42219u % 32u)), vec4<bool>(select(!arg_0.x, arg_1.d.x, any(vec2<bool>(var_1.x, arg_0.x))), true, arg_0.x, any(!vec3<bool>(arg_2.d, arg_1.d.x, var_1.x)))));
    var var_3 = arg_0.x;
    var_1 = func_2().e.ywy;
    return func_2();
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> bool {
    global0 = any(vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -2412f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1237f)) + -540f), true, !((arg_0 || arg_0) | all(vec2<bool>(arg_0, true)))));
    var var_0 = func_5(!(!vec2<bool>(!arg_0, !arg_0)), func_4((vec3<u32>(u_input.b, 44263u, u_input.b) & ~vec3<u32>(4294967295u, 1u, u_input.c)) >> (abs(vec3<u32>(1u, 52598u, 1u)) % vec3<u32>(32u)), func_2()), Struct_1(~(firstTrailingBit(vec3<u32>(1u, 0u, u_input.c)) ^ (vec3<u32>(u_input.c, u_input.c, 88947u) >> (vec3<u32>(u_input.b, u_input.c, 23720u) % vec3<u32>(32u)))), abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 30040u, u_input.c, u_input.c), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 2620u, u_input.c)))), func_3(func_4(vec3<u32>(71550u, u_input.b, 11051u), Struct_3(arg_0, u_input.b, vec3<f32>(1000f, 377f, -135f), arg_1.x, vec4<bool>(true, false, arg_0, false))).a, ~vec2<i32>(u_input.a, -1i), Struct_3(arg_0, 8031u, vec3<f32>(577f, -1000f, 404f), 11365i, vec4<bool>(arg_0, false, false, arg_0))) & _wgslsmith_add_u32(~1467u, u_input.b), arg_0, -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(11645i, -4112i, -2147483647i, -23119i), vec4<i32>(64276i, u_input.a, u_input.a, u_input.a)))));
    let var_1 = vec2<i32>(i32(-1i) * -2147483647i, -20840i);
    let var_2 = Struct_2(Struct_1(vec3<u32>(68143u >> (var_0.b % 32u), 45437u, _wgslsmith_mult_u32(113531u, var_0.b)) | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 4294967295u, var_0.b)), vec3<u32>(4294967295u, var_0.b, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.b, 9785u), vec3<u32>(4294967295u, var_0.b, u_input.b))), firstLeadingBit(firstLeadingBit(max(vec4<u32>(0u, var_0.b, 31209u, u_input.b), vec4<u32>(var_0.b, 12955u, 0u, u_input.c)))), ~(0u & min(var_0.b, var_0.b)), !var_0.e.x, -reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, 61427i, 42031i), vec4<i32>(-20998i, -1i, -1i, -1i), vec4<i32>(2147483647i, arg_1.x, var_0.d, u_input.a)))), u_input.b, var_0.a, vec2<bool>(arg_0, !(true || var_0.a) | true));
    var var_3 = abs(firstLeadingBit(var_0.b));
    return !(!var_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!select(vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec2<bool>(true, true)), false), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), func_1(true, vec2<i32>(-79737i, u_input.a)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))));
    var var_0 = abs(min(max(~(-1i), -u_input.a), u_input.a));
    var var_1 = !select(!vec3<bool>(false, true, select(false, true, true)), func_5(vec2<bool>(true, true), Struct_2(Struct_1(vec3<u32>(0u, u_input.b, u_input.c), vec4<u32>(u_input.b, 110222u, u_input.b, 0u), 0u, false, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 34379u, true, vec2<bool>(true, true)), func_4(select(vec3<u32>(u_input.b, 41760u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b), false), Struct_3(false, 0u, vec3<f32>(539f, 401f, 526f), -30820i, vec4<bool>(true, false, true, true))).a).e.yzx, !func_2().e.yzw);
    let var_2 = func_4(vec3<u32>(0u, u_input.c, ~_wgslsmith_sub_u32(select(u_input.c, 6469u, false), 1u)), func_2()).a;
    let var_3 = ~var_2.e.zyz | var_2.e.xww;
    var_0 = 1i & (~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -46708i, var_3.x, var_3.x), min(var_2.e, vec4<i32>(var_3.x, 2147483647i, -1i, -2147483647i))) << (var_2.c % 32u));
    var var_4 = Struct_3(true, _wgslsmith_mod_u32(var_2.a.x, u_input.c) | u_input.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(638f, -877f, var_1.x)) * _wgslsmith_f_op_f32(703f - -1883f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-903f, -2351f, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), -302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(363f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-622f)), _wgslsmith_f_op_f32(f32(-1f) * -512f)))), 0i, !vec4<bool>(!(!var_2.d), func_2().c.x > -1103f, select(any(vec2<bool>(var_2.d, var_2.d)), true, true), false));
    var var_5 = Struct_3(any(!vec2<bool>(var_1.x, func_5(var_1.xz, Struct_2(Struct_1(vec3<u32>(4294967295u, var_2.b.x, 109954u), vec4<u32>(u_input.b, 29217u, u_input.c, 0u), 1u, true, vec4<i32>(0i, -2147483647i, var_2.e.x, var_2.e.x)), var_2.a.x, var_4.a, vec2<bool>(false, false)), var_2).e.x)), ~var_4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, 1765f, _wgslsmith_f_op_f32(trunc(1f)))), var_2.e.x, func_2().e);
    let var_6 = _wgslsmith_f_op_f32(var_5.c.x * _wgslsmith_f_op_f32(ceil(-1993f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(var_5.c.xz)));
}

