struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = -2147483647i < ~(_wgslsmith_add_i32(global1.c.b.x, u_input.c) >> (global0[_wgslsmith_index_u32(arg_2.x, 32u)] % 32u));
    let var_1 = _wgslsmith_f_op_f32(abs(-632f));
    global1 = Struct_5(select(arg_2.zy, ~select(firstLeadingBit(global1.a), vec2<u32>(arg_1.d, 34310u), true), !any(!arg_0.yy)), (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.a, arg_2.zz), min(vec2<u32>(50616u, arg_1.d), arg_3.xy)) ^ arg_2.x) <= 36085u, global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -2211f, global1.c.a.x) + global1.d));
    var var_2 = Struct_2(Struct_1(vec2<f32>(763f, var_1), vec4<i32>(-_wgslsmith_div_i32(u_input.c, -2147483647i), abs(global1.c.b.x << (0u % 32u)), firstLeadingBit(-1i) | ~global1.c.b.x, u_input.c)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_1)))), global1.c.b));
    global0 = array<u32, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * _wgslsmith_f_op_f32(ceil(-1000f))));
}

fn func_2() -> u32 {
    global0 = array<u32, 32>();
    var var_0 = Struct_5(vec2<u32>(u_input.b.x, 26065u), true, Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, global1.b, false), Struct_3(false, vec4<bool>(true, global1.b, false, global1.b), false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)]), u_input.a, vec3<u32>(4294967295u, u_input.b.x, 5125u))), _wgslsmith_f_op_f32(883f + global1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1466f)) - _wgslsmith_f_op_f32(sign(-1496f)))), ~global1.c.b), global1.d);
    var var_1 = select(!var_0.b, true, true);
    var var_2 = true;
    var var_3 = Struct_4(1i, Struct_3(false, select(select(vec4<bool>(var_0.b, false, true, false), !vec4<bool>(false, false, var_0.b, false), select(vec4<bool>(var_0.b, false, global1.b, false), vec4<bool>(true, true, global1.b, false), var_0.b)), vec4<bool>(false, var_0.b, !global1.b, true), true), global1.b, countOneBits(max(_wgslsmith_clamp_u32(u_input.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 32u)], var_0.a.x), var_0.a.x))));
    return ~min(firstLeadingBit(min(1u, 4294967295u)) << (~global0[_wgslsmith_index_u32(var_0.a.x, 32u)] % 32u), ~(~abs(u_input.b.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> Struct_4 {
    global1 = Struct_5(vec2<u32>(global0[_wgslsmith_index_u32(49227u, 32u)], ~1u) | vec2<u32>(51073u, min(4294967295u | global0[_wgslsmith_index_u32(1420u, 32u)], ~31683u)), all(!(!arg_0)) && false, global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_2), global1.d, arg_0)))));
    var var_0 = -40022i;
    var_0 = 4938i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), global1.d.x)), -354f, false)) + _wgslsmith_f_op_f32(step(-1138f, 1f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-global1.d);
    return Struct_4(-1i << (~(44917u & _wgslsmith_div_u32(84536u, global1.a.x)) % 32u), Struct_3(!(~0u == (global1.a.x >> (10107u % 32u))), vec4<bool>(all(vec2<bool>(false, false)), all(!arg_0.zz), all(select(vec3<bool>(true, global1.b, arg_0.x), vec3<bool>(global1.b, false, global1.b), vec3<bool>(arg_0.x, true, false))), any(select(arg_0, arg_0, vec3<bool>(true, true, false)))), any(!vec3<bool>(true, arg_0.x, global1.b)) && !all(vec3<bool>(arg_0.x, false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 32u)], global1.a.x), abs(1u), global0[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_sub_vec4_u32(~vec4<u32>(48330u, 1u, 1u, 4294967295u), select(vec4<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(30962u, 32u)], global1.a.x), vec4<u32>(global0[_wgslsmith_index_u32(global1.a.x, 32u)], global0[_wgslsmith_index_u32(57243u, 32u)], 866u, global1.a.x), vec4<bool>(arg_0.x, arg_0.x, false, false))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_5 {
    global0 = array<u32, 32>();
    var var_0 = firstTrailingBit(vec2<i32>(u_input.c, -2147483647i));
    let var_1 = func_4(vec3<bool>(global1.b, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 10444u, 1u) ^ func_2(), 32u)] > u_input.b.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.a * _wgslsmith_f_op_vec2_f32(global1.d.xz * vec2<f32>(-545f, 529f)))), _wgslsmith_f_op_f32(-global1.c.a.x));
    let var_2 = var_1.b.b.xxx;
    global1 = Struct_5(u_input.b.zz, true, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global1.d.yz)), vec4<i32>(_wgslsmith_mod_i32(global1.c.b.x, 2147483647i), _wgslsmith_mod_i32(var_0.x, 47928i), 0i, ~(-2147483647i)) ^ (vec4<i32>(2147483647i, arg_0, 1i, arg_0) << (vec4<u32>(global0[_wgslsmith_index_u32(81677u, 32u)], 1u, 55709u, var_1.b.d) % vec4<u32>(32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - -1049f)), _wgslsmith_f_op_f32(step(-1000f, global1.c.a.x)), _wgslsmith_div_f32(global1.c.a.x, global1.d.x)), global1.d));
    return Struct_5(~global1.a, arg_1, global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -408f, global1.c.a.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global1.d, global1.d))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, global1.c.a.x, 1466f) + global1.d), global1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_i32(~u_input.c, 15081i) != u_input.c, !(!vec4<bool>(!global1.b, u_input.c != 41463i, false, global1.b)), 2014f >= _wgslsmith_f_op_f32(-global1.d.x), global1.a.x);
    global0 = array<u32, 32>();
    var var_1 = func_1(0i, !all(var_0.b), -32406i);
    let var_2 = Struct_5(~((vec2<u32>(0u, global1.a.x) & vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x)) & _wgslsmith_div_vec2_u32(~u_input.b.xx, ~var_1.a)), (15038u | func_1(-global1.c.b.x, true, 4954i).a.x) <= var_0.d, Struct_1(var_1.d.zy, -min(vec4<i32>(22054i, global1.c.b.x, 0i, var_1.c.b.x), abs(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), var_1.c.b.wy), var_0.b.x, u_input.c).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.a.x, -1000f, false)) * 245f), var_1.d.x))));
    let var_3 = i32(-1i) * -4016i;
    let x = u_input.a;
    s_output = StorageBuffer(-331f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, var_2.d.x, -1000f, global1.d.x)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-575f, -816f, -2224f, -357f), vec4<f32>(global1.d.x, global1.c.a.x, var_1.d.x, 3073f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.x, var_1.c.a.x, var_1.c.a.x, 1002f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.a.x, var_1.d.x, -129f, var_2.c.a.x)))))), _wgslsmith_f_op_vec2_f32(var_1.d.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.a)))), u_input.b, global1.c.b.xx);
}

