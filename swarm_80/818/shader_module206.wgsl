struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, false, false), Struct_1(582f, i32(-2147483648), vec3<i32>(1i, -45911i, -83554i)));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 11996u);

var<private> global3: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(34333i, -42615i), vec2<i32>(-12631i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(34112i, i32(-2147483648)), vec2<i32>(-54488i, 3220i), vec2<i32>(-1i, -32954i), vec2<i32>(-31963i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(4887i, 4809i), vec2<i32>(1057i, i32(-2147483648)), vec2<i32>(39915i, -12710i), vec2<i32>(-1i, 9940i), vec2<i32>(2147483647i, 14448i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global4: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> bool {
    global2 = u_input.a.wyy;
    let var_0 = -1069f;
    var var_1 = u_input.d.x;
    var_1 = _wgslsmith_sub_i32(~_wgslsmith_div_i32(-u_input.b.x, 0i ^ global1.b.c.x), ~min(arg_1.b.c.x & 0i, 30570i)) ^ abs(~arg_1.b.b);
    var var_2 = -2179f;
    return true;
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), -(_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global1.b.c.zz) >> (_wgslsmith_mod_u32(global2.x, u_input.a.x) % 32u)), ~(~max(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(global1.b.c.x, 25447i, global1.b.c.x)))), -(~u_input.e));
    global1 = Struct_2(!vec4<bool>(u_input.e == _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(8820i, u_input.b.x, 0i)), true, func_3(2140f, Struct_2(vec4<bool>(true, false, global1.a.x, global1.a.x), global1.b), true), all(!vec3<bool>(global1.a.x, global1.a.x, true))), global1.b);
    let var_1 = Struct_4(_wgslsmith_mod_vec2_u32(max(~vec2<u32>(global2.x, 1u), vec2<u32>(~15324u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_sub_vec2_u32(global2.yx, select(vec2<u32>(4294967295u, 25700u), ~global2.yy, !global1.a.xy))), true, _wgslsmith_mult_vec2_u32(countOneBits(global2.zz), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u))));
    let var_2 = abs(vec2<i32>(2147483647i, var_0.a.b) ^ vec2<i32>(-7552i, -_wgslsmith_add_i32(u_input.d.x, global1.b.b)));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xxx, u_input.a.wyw), u_input.a.zzy >> (vec3<u32>(var_1.c.x, u_input.a.x, global2.x) % vec3<u32>(32u))), ~vec3<u32>(0u, 8394u, 1u)), max(_wgslsmith_mult_u32(var_1.a.x, _wgslsmith_add_u32(1u, 4400u)), select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), abs(u_input.a.x), any(global1.a.zxw)))) <= 12331u;
    return Struct_4(select(global2.zx | var_1.c, reverseBits((var_1.a ^ vec2<u32>(var_1.c.x, u_input.a.x)) >> (~global2.zy % vec2<u32>(32u))), global1.a.x || global1.a.x), true, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), u_input.a)), u_input.a.yx));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    global1 = Struct_2(!select(vec4<bool>(global1.a.x, false, false, select(global1.a.x, true, global1.a.x)), !global1.a, all(select(vec2<bool>(global1.a.x, true), global1.a.yw, global1.a.x))), Struct_1(685f, ~1i, global1.b.c));
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.a, 1f) - global1.b.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, -1229f, global1.b.a, global1.b.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(528f, 2346f, -810f, global1.b.a), vec4<f32>(-408f, global1.b.a, global1.b.a, global1.b.a))))))));
    let var_2 = ~(global2.x ^ 45509u);
    global0 = arg_1.x;
    return abs(max(arg_2.x, select(1i, arg_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, ~(-u_input.d.x & u_input.d.x), 5601i, select(func_1(-vec2<i32>(global1.b.c.x, 9449i), countOneBits(vec4<i32>(u_input.b.x, global1.b.b, -1i, 2147483647i)), ~vec3<i32>(global1.b.c.x, u_input.e, 14890i)), -70051i, global1.a.x)), select(select(-vec4<i32>(global1.b.b, u_input.c, global1.b.b, u_input.b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.b, -2147483647i, 2147483647i, 40607i), vec4<i32>(-38678i, -2147483647i, -43066i, u_input.d.x)), ~global1.b.b, ~(-41244i), global1.b.b), !all(vec3<bool>(true, true, true))), ~vec4<i32>(u_input.c, u_input.b.x, -1i, 16526i) >> (vec4<u32>(global2.x, global2.x, global2.x, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(global1.b.a, _wgslsmith_f_op_f32(-global1.b.a))) == 1355f));
    global0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.a)));
    var_1 = _wgslsmith_f_op_f32(-global1.b.a);
    var_0 = _wgslsmith_mult_vec4_i32(~(select(vec4<i32>(0i, 0i, -10163i, global1.b.c.x), vec4<i32>(global1.b.c.x, var_0.x, global1.b.c.x, 13046i), vec4<bool>(global1.a.x, true, true, global1.a.x)) << (u_input.a % vec4<u32>(32u))) & vec4<i32>(i32(-1i) * -15681i, _wgslsmith_add_i32(-24939i, -37127i), _wgslsmith_mod_i32(firstLeadingBit(u_input.e), 9837i), -var_0.x), -(firstLeadingBit(vec4<i32>(var_0.x, global1.b.c.x, 30195i, 1i)) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -44116i, 20724i, 2147483647i), vec4<i32>(-1i, global1.b.c.x, global1.b.b, global1.b.c.x), vec4<i32>(var_0.x, -63470i, -2147483647i, 1i)) >> (u_input.a % vec4<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1.b.a)))), 40221i, var_0.wyw);
    global0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(firstTrailingBit(2147483647i)), -55293i), 16382i);
    let x = u_input.a;
    s_output = StorageBuffer(-1440f);
}

