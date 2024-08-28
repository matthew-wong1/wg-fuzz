struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1697f, -1701f, -734f, -680f, -1403f, -1325f, 134f, 193f, -587f, -418f, -560f, 2261f, -1431f, -2112f, 895f, -1322f, -332f, 677f, 515f, -2329f, -1381f, 678f, 887f, 570f, -1339f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(reverseBits(arg_0)), ~vec3<u32>(26546u, arg_0.x, arg_0.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(50402u, 14744u)), _wgslsmith_dot_vec2_u32(vec2<u32>(443u, u_input.a.x), vec2<u32>(30915u, u_input.a.x)), ~u_input.a.x)), arg_0), 0u), 25u)];
    global0 = array<f32, 25>();
    var var_1 = ~(-(~abs(_wgslsmith_mod_i32(arg_1.x, arg_1.x))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0.x, 25u)], 442f, !any(vec4<bool>(false, true, false, false)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(670f)))), global0[_wgslsmith_index_u32(arg_0.x, 25u)]))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(67739u, u_input.a.x), u_input.a.x), 25u)]);
    var_0 = global0[_wgslsmith_index_u32(arg_0.x, 25u)];
    return 53739i;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = vec2<i32>(-32305i, firstTrailingBit(_wgslsmith_clamp_i32(arg_0, _wgslsmith_mod_i32(func_3(u_input.a, arg_1.a.b.yx), ~(-635i)), _wgslsmith_sub_i32(-2147483647i & arg_1.a.b.x, 11801i))));
    var var_1 = -(arg_1.a.b.zzz ^ _wgslsmith_add_vec3_i32(~arg_1.a.b.ywz, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a.b.x, var_0.x, var_0.x), vec3<i32>(arg_0, arg_0, arg_1.a.b.x)), arg_1.a.b.zzw)));
    var var_2 = _wgslsmith_mult_u32(u_input.a.x, 0u >> (1u % 32u));
    let var_3 = arg_1.a.b.zzz;
    var var_4 = _wgslsmith_dot_vec2_i32(var_0, -var_1.yy);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1.a.a, 25u)], -945f, -299f, global0[_wgslsmith_index_u32(1u, 25u)]))))));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(arg_2.x, Struct_3(Struct_1(28853u, vec4<i32>(arg_2.x, -276i, arg_2.x, 2147483647i), -465f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 502f), arg_1.x, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1000f), arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1009f, 544f)), any(arg_1.yx)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1331f - 891f), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 25u)])), global0[_wgslsmith_index_u32(~0u, 25u)], 412f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], -1279f, 111f), vec4<f32>(-867f, 1000f, -731f, 1495f), arg_1.x)))))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zy), vec2<u32>(21651u, u_input.a.x)), -vec4<i32>(arg_2.x, -2147483647i, 1i, 10457i), _wgslsmith_div_f32(-1425f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), -1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 25u)] * _wgslsmith_f_op_f32(-arg_0))), true || all(select(arg_1, arg_1, arg_1))));
    let var_2 = var_1.a.a.b.x;
    var var_3 = arg_1;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0.x, var_0.x, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1981f, arg_0, arg_0, var_1.a.a.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, -916f, -489f, 364f) - vec4<f32>(336f, var_1.a.a.e, var_0.x, arg_0)))))));
    return _wgslsmith_div_f32(-661f, -155f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~(~4294967295u), 25u)], vec3<bool>(true, true, true), -vec3<i32>(~1i, reverseBits(-63189i), firstTrailingBit(3965i))));
    var var_1 = -firstTrailingBit(reverseBits(-1i));
    let var_2 = Struct_1(firstLeadingBit(32998u & u_input.a.x), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-11888i, 2147483647i, 0i, 1i), vec4<i32>(~68160i, -2921i, ~1i, i32(-1i) * -51229i))), 211f, global0[_wgslsmith_index_u32(max(min(~_wgslsmith_add_u32(0u, u_input.a.x), ~u_input.a.x), 25300u), 25u)], -1208f);
    var_1 = ~abs(_wgslsmith_dot_vec2_i32(-var_2.b.zx, vec2<i32>(var_2.b.x, 15294i) | var_2.b.zx));
    let var_3 = vec4<u32>(~63919u | u_input.a.x, ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 1u)), countOneBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), abs(u_input.a))), 0u);
    global0 = array<f32, 25>();
    var var_4 = _wgslsmith_add_i32(var_2.b.x, abs(-27772i | -var_2.b.x)) & func_3(abs(_wgslsmith_div_vec3_u32(firstTrailingBit(var_3.zxx), var_3.zyz)), var_2.b.xw);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(-880f - -711f), select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_2.b.x, var_2.b.x, -32759i, var_2.b.x), var_2.b, false), vec4<i32>(65643i, -1i, var_2.b.x, -2147483647i)), min(min(vec4<i32>(-48732i, -1i, var_2.b.x, -1i), var_2.b), max(vec4<i32>(-782i, var_2.b.x, var_2.b.x, var_2.b.x), vec4<i32>(var_2.b.x, -44097i, 1i, var_2.b.x)))), _wgslsmith_mod_i32(firstTrailingBit(-1810i), 2147483647i), !all(vec2<bool>(false, false)) & true), _wgslsmith_sub_i32(~27197i, _wgslsmith_dot_vec3_i32(var_2.b.wzz, -vec3<i32>(var_2.b.x, var_2.b.x, -1i))));
}

