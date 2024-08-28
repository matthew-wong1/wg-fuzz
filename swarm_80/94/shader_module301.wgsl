struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 1> = array<u32, 1>(34929u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(global0.d.x, -38021i), ~global0.d.x, i32(-1i) * -1i, -29597i), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, global0.d.x, 18346i), vec4<i32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))), 16798i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(98610u, abs(u_input.a)), 11415u) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.b.b, -573f))))))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))))))));
    var_0 = global0.d.xx;
    var var_3 = Struct_2(global0.a, Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b)))), reverseBits(68101u)), arg_1.a, vec3<i32>(_wgslsmith_add_i32(global0.d.x, _wgslsmith_dot_vec3_i32(global0.d, vec3<i32>(2204i, 31768i, 8603i))) & ~(-1i), max(1i, var_0.x), min(global0.d.x, 32327i)));
    return _wgslsmith_f_op_f32(var_3.c.b * var_3.b.b);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_div_f32(arg_1.a.x, arg_2.b);
    global1 = array<u32, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-670f)), -444f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(global0.a.yx)))))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(reverseBits(25717u), 4294967295u, global0.b.c, 4294967295u), reverseBits(vec4<u32>(~global0.b.c, global0.b.c, 1u & u_input.a, 1u))), firstLeadingBit(~(firstTrailingBit(vec4<u32>(arg_1.b.c, arg_0, 66884u, 949u)) << (min(vec4<u32>(29009u, global0.b.c, 1u, global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<u32>(arg_2.c, 62694u, global1[_wgslsmith_index_u32(global0.b.c, 1u)], 4294967295u)) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.c.a, _wgslsmith_f_op_f32(trunc(933f)), 1u), Struct_3(arg_2, arg_2), global0.b.a.x));
    return ~(-global0.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global1 = array<u32, 1>();
    let var_0 = Struct_1(select(vec4<bool>(true == all(vec3<bool>(global0.c.a.x, global0.c.a.x, global0.b.a.x)), any(global0.c.a.yxw), _wgslsmith_add_i32(arg_1.x, arg_1.x) >= -2147483647i, global0.c.a.x), select(vec4<bool>(-12081i < global0.d.x, global0.b.a.x == global0.b.a.x, false, false), global0.b.a, vec4<bool>(any(global0.b.a.xzx), all(global0.c.a), true, all(global0.c.a.xwx))), !(!all(global0.c.a.wwx))), -1001f, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~51212u, 1u)], global1[_wgslsmith_index_u32(~u_input.a | global1[_wgslsmith_index_u32(min(48055u, 1u), 1u)], 1u)]) & _wgslsmith_sub_u32(61402u, 0u));
    let var_1 = Struct_3(Struct_1(!select(vec4<bool>(var_0.a.x, true, global0.c.a.x, false), !var_0.a, !global0.b.a), _wgslsmith_f_op_f32(-global0.c.b), ~_wgslsmith_div_u32(4294967295u, 1u)), Struct_1(!select(select(vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(global0.b.a.x, global0.b.a.x, true, false), global0.c.a), select(vec4<bool>(false, global0.b.a.x, true, true), global0.b.a, global0.c.a.x), vec4<bool>(var_0.a.x, false, global0.b.a.x, true)), global0.b.b, 4294967295u | countOneBits(global1[_wgslsmith_index_u32(71016u, 1u)])));
    var var_2 = global0.b;
    var var_3 = 1u ^ u_input.a;
    return firstLeadingBit(153002u);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 48873u), vec2<u32>(4294967295u, global0.c.c)), ~vec2<u32>(18322u, 35465u)), max(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(2537u, 1u)], global0.c.c), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], u_input.a)), (vec2<u32>(u_input.a, global0.c.c) | vec2<u32>(u_input.a, global0.b.c)) >> ((vec2<u32>(global0.c.c, 24908u) >> (vec2<u32>(41114u, global0.c.c) % vec2<u32>(32u))) % vec2<u32>(32u)))), ~(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)] << (~global0.c.c % 32u))), func_4(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(func_2(u_input.a, Struct_2(global0.a, Struct_1(global0.c.a, global0.a.x, 4294967295u), Struct_1(vec4<bool>(global0.c.a.x, false, true, global0.c.a.x), -1179f, 0u), vec3<i32>(-2147483647i, -6776i, global0.d.x)), global0.b), vec3<i32>(30298i, -26727i, 11059i) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(541u, 1u)], 1u)], 37912u, global1[_wgslsmith_index_u32(61230u, 1u)]) % vec3<u32>(32u))), -vec3<i32>(40409i, global0.d.x, global0.d.x)), -(~vec2<i32>(2147483647i, global0.d.x)), 30780i));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), Struct_1(vec4<bool>(true, ~var_0.x > ~3342u, true, global0.c.a.x), _wgslsmith_f_op_f32(round(1656f)), ~global1[_wgslsmith_index_u32(u_input.a, 1u)]), Struct_1(vec4<bool>(global0.c.a.x, global0.c.b != global0.b.b, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1061f)) - global0.c.b), select(30725u, 39938u, global0.b.a.x)), _wgslsmith_mult_vec3_i32(global0.d, -(func_2(global1[_wgslsmith_index_u32(0u, 1u)], Struct_2(global0.a, Struct_1(global0.b.a, global0.b.b, 118514u), Struct_1(vec4<bool>(false, global0.b.a.x, false, true), global0.c.b, 41671u), vec3<i32>(global0.d.x, global0.d.x, global0.d.x)), global0.c) ^ vec3<i32>(global0.d.x, global0.d.x, -18637i))));
    var var_1 = global0.c.b < _wgslsmith_f_op_f32(1f - -817f);
    var var_2 = Struct_2(vec4<f32>(-434f, global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(global0.b.a.x, global0.c.a.x, global0.c.a.x, global0.c.a.x), 417f, 13916u), Struct_3(Struct_1(global0.b.a, -2122f, global0.c.c), global0.b), global0.b.a.x))))), _wgslsmith_f_op_f32(-global0.c.b)), global0.c, global0.c, ~_wgslsmith_mod_vec3_i32((vec3<i32>(-17716i, 34091i, 0i) | global0.d) | -vec3<i32>(global0.d.x, 1i, -2147483647i), global0.d));
    var var_3 = global0.c.b;
    return Struct_2(vec4<f32>(-782f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.b.b, -1567f, false)) - _wgslsmith_f_op_f32(var_2.b.b * var_2.a.x))), global0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) - var_2.a.x)), var_2.c, var_2.b, global0.d);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = !(!(!(arg_1 != arg_2.a.x)) & !global0.b.a.x);
    let var_1 = !(!(!vec2<bool>(!global0.b.a.x, false)));
    var var_2 = Struct_1(!arg_0.a, 443f, abs(abs(34536u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_2.a.yyw * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_2.a.xxz, arg_2.a.yxx))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global0.a.wxy, vec3<f32>(-1000f, var_2.b, 718f))))), arg_2.a.yxz, false)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a, global0.a)), arg_2.a, true))));
    return vec2<bool>(arg_3.a.x, arg_2.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.a;
    var var_1 = !select(var_0.xw, global0.b.a.zz, true);
    let var_2 = global0.c.b;
    var_1 = func_5(Struct_1(select(select(select(global0.c.a, vec4<bool>(false, false, var_1.x, var_0.x), vec4<bool>(global0.c.a.x, true, true, global0.b.a.x)), !global0.b.a, !global0.b.a), global0.b.a, global0.b.a.x), -1022f, ~36870u), 137f, func_1(), global0.c);
    var var_3 = !(!select(func_1().c.a, select(global0.b.a, vec4<bool>(var_1.x, true, false, true), global0.c.a), global0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select((vec3<u32>(14928u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64621u, 1u)], 1u)]) >> (vec3<u32>(1u, 4294967295u, global0.c.c) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(8646u, 4294967295u, 48242u), vec3<u32>(u_input.a, global0.c.c, 39844u)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b.c, global0.b.c, global0.b.c), max(vec3<u32>(4294967295u, global0.c.c, u_input.a), vec3<u32>(global0.b.c, global0.b.c, 1u))), vec3<bool>(var_0.x, false, var_0.x))), abs(vec2<u32>(~_wgslsmith_add_u32(0u, u_input.a), 18690u)), abs(vec2<i32>(_wgslsmith_mod_i32(4406i, global0.d.x), 0i)) | vec2<i32>(_wgslsmith_clamp_i32(global0.d.x, _wgslsmith_clamp_i32(10401i, global0.d.x, 6163i), abs(2147483647i)), global0.d.x), global0.c.b);
}

