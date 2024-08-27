struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(48351u, 24271u));

var<private> global1: array<vec3<f32>, 13>;

var<private> global2: vec3<f32> = vec3<f32>(-463f, -138f, 1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    global0 = Struct_2(u_input.a.yz);
    var var_0 = vec4<i32>(u_input.c.x, select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~0i, firstTrailingBit(-16226i), -u_input.c.x, ~u_input.c.x), vec4<i32>(~u_input.c.x, u_input.c.x, 72344i, ~u_input.c.x)), true), u_input.c.x, -u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global2.x * -1682f), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(-719f - -224f)))), vec4<f32>(-1477f, _wgslsmith_f_op_f32(trunc(global2.x)), 772f, _wgslsmith_f_op_f32(trunc(global2.x))), !(true && all(vec2<bool>(true, true))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1696f - 200f)) * -100f), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f + _wgslsmith_f_op_f32(-global2.x))), 113f));
    global0 = Struct_2(~countOneBits(u_input.a.yz));
    return -2147483647i;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, select(~u_input.a, select(u_input.a, vec3<u32>(4294967295u, global0.a.x, 74635u), vec3<bool>(true, true, false)), arg_1.b & false)), 0u));
    var var_0 = arg_0;
    let var_1 = Struct_2(~u_input.a.zx);
    global0 = Struct_2(vec2<u32>(_wgslsmith_add_u32(0u, 21275u & u_input.a.x) >> (firstTrailingBit(0u) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 93688u) ^ var_1.a), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(44819u, var_1.a.x), vec2<u32>(4294967295u, 40585u))))));
    global1 = array<vec3<f32>, 13>();
    return (~(-(~arg_1.c)) <= _wgslsmith_clamp_i32(15997i, 2147483647i, ~arg_1.c)) & any(!(!select(vec2<bool>(arg_1.b, false), vec2<bool>(false, false), vec2<bool>(false, arg_1.b))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec3<i32>(func_2(), ~2831i, ~_wgslsmith_sub_i32(~arg_0.c, -1i));
    let var_1 = Struct_1(~(~_wgslsmith_div_i32(arg_0.a, _wgslsmith_clamp_i32(27696i, -1i, u_input.c.x))), func_3(u_input.c.x, arg_0), u_input.c.x);
    global0 = Struct_2(_wgslsmith_add_vec2_u32((~vec2<u32>(u_input.a.x, u_input.a.x) | ~vec2<u32>(global0.a.x, u_input.b)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14201u, 4294967295u, u_input.b, 1u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, u_input.a.x)), 1u) % vec2<u32>(32u)), vec2<u32>(u_input.b, ~0u)));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(~select(abs(vec2<u32>(1u, 67507u)), vec2<u32>(u_input.a.x, u_input.b) | vec2<u32>(44418u, global0.a.x), vec2<bool>(var_1.b, arg_0.b)) & firstTrailingBit(vec2<u32>(global0.a.x, 1u)));
    return Struct_3(global2.yx, Struct_2(reverseBits(_wgslsmith_div_vec2_u32(~vec2<u32>(44244u, global0.a.x), vec2<u32>(u_input.b, global0.a.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    global0 = Struct_2(u_input.a.yz);
    var var_0 = reverseBits(-33489i);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.b.a.x, 0u), 13u)])))) * global1[_wgslsmith_index_u32(~1u, 13u)]) + global1[_wgslsmith_index_u32(~(~(4294967295u & u_input.a.x)), 13u)]);
    global1 = array<vec3<f32>, 13>();
    var_0 = -43690i;
    return func_1(Struct_1(_wgslsmith_mod_i32(u_input.c.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 23915i), vec2<i32>(u_input.c.x, 24137i)))), !any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), 2328i)).b;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_1(i32(-1i) * -1i, true, _wgslsmith_sub_i32(1i, arg_1 | (-1i | arg_1)));
    return _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(global0.a.x, 13u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.b, 13u)] - vec3<f32>(2482f, global2.x, 573f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(479f, 2018f, -670f), global1[_wgslsmith_index_u32(arg_0.a.x, 13u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.b, 13u)] - global1[_wgslsmith_index_u32(max(1570u, max(~(~u_input.a.x), _wgslsmith_div_u32(u_input.b, firstTrailingBit(global0.a.x)))), 13u)]);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(Struct_1(u_input.c.x, true, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1241f))), select(2147483647i, u_input.c.x | 17369i, false), _wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, u_input.c.x, 79708i), vec3<i32>(2147483647i, u_input.c.x, -14669i))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-global2.x)))) - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(4294967295u, global0.a.x)), 39034u), 13u)]));
    let var_1 = select(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), false, var_0.x > global2.x), true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), true), any(vec2<bool>(true, true)));
    let var_2 = func_4(func_1(Struct_1(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(0i, u_input.c.x)), true, ~min(u_input.c.x, u_input.c.x))), global2.zx);
    var var_3 = Struct_1(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(0i, func_2() & -u_input.c.x)), !var_1.x, ~(-abs(reverseBits(-24137i))));
    var var_4 = Struct_1(36706i, true, ~(-1i));
    var var_5 = Struct_2(~vec2<u32>(_wgslsmith_mod_u32(14334u, global0.a.x), u_input.a.x) & (u_input.a.xz & (func_1(Struct_1(u_input.c.x, var_1.x, -1i)).b.a << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)))));
    var_3 = Struct_1(~_wgslsmith_div_i32(-30595i, ~(-u_input.c.x)), var_4.b, ~(-2147483647i) >> (abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(21890u, 6024u), u_input.a.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

