struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec2<f32>(2996f, -413f), Struct_1(vec2<i32>(-1i, 10134i), vec2<f32>(741f, -1181f), -1i, -26159i, vec3<u32>(1u, 1u, 0u)), 21197u), Struct_1(vec2<i32>(4765i, -453i), vec2<f32>(375f, 135f), -33022i, -1i, vec3<u32>(0u, 4294967295u, 1u))), Struct_3(Struct_2(vec2<f32>(-2144f, 274f), Struct_1(vec2<i32>(51226i, 2147483647i), vec2<f32>(1398f, -1152f), 0i, -1i, vec3<u32>(52934u, 28314u, 36402u)), 1u), Struct_1(vec2<i32>(i32(-2147483648), 12400i), vec2<f32>(1047f, -1323f), 12576i, 29462i, vec3<u32>(4294967295u, 95022u, 15565u))), Struct_3(Struct_2(vec2<f32>(465f, -698f), Struct_1(vec2<i32>(-2384i, 1i), vec2<f32>(1184f, -565f), -21890i, i32(-2147483648), vec3<u32>(1u, 7399u, 43401u)), 1u), Struct_1(vec2<i32>(16113i, -25464i), vec2<f32>(392f, 125f), -38972i, -67248i, vec3<u32>(4294967295u, 1u, 24476u))), Struct_3(Struct_2(vec2<f32>(-1470f, 1248f), Struct_1(vec2<i32>(i32(-2147483648), 43154i), vec2<f32>(-198f, 791f), -12736i, 0i, vec3<u32>(1u, 1u, 20101u)), 1u), Struct_1(vec2<i32>(-9663i, -1i), vec2<f32>(-1223f, -890f), 15193i, 0i, vec3<u32>(29144u, 1u, 15183u))));

var<private> global1: array<u32, 14>;

var<private> global2: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    var var_0 = Struct_1(select(_wgslsmith_mult_vec2_i32(vec2<i32>(min(1i, arg_0), _wgslsmith_mult_i32(global2.x, u_input.c)), vec2<i32>(-1i, i32(-1i) * -8790i)), vec2<i32>(-57954i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -1i), _wgslsmith_mod_vec3_i32(u_input.d, global2.zxz))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<f32>(1f, 1f), _wgslsmith_add_i32(u_input.c, u_input.d.x), ~global2.x, u_input.a.wzz);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, global1[_wgslsmith_index_u32(~1u, 14u)], global1[_wgslsmith_index_u32(var_0.e.x, 14u)], ~10765u & (global1[_wgslsmith_index_u32(u_input.a.x, 14u)] | u_input.b)), abs(u_input.a)), ~(~0u));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, global2.x), ~vec2<i32>(2147483647i, -1i), ~global2.yz)) | (max(global2.yx, var_0.a & global2.yz) >> (_wgslsmith_mod_vec2_u32(var_0.e.yx, u_input.a.xx) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1254f, 1f)))), arg_0 ^ 24070i, select(i32(-1i) * -arg_0, arg_0, any(vec3<bool>(all(vec2<bool>(false, false)), select(true, true, false), 20173i >= global2.x))), var_0.e);
    return ~(5690u >> (countOneBits(~(global1[_wgslsmith_index_u32(1u, 14u)] << (var_2.e.x % 32u))) % 32u));
}

fn func_2() -> vec4<bool> {
    let var_0 = select((countOneBits(u_input.a.x) >> (func_3(global2.x) % 32u)) ^ (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzz, u_input.a.zxw), 0u) >> (_wgslsmith_mod_u32(u_input.a.x, 1u) % 32u)), u_input.b, false);
    global2 = vec4<i32>(u_input.d.x, select(abs(~(~global2.x)), u_input.c, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_mult_i32(select(global2.x, ~(~u_input.d.x), true), -64048i), 8405i);
    var var_1 = abs(u_input.a.zy);
    global1 = array<u32, 14>();
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 339f)) * _wgslsmith_f_op_f32(round(1759f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1096f - 941f))))), vec2<f32>(-1310f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(229f + -831f) * _wgslsmith_f_op_f32(f32(-1f) * -831f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 796f))))));
    return vec4<bool>(true, true, any(vec2<bool>(true, select(false, false, false))), any(vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)))));
}

fn func_1() -> Struct_2 {
    global2 = min(~vec4<i32>(0i, u_input.c, (u_input.c & 2147483647i) | _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.c, global2.x, u_input.d.x)), -1i), _wgslsmith_div_vec4_i32(~countOneBits(vec4<i32>(22690i, u_input.c, -1i, 2147483647i)) << (vec4<u32>(u_input.a.x & u_input.b, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 0u, max(0u, global1[_wgslsmith_index_u32(67736u, 14u)])) % vec4<u32>(32u)), -vec4<i32>(global2.x, global2.x, firstTrailingBit(1i), firstTrailingBit(global2.x))));
    var var_0 = !func_2();
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f * -732f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))))));
    var var_3 = var_0.xy;
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + vec2<f32>(-610f, var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -244f), _wgslsmith_f_op_f32(-var_2.x))))), Struct_1(vec2<i32>(global2.x, ~u_input.d.x), vec2<f32>(1000f, _wgslsmith_div_f32(353f, _wgslsmith_div_f32(-281f, var_2.x))), global2.x, ~(~u_input.c) << (max(_wgslsmith_sub_u32(8331u, u_input.b), var_1) % 32u), countOneBits(firstTrailingBit(u_input.a.zzz))), global1[_wgslsmith_index_u32(var_1, 14u)]);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(31079u), 4u)];
    let var_1 = func_2();
    var var_2 = !(!select(!vec3<bool>(false, false, arg_3), !(!var_1.yxz), vec3<bool>(true, true, true)));
    var var_3 = true || (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2, arg_0.b.e.x, 4294967295u)), _wgslsmith_div_vec3_u32(abs(u_input.a.xzw), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 77410u, arg_0.c), vec3<u32>(9976u, arg_1, arg_2)))) == abs(countOneBits(var_0.b.e.x)));
    global0 = array<Struct_3, 4>();
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(41947i, global2.x, global2.x, global2.x), vec4<i32>(-2147483647i, 0i, 6236i, -22206i)))) & vec4<i32>(func_4(func_1(), ~(~global1[_wgslsmith_index_u32(u_input.b, 14u)]), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 22566u), 14u)], any(vec3<bool>(true, false, true))), u_input.c, 1i, _wgslsmith_sub_i32(~1i, -46159i));
    var var_0 = func_2();
    var_0 = !(!vec4<bool>(false, true, func_2().x, all(!var_0.xyw)));
    global1 = array<u32, 14>();
    var var_1 = var_0.x;
    var_1 = var_0.x;
    let var_2 = _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b));
}

