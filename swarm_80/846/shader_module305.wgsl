struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -1i);

var<private> global3: vec3<f32> = vec3<f32>(-322f, -772f, 686f);

var<private> global4: array<i32, 24> = array<i32, 24>(3016i, 1i, 0i, 1926i, -1i, 2147483647i, -1i, 1i, -1i, 2147483647i, -33446i, -58834i, -16510i, 2147483647i, -1i, -1i, 1i, i32(-2147483648), -39439i, -43570i, i32(-2147483648), -1i, -10315i, -11062i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(countOneBits(global4[_wgslsmith_index_u32(u_input.b, 24u)]), u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(-1i), select(u_input.a.x, 24098i, arg_1.b.x), 0i), -2459i), u_input.a), ~_wgslsmith_clamp_vec4_i32(~u_input.a << (vec4<u32>(25953u, 35900u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(~(-1i), 1i, -u_input.a.x, global4[_wgslsmith_index_u32(arg_3.x, 24u)]), ~(~vec4<i32>(global4[_wgslsmith_index_u32(40907u, 24u)], global2.x, u_input.a.x, global4[_wgslsmith_index_u32(u_input.b, 24u)]))));
    global3 = arg_0.wwy;
    let var_1 = Struct_3(select(select(!arg_1.d, arg_1.d, !any(arg_2.d)), select(!arg_1.d, arg_1.b, vec3<bool>(arg_2.d.x, arg_1.d.x, arg_2.d.x)), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-arg_2.a.x)) > arg_0.x));
    var var_2 = 8537u;
    var var_3 = Struct_2(!vec4<bool>(any(vec3<bool>(false, arg_2.d.x, var_1.a.x)), !any(vec2<bool>(false, var_1.a.x)), !var_1.a.x, arg_1.d.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(arg_2.c, -1000f), global3.x))))), _wgslsmith_f_op_vec3_f32(arg_0.yxw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.wyx, vec3<f32>(596f, 1123f, arg_1.c), true))))), arg_1.a.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, arg_0.x))))))) * vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-global3.x)));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(!any(vec4<bool>(false, false, false, true)), true, true, !any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(global3.x, -158f, global3.x, 745f), Struct_1(global3.xy, vec3<bool>(true, true, true), global3.x, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(global3.x, -1197f), vec3<bool>(false, true, false), global3.x, vec3<bool>(true, true, true)), vec2<u32>(1u, u_input.b))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1077f, -427f) * _wgslsmith_f_op_f32(f32(-1f) * -697f)), _wgslsmith_f_op_f32(f32(-1f) * -1120f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1104f * 1541f) * _wgslsmith_f_op_f32(1086f + global3.x)), _wgslsmith_div_f32(1998f, _wgslsmith_f_op_f32(f32(-1f) * -1097f)), _wgslsmith_f_op_f32(abs(-100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-327f, 399f, true)), _wgslsmith_f_op_f32(min(global3.x, 588f))), _wgslsmith_f_op_f32(round(-1261f)), any(vec2<bool>(true, true))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-795f, 650f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))), global3.yx, var_0.a.x)), select(!(!var_0.a.wwx), vec3<bool>(any(var_0.a.wz), var_0.a.x || var_0.a.x, false), all(select(!var_0.a.ywx, select(var_0.a.wyz, var_0.a.zzw, var_0.a.x), global2.x != -1i))), -116f, vec3<bool>(true, var_0.a.x && false, !(~46088u < u_input.b)));
    let var_2 = Struct_3(select(select(vec3<bool>(any(var_1.d.zy), var_1.d.x || false, true), select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_1.b.x, false, var_0.a.x)), false), vec3<bool>(false, true, true), !(!var_1.b.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -522f)))), !vec3<bool>(all(!vec4<bool>(false, var_1.d.x, var_2.a.x, var_2.a.x)), true, false), _wgslsmith_f_op_f32(select(1499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-930f)))), true)), vec3<bool>(false, true, true));
    let var_3 = Struct_3(select(select(select(select(vec3<bool>(var_0.a.x, var_1.b.x, true), vec3<bool>(false, var_2.a.x, var_1.b.x), vec3<bool>(var_2.a.x, true, true)), var_2.a, all(var_0.a.xx)), select(!vec3<bool>(var_2.a.x, var_2.a.x, var_0.a.x), vec3<bool>(false, var_1.b.x, var_1.b.x), select(vec3<bool>(var_2.a.x, var_0.a.x, true), vec3<bool>(true, true, true), true)), !all(var_2.a.zx)), vec3<bool>(any(var_2.a), true, var_2.a.x), vec3<bool>(countOneBits(745i) <= _wgslsmith_div_i32(u_input.a.x, global4[_wgslsmith_index_u32(u_input.b, 24u)]), !(!var_2.a.x), all(var_0.a.zw))));
    return ~(~(abs(u_input.a.x) >> (47474u % 32u)) | ~(-35471i));
}

fn func_1() -> i32 {
    global1 = array<vec4<f32>, 22>();
    global1 = array<vec4<f32>, 22>();
    global1 = array<vec4<f32>, 22>();
    var var_0 = vec2<i32>(-36815i, _wgslsmith_clamp_i32(~global2.x, func_2() ^ _wgslsmith_add_i32(global2.x, 10639i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-51032i, global2.x), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 22528u, 26392u), vec3<u32>(60041u, 4294967295u, u_input.b)), 24u)])) | global4[_wgslsmith_index_u32(countOneBits(~u_input.b) >> (u_input.b % 32u), 24u)]);
    global1 = array<vec4<f32>, 22>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_1() >= _wgslsmith_mod_i32(_wgslsmith_mult_i32(15864i ^ global4[_wgslsmith_index_u32(u_input.b, 24u)], global2.x), u_input.a.x ^ 0i), !(true && (true & any(vec2<bool>(true, false)))));
    global4 = array<i32, 24>();
    var var_1 = Struct_3(vec3<bool>(u_input.b >= u_input.b, true, var_0.x));
    global2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, 97344u, u_input.b, 32168u) | vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u)), vec4<u32>(max(u_input.b, u_input.b), u_input.b, ~u_input.b, countOneBits(51553u))), 22u)], vec4<f32>(1000f, -810f, global3.x, global3.x))), ~33677i, ~u_input.b, global2.wx, _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(325f - 1089f) + global3.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -572f)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-238f, global3.x))), var_1.a, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(f32(-1f) * -179f)), !vec3<bool>(var_1.a.x, true, true)), Struct_1(vec2<f32>(global3.x, global3.x), !var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(189f, 234f)))), !(!var_1.a)), vec2<u32>(19148u, select(u_input.b, 4294967295u, all(vec2<bool>(false, false)))))).x);
}

