struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, 2147483647i, 0i, -4320i), vec4<i32>(-29224i, i32(-2147483648), 1i, 57757i), vec4<i32>(i32(-2147483648), -6293i, 0i, 17460i), vec4<i32>(-46195i, 0i, -40891i, -36048i), vec4<i32>(-91235i, 24253i, 29515i, 0i), vec4<i32>(-32802i, -1i, -42050i, 8577i), vec4<i32>(i32(-2147483648), -1i, -23603i, -25995i), vec4<i32>(0i, -17136i, -27214i, 39552i), vec4<i32>(43475i, 70173i, 2458i, -26111i), vec4<i32>(0i, 0i, i32(-2147483648), 1i), vec4<i32>(0i, 0i, 0i, -1i), vec4<i32>(i32(-2147483648), -43482i, -1i, 2147483647i), vec4<i32>(32394i, i32(-2147483648), 2147483647i, -58107i), vec4<i32>(62811i, 0i, 28666i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1860i, 23297i, 2147483647i), vec4<i32>(-4056i, 41118i, -1i, -6425i), vec4<i32>(-51595i, 2147483647i, 0i, 19218i), vec4<i32>(49979i, -1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -7062i), vec4<i32>(2147483647i, -1i, 2147483647i, 13091i), vec4<i32>(0i, -69000i, i32(-2147483648), 36062i), vec4<i32>(-11222i, 2147483647i, -32068i, -19573i), vec4<i32>(-19992i, 55384i, 20309i, 8586i), vec4<i32>(48004i, 8022i, 31880i, -21942i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> f32 {
    global0 = !(!select(select(!vec3<bool>(false, arg_0.b, true), select(vec3<bool>(arg_0.b, false, global0.x), vec3<bool>(true, arg_0.b, true), arg_0.b), arg_0.b), !select(vec3<bool>(global0.x, global0.x, arg_0.b), vec3<bool>(global0.x, true, true), global0.x), !select(vec3<bool>(global0.x, true, arg_0.b), vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, arg_0.b, true))));
    var var_0 = Struct_1(!vec4<bool>(global0.x, !any(vec4<bool>(global0.x, true, false, arg_0.b)), any(global0.yz), !global0.x), ~arg_1.zzz);
    var var_1 = !any(!vec2<bool>(true, any(var_0.a.yx)));
    var_0 = Struct_1(var_0.a, ~(~var_0.b) | vec3<u32>(u_input.b, ~(~var_0.b.x), ~4294967295u | ~u_input.b));
    let var_2 = -(~vec4<i32>(1i, ~2147483647i, _wgslsmith_sub_i32(reverseBits(u_input.a.x), arg_0.a), countOneBits(23896i)));
    return _wgslsmith_f_op_f32(min(-2359f, _wgslsmith_f_op_f32(f32(-1f) * -1428f)));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: u32) -> vec4<i32> {
    let var_0 = Struct_2(vec4<bool>(all(select(select(vec2<bool>(global0.x, false), arg_1.yx, vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, global0.x), arg_1.yx, true), 238f > arg_0)), all(vec4<bool>(true, true, global0.x && global0.x, true)), false, false && global0.x), Struct_1(vec4<bool>(true, true, 0i > arg_2.x, any(vec3<bool>(false, false, false))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, 1u, 20765u), vec3<u32>(17170u, u_input.b, arg_3)) >> (max(vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(arg_3, u_input.b, 4294967295u)) % vec3<u32>(32u)), select(select(vec3<u32>(arg_3, 1u, u_input.b), vec3<u32>(u_input.b, arg_3, arg_3), true), vec3<u32>(4294967295u, 0u, 64147u) | vec3<u32>(arg_3, u_input.b, 98416u), all(vec2<bool>(true, true))))), -vec2<i32>(i32(-1i) * -41942i, ~(-1273i)) ^ _wgslsmith_div_vec2_i32(countOneBits(arg_2), ~(u_input.a | vec2<i32>(1i, -1i))), _wgslsmith_clamp_i32(1i, ~_wgslsmith_div_i32(-u_input.c.x, 38990i), arg_2.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(274f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + 566f)))))));
    global0 = vec3<bool>(all(var_0.a), true, !var_0.b.a.x);
    global0 = select(arg_1, arg_1, all(var_0.a));
    var var_2 = Struct_1(!vec4<bool>(select(false, any(arg_1), true), var_0.b.a.x, !arg_1.x, all(var_0.b.a)), var_0.b.b);
    return min(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_2.x, u_input.a.x, ~u_input.a.x, var_0.d | 25486i)), -u_input.c), vec4<i32>(var_0.c.x, u_input.c.x, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.wy), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 14840i, -2147483647i, arg_2.x), reverseBits(global1[_wgslsmith_index_u32(arg_3, 24u)]))), _wgslsmith_mod_i32(-(2147483647i ^ u_input.c.x), ~(-u_input.a.x))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    let var_0 = select(arg_1, !arg_1, global0.x);
    global1 = array<vec4<i32>, 24>();
    var var_1 = Struct_4(~arg_2.b.b.x & arg_2.b.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-389f, _wgslsmith_f_op_f32(step(217f, -295f)))), _wgslsmith_div_f32(224f, _wgslsmith_div_f32(-567f, 125f)), -411f, -1078f)), Struct_3(Struct_1(arg_2.b.a, vec3<u32>(12053u, u_input.b, arg_2.b.b.x) << (~vec3<u32>(54852u, u_input.b, 4294967295u) % vec3<u32>(32u))), arg_2), 1i);
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(18980i << (var_1.c.a.b.x % 32u), var_1.b.x == 1000f), firstTrailingBit(max(vec4<u32>(u_input.b, 33980u, 20426u, 4294967295u), vec4<u32>(var_1.c.b.b.b.x, 1u, 0u, 35396u)))))), !var_0, vec2<i32>(-9911i, i32(-1i) * -arg_2.d) ^ -(~vec2<i32>(2147483647i, arg_0) & _wgslsmith_mult_vec2_i32(var_1.c.b.c, u_input.c.yw)), 4294967295u);
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec3<u32> {
    var var_0 = !select(select(arg_0.a.xz, select(vec2<bool>(global0.x, true), global0.xy, vec2<bool>(true, false)), false), vec2<bool>(!arg_0.a.x || all(arg_1.a), true), !(func_2(arg_1.c.x, vec3<bool>(arg_1.b.a.x, false, true), arg_1) & (false && global0.x)));
    let var_1 = (arg_0.a.x == (func_2(~u_input.c.x, select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(arg_1.a.x, arg_1.b.a.x, false)), arg_1) || global0.x)) && any(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, arg_0.a.x), select(arg_1.a.x, true, global0.x)), !(!arg_0.a.xw), select(select(arg_0.a.yx, global0.yy, global0.xz), select(vec2<bool>(true, true), vec2<bool>(global0.x, false), arg_0.a.x), !global0.x)));
    var var_2 = 0i;
    global1 = array<vec4<i32>, 24>();
    let var_3 = arg_1;
    return _wgslsmith_sub_vec3_u32(~((_wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(29668u, arg_1.b.b.x, arg_1.b.b.x)) ^ vec3<u32>(u_input.b, 35682u, arg_1.b.b.x)) & firstTrailingBit(~vec3<u32>(1u, 12858u, 0u))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(min(_wgslsmith_dot_vec3_u32(func_1(Struct_1(vec4<bool>(global0.x, true, global0.x, global0.x), vec3<u32>(33124u, 27708u, u_input.b)), Struct_2(vec4<bool>(true, global0.x, global0.x, false), Struct_1(vec4<bool>(false, false, global0.x, global0.x), vec3<u32>(0u, u_input.b, 71775u)), vec2<i32>(-2147483647i, 2147483647i), u_input.a.x), 355f), ~vec3<u32>(4294967295u, u_input.b, 4294967295u)), u_input.b), u_input.b, max(_wgslsmith_div_u32(u_input.b, ~6078u), ~4294967295u), u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(38201u, u_input.b, 26037u), vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_div_vec3_u32(min(vec3<u32>(18332u, 1u, 47177u), vec3<u32>(40077u, u_input.b, 56163u)), select(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, 0u, u_input.b), vec3<bool>(true, global0.x, global0.x)))), select(4294967295u, firstLeadingBit(u_input.b) & 4294967295u, false), ~110509u, u_input.b & 0u));
    global0 = select(vec3<bool>(true, _wgslsmith_dot_vec2_u32(countOneBits(var_0.ww), abs(var_0.wx)) >= ~58932u, global0.x), vec3<bool>(all(vec4<bool>(true, any(global0.zx), any(vec3<bool>(global0.x, global0.x, false)), global0.x)), !all(vec2<bool>(global0.x, global0.x)), any(vec3<bool>(true, select(global0.x, false, global0.x), !global0.x))), !vec3<bool>(global0.x && global0.x, any(vec2<bool>(true, global0.x)) & any(vec2<bool>(global0.x, global0.x)), !(u_input.b >= u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(940f - _wgslsmith_f_op_f32(f32(-1f) * -330f)))));
    var var_2 = var_0.wzx;
    let var_3 = Struct_5(~u_input.c.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-func_4(1367f, vec3<bool>(global0.x, global0.x, true), u_input.a, 1u).yz, -(vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(var_3.a, u_input.a.x)), any(vec3<bool>(true, var_3.b, false))) << (vec2<u32>((var_0.x >> (0u % 32u)) | ~u_input.b, 40172u) % vec2<u32>(32u)), reverseBits(select(_wgslsmith_mod_i32(var_3.a, abs(var_3.a)), -(u_input.c.x << (var_0.x % 32u)), true)), min(~vec4<u32>(countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(var_0.zy, var_0.zx), ~43658u, _wgslsmith_mult_u32(4294967295u, var_2.x)), select(firstLeadingBit(~vec4<u32>(u_input.b, 4294967295u, 6945u, var_2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 60798u, u_input.b, 78394u) ^ vec4<u32>(0u, 99566u, 19764u, 63558u), vec4<u32>(u_input.b, 1u, 0u, u_input.b)), true)), var_0.x, vec4<i32>(1i, -var_3.a & select(1i, u_input.c.x, global0.x), 0i, 5239i) >> (select(countOneBits(vec4<u32>(4294967295u, var_2.x, u_input.b, var_2.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 27075u, var_0.x, var_2.x), vec4<u32>(var_0.x, 75844u, 33524u, var_2.x)), all(!global0.yz)) % vec4<u32>(32u)));
}

