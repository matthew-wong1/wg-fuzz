struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(11913u, vec2<f32>(956f, -1000f)), Struct_1(4294967295u, vec2<f32>(-1000f, -475f)), Struct_1(51063u, vec2<f32>(-1594f, 163f)), Struct_1(0u, vec2<f32>(-621f, 477f)), Struct_1(14325u, vec2<f32>(-1000f, 1289f)), Struct_1(19991u, vec2<f32>(167f, 1000f)), Struct_1(25597u, vec2<f32>(1383f, 505f)), Struct_1(111378u, vec2<f32>(188f, 204f)), Struct_1(0u, vec2<f32>(406f, 738f)), Struct_1(4294967295u, vec2<f32>(170f, 405f)), Struct_1(4294967295u, vec2<f32>(-165f, 1383f)), Struct_1(0u, vec2<f32>(875f, -755f)), Struct_1(21317u, vec2<f32>(-1058f, -239f)), Struct_1(4294967295u, vec2<f32>(-553f, 1000f)), Struct_1(4294967295u, vec2<f32>(1758f, -803f)), Struct_1(0u, vec2<f32>(-164f, 289f)), Struct_1(1u, vec2<f32>(622f, -852f)), Struct_1(20079u, vec2<f32>(-2438f, 414f)), Struct_1(1u, vec2<f32>(141f, 308f)), Struct_1(77045u, vec2<f32>(635f, -1170f)), Struct_1(52510u, vec2<f32>(1819f, -1624f)), Struct_1(1u, vec2<f32>(-687f, -1801f)), Struct_1(20170u, vec2<f32>(-857f, 1252f)), Struct_1(4294967295u, vec2<f32>(-248f, -2361f)), Struct_1(1u, vec2<f32>(1410f, 139f)), Struct_1(0u, vec2<f32>(-285f, -1811f)), Struct_1(13983u, vec2<f32>(-1281f, 1000f)), Struct_1(1u, vec2<f32>(-1577f, -2223f)), Struct_1(0u, vec2<f32>(449f, 757f)), Struct_1(37105u, vec2<f32>(1000f, 216f)), Struct_1(4294967295u, vec2<f32>(-804f, 1000f)), Struct_1(34997u, vec2<f32>(-1759f, 858f)));

var<private> global1: f32;

var<private> global2: array<bool, 26>;

