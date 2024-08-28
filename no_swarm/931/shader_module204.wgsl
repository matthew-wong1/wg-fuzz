struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(514f, -1923f, -988f, -835f), vec2<f32>(-995f, -243f), 4294967295u, Struct_1(355f, vec2<bool>(true, true)), -17327i);

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = vec3<u32>(arg_1.b, ~(7255u << (reverseBits(0u) % 32u)) & min(41584u, u_input.a.x), 0u);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(-vec4<i32>(-13715i, 1i, -1i, global1.e), u_input.b), min(firstLeadingBit(vec4<i32>(arg_1.c, global1.e, u_input.c, -2147483647i)), vec4<i32>(arg_1.c, u_input.b.x, -2147483647i, global1.e)) << (~(~vec4<u32>(58532u, var_0.x, u_input.a.x, u_input.d.x)) % vec4<u32>(32u))), -2147483647i);
    let var_2 = any(global2.yyy) && all(select(vec3<bool>(all(vec2<bool>(global2.x, true)), any(vec2<bool>(true, arg_1.a.b.x)), !global1.d.b.x), vec3<bool>(!global1.d.b.x, !global1.d.b.x, all(vec4<bool>(arg_1.a.b.x, false, global2.x, global1.d.b.x))), _wgslsmith_mult_i32(35801i, 0i) >= _wgslsmith_add_i32(var_1, 1i)));
    global0 = array<vec2<bool>, 19>();
    var var_3 = select(vec3<u32>(global1.c, 23253u, ~global1.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(24097u, ~4294967295u, 4294967295u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(85258u, var_0.x, 4294967295u), vec3<u32>(arg_1.b, 1u, u_input.a.x)), ~vec3<u32>(1u, arg_1.b, 2654u), var_0.x > arg_1.b)) % vec3<u32>(32u)), ~vec3<u32>(0u, var_0.x, global1.c), vec3<bool>(any(global1.d.b), true, true));
    return select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.d.x, 51753u) << (vec3<u32>(1u, u_input.a.x, var_3.x) % vec3<u32>(32u)), countOneBits(vec3<u32>(49730u, 23683u, u_input.a.x))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 33776u, 51362u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) & vec3<u32>(arg_1.b, global1.c, 1609u), select(vec3<bool>(global2.x, false, global1.d.b.x), vec3<bool>(arg_1.a.b.x, false, false), !global2.wyx)), vec3<u32>(~38341u, abs(7813u), var_0.x)), 19u)], select(!(!vec2<bool>(global2.x, false)), !select(select(vec2<bool>(false, arg_2.x), arg_2, arg_1.a.b.x), vec2<bool>(true, true), select(vec2<bool>(true, true), arg_1.a.b, global0[_wgslsmith_index_u32(0u, 19u)])), global2.x), all(global2.xxy));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<bool>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.wyx) * global1.a.ywx);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1309f * 645f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528f - arg_2) - _wgslsmith_f_op_f32(floor(314f))) + arg_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(1348f * _wgslsmith_f_op_f32(-arg_0.a)))));
    let var_2 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a.yw)), var_0.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) - global1.b))), u_input.d.x, Struct_1(_wgslsmith_f_op_f32(var_0.x - 251f), !select(vec2<bool>(global2.x, arg_1.x), func_3(var_0, Struct_3(arg_0, u_input.d.x, global1.e), vec2<bool>(global2.x, false)), global1.d.b)), -1i);
    var var_3 = true;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> u32 {
    return ~(~(~firstLeadingBit(min(4294967295u, u_input.a.x))));
}

