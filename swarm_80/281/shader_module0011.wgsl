struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(arg_1.b.b - arg_2.b), !select(vec3<bool>(true, true, all(vec4<bool>(false, true, arg_1.b.c.x, true))), !arg_2.c, arg_2.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(221f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1681f, 1000f)) - var_0.b.x) + arg_2.b.x), _wgslsmith_f_op_vec4_f32(ceil(arg_1.b.b)), vec3<bool>(_wgslsmith_f_op_f32(step(-1029f, _wgslsmith_f_op_f32(ceil(-869f)))) <= _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1144f * -1187f))), arg_2.c.x, arg_2.c.x));
    var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_3.x, 992f, arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, var_0.b.x, var_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(375f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b.b.x + arg_3.x), arg_3.x)), arg_3.x, _wgslsmith_f_op_f32(2375f + _wgslsmith_f_op_f32(-var_0.b.x))))), select(select(select(select(var_0.c, var_0.c, false), arg_2.c, true != arg_1.b.a), vec3<bool>(arg_2.a, true, false), vec3<bool>(!arg_2.c.x, var_0.a, any(arg_2.c.zx))), vec3<bool>(var_0.c.x, any(vec3<bool>(arg_2.c.x, var_0.a, arg_2.c.x)), all(!vec4<bool>(var_0.c.x, false, false, false))), arg_2.c));
    return ~_wgslsmith_clamp_u32(1u, ~(~6042u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_sub_u32(u_input.a, u_input.a)) << (u_input.a % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> bool {
    var var_0 = vec3<u32>(1789u, u_input.a, u_input.a);
    var_0 = ~(vec3<u32>(4294967295u, u_input.a, _wgslsmith_sub_u32(~var_0.x, func_3(vec3<i32>(arg_0, -2147483647i, -15759i), Struct_2(arg_2, Struct_1(false, vec4<f32>(arg_2, arg_2, arg_2, 494f), arg_1)), Struct_1(true, vec4<f32>(-1421f, -3093f, arg_2, arg_2), vec3<bool>(false, false, true)), vec3<f32>(1065f, arg_2, arg_2)))) << ((~(~vec3<u32>(u_input.a, 76163u, 86629u)) ^ ~countOneBits(vec3<u32>(57486u, u_input.a, 1u))) % vec3<u32>(32u)));
    var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.a, var_0.x), min(~0u, _wgslsmith_div_u32(38789u, ~1u)), _wgslsmith_mult_u32(firstLeadingBit(abs(min(var_0.x, u_input.a))), var_0.x));
    var_0 = vec3<u32>(select(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, var_0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(var_0.x, var_0.x, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(u_input.a, u_input.a, var_0.x))), arg_1.x), ~countOneBits(72067u), 14057u);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2)), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2));
    return any(vec4<bool>(arg_1.x, any(vec3<bool>(false | arg_1.x, arg_1.x, select(true, arg_1.x, arg_1.x))), -2147483647i > arg_0, any(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))));
}

fn func_1() -> Struct_4 {
    var var_0 = select(!vec4<bool>(true, select(true, 1u >= u_input.a, any(vec2<bool>(false, false))), true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, select(false, false, false), func_2(-17748i, vec3<bool>(true, true, false), -336f)), !(u_input.a <= u_input.a)), select(vec4<bool>(func_2(-11000i, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(max(1204f, 599f))), 25636u < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 1u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), true, false), vec4<bool>(any(vec2<bool>(true, true)), false, 2147483647i < (-31711i << (u_input.a % 32u)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), select(false, true, false) && all(vec2<bool>(false, false)))));
    let var_1 = Struct_4(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(522f))))));
    var_0 = !vec4<bool>(false, var_0.x, all(vec2<bool>(true, !var_1.a)), false);
    var var_2 = ~vec3<u32>(0u, countOneBits(max(u_input.a, firstLeadingBit(u_input.a))), ~25026u);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-177f))))), Struct_1(false, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-648f, var_1.b, var_1.b, 450f), vec4<f32>(1752f, -2402f, 2594f, 1252f))), vec4<f32>(var_1.b, var_1.b, var_1.b, 1402f))))), var_0.xzw));
    return Struct_4(!var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1618f));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = firstLeadingBit(~countOneBits(-arg_0 ^ 40814i));
    var_0 = arg_0;
    var_0 = ~(-3733i);
    var var_1 = u_input.a;
    let var_2 = 4294967295u;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(104f - 276f))) - _wgslsmith_f_op_f32(func_4(1i, func_1(), Struct_1(false, vec4<f32>(-1000f, 1872f, 1290f, 781f), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(198f, -252f, -1049f)))))) <= _wgslsmith_f_op_f32(min(2201f, _wgslsmith_f_op_f32(max(func_1().b, _wgslsmith_f_op_f32(abs(-1430f)))))), -1411f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_div_f32(693f, var_0.b), !var_0.a))))), Struct_1(!var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, 1327f, var_0.b, -1598f) + vec4<f32>(var_0.b, var_0.b, -759f, var_0.b)) * vec4<f32>(var_0.b, 423f, var_0.b, 224f))), select(vec3<bool>(var_0.a | var_0.a, var_0.a, var_0.a), !(!vec3<bool>(false, var_0.a, var_0.a)), select(true, var_0.a, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.b.yyx * _wgslsmith_f_op_vec3_f32(var_1.b.b.zxy - vec3<f32>(-1576f, -1073f, var_0.b)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), -1549f, _wgslsmith_f_op_f32(max(var_1.a, var_1.b.b.x))), var_1.b.b.zwz))));
    let var_3 = _wgslsmith_mult_vec4_i32(countOneBits(-abs(vec4<i32>(-1i, -1i, -18826i, 2147483647i))), firstLeadingBit(vec4<i32>(-50006i, firstLeadingBit(12987i), firstTrailingBit(-5783i), -1i))) >> (reverseBits(~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(60155u, u_input.a, u_input.a, 1u)))) % vec4<u32>(32u));
    let var_4 = var_2.zy;
    let var_5 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-var_3.x & 28015i, select(countOneBits(-1i), firstTrailingBit(2147483647i), var_0.a)), _wgslsmith_clamp_i32(var_3.x, 2147483647i, var_3.x << ((u_input.a << (130562u % 32u)) % 32u)), min(i32(-1i) * -20087i, abs(var_3.x))), 1i, reverseBits(1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.zx, vec4<u32>(u_input.a, (u_input.a << (u_input.a % 32u)) << (33405u % 32u), firstTrailingBit(_wgslsmith_sub_u32(83206u, 1u)), ~1u & ~u_input.a) << (select(abs(vec4<u32>(53203u, 40152u, u_input.a, 1u)), ~abs(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), !select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.b.a, true, var_0.a, var_0.a), vec4<bool>(true, var_1.b.c.x, var_0.a, var_1.b.a))) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(~(~u_input.a), 0u), ~countOneBits(~18395u)));
}

