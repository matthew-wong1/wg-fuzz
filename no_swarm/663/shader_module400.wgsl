struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> f32 {
    let var_0 = -46474i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f - 309f)) * 1542f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1303f), true)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_add_u32(82908u, u_input.b.x);
    let var_1 = -firstTrailingBit(u_input.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    var var_3 = vec2<i32>(-(~_wgslsmith_clamp_i32(reverseBits(-30523i), i32(-1i) * -4279i, ~u_input.c.x)), -36017i);
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_0.a, 221f, 430f)), vec4<f32>(var_2.x, -1029f, -659f, -162f), true))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-arg_0.a), -379f, arg_0.a));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~41307i, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, u_input.c.x))), vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_i32(min(-u_input.d.zx, _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.d.x, u_input.c.x), u_input.c)), -u_input.d.xz));
    let var_1 = Struct_2(~u_input.b.xy);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-314f + 114f), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -13409i, u_input.d.x, 0i), vec4<i32>(42726i, var_0.x, u_input.c.x, -2147483647i)), true, arg_1.x), any(arg_1)))));
    var var_3 = Struct_1(1293f, abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 12438i, var_0.x, var_0.x), abs(vec4<i32>(36930i, 44988i, -2147483647i, 2147483647i)))) & abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.d.x, var_0.x, -1i, u_input.d.x)) << (vec4<u32>(17353u, 67063u, u_input.e, var_1.a.x) % vec4<u32>(32u))), true, arg_0);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(373f - var_3.a), _wgslsmith_f_op_f32(f32(-1f) * -1278f))))), vec4<i32>(_wgslsmith_div_i32(0i, 23013i), _wgslsmith_div_i32(~(-1i), _wgslsmith_div_i32(var_3.b.x, 2147483647i)) & ~u_input.d.x, 13979i, _wgslsmith_sub_i32(countOneBits(var_3.b.x), 2147483647i)), arg_0, any(select(vec3<bool>(any(vec4<bool>(false, var_3.d, arg_0, var_3.d)), var_2.x != var_3.a, all(vec4<bool>(var_3.d, true, arg_1.x, true))), vec3<bool>(var_3.a == -162f, arg_0, all(vec4<bool>(arg_0, arg_0, true, var_3.c))), vec3<bool>(var_3.c, true, true))));
    return vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_4, true)).x, _wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(-1464f - -1351f)), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(var_4, false)).x, 381f), -538f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_div_u32(abs(min(_wgslsmith_add_u32(u_input.b.x, u_input.a), ~u_input.a)), ((u_input.e >> (u_input.b.x % 32u)) ^ u_input.a) >> (~u_input.a % 32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -624f))), _wgslsmith_f_op_f32(func_1()), -1414f, -1007f);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(false, vec2<bool>(all(vec3<bool>(true, true, true)), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), -693f, _wgslsmith_f_op_f32(var_1.x * 1101f)) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 1172f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-1395f, var_1.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_1.x * -603f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(348f))), _wgslsmith_div_f32(-556f, var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1202f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))));
    var var_2 = countOneBits(~(~vec4<u32>(var_0, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0, 0u), u_input.b), countOneBits(572u))));
    let var_3 = Struct_1(336f, _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(max(-38179i, u_input.d.x), u_input.c.x, u_input.c.x, ~27002i)), min(vec4<i32>(u_input.d.x, u_input.c.x, -2147483647i, -72867i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(30777i, u_input.d.x, 0i, -32059i))) << (vec4<u32>(25004u, 1u, var_2.x << (var_0 % 32u), 4294967295u) % vec4<u32>(32u))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), !(true | any(vec4<bool>(true, true, true, true))));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(step(var_1.x, var_3.a)), var_3.b, select(false, var_3.d, false), true), true)).x, 474f, var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_3.b.x, var_4.x | u_input.d.x)), var_3.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~20537u, 1u & var_0), 0u), u_input.b.zx));
}

