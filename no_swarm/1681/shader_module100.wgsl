struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = 38633i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1671f, arg_2) - 1257f))), 672f)) - arg_2);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = 1u;
    let var_1 = arg_0.a.b.yw;
    var var_2 = arg_0.a;
    var var_3 = -vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2.xzx, vec3<i32>(u_input.a.x, -2959i, -2147483647i))), countOneBits(_wgslsmith_mult_i32(-25856i, -42652i))), -u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -29540i, 0i) ^ vec3<i32>(-1i, arg_2.x, 2147483647i), ~arg_2.xwy & vec3<i32>(-1228i, u_input.a.x, 41543i)));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(func_3(0u, vec4<i32>(u_input.a.x, -39799i, 0i, 11824i), arg_0.a.a.x, Struct_3(arg_2))), -678f))), !select(vec4<bool>(true, true, arg_0.a.b.x, arg_0.a.b.x), select(!vec4<bool>(var_2.b.x, var_1.x, var_2.b.x, var_1.x), !vec4<bool>(var_2.b.x, arg_0.a.b.x, false, true), -1765f > arg_0.a.a.x), arg_0.a.b), vec3<u32>(~arg_0.a.c.x, min(_wgslsmith_clamp_u32(var_0 ^ 54475u, _wgslsmith_clamp_u32(4294967295u, arg_0.a.c.x, 4294967295u), arg_1), ~1u), ~var_0 & arg_1));
    return Struct_4(Struct_3(max(-vec4<i32>(var_3.x, -1i, arg_2.x, -1i) & arg_2, -(~vec4<i32>(-5634i, 2147483647i, arg_2.x, 3681i)))), arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, 1000f, var_2.a.x, var_2.a.x) * vec4<f32>(var_2.a.x, -521f, -792f, -1195f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -689f, arg_0.a.a.x, -1000f)))), Struct_3(arg_2), _wgslsmith_add_vec2_u32(min(~var_2.c.yz, _wgslsmith_div_vec2_u32(firstTrailingBit(arg_0.a.c.yy), ~var_2.c.xy)), vec2<u32>(select(arg_0.a.c.x & 31672u, _wgslsmith_dot_vec3_u32(arg_0.a.c, vec3<u32>(6247u, var_2.c.x, var_2.c.x)), false), 1u ^ _wgslsmith_sub_u32(23109u, var_0))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4) -> vec4<bool> {
    return select(arg_2.b.b, select(!(!arg_1.b.b), select(arg_1.b.b, vec4<bool>(all(vec3<bool>(false, true, arg_1.b.b.x)), all(arg_1.b.b.xz), arg_1.b.b.x, true), arg_1.b.b), (~0u ^ (arg_1.e.x ^ 0u)) <= (~4294967295u | arg_1.e.x)), arg_1.b.b.x & arg_1.b.b.x);
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(step(-1000f, 1893f))), -203f), select(func_4(vec4<i32>(u_input.a.x, 0i, -2147483647i, 0i), Struct_4(Struct_3(vec4<i32>(-48882i, u_input.a.x, u_input.a.x, -23310i)), Struct_1(vec3<f32>(-381f, -2082f, -939f), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 925u, 3699u)), vec4<f32>(130f, 1639f, -529f, 1953f), Struct_3(vec4<i32>(-2147483647i, u_input.a.x, -5942i, -1i)), vec2<u32>(4294967295u, 23986u)), func_2(Struct_2(Struct_1(vec3<f32>(877f, 352f, -101f), vec4<bool>(false, false, false, true), vec3<u32>(25496u, 1u, 35412u))), 90480u, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -1i))), func_4(func_2(Struct_2(Struct_1(vec3<f32>(837f, -128f, -152f), vec4<bool>(true, true, false, true), vec3<u32>(1u, 0u, 10304u))), 0u, vec4<i32>(2147483647i, -26289i, -64133i, -1i)).a.a, Struct_4(Struct_3(vec4<i32>(1i, 36005i, u_input.a.x, u_input.a.x)), Struct_1(vec3<f32>(1439f, -787f, -119f), vec4<bool>(false, false, true, false), vec3<u32>(44456u, 4294967295u, 1u)), vec4<f32>(1004f, 1000f, -1000f, 414f), Struct_3(vec4<i32>(u_input.a.x, 18007i, -23319i, u_input.a.x)), vec2<u32>(4294967295u, 4294967295u)), func_2(Struct_2(Struct_1(vec3<f32>(-1588f, -244f, -1554f), vec4<bool>(false, true, false, false), vec3<u32>(1u, 45732u, 1u))), 17799u, vec4<i32>(-2147483647i, u_input.a.x, -19454i, u_input.a.x))), vec4<bool>(true, true, true, true)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(16165u, 0u, 0u)))));
    let var_1 = ~max(vec4<u32>(abs(var_0.a.c.x) >> (~var_0.a.c.x % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.c.x, 4294967295u, 4294967295u, var_0.a.c.x), ~vec4<u32>(var_0.a.c.x, var_0.a.c.x, 10107u, var_0.a.c.x)), 1u ^ min(var_0.a.c.x, var_0.a.c.x), _wgslsmith_div_u32(1u, ~var_0.a.c.x)), max(~(vec4<u32>(0u, 91061u, var_0.a.c.x, 22715u) & vec4<u32>(4294967295u, 30887u, var_0.a.c.x, 1u)), ~firstLeadingBit(vec4<u32>(var_0.a.c.x, var_0.a.c.x, 59352u, var_0.a.c.x))));
    var var_2 = func_2(Struct_2(var_0.a), 7683u, func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(var_0.a.a, vec3<f32>(-515f, var_0.a.a.x, var_0.a.a.x))), select(var_0.a.b, vec4<bool>(var_0.a.b.x, true, true, var_0.a.b.x), true), ~vec3<u32>(var_1.x, var_0.a.c.x, var_1.x))), var_0.a.c.x, max(vec4<i32>(27439i, select(-10002i, -362i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a), -28735i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 62249i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, 22844i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -48508i, 0i)), vec4<i32>(1i, 700i, u_input.a.x, u_input.a.x)))).d.a).a;
    var_2 = Struct_3(abs(-var_2.a));
    let var_3 = func_2(Struct_2(Struct_1(var_0.a.a, !var_0.a.b, ~countOneBits(var_0.a.c))), _wgslsmith_dot_vec4_u32(var_1, firstLeadingBit(vec4<u32>(4294967295u, 0u, var_0.a.c.x, 31439u) << (var_1 % vec4<u32>(32u)))) ^ var_0.a.c.x, vec4<i32>(var_2.a.x, 2147483647i, -_wgslsmith_div_i32(-5306i, 7275i), 1i) ^ vec4<i32>(~(-1158i), ~_wgslsmith_add_i32(var_2.a.x, u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.a.xxw, var_2.a.xxx), u_input.a.x), func_2(Struct_2(var_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_0.a.c.x), vec2<u32>(1u, var_1.x)), var_2.a).a.a.x)).d;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(1047f - var_0.a.a.x), 811f, _wgslsmith_f_op_f32(trunc(var_0.a.a.x)), _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-var_0.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.a.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.a.x - 1779f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(3031f - -300f), -2598f, -415f) * _wgslsmith_f_op_vec4_f32(func_1())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2290f, 163f, 104f, -907f)) - vec4<f32>(_wgslsmith_f_op_f32(min(707f, -1000f)), _wgslsmith_f_op_f32(1173f + 1430f), -221f, 645f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1491f, -1212f, -1000f, 1299f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(234f, 194f, -1155f, 2143f))))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1085f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 1000f), _wgslsmith_f_op_f32(ceil(-825f))))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) * _wgslsmith_f_op_f32(step(192f, _wgslsmith_f_op_f32(floor(var_0.x)))))), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~23462u, _wgslsmith_mult_u32(0u, 31291u), _wgslsmith_add_u32(36753u, 70176u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 27691u, 143360u), vec3<u32>(1u, 1u, 1u)) ^ vec3<u32>(~18874u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 59868u), vec3<u32>(1u, 1u, 4294967295u)), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_dot_vec2_i32(~((vec2<i32>(2147483647i, 15932i) ^ u_input.a) | _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-12219i, -44819i))), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, 0i)), u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_1.a.x), var_1.a.x, 1383f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.xzx, var_0.zwz)), var_1.a, false))), abs(var_1.c));
}

