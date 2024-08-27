struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-1486i, -10745i, -30020i, 1i, i32(-2147483648), 3835i, 25638i, 29573i, i32(-2147483648), -41839i, 1i, 1146i, 52296i, -4321i, 1i, i32(-2147483648), -31141i, 4456i, 1i, -1i, -11184i);

var<private> global1: i32 = -59372i;

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(1u, arg_1 ^ u_input.d)), 21u)], arg_0.x, vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1059f, 1f))));
    var var_1 = select(vec3<bool>(any(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), reverseBits(abs(global0[_wgslsmith_index_u32(4776u, 21u)])) < 26573i, any(vec3<bool>(true, !var_0.c.x, !var_0.c.x))), select(vec3<bool>(true, false, true), vec3<bool>(arg_1 <= _wgslsmith_sub_u32(arg_1, u_input.b.x), _wgslsmith_f_op_f32(trunc(557f)) == _wgslsmith_f_op_f32(trunc(var_0.d)), true), vec3<bool>(true, var_0.c.x, var_0.c.x)), var_0.c.x);
    var var_2 = Struct_1(~1i, max(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, var_0.a), u_input.c), abs(-1i)), ~_wgslsmith_div_i32(u_input.a.x, arg_0.x) << (u_input.d % 32u)), vec2<bool>(true, select(true, true, _wgslsmith_div_i32(1i, -2147483647i) > min(u_input.a.x, arg_0.x))), 515f);
    var var_3 = !var_1.x;
    let var_4 = arg_0.wwz;
    return ~max(_wgslsmith_mult_u32(arg_1, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, 19282u, 4294967295u), vec4<u32>(4294967295u, arg_1, arg_1, 0u)), 25302u, reverseBits(1u))), _wgslsmith_mult_u32(select(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.d), var_0.c.x), min(max(30704u, 4294967295u), abs(u_input.d))));
}

fn func_2(arg_0: bool) -> u32 {
    return func_3(u_input.a, ~u_input.d);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec4<u32> {
    global2 = array<Struct_4, 24>();
    let var_0 = Struct_4(any(select(vec4<bool>(any(vec2<bool>(true, false)), true, true, true), vec4<bool>(false, any(vec2<bool>(true, false)), true, any(vec4<bool>(false, false, false, false))), true)));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, ~(~(17880u | u_input.b.x))), u_input.b);
    var_1 = abs(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_1.x, u_input.d)), vec2<u32>(0u, firstLeadingBit(u_input.d))));
    global1 = 15028i;
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(select(~33110u, reverseBits(6000u), any(vec4<bool>(var_0.a, false, false, var_0.a))), ~(~var_1.x), 0u, 3372u), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 7043u, var_1.x, 1u), vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)) | ~vec4<u32>(var_1.x, u_input.b.x, 4294967295u, var_1.x), ~select(vec4<u32>(var_1.x, 1u, var_1.x, 59409u), vec4<u32>(var_1.x, 47367u, 55245u, u_input.d), false), vec4<u32>(var_1.x ^ u_input.b.x, ~56916u, ~var_1.x, 16851u)), min(vec4<u32>(0u, 56090u, var_1.x, u_input.b.x), ~vec4<u32>(2537u, var_1.x, var_1.x, var_1.x)) & (select(vec4<u32>(84640u, u_input.d, 17601u, 1u), vec4<u32>(88827u, u_input.d, 41147u, var_1.x), vec4<bool>(true, var_0.a, false, var_0.a)) >> (min(vec4<u32>(var_1.x, 57578u, var_1.x, 42988u), vec4<u32>(0u, u_input.b.x, u_input.d, 1u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(106621u, 1u), 58612u, 0u, 1u), ~countOneBits(vec4<u32>(var_1.x, u_input.b.x, 10356u, 7087u)), vec4<u32>(0u, reverseBits(31784u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 81883u, var_1.x, 57984u), vec4<u32>(5847u, var_1.x, var_1.x, u_input.b.x)), 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, 0u), vec3<u32>(32254u, u_input.d, u_input.d)), 1u, u_input.b.x, 17394u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d, 0u, var_1.x), vec4<u32>(u_input.d, u_input.d, var_1.x, 13815u)), abs(vec4<u32>(1u, 8250u, 4294967295u, 0u)))) >> (((~vec4<u32>(1u, 1u, 65835u, 0u) ^ firstLeadingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.d))) >> (abs(~vec4<u32>(var_1.x, var_1.x, 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = func_4(u_input.c.x, vec4<i32>(global0[_wgslsmith_index_u32(max(func_2(true), abs(u_input.b.x)) ^ _wgslsmith_mult_u32(~u_input.d, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.d)), 21u)], _wgslsmith_div_i32(~(-38905i), -1i), _wgslsmith_mult_i32(-(~(-2576i)), _wgslsmith_sub_i32(84829i, ~u_input.a.x)), 52475i));
    var var_1 = -1i;
    global0 = array<i32, 21>();
    var var_2 = vec2<f32>(1247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1479f)), -1093f)), var_2.x, _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(137f, var_2.x, var_2.x), vec3<f32>(-1212f, var_2.x, 1024f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(210f, -271f, var_2.x)))))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 2059f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(259f + var_2.x)))))));
    return 832f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false, _wgslsmith_f_op_f32(f32(-1f) * -602f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2498f))));
    var var_1 = var_0.x;
    var var_2 = ~(vec3<u32>(0u, u_input.b.x, ~18915u) << (reverseBits(max(vec3<u32>(13791u, 0u, 17748u), ~vec3<u32>(4294967295u, u_input.d, u_input.d))) % vec3<u32>(32u)));
    var var_3 = !var_0.zy;
    var var_4 = Struct_1(-34915i << (var_2.x % 32u), 30499i | firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(35916u, _wgslsmith_sub_u32(var_2.x, 63478u)), 21u)]), select(vec2<bool>(true, true), var_0.zy, 892f >= _wgslsmith_f_op_f32(func_1())), _wgslsmith_div_f32(2541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f - -196f) + -1000f))));
    var_1 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_2(var_4.c.x)) | min(20267u, ~max(0u, 89069u)), _wgslsmith_f_op_f32(f32(-1f) * -569f), 0u, var_2.x << (var_2.x % 32u));
}

