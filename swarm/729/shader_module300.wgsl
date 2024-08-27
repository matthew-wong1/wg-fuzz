struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = arg_0.a.b;
    let var_0 = _wgslsmith_add_i32((~_wgslsmith_dot_vec2_i32(arg_0.d.zy, u_input.b.zy) ^ -(i32(-1i) * -2147483647i)) >> (u_input.d % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(~(global0.c >> (0u % 32u)), select(_wgslsmith_mult_i32(u_input.c.x, -72336i), -2147483647i, all(vec4<bool>(arg_0.a.b.a.x, true, true, true))), ~(-44218i)), -u_input.b));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(36832i, 15060i), u_input.c.x >> (1u % 32u)), firstTrailingBit(2147483647i)), firstLeadingBit(vec3<i32>(28185i, 1632i, ~24800i))), ~vec3<i32>(27437i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-19380i, arg_0.d.x, -29218i), vec3<i32>(-1i, arg_0.d.x, u_input.e.x))), _wgslsmith_clamp_i32(var_0, var_0, u_input.c.x) << (firstLeadingBit(u_input.d) % 32u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(!vec3<bool>(global0.a.x, true, global0.a.x), vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), global0.b.x), _wgslsmith_dot_vec2_i32(countOneBits(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(global0.c, -1i), u_input.e))), Struct_1(select(!global0.a, select(global0.a, vec3<bool>(global0.a.x, false, false), vec3<bool>(true, true, global0.a.x)), select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a, global0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x, global0.b.x, -245f), func_3(Struct_3(Struct_2(Struct_1(vec3<bool>(global0.a.x, true, false), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), arg_0), Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), vec4<f32>(global0.b.x, global0.b.x, -243f, global0.b.x), -44425i)), global0.c, global0.c, u_input.b)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.c, u_input.e.x), countOneBits(u_input.c.zx)), ~24458i), -34918i), _wgslsmith_mult_i32(-select(global0.c, 2147483647i, global0.a.x), arg_0), -(~_wgslsmith_sub_vec3_i32(select(u_input.c, vec3<i32>(-18472i, 0i, 2147483647i), global0.a.x), max(vec3<i32>(arg_0, u_input.c.x, 2147483647i), vec3<i32>(-1i, 1i, arg_0)))));
    global0 = Struct_1(!(!(!var_0.a.a.a)), vec4<f32>(-1000f, -1532f, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1266f + var_0.a.b.b.x)))), global0.b.x), 0i);
    let var_1 = var_0.a.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global0.b.zxy, vec3<f32>(187f, var_1.b.x, var_1.b.x), global0.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.a.a.b.zww), true)) * vec3<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, -1898f)), _wgslsmith_div_f32(1567f, var_1.b.x), _wgslsmith_f_op_f32(ceil(var_0.a.a.b.x))))));
    global0 = var_1;
    return var_0.a.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_1;
    let var_0 = min(abs(~vec2<u32>(1u << (arg_2 % 32u), arg_2)), firstLeadingBit(reverseBits(vec2<u32>(39857u, arg_2)) | vec2<u32>(11720u, arg_2)) << (abs(~select(vec2<u32>(4294967295u, arg_2), vec2<u32>(u_input.d, u_input.d), arg_3.a.x)) % vec2<u32>(32u)));
    global0 = arg_1;
    global0 = func_2(u_input.e.x);
    var var_1 = Struct_2(arg_3, func_2(_wgslsmith_div_i32(arg_1.c, -2147483647i)));
    return func_2(firstTrailingBit(_wgslsmith_div_i32(arg_3.c, u_input.a.x)) >> (var_0.x % 32u));
}