fn func_5(arg_0: u32) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) + _wgslsmith_div_f32(152f, -1069f)), global1.d.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(736f - 998f), global1.a.x)), _wgslsmith_f_op_f32(trunc(-421f))))), global1.b, func_4(func_2(func_2(global1.d, !vec4<bool>(global1.d.b.x, global1.d.b.x, global2.x, global2.x), _wgslsmith_f_op_f32(-global1.b.x)), select(!vec4<bool>(true, false, global1.d.b.x, global2.x), vec4<bool>(false, global2.x, global1.d.b.x, false), select(vec4<bool>(global1.d.b.x, false, true, global1.d.b.x), vec4<bool>(global1.d.b.x, true, global1.d.b.x, global2.x), vec4<bool>(false, false, global2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f - global1.d.a)))), func_2(func_2(global1.d, vec4<bool>(true, global1.a.x > global1.d.a, all(global2.wzz), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x))), select(!select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, global2.x, global2.x, global1.d.b.x), vec4<bool>(true, true, false, global2.x)), !(!vec4<bool>(true, true, global2.x, false)), !(!vec4<bool>(true, true, global2.x, global2.x))), _wgslsmith_f_op_f32(max(global1.d.a, 293f))), 2147483647i);
    global0 = array<vec2<bool>, 19>();
    var var_0 = u_input.b.yyx;
    let var_1 = func_2(func_2(global1.d, vec4<bool>(!(global1.d.a == -1176f), true, global1.d.b.x, select(global1.d.b.x, false, any(global2.zxy))), global1.d.a), !(!(!select(vec4<bool>(false, true, true, global2.x), vec4<bool>(false, false, global1.d.b.x, global2.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -657f)));
    var var_2 = global1.a;
    return _wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(1000f - global1.b.x));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(~(~(_wgslsmith_mult_u32(17255u, 2606u) & abs(global1.c))), u_input.d.x);
    var var_1 = global1.b.x;
    let var_2 = _wgslsmith_div_i32(2147483647i, ~u_input.c);
    let var_3 = Struct_1(_wgslsmith_div_f32(global1.d.a, _wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_1(global1.d.a, global1.d.b), vec4<bool>(global1.d.b.x, global2.x, true, global2.x), global1.b.x))))), select(!global2.yw, global2.zz, all(vec2<bool>(global2.x, true))));
    var var_4 = _wgslsmith_clamp_u32(1u, ~(4294967295u & u_input.d.x), reverseBits(min(~0u, 1u))) < _wgslsmith_mult_u32(~46238u, ~(~0u));
    return Struct_1(2488f, !vec2<bool>(global1.d.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d.a)))), global1.b.x));
    var var_1 = Struct_3(func_1(), 1u, ~_wgslsmith_dot_vec4_i32(-u_input.b, ~u_input.b));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.a)) * 647f) * -904f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2054f + var_1.a.a)), _wgslsmith_f_op_f32(1114f + _wgslsmith_f_op_f32(-841f + global1.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b.x), 1861f)), _wgslsmith_f_op_f32(610f + func_1().a)), global1.b, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_1.b, 30450u, var_1.b, 38423u), vec4<u32>(13486u, global1.c, 32898u, var_1.b)) >> (~(vec4<u32>(1u, 113147u, global1.c, 61280u) << (vec4<u32>(u_input.d.x, global1.c, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~vec4<u32>(u_input.a.x, 0u, var_1.b, 22311u)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + global1.a.x)))), !func_3(vec3<f32>(902f, var_0.x, var_0.x), Struct_3(var_1.a, var_1.b, -1i), !global0[_wgslsmith_index_u32(22903u, 19u)])), 0i);
    var var_3 = _wgslsmith_mod_vec3_i32(u_input.b.zxy, select(u_input.b.zwy, ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-28201i, 0i, var_1.c), vec3<i32>(global1.e, -1i, 0i))), global2.www));
    let var_4 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yx) + vec2<f32>(_wgslsmith_f_op_f32(sign(-686f)), _wgslsmith_f_op_f32(-var_2.b.x))))), global1.c, var_1.a, var_1.c);
    global2 = vec4<bool>(all(func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(step(450f, var_1.a.a)), -133f), Struct_3(func_2(Struct_1(-1814f, global0[_wgslsmith_index_u32(global1.c, 19u)]), vec4<bool>(true, true, var_4.d.b.x, false), 1448f), var_2.c, -47508i), vec2<bool>(true, true))), var_2.d.b.x, (var_1.b != max(~var_1.b, 32720u)) && true, !((func_1().b.x | select(var_4.d.b.x, global1.d.b.x, false)) || (_wgslsmith_mod_u32(global1.c, 12615u) > ~var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c);
}

