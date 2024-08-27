struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-1000f, 282f, -361f), vec3<f32>(1000f, -733f, -1000f), vec3<f32>(436f, 417f, 140f), vec3<f32>(-270f, 1000f, 239f), vec3<f32>(903f, -558f, 1317f), vec3<f32>(-1207f, -1415f, 223f), vec3<f32>(1000f, 1220f, -2089f), vec3<f32>(-738f, 407f, -1159f), vec3<f32>(704f, 1437f, -808f), vec3<f32>(-1000f, -1446f, 465f), vec3<f32>(-428f, -742f, -1197f), vec3<f32>(-377f, -821f, -734f), vec3<f32>(112f, 1574f, -1332f), vec3<f32>(2285f, 530f, -806f), vec3<f32>(742f, 1660f, -124f));

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 26> = array<i32, 26>(38142i, -1i, 14511i, -31580i, 0i, i32(-2147483648), 2147483647i, -16985i, 74966i, -2417i, 2147483647i, 0i, -16100i, i32(-2147483648), 13623i, 1i, 5692i, i32(-2147483648), 2147483647i, -9854i, -68782i, -34820i, 1i, -12160i, -1i, i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 15>();
    var var_0 = _wgslsmith_sub_vec4_u32(~(~(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) & (vec4<u32>(23826u, u_input.a, 8143u, 28392u) & vec4<u32>(1u, u_input.a, 105992u, u_input.a)))), countOneBits(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 46317u, 65177u, u_input.a), ~vec4<u32>(u_input.a, 24168u, 0u, u_input.a)))));
    let var_1 = global1.x;
    let var_2 = !(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), all(vec2<bool>(true, true))), vec3<bool>(false, true, false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_div_u32(firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u), vec4<u32>(0u, u_input.a, 4294967295u, var_0.x), vec4<u32>(u_input.a, var_0.x, 4294967295u, 3206u))))), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(1u, 56360u)), var_0.yw));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.a), 0u, ~(~u_input.a));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global2 = array<i32, 26>();
    var var_0 = _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_2), ~1u, firstLeadingBit(25849u)))), vec3<u32>(_wgslsmith_clamp_u32(arg_2, _wgslsmith_mult_u32(arg_2, 1u), _wgslsmith_clamp_u32(16846u, u_input.a, arg_2)) ^ 1u, func_3(), _wgslsmith_mult_u32(u_input.a, 1u)), max(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(22219u, 65527u), arg_2), 44295u, ~(~0u)), select(vec3<u32>(1u, arg_2, 52101u & arg_2), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2, u_input.a, u_input.a), ~vec3<u32>(43879u, arg_2, arg_2)), select(arg_0.zyx, !vec3<bool>(true, arg_1.a.x, false), vec3<bool>(true, false, arg_1.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c.x) + _wgslsmith_f_op_f32(arg_1.b.c.x + global1.x)))), _wgslsmith_f_op_f32(round(109f)), arg_1.b.c.x));
    var var_2 = arg_0.yxx;
    let var_3 = var_0.xx;
    return Struct_2(abs(vec4<u32>(~(var_0.x << (var_3.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25822u, u_input.a), vec3<u32>(var_0.x, 4294967295u, 27182u)), ~0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(18049u, 4294967295u), firstTrailingBit(4294967295u)))), Struct_1(global2[_wgslsmith_index_u32(0u, 26u)], var_0.x, var_2.xx, !(!vec4<bool>(true, var_2.x, true, true))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(83189u, 26u)], -2147483647i, 14200i)), max(vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 26u)], -16314i, global2[_wgslsmith_index_u32(var_0.x, 26u)]))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global2[_wgslsmith_index_u32(103397u, 26u)], global2[_wgslsmith_index_u32(63812u, 26u)]), vec3<i32>(-7673i, 39040i, global2[_wgslsmith_index_u32(1u, 26u)]))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(~arg_2.c.x, _wgslsmith_dot_vec4_u32(~(arg_2.a | vec4<u32>(u_input.a, u_input.a, arg_2.b.b, arg_2.a.x)), arg_2.a), func_2(select(arg_2.b.d, select(!arg_1.a, vec4<bool>(false, arg_2.b.d.x, false, true), true), vec4<bool>(true, all(vec3<bool>(arg_1.a.x, arg_1.b.b, true)), true, false | arg_2.b.d.x)), arg_1, u_input.a).b.d.yy, vec4<bool>(!func_2(!vec4<bool>(arg_1.b.b, true, arg_1.a.x, arg_1.b.b), arg_1, 4294967295u).b.d.x, (true && arg_1.b.b) | all(arg_1.a), arg_1.b.c.x >= _wgslsmith_f_op_f32(-global1.x), true));
    let var_1 = Struct_1(_wgslsmith_mod_i32(arg_0, arg_2.c.x) >> (~4294967295u % 32u), u_input.a, func_2(vec4<bool>(false, true, arg_2.b.d.x, arg_2.b.c.x), arg_1, _wgslsmith_dot_vec4_u32(max(arg_2.a, firstTrailingBit(arg_2.a)), arg_2.a)).b.d.xy, func_2(!func_2(var_0.d, Struct_4(var_0.d, arg_1.b), arg_2.b.b >> (u_input.a % 32u)).b.d, arg_1, _wgslsmith_sub_u32(4294967295u | _wgslsmith_sub_u32(17626u, arg_2.a.x), u_input.a)).b.d);
    global2 = array<i32, 26>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(arg_2.a, ~abs(~arg_2.a)), Struct_1(~(arg_2.b.a << (~102801u % 32u)), var_0.b, func_2(!(!vec4<bool>(var_0.c.x, arg_2.b.d.x, false, false)), Struct_4(!arg_2.b.d, Struct_3(vec3<f32>(615f, arg_1.b.c.x, -2816f), false, vec2<f32>(-523f, global1.x))), firstTrailingBit(arg_2.b.b)).b.d.yx, var_1.d), ~(-abs(arg_2.c)));
    var var_3 = !select(vec3<bool>(true, any(func_2(vec4<bool>(var_1.c.x, false, true, false), arg_1, 25921u).b.d.wyy), true), select(vec3<bool>(true || arg_1.a.x, true, 1i > var_2.c.x), vec3<bool>(var_2.b.c.x, func_2(var_2.b.d, Struct_4(vec4<bool>(var_0.c.x, var_1.c.x, var_2.b.c.x, var_1.c.x), arg_1.b), arg_2.b.b).b.d.x, true), func_2(var_2.b.d, Struct_4(vec4<bool>(false, false, true, true), arg_1.b), _wgslsmith_mult_u32(31u, var_0.b)).b.d.yzx), arg_2.b.d.x);
    return vec3<i32>(select(reverseBits(~(var_0.a << (0u % 32u))), var_0.a | ~min(30719i, 0i), false), var_1.a | _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_div_i32(~arg_2.b.a, 0i)), var_1.a);
}