fn func_1() -> Struct_2 {
    global0 = func_4(any(global0.a.yz), func_2(abs(global0.c)), ~70666u, Struct_1(!vec3<bool>(true, u_input.a.x > 0i, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(297f, 1265f, global0.b.x, -307f) - global0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -1000f))), _wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, global0.a.x))), _wgslsmith_dot_vec2_i32(u_input.e, u_input.a)));
    var var_0 = func_4(global0.a.x, func_4(true, func_4(global0.a.x, func_4(select(true, global0.a.x, global0.a.x), Struct_1(global0.a, global0.b, u_input.c.x), 1u, func_2(39976i)), ~u_input.d, Struct_1(global0.a, vec4<f32>(global0.b.x, global0.b.x, -666f, global0.b.x), ~global0.c)), _wgslsmith_mod_u32(u_input.d ^ 1u, 43618u & u_input.d) << (u_input.d % 32u), Struct_1(select(func_4(false, Struct_1(global0.a, vec4<f32>(global0.b.x, global0.b.x, 701f, 1133f), -18075i), 1u, Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.b, 1i)).a, !vec3<bool>(true, global0.a.x, true), !global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), -u_input.c.x)), ~_wgslsmith_div_u32(916u, u_input.d), Struct_1(!vec3<bool>(true, true, !global0.a.x), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, 1000f, global0.b.x, -291f)))), firstTrailingBit(_wgslsmith_div_i32(u_input.b.x, u_input.c.x)) ^ _wgslsmith_mult_i32(u_input.e.x, u_input.b.x))).a.zz;
    global0 = Struct_1(func_2(global0.c).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1900f, 884f, 1000f, global0.b.x) * vec4<f32>(global0.b.x, -1000f, global0.b.x, -414f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x - global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.b.x)), -12780i << (1u % 32u));
    var var_1 = vec2<bool>(u_input.b.x >= -_wgslsmith_add_i32(global0.c, global0.c), global0.a.x);
    var_0 = select(global0.a.yx, global0.a.zz, global0.a.x);
    return Struct_2(func_2(countOneBits(u_input.b.x)), Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1034f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -768f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1477f)), _wgslsmith_f_op_f32(1153f + -282f))), u_input.c.x ^ ~firstTrailingBit(2147483647i)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec3<f32> {
    global0 = arg_0.b;
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(775f, arg_0.b.b.x, -1593f, -710f), vec4<f32>(-1402f, global0.b.x, arg_0.a.b.x, arg_0.a.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(566f * 658f), 733f, _wgslsmith_div_f32(-604f, -475f), -104f), all(vec2<bool>(true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.b)) * vec4<f32>(_wgslsmith_div_f32(-146f, 846f), arg_0.a.b.x, _wgslsmith_div_f32(1168f, global0.b.x), global0.b.x))), countOneBits(_wgslsmith_div_i32((global0.c | arg_0.b.c) & -25566i, -arg_0.b.c)));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), ~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xy, ~u_input.e), u_input.a >> (select(vec2<u32>(0u, 0u), vec2<u32>(0u, 80499u), vec2<bool>(false, var_0.b.a.x)) % vec2<u32>(32u))));
    var var_2 = func_1().a;
    return _wgslsmith_f_op_vec3_f32(max(global0.b.yxw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b.b.zyy))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_0.a.b.x, _wgslsmith_div_f32(229f, 839f)) + vec3<f32>(arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x), 1436f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.xyy + global0.b.xwx)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, -292f, global0.b.x)))))), _wgslsmith_f_op_vec3_f32(-global0.b.xww))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(), !(u_input.d != 1u)))));
    global0 = func_4(true, Struct_1(!vec3<bool>(false, func_2(global0.c).a.x, global0.a.x || false), global0.b, 10068i), _wgslsmith_clamp_u32(u_input.d, firstLeadingBit(~abs(u_input.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 0u, 14538u), vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(4294967295u, 1u, u_input.d)), ~vec3<u32>(u_input.d, u_input.d, u_input.d)) & (~1u >> (max(u_input.d, u_input.d) % 32u))), func_2(_wgslsmith_dot_vec3_i32(u_input.b, ~(~vec3<i32>(2658i, u_input.c.x, -20288i)))));
    let var_1 = Struct_3(Struct_2(func_4(all(select(vec4<bool>(true, true, global0.a.x, false), vec4<bool>(global0.a.x, false, true, false), true)), func_2(abs(global0.c)), 1u, Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), _wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-73445i, -2147483647i)))), func_1().a), -29809i, -2147483647i, vec3<i32>(global0.c, _wgslsmith_sub_i32(i32(-1i) * -1i, 1i ^ global0.c) ^ (u_input.a.x >> (~u_input.d % 32u)), global0.c));
    var var_2 = Struct_1(!vec3<bool>(global0.a.x, all(func_4(true, Struct_1(vec3<bool>(var_1.a.a.a.x, false, true), vec4<f32>(-869f, 473f, var_1.a.a.b.x, global0.b.x), -1i), 4294967295u, var_1.a.b).a.yz), var_1.a.a.a.x), _wgslsmith_f_op_vec4_f32(var_1.a.b.b * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.b.x, var_1.a.b.b.x, -690f, 274f) * var_1.a.b.b))))), 2078i);
    let var_3 = func_4(var_2.a.x || var_1.a.b.a.x, var_1.a.b, _wgslsmith_clamp_u32(u_input.d, ~(~(~u_input.d)), 1u & u_input.d), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-(~(var_1.d | u_input.b)), vec3<i32>(var_3.c, ~(-27078i), abs(min(-2147483647i, var_3.c)))), vec3<i32>(~33458i, var_1.d.x, global0.c), var_2.b.zy, vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.c, var_1.b, u_input.e.x, -19278i) | vec4<i32>(global0.c, global0.c, u_input.c.x, -16085i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c, var_2.c, u_input.b.x, 0i), vec4<i32>(var_3.c, global0.c, global0.c, -2147483647i)), vec4<i32>(13960i, -4264i, 1i, var_2.c))), 14212i, -2147483647i, func_3(Struct_3(Struct_2(var_3, var_3), 0i, global0.c << (u_input.d % 32u), u_input.c))));
}

