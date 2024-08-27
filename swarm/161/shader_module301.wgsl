struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<i32, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    global0 = array<Struct_3, 16>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_div_f32(-367f, 126f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))))));
    global0 = array<Struct_3, 16>();
    let var_1 = select(vec4<i32>(-1i) * -vec4<i32>(~arg_0, min(29680i, 15004i), 1i, 1i), ~(-countOneBits(select(vec4<i32>(-1i, u_input.c.x, u_input.c.x, 1i), vec4<i32>(-47576i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.b, arg_0), true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, false))), false)));
    var var_2 = u_input.a;
    return abs(_wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(1u, var_2.x) & vec2<u32>(33825u, 25307u))), select(reverseBits(_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.a.xx)), countOneBits(~vec2<u32>(0u, 0u)), vec2<bool>(true, true)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(76663u, var_2.x, u_input.a.x, 74585u), vec4<u32>(var_2.x, 1u, 18942u, var_2.x)), 47615u << (u_input.a.x % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = ~func_3(~2147483647i).x;
    let var_1 = Struct_2(arg_2.a, all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec3<bool>(false, false, true)))), Struct_1(arg_2.a.a), arg_2.a);
    var var_2 = _wgslsmith_f_op_f32(arg_2.a.a.x - _wgslsmith_f_op_f32(select(-1453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(343f, var_1.c.a.x)), -2351f)) * 370f), var_1.b)));
    var var_3 = arg_2;
    let var_4 = arg_3.x | _wgslsmith_add_u32(2933u, _wgslsmith_mult_u32(firstLeadingBit(abs(u_input.a.x)), func_3(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]).x));
    return !(!vec4<bool>(var_1.b, any(vec3<bool>(var_1.b, var_1.b, true)), any(select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b))), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = reverseBits(~((vec3<u32>(arg_2.x, 1u, 0u) & vec3<u32>(98057u, 27975u, 4294967295u)) ^ min(u_input.a, arg_2.wyx))) & firstLeadingBit(~vec3<u32>(1u, 1u, u_input.a.x));
    var var_1 = abs(~(~_wgslsmith_dot_vec3_u32(var_0, u_input.a)));
    var_1 = _wgslsmith_add_u32(1u, ~(~_wgslsmith_mod_u32(arg_2.x ^ arg_2.x, ~4294967295u)));
    var_1 = ~(~abs(_wgslsmith_dot_vec4_u32(arg_2, arg_2)));
    let var_2 = func_4(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wxy) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.d.a.yxx))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(805f, arg_0.x, arg_3.c.a.x, arg_3.d.a.x), arg_0)))), max(vec2<u32>(arg_2.x, u_input.a.x), ~(~func_3(-30684i))));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(24589u, 29u)], -2119i), min(_wgslsmith_mult_i32(u_input.c.x, 0i), global1[_wgslsmith_index_u32(arg_2.x, 29u)]), global1[_wgslsmith_index_u32(~27914u, 29u)] >> (abs(u_input.a.x) % 32u), u_input.b), vec4<i32>(41337i, -u_input.c.x, -2147483647i ^ (global1[_wgslsmith_index_u32(4294967295u, 29u)] ^ global1[_wgslsmith_index_u32(1u, 29u)]), u_input.b)) >> (vec4<u32>(~_wgslsmith_sub_u32(arg_2.x, arg_2.x) & ~1u, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u)), vec4<u32>(13470u, arg_2.x, arg_2.x, 5445u) | arg_2)), func_3((u_input.c.x & global1[_wgslsmith_index_u32(4294967295u, 29u)]) << (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u)).x, arg_2.x) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-778f - _wgslsmith_f_op_f32(f32(-1f) * -631f)));
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-func_2(arg_1.a.a, arg_1.d.a.xw, vec4<u32>(0u, 4294967295u, 4294967295u, 34867u), Struct_2(arg_1.d, false, Struct_1(arg_1.d.a), Struct_1(vec4<f32>(arg_1.d.a.x, -781f, arg_1.d.a.x, 2081f)))) | select(min(vec4<i32>(46282i, 1i, u_input.c.x, 13457i), vec4<i32>(2147483647i, 0i, 1i, 16829i)), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(49584u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(67367u, 29u)]), !vec4<bool>(arg_1.b, false, true, arg_0)), -vec4<i32>(abs(68735i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 33562i), global1[_wgslsmith_index_u32(~u_input.a.x, 29u)], _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global1[_wgslsmith_index_u32(0u, 29u)], 1i)))), ~(-(~vec4<i32>(u_input.c.x, u_input.b, global1[_wgslsmith_index_u32(66583u, 29u)], -32436i)) & (vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -1i, u_input.b) >> (firstTrailingBit(vec4<u32>(44142u, 0u, 68231u, u_input.a.x)) % vec4<u32>(32u)))));
    global1 = array<i32, 29>();
    global0 = array<Struct_3, 16>();
    return _wgslsmith_f_op_f32(floor(-1716f));
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = ~(vec4<i32>(global1[_wgslsmith_index_u32(~(~4294967295u), 29u)], _wgslsmith_div_i32(max(60208i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), abs(-60969i)), u_input.c.x, u_input.c.x & _wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(93499u, 29u)])) & _wgslsmith_add_vec4_i32(~select(vec4<i32>(-1i, -58887i, global1[_wgslsmith_index_u32(0u, 29u)], u_input.c.x), vec4<i32>(11311i, -7768i, -1i, 2147483647i), vec4<bool>(false, false, false, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -15293i, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]), ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -28629i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.c.x))));
    var var_1 = Struct_2(Struct_1(vec4<f32>(-276f, _wgslsmith_f_op_f32(ceil(arg_1)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(965f, 500f, arg_0))))), true, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1098f, _wgslsmith_f_op_f32(-1512f + -291f), _wgslsmith_f_op_f32(step(arg_1, 748f)), _wgslsmith_f_op_f32(-arg_1))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, 111f, -139f))));
    var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(select(262f, var_1.d.a.x, any(vec4<bool>(true, true, arg_0, true)))), var_1.a.a.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.c.a.x)))), false, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.a + _wgslsmith_div_vec4_f32(var_1.a.a, vec4<f32>(-1000f, -144f, var_1.c.a.x, 1091f))) + _wgslsmith_f_op_vec4_f32(var_1.d.a - vec4<f32>(var_1.c.a.x, -956f, -1724f, var_1.a.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.a.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, var_1.a.a.x, arg_1, -1927f) - var_1.c.a)), var_1.a.a, !select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, false, arg_0))))));
    let var_2 = u_input.a.x;
    global0 = array<Struct_3, 16>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(false, Struct_2(Struct_1(vec4<f32>(315f, -730f, 147f, 1000f)), true, Struct_1(vec4<f32>(305f, 1681f, 1127f, -1268f)), Struct_1(vec4<f32>(-1324f, 246f, -248f, 1055f))), vec2<f32>(1167f, 1663f))), _wgslsmith_f_op_f32(-1000f * -1479f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(672f - 1117f))))));
    let var_1 = var_0.a;
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_2 = 624f;
    let var_3 = firstLeadingBit(-vec3<i32>(56306i, firstLeadingBit(u_input.b), abs(abs(u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, vec3<i32>(_wgslsmith_mult_i32(~u_input.b, firstTrailingBit(19497i)), var_3.x, var_3.x));
}

