struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<f32>, 30>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 1u) | vec3<u32>(u_input.a, u_input.a, 13511u))), vec3<bool>(true, _wgslsmith_f_op_f32(select(-102f, -554f, true)) != _wgslsmith_f_op_f32(floor(-1668f)), false), vec4<bool>(firstTrailingBit(u_input.a) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 96074u), vec2<u32>(43654u, 88119u)), true, !all(vec2<bool>(true, false)), true)), u_input.d.wz, _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~(~1u), 30u)] + vec2<f32>(_wgslsmith_f_op_f32(341f - 1375f), -1380f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, 1599f, 1806f)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x))))), var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x)))));
    global1 = -u_input.d.xyw;
    global0 = select(~var_0.a.a, countOneBits(_wgslsmith_sub_u32(max(_wgslsmith_mod_u32(u_input.a, 1u), var_0.a.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u)), vec2<u32>(1u, 4294967295u)))), var_0.a.c.x);
    global2 = array<vec2<f32>, 30>();
    return 25306u;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_u32(func_3(), ~u_input.a), vec3<bool>(true, true, true), vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), false, all(vec4<bool>(true, false, false, false)) & true)), vec2<i32>(0i, ~u_input.c >> (52298u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(reverseBits(u_input.a), 30u)], _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~u_input.a, 30u)] - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1626f)))))));
    return vec4<f32>(-1740f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(ceil(var_0.c.x)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> bool {
    global0 = 570u;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(292f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2141f, 1186f, arg_0.a)) + -866f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 319f, 563f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(283f, var_0.x, 954f, 320f) + vec4<f32>(1032f, var_0.x, -800f, -2259f)), !vec4<bool>(true, arg_0.a, arg_0.c, arg_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, 757f) + vec4<f32>(-103f, -694f, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-787f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -172f, var_0.x, -1008f)) * vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1159f * -722f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(430f))))));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a, 78798u, u_input.a, 1u)) | vec4<u32>(u_input.a, arg_0.b.x, 6213u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.a, 33212u), select(vec4<u32>(14391u, 43424u, u_input.a, 10442u), vec4<u32>(25807u, 1288u, arg_0.b.x, 4294967295u) ^ vec4<u32>(0u, 10354u, 0u, 55921u), !vec4<bool>(arg_0.a, arg_0.a, false, true)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.b.x, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, arg_0.b.x, 4294967295u)), ~vec4<u32>(3249u, 24142u, 0u, 17740u)) >> (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.x, u_input.a, arg_0.b.x, arg_0.b.x)), max(min(vec4<u32>(arg_0.b.x, arg_0.b.x, 20269u, 4981u), vec4<u32>(1u, u_input.a, arg_0.b.x, u_input.a)), vec4<u32>(0u, 42172u, arg_0.b.x, arg_0.b.x))) % vec4<u32>(32u))), 30u)];
    global2 = array<vec2<f32>, 30>();
    return !any(select(select(vec2<bool>(false, arg_0.c), select(vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.a, arg_0.c)), true), vec2<bool>(!arg_0.c, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(func_1(Struct_2(true, ~vec2<u32>(1u, 4294967295u), false, 2147483647i), -25604i), !func_1(Struct_2(true, vec2<u32>(1071u, u_input.a), true, global1.x), global1.x & u_input.d.x), true);
    global1 = -firstLeadingBit(vec3<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(-1i, u_input.d.x, -21018i), 0i));
    var var_1 = Struct_3(Struct_1(u_input.a | u_input.a, !select(vec3<bool>(false, var_0.x, false), !vec3<bool>(var_0.x, var_0.x, false), all(vec4<bool>(true, var_0.x, var_0.x, true))), vec4<bool>(!var_0.x, true, any(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_0.x, false), var_0.x)), func_1(Struct_2(var_0.x, vec2<u32>(u_input.a, u_input.a), var_0.x, 2147483647i), ~12536i))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global1.x | (global1.x | 1i)), -_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global1.xx, u_input.d.wx), vec2<i32>(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(u_input.a, 30u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, -253f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(513f, 503f) * global2[_wgslsmith_index_u32(countOneBits(u_input.a), 30u)])), var_0.x)));
    global0 = u_input.a;
    let var_2 = Struct_3(var_1.a, var_1.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_div_f32(363f, var_1.c.x))) * var_1.c.x), var_1.c.x));
    global2 = array<vec2<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, firstTrailingBit(u_input.a ^ var_1.a.a) >> (var_1.a.a % 32u)), vec2<u32>(~abs(u_input.a), ~28602u), var_2.a.a, vec2<f32>(_wgslsmith_f_op_f32(-941f + var_1.c.x), var_2.c.x));
}