var<private> global3: Struct_1 = Struct_1(4294967295u, vec2<f32>(-1950f, 424f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = max(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(1i), -66636i, 1i), vec3<i32>(-28559i, -1i, -12280i) << (~vec3<u32>(4294967295u, u_input.c.x, global3.a) % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(-vec3<i32>(32125i, u_input.b, u_input.a), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-9206i, u_input.a, u_input.a), -vec3<i32>(-42463i, 35633i, u_input.b), select(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i), true))) << (select(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, u_input.c.x, 22488u)), abs(vec3<u32>(4294967295u, global3.a, 96180u))), ~u_input.c.wxw, vec3<bool>(true, true, true)) % vec3<u32>(32u)));
    var var_1 = u_input.c;
    global3 = Struct_1(~firstTrailingBit(~global3.a), _wgslsmith_div_vec2_f32(vec2<f32>(490f, _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(abs(1000f)))), global3.b));
    global3 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~29261u | ~firstTrailingBit(global3.a), global3.a)), 32u)];
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-691f)), _wgslsmith_f_op_f32(-1146f + arg_0))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1172f))), -467f)), _wgslsmith_f_op_f32(f32(-1f) * -1577f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.c.x, ~(~(~0u))), vec2<f32>(1002f, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3.b.x)) * _wgslsmith_f_op_f32(min(1107f, -293f))))));
    var var_1 = false;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(((vec3<i32>(u_input.a, 25679i, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(25438u, 19152u, u_input.c.x) % vec3<u32>(32u))) & ~(~vec3<i32>(1i, u_input.b, -2147483647i)), _wgslsmith_sub_vec3_i32(select(~vec3<i32>(81608i, -20165i, -1i), ~vec3<i32>(u_input.b, u_input.a, u_input.a), !global2[_wgslsmith_index_u32(0u, 26u)]), vec3<i32>(_wgslsmith_mod_i32(-20139i, u_input.b), u_input.b, countOneBits(4149i)))), _wgslsmith_mod_i32(u_input.a, max(u_input.b, u_input.b) << (global3.a % 32u)) >> (var_0.a % 32u), _wgslsmith_clamp_i32(abs(_wgslsmith_mult_i32(u_input.b, u_input.a)), -1i, _wgslsmith_mod_i32(19441i, 1i)) | -(~(~u_input.a)), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a, u_input.b)), vec2<i32>(1i, -reverseBits(7584i))));
    let var_3 = _wgslsmith_mult_vec2_i32(var_2.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(~2147483647i << (~global3.a % 32u), 1i), firstTrailingBit(firstTrailingBit(var_2.zw))));
    var_0 = Struct_1(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, ~4294967295u), abs(firstTrailingBit(u_input.c.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.b.x, global3.b.x)))))));
    return Struct_1(arg_0.a & arg_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.b, vec2<f32>(global3.b.x, -413f))) - var_0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global3 = func_2(arg_1);
    var var_0 = _wgslsmith_f_op_f32(419f + _wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -701f) - _wgslsmith_div_f32(566f, -359f)), arg_1.b.x, true)))));
    global2 = array<bool, 26>();
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1u, reverseBits(16525u), u_input.c.x), ~abs(0u))), _wgslsmith_mult_vec2_u32(u_input.c.ww, _wgslsmith_clamp_vec2_u32(~countOneBits(u_input.c.wy), u_input.c.yx, select(~vec2<u32>(arg_1.a, 86301u), u_input.c.xx ^ u_input.c.xz, false))));
    let var_2 = global0[_wgslsmith_index_u32(0u, 32u)];
    return vec4<u32>(~45891u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.a, select(var_2.a, ~0u, u_input.b != u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(14206u, arg_1.a, var_2.a, 36580u), ~vec4<u32>(4294967295u, 0u, 0u, arg_1.a))), arg_1.a), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.c.xxx, vec3<u32>(126033u, arg_0.a, 0u)), 95511u, _wgslsmith_div_u32(global3.a, arg_0.a)), _wgslsmith_mult_vec4_u32(~u_input.c, u_input.c), u_input.c), u_input.c), _wgslsmith_div_u32(~4294967295u, 6763u));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    let var_0 = ~func_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(global3.a, global3.a), global3.a), global3.b), func_2(global0[_wgslsmith_index_u32(min(38342u, 31548u) << (_wgslsmith_add_u32(1u, global3.a) % 32u), 32u)]));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 32u)];
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(global3.a, 4774u, func_4(global0[_wgslsmith_index_u32(6543u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]).x)), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, global3.a, 4294967295u, 7384u)), vec4<u32>(var_0.x, global3.a, var_1.a, var_0.x) << (var_0 % vec4<u32>(32u)))), ~(var_1.a ^ select(1434u, 0u, false))) > firstLeadingBit(_wgslsmith_clamp_u32(44586u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(19942u, global3.a, 1u, 43843u), u_input.c), firstTrailingBit(0u)));
    let var_3 = ~abs(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0, max(arg_0, vec2<i32>(4063i, 2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, arg_0.x), vec3<i32>(0i, -1i, arg_0.x)), ~1i, _wgslsmith_add_i32(1i, 3988i)));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a, ~func_4(Struct_1(_wgslsmith_add_u32(25130u, global3.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.x, var_1.b.x)))), global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(3656u, var_0.x), global3.a), 32u)]).x), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(-_wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.a), 34105i), -vec2<i32>(-2147483647i, u_input.a) ^ max(vec2<i32>(u_input.a, 75929i), vec2<i32>(0i, u_input.a))));
    global0 = array<Struct_1, 32>();
    let var_0 = !select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, true, global2[_wgslsmith_index_u32(global3.a, 26u)]))), !(!vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), all(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(global3.a, 26u)], true), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(global3.a, 26u)]), !vec4<bool>(global2[_wgslsmith_index_u32(4590u, 26u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], false))));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~global3.a, _wgslsmith_mod_u32(0u, u_input.c.x) ^ 0u) | _wgslsmith_add_u32(~97526u, u_input.c.x), _wgslsmith_add_u32(u_input.c.x, global3.a ^ 1u)), 32u)];
    let var_1 = u_input.c.yww;
    global0 = array<Struct_1, 32>();
    let var_2 = global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 7871i), vec2<i32>(u_input.a, u_input.b))), -vec2<i32>(30959i, u_input.a) >> (_wgslsmith_mod_vec2_u32(var_1.xx, vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.b)))))), _wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(975f)))))));
}

