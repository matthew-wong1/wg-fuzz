struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-15755i, i32(-2147483648), -5163i, 0i);

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1822f, 529f), vec2<f32>(1513f, -330f), vec2<f32>(398f, -1000f), vec2<f32>(-188f, -1151f), vec2<f32>(-921f, -1471f));

var<private> global2: Struct_1 = Struct_1(1i);

var<private> global3: vec4<f32> = vec4<f32>(-467f, 865f, 1196f, -1126f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> f32 {
    var var_0 = Struct_2(u_input.a);
    let var_1 = select(vec3<bool>((arg_1 || arg_1) & true, true, reverseBits(u_input.e ^ u_input.b) >= (_wgslsmith_mod_i32(u_input.b, -21449i) >> (~23590u % 32u))), !(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, false), !vec3<bool>(true, arg_1, false))), vec3<bool>(arg_1 != false, _wgslsmith_sub_i32(u_input.e >> (900u % 32u), -2147483647i) >= -40682i, select(!arg_1, !(1i <= u_input.b), arg_1)));
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(38445i, global2.a, global0.x, u_input.b), vec4<i32>(49475i, -29652i, -15987i, global0.x))), -vec4<i32>(global2.a, 17968i, u_input.e, -1i), !(!vec4<bool>(false, var_1.x, false, arg_1))), ~vec4<i32>(u_input.b, select(u_input.b, 0i, var_1.x), -5271i, 2147483647i), vec4<i32>(abs(_wgslsmith_div_i32(global0.x, -21170i)), -6066i, global0.x ^ ~2949i, -41796i)), ~(~firstLeadingBit(firstLeadingBit(vec4<i32>(-48258i, u_input.e, u_input.b, global0.x)))));
    let var_2 = Struct_1(global2.a);
    var var_3 = _wgslsmith_f_op_f32(trunc(-999f));
    return -1507f;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> vec4<bool> {
    global1 = array<vec2<f32>, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.wy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<u32>(arg_1.a.x, arg_1.b, 0u), 0u, global3.wyx), true)), _wgslsmith_f_op_f32(f32(-1f) * -309f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_0.d) * global3.yx))))), vec2<bool>(true, true)));
    var var_1 = Struct_4(_wgslsmith_clamp_vec3_u32(arg_1.a, ~(~(arg_1.a ^ vec3<u32>(32980u, arg_1.b, 1u))), vec3<u32>(_wgslsmith_sub_u32(1u, select(u_input.c.x, 27219u, true)), u_input.d, _wgslsmith_add_u32(~u_input.c.x, _wgslsmith_add_u32(1u, 88697u)))), ~(~firstTrailingBit(arg_1.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.x)))), arg_1.c.x, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(105f, var_0.x, _wgslsmith_f_op_f32(-global3.x)) - arg_1.c))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_clamp_vec2_u32(var_1.a.zx, ~var_2.a.xz, ~(~u_input.c));
    return select(select(vec4<bool>(!all(vec3<bool>(false, false, false)), false, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), select(all(vec3<bool>(true, true, false)), true, true)), vec4<bool>(!any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global3.x) <= _wgslsmith_f_op_f32(-var_1.c.x), true, true), false && all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), true), false);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32) -> i32 {
    var var_0 = global0.x;
    global1 = array<vec2<f32>, 5>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(654f, global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1000f))), 255f);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(~1i), u_input.e), global0.yx);
    let var_2 = !select(func_2(Struct_3(Struct_1(u_input.b), 596f, vec4<i32>(1i, arg_2, arg_2, u_input.b), _wgslsmith_f_op_f32(-var_1.x)), Struct_4(arg_0.a, _wgslsmith_div_u32(arg_0.b, 81468u), _wgslsmith_f_op_vec3_f32(floor(global3.wzx)))), !(!func_2(Struct_3(Struct_1(31288i), -1966f, vec4<i32>(1i, global2.a, arg_2, 4136i), global3.x), arg_0)), vec4<bool>(true, _wgslsmith_div_f32(-202f, -963f) != _wgslsmith_div_f32(arg_0.c.x, -1711f), true, all(vec4<bool>(arg_1.x, arg_1.x, true, false))));
    return -global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, 1457f)), _wgslsmith_f_op_f32(step(global3.x, global3.x)), global3.x, -941f))), vec4<f32>(global3.x, 442f, global3.x, 965f));
    let var_1 = Struct_3(Struct_1(countOneBits(-1i)), _wgslsmith_f_op_f32(global3.x * -2450f), vec4<i32>(2147483647i, ~func_1(Struct_4(vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.a, vec3<f32>(global3.x, global3.x, global3.x)), select(vec3<bool>(false, false, true), vec3<bool>(var_0, true, true), true), global0.x), -min(u_input.b, global2.a << (1u % 32u)), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(global3.x - global3.x)))));
    var var_2 = Struct_2(~5131u);
    var var_3 = Struct_4(~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33535u, var_2.a, 0u, u_input.c.x), vec4<u32>(u_input.d, u_input.c.x, u_input.d, 0u)), reverseBits(var_2.a), firstLeadingBit(64370u)) | ~(vec3<u32>(var_2.a, var_2.a, var_2.a) | vec3<u32>(u_input.a, u_input.d, 4294967295u))), _wgslsmith_add_u32(~var_2.a, ~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.wwy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(var_3.a, var_2.a, global3.wwy), false)), var_1.b, 172f, _wgslsmith_f_op_f32(-var_1.b))) * vec4<f32>(var_1.d, var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 170f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1720f)))))), vec2<u32>(41353u, ~_wgslsmith_add_u32(1u << (var_2.a % 32u), 21073u)), -_wgslsmith_add_vec2_i32(min(global0.yy, -var_1.c.wz), abs(vec2<i32>(-1474i, u_input.b))), ~(1u >> ((_wgslsmith_dot_vec3_u32(var_3.a, vec3<u32>(12880u, 30032u, u_input.d)) >> ((4294967295u | var_2.a) % 32u)) % 32u)), ~(-(~vec4<i32>(-9468i, var_1.c.x, -2147483647i, 0i))));
}

