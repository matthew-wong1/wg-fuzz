struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_3(u_input.a);
    var var_1 = Struct_3(select(-2147483647i, i32(-1i) * -1i, true));
    var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_3(select(2147483647i, ~(-2164i), !select(true, true, true)));
    return 1i;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(arg_1, max(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, 2147483647i), -1i, u_input.a) & -7841i, ~(-31594i) >> (arg_0.x % 32u)), vec2<bool>(!(!select(true, true, arg_1)), !all(vec3<bool>(arg_1, arg_1, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-401f))))) >= _wgslsmith_f_op_f32(f32(-1f) * -373f));
    var_0 = Struct_2((firstLeadingBit(62598u) << (~arg_0.x % 32u)) == 1161u, -9927i, vec2<bool>(arg_1, var_0.a), var_0.c.x);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(318f, -826f)), -199f, _wgslsmith_f_op_f32(614f - 1849f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1180f, -219f, -1604f), vec3<f32>(1309f, 1894f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, -760f, 556f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1119f, 730f, 1938f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2272f, 1458f, -645f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-153f, 1646f, -2030f) - vec3<f32>(-1206f, -510f, 308f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), -1000f, 224f));
    var_0 = Struct_2(any(var_0.c), u_input.a, var_0.c, var_0.d);
    return Struct_3(abs(_wgslsmith_mod_i32(-26133i, 1i ^ ~arg_2.x)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), ~u_input.a), vec2<i32>(abs(~31654i), ~u_input.a)), u_input.a, _wgslsmith_sub_i32(u_input.a, -5446i));
    var var_1 = _wgslsmith_div_u32(0u, 1u ^ max(reverseBits(50834u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 7030u, 42863u), vec4<u32>(42671u, 4294967295u, 13703u, 77812u)) << (47410u % 32u)));
    let var_2 = func_3(firstLeadingBit(vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(16663u, 0u)))), !(!select(false, all(vec2<bool>(true, false)), !arg_0)), vec4<i32>(2147483647i, -u_input.a, func_2(select(vec3<i32>(-2147483647i, 30172i, 49353i), ~vec3<i32>(1656i, -10256i, 0i), true)), -countOneBits(-u_input.a)));
    return Struct_3(-62189i);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = vec3<u32>(1u, reverseBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 96921u), ~vec2<u32>(4294967295u, 0u))), 1u);
    var_0 = vec3<u32>(var_0.x, 0u, var_0.x | var_0.x);
    var var_1 = true;
    var_1 = ~u_input.a < u_input.a;
    let var_2 = ~vec3<i32>(-u_input.a, min(11067i, 1i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_1.a.a, 2147483647i), -vec3<i32>(2147483647i, 0i, 2147483647i)), u_input.a));
    return arg_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = ~7593u;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 4277i, arg_0.a), vec4<i32>(-1i, arg_0.a, -15726i, u_input.a)), countOneBits(vec4<i32>(u_input.a, arg_0.a, u_input.a, 3069i))), select(vec4<i32>(5882i, 13439i, -2147483647i, 27647i), vec4<i32>(-2147483647i, arg_0.a, arg_0.a, arg_0.a), false) << (reverseBits(vec4<u32>(16789u, 58043u, var_0, var_0)) % vec4<u32>(32u))) << (~var_0 % 32u), func_3(vec2<u32>(~30370u, ~(~47616u)), true, _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_0.a, 0i, 2147483647i, u_input.a)), reverseBits(vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a)), ~countOneBits(vec4<i32>(2147483647i, arg_0.a, u_input.a, -1044i)))).a, ~func_3(select(vec2<u32>(24373u, var_0), vec2<u32>(4294967295u, var_0), vec2<bool>(true, true)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, var_0), vec2<u32>(var_0, 30358u)), true, _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.a, -1i, arg_0.a)), firstLeadingBit(vec4<i32>(0i, u_input.a, 0i, -2147483647i)))).a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-u_input.a, arg_0.a, abs(u_input.a), 1i)), firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, -16068i, u_input.a) >> (vec4<u32>(74298u, var_0, 11268u, var_0) % vec4<u32>(32u)))));
    let var_2 = all(vec2<bool>(true, true));
    return Struct_1(~_wgslsmith_clamp_u32(~(77580u & var_0), 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(607u, var_0), vec2<u32>(var_0, var_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 15624u), vec2<u32>(0u, 1u), vec2<u32>(1511u, var_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1295f, arg_1)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-1394f * 757f), 1000f, arg_2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_1, arg_2.x)))), select(any(!vec3<bool>(var_2, false, false)), true, any(select(select(vec2<bool>(true, false), vec2<bool>(var_2, true), true), vec2<bool>(var_2, var_2), all(vec2<bool>(false, var_2))))), 25188u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(-867f, Struct_4(Struct_3(_wgslsmith_add_i32(1i, u_input.a)), all(vec4<bool>(false, false, true, true)) & false, func_1(false)), vec2<bool>(!all(vec4<bool>(true, true, true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(428f, -378f, false)), 935f)), -1000f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1445f, 1863f, -883f))));
    var_0 = func_5(func_1(true == var_0.c), var_0.b.x, var_0.b.zyw);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), -422f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, -1702f))))) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-436f, 653f, var_0.c)) + -2161f))));
    var var_2 = Struct_1(48302u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(1854f + var_1.x)), _wgslsmith_f_op_f32(floor(-647f)), -237f, -759f), vec4<f32>(_wgslsmith_f_op_f32(max(1f, 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), 199f, _wgslsmith_f_op_f32(f32(-1f) * -403f))), select(select(!(!var_0.c), ~u_input.a >= (2147483647i ^ u_input.a), var_0.c), (-2147483647i << (var_0.d % 32u)) != _wgslsmith_add_i32(-1i, u_input.a), func_5(Struct_3(0i), 995f, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, 119f, 511f), vec3<f32>(var_1.x, var_1.x, var_1.x))).c || false), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(reverseBits(var_0.a), 74185u) & 4294967295u));
    var var_3 = vec3<bool>(var_2.c, var_0.c, !var_0.c);
    var var_4 = _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

