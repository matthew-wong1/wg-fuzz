struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 125f, arg_2.e.c, arg_2.e.c) + vec4<f32>(-579f, arg_2.c, arg_0.x, -221f)))) * arg_0))));
    var var_1 = Struct_1(!arg_2.e.a, all(select(vec2<bool>(true, true), !arg_2.e.e.zy, arg_2.e.a.zw)), _wgslsmith_f_op_f32(ceil(var_0.x)), !arg_2.e.e.x, !select(arg_2.e.a.wxz, !select(vec3<bool>(arg_2.e.e.x, false, true), arg_2.e.a.xwy, vec3<bool>(false, arg_2.e.a.x, true)), arg_2.e.e));
    var_1 = Struct_1(arg_2.e.a, !arg_2.e.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-432f)))), (!(!arg_2.e.a.x) | (3285u > arg_1.x)) || arg_2.e.a.x, select(arg_2.e.a.ywy, vec3<bool>(arg_2.a.b < _wgslsmith_dot_vec3_u32(vec3<u32>(268u, 1u, 4294967295u), vec3<u32>(arg_2.d.x, u_input.c, global0[_wgslsmith_index_u32(1u, 6u)])), !arg_2.e.d, arg_2.e.a.x), !(!(!vec3<bool>(var_1.b, arg_2.e.e.x, true)))));
    let var_2 = vec3<f32>(-755f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-383f, arg_0.x), -375f))))), var_1.c);
    var var_3 = vec4<u32>(global0[_wgslsmith_index_u32(arg_2.a.b, 6u)], 1u, ~49611u, 0u);
    return _wgslsmith_div_f32(var_0.x, arg_2.e.c);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_2 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.c)) - _wgslsmith_f_op_f32(func_3(vec4<f32>(-134f, global1.x, -2340f, global1.x), vec2<u32>(11281u, u_input.c), Struct_3(Struct_2(u_input.a.zx, 0u), Struct_2(vec2<i32>(-1i, u_input.d), u_input.c), global1.x, vec4<u32>(u_input.c, 0u, global0[_wgslsmith_index_u32(35730u, 6u)], 1u), Struct_1(vec4<bool>(true, arg_2.x, arg_2.x, false), true, arg_0.a.c, arg_0.a.a.x, arg_0.a.a.zyx)))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f - 867f) * _wgslsmith_f_op_f32(arg_0.a.c - global1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -166f)), global1.x)), -1020f, -1364f);
    global1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(arg_0.a.c * 461f), _wgslsmith_f_op_f32(global1.x + -946f), _wgslsmith_f_op_f32(arg_0.a.c - -790f))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1446f, 1000f, arg_0.a.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-160f - arg_0.a.c)))))));
    return Struct_2(arg_1.ww, 1u ^ reverseBits(~u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    return _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-arg_0.a.x), u_input.a.x, firstLeadingBit(firstTrailingBit(2147483647i)), u_input.d), ~vec4<i32>(~arg_0.a.x, arg_0.a.x, arg_0.a.x, _wgslsmith_clamp_i32(u_input.a.x, arg_0.a.x, arg_0.a.x))) ^ ~_wgslsmith_add_i32(u_input.a.x, u_input.d);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = vec4<bool>(52592i == abs(u_input.a.x), select(func_4(func_2(Struct_4(Struct_1(vec4<bool>(true, true, false, false), true, arg_1.x, false, vec3<bool>(false, true, false)), 4294967295u), vec4<i32>(1i, 2147483647i, arg_0, u_input.a.x), vec2<bool>(true, true)), Struct_4(Struct_1(vec4<bool>(true, false, true, false), true, arg_3, false, vec3<bool>(true, true, true)), u_input.c)) == _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, -84007i), abs(-1i)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)) & true, !(~u_input.d < u_input.d)), true, true);
    let var_1 = Struct_1(!(!select(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), true)), all(select(select(vec2<bool>(true, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), var_0.x), true), !(!vec2<bool>(var_0.x, false)), any(var_0.yy))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, arg_1.x, global1.x, _wgslsmith_f_op_f32(arg_3 * arg_1.x)))), arg_2.xz, Struct_3(func_2(Struct_4(Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x, arg_1.x, true, vec3<bool>(var_0.x, var_0.x, var_0.x)), arg_2.x), ~vec4<i32>(151i, 2147483647i, u_input.d, u_input.a.x), var_0.xw), func_2(Struct_4(Struct_1(vec4<bool>(true, false, var_0.x, false), false, global1.x, true, var_0.yyy), global0[_wgslsmith_index_u32(12306u, 6u)]), select(vec4<i32>(-24150i, u_input.a.x, -1i, -56382i), vec4<i32>(-1i, u_input.d, u_input.a.x, arg_0), vec4<bool>(true, true, var_0.x, true)), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-711f)) + -481f), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(33732u, 49359u, 4790u, 11559u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.b, 79500u, 557u))), Struct_1(!vec4<bool>(true, false, var_0.x, var_0.x), all(vec4<bool>(true, var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(trunc(arg_3)), !var_0.x, var_0.zyx)))), true, !var_0.wzx);
    var var_2 = Struct_4(var_1, ~u_input.c);
    var var_3 = ~max(9851i, _wgslsmith_add_i32(-max(arg_0, -46471i), _wgslsmith_div_i32(-arg_0, 1i)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(abs(-1289f)), global1.x, _wgslsmith_f_op_f32(-arg_3));
    return Struct_2(abs(vec2<i32>(u_input.d, ~u_input.a.x & 1i)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_2.b, u_input.c), 6u)]);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.e.c)), _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.e.c, 583f, arg_1.c, arg_1.c), vec2<u32>(arg_0.x, 0u), arg_1)), _wgslsmith_f_op_f32(arg_1.c + global1.x), -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, global1.x, global1.x, -521f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 388f, global1.x, -164f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1198f, -267f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1225f, 2645f, arg_1.e.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 720f, -231f, arg_1.c) + vec4<f32>(-920f, 834f, global1.x, arg_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-407f, -675f, global1.x, -911f), vec4<f32>(global1.x, 2052f, -150f, arg_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, -1190f, -1000f, -1413f) - vec4<f32>(arg_1.c, arg_1.c, -1142f, -402f)), select(vec4<bool>(false, arg_1.e.b, false, arg_1.e.d), vec4<bool>(arg_1.e.b, true, true, false), arg_1.e.b)))), vec4<bool>(true, !(!arg_1.e.a.x), true, select(arg_0.x >= arg_1.a.b, all(arg_1.e.e.zy), u_input.a.x >= arg_1.a.a.x))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, arg_1.c, 371f) - vec3<f32>(arg_1.e.c, -1669f, 452f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(439f, 364f, arg_1.e.c), global1.wyz, arg_1.e.a.xwx)))) * global1.zxy));
    let var_1 = Struct_4(Struct_1(!vec4<bool>(select(false, arg_1.e.a.x, false), !arg_1.e.b, any(arg_1.e.a.xzz), arg_1.e.b), true, global1.x, 4294967295u >= arg_1.b.b, vec3<bool>(true, false, true & arg_1.e.a.x)), 1u);
    var_0 = global1.xyw;
    global0 = array<u32, 6>();
    return Struct_3(func_2(var_1, firstTrailingBit(vec4<i32>(1i, arg_1.b.a.x << (1u % 32u), _wgslsmith_mod_i32(arg_1.b.a.x, -20411i), _wgslsmith_sub_i32(arg_1.a.a.x, u_input.d))), vec2<bool>(arg_1.e.e.x, all(var_1.a.a.yxw))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c, var_0.x, -416f, -246f)), _wgslsmith_div_vec2_u32(min(arg_0.yx, vec2<u32>(var_1.b, 1u)), abs(vec2<u32>(32119u, 4294967295u))), Struct_3(func_1(-12209i, global1.wx, arg_1.d.zxw, -1000f), Struct_2(vec2<i32>(arg_1.a.a.x, -12059i), arg_1.a.b), arg_1.e.c, arg_1.d, Struct_1(vec4<bool>(arg_1.e.d, true, var_1.a.d, false), true, var_1.a.c, arg_1.e.d, vec3<bool>(true, true, arg_1.e.a.x)))))), arg_1.d, arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], _wgslsmith_mult_u32(0u, 0u)), countOneBits(~global0[_wgslsmith_index_u32(0u, 6u)])), 6u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(418f, 1024f, global1.x, global1.x), vec4<f32>(global1.x, -698f, global1.x, global1.x), false))))));
    var var_2 = func_5(vec4<u32>(firstLeadingBit(~4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(5645u, 6u)], global0[_wgslsmith_index_u32(39237u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]), vec3<u32>(global0[_wgslsmith_index_u32(4787u, 6u)], 0u, global0[_wgslsmith_index_u32(114773u, 6u)])) % 32u)), ~(70211u | global0[_wgslsmith_index_u32(1u, 6u)]) ^ _wgslsmith_clamp_u32(~1u, ~u_input.b, global0[_wgslsmith_index_u32(14603u, 6u)]), u_input.c, ~(~global0[_wgslsmith_index_u32(abs(51728u), 6u)])), Struct_3(Struct_2(u_input.a.zz, ~firstLeadingBit(u_input.c)), func_1(u_input.d, var_1.yz, select(firstLeadingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(42570u, 6u)], 8054u)), vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 6u)], 54113u) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], u_input.c), true), _wgslsmith_f_op_f32(f32(-1f) * -552f)), -694f, _wgslsmith_clamp_vec4_u32(vec4<u32>(23622u | u_input.c, ~38449u, u_input.b, abs(global0[_wgslsmith_index_u32(23172u, 6u)])), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.c, 4u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(13922u, u_input.b, 17727u, global0[_wgslsmith_index_u32(1u, 6u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 6u)], 6u)], 6u)], 11558u, 87546u)), vec4<u32>(u_input.b, u_input.c, u_input.c, 0u) ^ vec4<u32>(38832u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.c)), ~(vec4<u32>(global0[_wgslsmith_index_u32(1u, 6u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 6u)], 6u)], u_input.c) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4309u, 6u)], 6u)], 1u, 26391u, 25139u) % vec4<u32>(32u)))), Struct_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2176f, global1.x, true)))), true, select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true))));
    var_0 = ~global0[_wgslsmith_index_u32(~(~func_5(vec4<u32>(20194u, 21545u, global0[_wgslsmith_index_u32(20919u, 6u)], 3934u), func_5(var_2.d, Struct_3(var_2.a, Struct_2(vec2<i32>(u_input.d, -19958i), 4294967295u), global1.x, var_2.d, Struct_1(vec4<bool>(var_2.e.e.x, var_2.e.d, var_2.e.e.x, var_2.e.b), var_2.e.b, 1387f, false, var_2.e.e)))).d.x), 6u)];
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 6u)], countOneBits(1u | u_input.c), func_1(-var_2.b.a.x, _wgslsmith_f_op_vec2_f32(global1.xw * var_1.yx), max(var_2.d.wxy, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.b, 6u)], 6u)], 6u)], 0u, var_2.b.b)), -117f).b), vec3<u32>(var_2.b.b, 22916u, ~1u)) ^ var_2.d.yyw;
    var_3 = vec3<u32>(2243u, var_3.x, u_input.b);
    var var_4 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(abs(~var_2.d), vec4<u32>(global0[_wgslsmith_index_u32(32197u, 6u)], abs(44302u), 4294967295u, ~var_3.x)) >> (countOneBits(firstLeadingBit(var_2.d)) % vec4<u32>(32u)), 0u, min(~var_3.x, 4294967295u));
}

