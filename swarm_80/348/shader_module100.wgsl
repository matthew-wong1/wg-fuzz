struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<u32>(1u, 0u, 0u), 15616u, 2147483647i), Struct_1(vec3<u32>(4294967295u, 57058u, 1u), 31341u, -1i), Struct_1(vec3<u32>(0u, 49938u, 0u), 104513u, 38543i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 3822u, -26613i), Struct_1(vec3<u32>(0u, 1u, 0u), 11065u, 0i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 23682u, 0i), Struct_1(vec3<u32>(52544u, 1u, 104097u), 14534u, -6473i), Struct_1(vec3<u32>(29238u, 87959u, 0u), 79527u, -4856i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 15923u, -23853i), Struct_1(vec3<u32>(0u, 27365u, 1u), 11664u, 62093i), Struct_1(vec3<u32>(4294967295u, 41678u, 63125u), 4294967295u, 25582i), Struct_1(vec3<u32>(74312u, 1u, 0u), 15481u, 43258i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 30888u), 61982u, -1i), Struct_1(vec3<u32>(21590u, 25627u, 2921u), 4001u, i32(-2147483648)), Struct_1(vec3<u32>(52392u, 9056u, 73998u), 0u, 2147483647i), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 95036u, 0i), Struct_1(vec3<u32>(3691u, 25774u, 4294967295u), 0u, 26329i), Struct_1(vec3<u32>(9492u, 4294967295u, 66681u), 30073u, -40452i), Struct_1(vec3<u32>(52914u, 4294967295u, 0u), 58544u, i32(-2147483648)));

var<private> global2: array<vec4<bool>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    global1 = array<Struct_1, 19>();
    let var_0 = vec2<u32>(min(~_wgslsmith_mod_u32(28422u, 1u), 7898u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.c.x), _wgslsmith_div_u32(abs(~106140u), abs(u_input.d.x))));
    let var_1 = 1u;
    var var_2 = global1[_wgslsmith_index_u32(var_1, 19u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), any(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 0u), 20u)]))), -719f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1095f * _wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-337f, _wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = countOneBits(~vec3<u32>(44742u, 1u, ~u_input.e.x)) ^ vec3<u32>(u_input.a.x, abs(arg_1.b), 37717u);
    let var_1 = true;
    let var_2 = (-vec4<i32>(countOneBits(43117i), countOneBits(u_input.b), ~0i, u_input.b | 76271i) | reverseBits(vec4<i32>(2147483647i, min(-9709i, -27761i), u_input.b, -arg_1.c))) ^ -(vec4<i32>(-1i) * -vec4<i32>(1i, arg_1.c, 1i, 2147483647i));
    global0 = array<vec3<bool>, 1>();
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(i32(-1i) * -2450i, true))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.c.x, arg_0.b, 72025u, arg_0.b), Struct_1(vec3<u32>(u_input.a.x, arg_0.a.x, 18836u), u_input.c.x, 15209i))), _wgslsmith_f_op_f32(floor(1580f)), _wgslsmith_f_op_f32(abs(-1448f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-469f, -331f)), _wgslsmith_f_op_f32(select(138f, -745f, false)), _wgslsmith_f_op_f32(-1073f + 847f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-730f, 163f, -158f), vec3<f32>(1354f, 502f, 656f), global0[_wgslsmith_index_u32(u_input.d.x, 1u)])) + vec3<f32>(1f, 1f, 1f)))));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(arg_0.c, -6499i, arg_0.c)), select(vec3<i32>(2147483647i, 2147483647i, arg_0.c), vec3<i32>(u_input.b, -2147483647i, u_input.b), false)) ^ ~(~vec3<i32>(arg_0.c, arg_0.c, 1i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -45444i, 2147483647i), ~vec3<i32>(2147483647i, u_input.b, arg_0.c))) & (firstTrailingBit(abs(-vec3<i32>(1i, -37436i, arg_0.c))) & select(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, 40355i, arg_0.c)), select(vec3<i32>(u_input.b, u_input.b, -18572i), vec3<i32>(-2147483647i, arg_0.c, arg_0.c), false)), max(_wgslsmith_div_vec3_i32(vec3<i32>(-10357i, -1i, u_input.b), vec3<i32>(1i, 0i, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_0.c), vec3<i32>(arg_0.c, 2147483647i, arg_0.c))), false));
    var var_2 = arg_0;
    var var_3 = Struct_1(max(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, var_2.b), vec3<u32>(66940u, var_2.b, 4294967295u)), vec3<u32>(20164u, firstTrailingBit(1u), ~arg_0.a.x)) ^ u_input.c.ywy, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(arg_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(16925u, u_input.d.x, 33385u), vec3<u32>(1u, 41870u, 4294967295u))), vec3<u32>(~0u, ~4504u, ~u_input.c.x))), u_input.b);
    global1 = array<Struct_1, 19>();
    return vec3<u32>(~var_2.b, 70481u, reverseBits(countOneBits(var_3.b >> (~var_3.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(u_input.e, ~(u_input.e << (vec3<u32>(u_input.e.x, u_input.e.x, 0u) % vec3<u32>(32u))) ^ ~func_1(global1[_wgslsmith_index_u32(62676u, 19u)]), ~4294967295u < (66979u ^ _wgslsmith_add_u32(u_input.d.x, u_input.a.x))), _wgslsmith_dot_vec4_u32(~(~reverseBits(u_input.c)), ~u_input.c << (max(~vec4<u32>(u_input.c.x, 88800u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.e.x, 4294967295u)) % vec4<u32>(32u))), abs(1i));
    let var_1 = Struct_1(~vec3<u32>(25408u, ~max(0u, 1u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 0u, 176634u, var_0.b)), u_input.c)), 13183u, ~u_input.b);
    global2 = array<vec4<bool>, 20>();
    var var_2 = var_0;
    var var_3 = !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.b, min(_wgslsmith_clamp_u32(var_1.a.x ^ 0u, 1u, 48165u), var_0.b), ~(~_wgslsmith_div_u32(6108u, u_input.e.x))), 20u)];
    var var_4 = 40998u;
    global1 = array<Struct_1, 19>();
    let var_5 = Struct_1(var_1.a, u_input.e.x & var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, u_input.b << ((u_input.a.x ^ 40212u) % 32u)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, var_2.c) & vec2<i32>(-160i, var_0.c), vec2<i32>(u_input.b, var_1.c)), vec2<i32>(-1i, firstTrailingBit(var_0.c)), vec2<bool>(!var_3.x, true))));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(abs(vec3<i32>(~(-8620i), var_0.c, var_6.c)), vec3<i32>(1i, 7460i, ~(-1i >> (u_input.c.x % 32u)))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1203f, -127f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1869f, -1270f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(762f, 258f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(633f, 1001f) + vec2<f32>(-1730f, 501f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 400f)))))), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 9358i, 1i), vec4<i32>(-2147483647i, var_0.c, var_0.c, u_input.b)), countOneBits(vec4<i32>(1i, -2147483647i, -1i, 182i))) & abs(~vec4<i32>(35183i, var_2.c, 55801i, var_6.c))));
}