fn func_1() -> vec3<i32> {
    let var_0 = ~reverseBits(reverseBits(-(vec2<i32>(global2[_wgslsmith_index_u32(1u, 26u)], 39380i) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))));
    global0 = array<vec3<f32>, 15>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - -938f))))) + _wgslsmith_f_op_f32(-global1.x));
    let var_2 = _wgslsmith_mult_u32(0u, 4294967295u << (~u_input.a % 32u));
    let var_3 = Struct_4(!vec4<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-global1.x) <= 1f, false), Struct_3(global0[_wgslsmith_index_u32(select(~(~u_input.a), _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(32534u, var_2)), false), 15u)], all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))), _wgslsmith_f_op_vec2_f32(select(global1.xx, vec2<f32>(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(floor(var_1))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), all(vec3<bool>(false, true, true)))))));
    return select(func_4(1i, Struct_4(var_3.a, Struct_3(vec3<f32>(774f, -1000f, 1117f), var_3.a.x, vec2<f32>(global1.x, var_3.b.c.x))), func_2(select(var_3.a, var_3.a, var_3.a), Struct_4(var_3.a, var_3.b), _wgslsmith_sub_u32(0u, u_input.a))) ^ ((func_4(1i, var_3, Struct_2(vec4<u32>(1u, var_2, 48736u, 0u), Struct_1(45056i, var_2, vec2<bool>(var_3.a.x, false), var_3.a), vec3<i32>(var_0.x, var_0.x, -1i))) ^ ~vec3<i32>(-18303i, -1i, 0i)) >> (vec3<u32>(max(16752u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 3141u, 67224u, 4294967295u), vec4<u32>(u_input.a, var_2, var_2, 5728u)), 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(func_2(var_3.a, Struct_4(var_3.a, var_3.b), var_2).c.x, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-19905i, var_0.x, global2[_wgslsmith_index_u32(0u, 26u)], -14913i), -vec4<i32>(1i, -2147483647i, 20693i, var_0.x)), min(_wgslsmith_div_i32(var_0.x, var_0.x), 1i)) ^ -(~vec3<i32>(global2[_wgslsmith_index_u32(var_2, 26u)], global2[_wgslsmith_index_u32(85248u, 26u)], global2[_wgslsmith_index_u32(var_2, 26u)]) | firstTrailingBit(vec3<i32>(-71687i, 48361i, 1i))), var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    var_0 = ~(min(vec3<i32>(var_0.x, _wgslsmith_sub_i32(13729i, var_0.x), var_0.x), -(~vec3<i32>(var_0.x, global2[_wgslsmith_index_u32(822u, 26u)], var_0.x))) | vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 71019u, u_input.a) >> (vec3<u32>(1u, 64137u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(31566u, 57492u, 0u)), 26u)], 26045i, ~(-3724i)));
    var var_2 = false;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), 1413f))));
    global0 = array<vec3<f32>, 15>();
    let var_3 = func_2(vec4<bool>(false, all(vec2<bool>(u_input.a >= u_input.a, true)), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))), true), Struct_4(!vec4<bool>(any(vec2<bool>(true, false)), true, true, true), Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, -1000f, global1.x))), select(true, true, true), global1.yy)), u_input.a);
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_2(!(!var_3.b.d), Struct_4(!var_3.b.d, Struct_3(global0[_wgslsmith_index_u32(var_3.a.x, 15u)], true, vec2<f32>(-1510f, global1.x))), ~max(85168u, var_3.b.b)).a), -1384f);
}

