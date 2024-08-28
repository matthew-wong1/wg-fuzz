struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32 = -813f;

var<private> global2: f32 = -395f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    return vec3<bool>(arg_1, false, arg_1);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = select(select(select(vec3<bool>(!arg_1.x, all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(121f, 729f))), arg_1.x, vec4<i32>(2147483647i, 0i, u_input.a, arg_0.a)), select(select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, true), vec3<bool>(false, true, arg_1.x)), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, false)), select(arg_1.x, false, arg_1.x))), !(!(!vec3<bool>(true, arg_1.x, false))), any(!func_3(vec2<f32>(-1556f, -875f), false, vec4<i32>(0i, arg_0.a, 13296i, 2147483647i)))), !(!func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1798f, -1737f)), all(vec4<bool>(false, arg_1.x, true, false)), vec4<i32>(arg_2.a, arg_2.a, arg_0.a, arg_0.a))), true);
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a, 1i, 19293i), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-18249i, -2147483647i), vec2<i32>(u_input.a, arg_0.a)), i32(-1i) * -269i)), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), arg_0.b, all(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, 1000f) + vec2<f32>(-1859f, 495f)), true, ~vec4<i32>(u_input.a, -15595i, -39127i, arg_0.a))), abs(vec4<i32>(arg_2.a, u_input.d, -1i, -arg_2.a))));
    var var_2 = arg_2;
    var var_3 = select(vec2<bool>(true, true), var_1.a.b.wx, true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 1883f)) - 1f);
    return u_input.c.ww;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_4) -> vec4<bool> {
    global0 = ~arg_0.x;
    global0 = 45339u;
    var var_0 = select(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.x, 14527u), u_input.c.xw), arg_0.wz), _wgslsmith_mult_vec2_u32(~func_2(Struct_2(0i, vec4<u32>(4294967295u, 1u, 14225u, arg_0.x)), arg_1, Struct_2(1884i, vec4<u32>(66262u, arg_0.x, 112277u, 0u))), u_input.c.zw)), vec2<u32>(~(~_wgslsmith_mult_u32(1u, 0u)), ~u_input.c.x), vec2<bool>((38478i > u_input.a) & true, any(vec3<bool>(arg_1.x, true, !arg_1.x))));
    let var_1 = -_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_2.a, arg_2.a), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-1i, u_input.a, arg_2.a)) >> (arg_0.zxw % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, u_input.e.x, 12143i), arg_2.a), -1i, arg_2.a));
    var var_2 = Struct_1(~(arg_2.a >> (~41812u % 32u)), select(vec4<bool>(true, all(vec3<bool>(false, true, arg_1.x)), arg_1.x || (arg_1.x == true), u_input.c.x > func_2(Struct_2(-2147483647i, u_input.c), arg_1, Struct_2(var_1, vec4<u32>(arg_0.x, var_0.x, 1u, 1u))).x), !(!vec4<bool>(arg_1.x, false, arg_1.x, true)), !vec4<bool>(!arg_1.x, select(arg_1.x, false, arg_1.x), false, true)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(329u, 10837u), countOneBits(var_0.x), u_input.c.x ^ 12680u, ~37393u), ~vec4<u32>(u_input.c.x, 1u, 14709u, 16863u)), !(!arg_1.x), _wgslsmith_div_vec4_i32(-abs(vec4<i32>(-47305i, -2147483647i, u_input.a, 12505i)), vec4<i32>(var_1, max(0i, u_input.a), -9563i, _wgslsmith_mod_i32(-1i, u_input.e.x))) & reverseBits(vec4<i32>(-var_1, 44005i, 1i ^ arg_2.a, arg_2.a)));
    return var_2.b;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global0 = ~(~countOneBits(~reverseBits(arg_0.c.x)));
    return Struct_4(firstTrailingBit(arg_0.e.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.e.x, u_input.a), firstTrailingBit(vec3<i32>(arg_0.x, 2147483647i, u_input.e.x))), 1i), vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, false), vec4<u32>(func_2(Struct_2(-1i, vec4<u32>(arg_2, u_input.c.x, u_input.c.x, arg_2)), vec2<bool>(false, true), Struct_2(2147483647i, u_input.c)).x, 0u, 71741u << (_wgslsmith_div_u32(arg_2, arg_2) % 32u), ~(~arg_2)), any(vec4<bool>(51427i != arg_1.a, true, arg_3.x <= arg_3.x, true)), ~(-vec4<i32>(2147483647i, arg_1.a, arg_1.a, arg_0.x) & reverseBits(vec4<i32>(u_input.d, -31852i, u_input.d, arg_1.a)))));
    var var_1 = countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(arg_2, var_0.a.c.x, 4294967295u), vec3<u32>(1u, 48607u, u_input.c.x)), ~vec3<u32>(arg_2, u_input.c.x, 33613u)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(3358u, u_input.c.x), _wgslsmith_clamp_u32(arg_2, u_input.c.x, var_0.a.c.x)), ~1u, 56125u));
    var_1 = var_0.a.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(arg_3));
    var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~83464u, arg_2 ^ (u_input.c.x | arg_2), firstLeadingBit(105945u), var_0.a.c.x) >> (vec4<u32>(0u, var_0.a.c.x, 1u, abs(~4294967295u)) % vec4<u32>(32u)), ~(~u_input.c));
    return Struct_1(var_0.a.e.x, !select(select(func_1(var_0.a.c, vec2<bool>(var_0.a.b.x, false), arg_1), !vec4<bool>(true, false, var_0.a.b.x, false), any(vec4<bool>(var_0.a.d, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))), var_0.a.b, !vec4<bool>(false, true, var_0.a.d, var_0.a.d)), vec4<u32>(_wgslsmith_mult_u32(var_0.a.c.x, firstLeadingBit(25379u) << ((arg_2 | 4294967295u) % 32u)), ~(~var_1.x), firstLeadingBit(4294967295u), ~arg_2), var_0.a.d, abs(-var_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b.x, -_wgslsmith_mod_i32(-11077i, 33978i), _wgslsmith_add_i32(0i, 1i), u_input.e.x << (~(~u_input.c.x) % 32u)) << (abs(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz << (vec2<u32>(6084u, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x, 1u, _wgslsmith_mult_u32(u_input.c.x, firstLeadingBit(u_input.c.x)))) % vec4<u32>(32u));
    global1 = 347f;
    let var_1 = Struct_3(func_5(vec3<i32>(abs(abs(var_0.x)), u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.e.x), -u_input.b)), func_4(Struct_1(firstLeadingBit(var_0.x), func_1(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x), vec2<bool>(false, false), Struct_4(-2147483647i)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 15920u, 12110u), u_input.c), true, abs(vec4<i32>(0i, u_input.a, var_0.x, var_0.x)))), reverseBits(max(u_input.c.x, u_input.c.x) ^ ~12950u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, 1080f, -574f, -1090f)))))));
    var var_2 = var_1.a.d;
    let var_3 = any(!(!(!(!var_1.a.b.zy))));
    global2 = _wgslsmith_f_op_f32(select(-1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1333f) - _wgslsmith_f_op_f32(ceil(-527f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(497f, -470f) * _wgslsmith_f_op_f32(-332f + 1094f))) + -1000f), var_1.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x, u_input.c.x, ~(~(var_1.a.c.x >> (10610u % 32u))), ~(var_1.a.c.x & 0u) >> (4294967295u % 32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~firstLeadingBit(var_1.a.c.zx), u_input.c.xy), abs(u_input.c.xy)));
}

