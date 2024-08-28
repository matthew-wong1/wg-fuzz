struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -1387f);

var<private> global1: Struct_3;

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1262f, 970f), vec2<f32>(640f, -290f), vec2<f32>(-416f, -1416f), vec2<f32>(-162f, -1000f), vec2<f32>(-1031f, -1262f), vec2<f32>(-189f, -1136f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(global1.b.b.x, 6u)] + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1000f), global2[_wgslsmith_index_u32(1u, 6u)])) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(755f * global0.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 791f, 216f)), vec4<f32>(730f, -351f, global0.x, var_0.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-778f, arg_1, arg_1, 1000f), vec4<f32>(-1204f, global0.x, -935f, -1085f)), vec4<f32>(arg_1, arg_0, -334f, 298f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0, -1365f, 419f))), vec4<f32>(_wgslsmith_div_f32(var_0.x, arg_1), _wgslsmith_f_op_f32(step(global0.x, 1000f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -466f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, 1000f)), 975f, global0.x, arg_1)));
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(min(vec3<i32>(-14629i, global1.a.x, -9204i), vec3<i32>(-1i, -29302i, global1.a.x)) | (global1.a | vec3<i32>(-78660i, 65187i, 56008i))), ~(~vec3<i32>(u_input.a, 0i, 2147483647i))), vec3<i32>(-countOneBits(u_input.a), _wgslsmith_sub_i32(~countOneBits(2147483647i), ~global1.a.x), countOneBits(_wgslsmith_add_i32(22403i, u_input.c.x)) << (1u % 32u)));
    var var_3 = Struct_3(vec3<i32>(u_input.c.x, min(-36888i >> ((u_input.b.x ^ 0u) % 32u), 2147483647i), 1i), Struct_1(select(vec3<bool>(all(global1.b.a.zy), true, true), global1.b.a, global1.b.a.x), select(countOneBits(_wgslsmith_sub_vec4_u32(global1.b.b, global1.b.b)), ~global1.b.b, vec4<bool>(global1.b.a.x || true, global1.b.a.x, true, global1.b.a.x))));
    return _wgslsmith_f_op_f32(-2492f - var_0.x);
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global2 = array<vec2<f32>, 6>();
    var var_0 = global1.b.a;
    var var_1 = -33918i;
    global2 = array<vec2<f32>, 6>();
    let var_2 = global1.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + 120f), _wgslsmith_f_op_f32(trunc(-1286f)))), -1000f, -181f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(1591f, 632f)), _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-global0.x), 1001f, global0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_2(global1.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, arg_2.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, arg_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(980f)), _wgslsmith_f_op_f32(-global0.x), -1178f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-9357i))));
    var var_2 = _wgslsmith_mult_vec3_i32(-(~select(~global1.a, -vec3<i32>(-1i, u_input.c.x, 2147483647i), 11082u > var_0.a.b.x)), vec3<i32>(24326i, -2147483647i, 66022i));
    let var_3 = all(vec3<bool>(true, arg_3, select(abs(u_input.c.x) >= var_2.x, any(vec2<bool>(var_0.a.a.x, false)), var_0.a.a.x)));
    var var_4 = 25222u;
    return !(!(!select(select(vec3<bool>(false, global1.b.a.x, false), arg_0.a, vec3<bool>(var_3, var_0.a.a.x, arg_0.a.x)), !vec3<bool>(global1.b.a.x, var_3, arg_0.a.x), vec3<bool>(true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(!select(global1.b.a, global1.b.a, global1.b.a), !func_1(global1.b, Struct_1(global1.b.a, vec4<u32>(0u, u_input.b.x, global1.b.b.x, 16384u)), vec3<f32>(1058f, -1584f, global0.x), true), select(global1.b.a, !global1.b.a, global0.x != -810f)), vec3<bool>(global1.b.a.x, global1.b.a.x, global1.b.b.x > firstTrailingBit(4294967295u)), global1.b.a), vec4<u32>(select(0u, ~_wgslsmith_dot_vec3_u32(global1.b.b.xyy, u_input.b), false), global1.b.b.x, 57928u, select(global1.b.b.x ^ 13606u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1005u, 11318u, 67737u), _wgslsmith_div_u32(48686u, global1.b.b.x)), func_1(Struct_1(vec3<bool>(true, global1.b.a.x, true), vec4<u32>(global1.b.b.x, 13394u, 4294967295u, u_input.b.x)), Struct_1(global1.b.a, global1.b.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 1683f, global0.x), global1.b.a)), global1.b.b.x >= global1.b.b.x).x)));
    var var_1 = Struct_2(global1.b);
    var var_2 = ~(~firstLeadingBit(vec2<u32>(global1.b.b.x, 28527u)) | countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))) ^ vec2<u32>(reverseBits(min(1u, u_input.b.x)) & var_1.a.b.x, firstTrailingBit(_wgslsmith_mult_u32(~var_1.a.b.x, _wgslsmith_add_u32(global1.b.b.x, global1.b.b.x))));
    var var_3 = firstTrailingBit(~28208i);
    let var_4 = Struct_3(vec3<i32>(_wgslsmith_sub_i32(abs(u_input.c.x), 31986i << (min(global1.b.b.x, var_2.x) % 32u)), -_wgslsmith_div_i32(min(1i, global1.a.x), -19919i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(21697i, global1.a.x, u_input.a, global1.a.x), ~u_input.c), u_input.c)), Struct_1(global1.b.a, countOneBits(~var_1.a.b << ((vec4<u32>(1u, u_input.b.x, var_2.x, 65396u) & var_0.b) % vec4<u32>(32u)))));
    let var_5 = Struct_3(~vec3<i32>(~(~(-1i)), -2147483647i, -2147483647i), Struct_1(var_0.a, var_0.b));
    let var_6 = _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.b.x, var_1.a.b.x), _wgslsmith_clamp_vec2_u32(~(_wgslsmith_add_vec2_u32(var_1.a.b.yy, vec2<u32>(11777u, var_4.b.b.x)) >> (vec2<u32>(4294967295u, 16969u) % vec2<u32>(32u))), u_input.b.zz, _wgslsmith_mod_vec2_u32(var_0.b.xx, ~min(var_0.b.wy, vec2<u32>(2398u, 1u)))));
    var var_7 = var_1.a;
    let var_8 = Struct_3(global1.a, Struct_1(var_4.b.a, vec4<u32>(var_1.a.b.x, ~_wgslsmith_add_u32(global1.b.b.x, 4294967295u), u_input.b.x, (30588u & var_2.x) & 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~12729u, global1.b.b.x, global1.b.b.x) << (u_input.b % vec3<u32>(32u)), ~var_5.b.b.xzw), var_1.a.b.x, global2[_wgslsmith_index_u32(28299u, 6u)]);
}

