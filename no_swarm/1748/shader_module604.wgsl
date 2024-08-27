struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(183f, 1u, Struct_2(vec3<bool>(false, true, false), vec2<f32>(1007f, -652f), 1i, Struct_1(vec2<u32>(1u, 24611u)), vec2<i32>(i32(-2147483648), 1i)), -306f, -657f);

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 26683u, 4801u, 1u, 0u, 40437u);

var<private> global2: array<i32, 13>;

var<private> global3: Struct_4;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_add_i32(1i, 1i) << (_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], u_input.a) % 32u);
    global2 = array<i32, 13>();
    let var_1 = select(vec2<bool>(!global3.a, global3.a), select(select(vec2<bool>(select(global0.c.a.x, true, false), true), !select(vec2<bool>(global3.a, false), vec2<bool>(true, global0.c.a.x), global0.c.a.x), select(!vec2<bool>(global0.c.a.x, global0.c.a.x), global0.c.a.zy, !global0.c.a.xy)), !vec2<bool>(global0.c.a.x, global0.c.a.x), !select(vec2<bool>(global0.c.a.x, global3.a), select(global0.c.a.yx, vec2<bool>(false, true), global0.c.a.yx), global0.c.a.x)), !select(!global0.c.a.xx, select(global0.c.a.xx, global0.c.a.zy, !global0.c.a.yx), !vec2<bool>(true, global3.a)));
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_4(global3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, arg_0.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(global3.b + vec4<f32>(global3.b.x, global0.d, arg_0.b.x, -859f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.e, 1252f, -635f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, global0.d, global3.b.x, arg_0.b.x) - _wgslsmith_f_op_vec4_f32(select(global3.b, global3.b, global0.c.a.x))))), arg_0.d);
    global1 = array<u32, 6>();
    global2 = array<i32, 13>();
    global0 = Struct_3(_wgslsmith_f_op_f32(-global0.e), 21554u, Struct_2(!select(!vec3<bool>(false, global0.c.a.x, false), select(vec3<bool>(global3.a, false, true), global0.c.a, global3.a), true), _wgslsmith_f_op_vec2_f32(arg_0.b * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.b.yw * vec2<f32>(-1062f, arg_0.b.x))))), -(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) << (arg_0.d.a.x % 32u)), arg_0.d, global0.c.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1116f), 1f, all(global0.c.a))));
    global2 = array<i32, 13>();
    return u_input.c.zz;
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    global2 = array<i32, 13>();
    let var_0 = global0.c.a;
    var var_1 = _wgslsmith_clamp_vec2_u32(select(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d.a.x, 74939u), vec2<u32>(global3.c.a.x, global1[_wgslsmith_index_u32(global3.c.a.x, 6u)]))), ~func_4(Struct_2(vec3<bool>(arg_0.a.x, global3.a, false), arg_0.b, arg_0.c, global0.c.d, vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.d.a.x, 6u)], 13u)], global2[_wgslsmith_index_u32(76383u, 13u)])), func_3(global0.c.e.x, global2[_wgslsmith_index_u32(1u, 13u)])), vec2<bool>(select(!global3.a, true, all(vec2<bool>(true, true))), arg_0.a.x)), ~_wgslsmith_mult_vec2_u32(arg_0.d.a, ~vec2<u32>(1u, 70937u) & (vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72267u, 6u)], 6u)]) << (global3.c.a % vec2<u32>(32u)))), firstLeadingBit(vec2<u32>(abs(u_input.a | arg_0.d.a.x), u_input.c.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.x, 196f, -1296f), _wgslsmith_f_op_vec3_f32(-global3.b.yww))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.b.x)))), -254f), vec3<bool>(select(false, all(vec4<bool>(true, true, global0.c.a.x, true)), true), all(select(arg_0.a, arg_0.a, global0.c.a.x)), global3.a || true))));
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(global0.c.e.x, _wgslsmith_clamp_i32(global0.c.e.x, 43175i, u_input.b.x) & countOneBits(global0.c.e.x)), ~(-global0.c.e.x >> (~13461u % 32u)), -1i) << (~u_input.c.xzy % vec3<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, -412f, 1373f, var_2.x))), global3.b))));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = all(!global0.c.a);
    global1 = array<u32, 6>();
    let var_1 = -10869i & (abs(-1i) >> (arg_1 % 32u));
    global3 = Struct_4(var_0, _wgslsmith_f_op_vec4_f32(func_2(Struct_2(!arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(trunc(2023f))), global2[_wgslsmith_index_u32(global3.c.a.x, 13u)], Struct_1(~vec2<u32>(142986u, u_input.c.x)), global0.c.e))), arg_0.c);
    let var_2 = func_4(global0.c, ~(~4294967295u) ^ max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_0.c.a.x, 64451u), min(vec3<u32>(arg_2.d.a.x, 21265u, u_input.a), u_input.c.wzz)), u_input.c.x)).x;
    return firstTrailingBit(~arg_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(true, all(vec3<bool>(true, -14783i < global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global3.a)), !any(vec2<bool>(false, true))), vec2<f32>(326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f * global0.d)))), ~0i, Struct_1(vec2<u32>(max(_wgslsmith_mult_u32(global0.b, 37772u), global3.c.a.x), 0u)), ~(-(~u_input.b)) >> (func_1(Struct_4(true, global3.b, Struct_1(vec2<u32>(global0.b, u_input.a))), firstTrailingBit(global3.c.a.x) ^ 46326u, Struct_2(vec3<bool>(global3.a, global0.c.a.x, false), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1127f, global3.b.x))), global2[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(global3.c.a), -u_input.b)) % vec2<u32>(32u)));
    global2 = array<i32, 13>();
    var var_1 = Struct_4(global3.a | any(select(!vec3<bool>(false, true, global0.c.a.x), !vec3<bool>(var_0.a.x, true, global0.c.a.x), !vec3<bool>(true, true, var_0.a.x))), global3.b, var_0.d);
    global3 = Struct_4(true, vec4<f32>(2018f, global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-414f * _wgslsmith_f_op_f32(-var_0.b.x))), var_0.d);
    var_1 = Struct_4(!select(select(false, !var_0.a.x, any(vec3<bool>(true, false, false))), true, any(!global0.c.a.zz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.b.x, 239f, var_1.b.x, -1000f), _wgslsmith_f_op_vec4_f32(-var_1.b))))), Struct_1(~(~(global3.c.a << (vec2<u32>(global0.c.d.a.x, 1u) % vec2<u32>(32u))))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1749f - 2196f))) * 1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)), var_0.d);
    var var_2 = var_0;
    let var_3 = -2396i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-346f + -672f), reverseBits(_wgslsmith_sub_i32(global0.c.e.x, global2[_wgslsmith_index_u32(33673u, 13u)]) | var_3) << (1u % 32u), global3.b.x, _wgslsmith_f_op_f32(abs(global0.a)));
}

