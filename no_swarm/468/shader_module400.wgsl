struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.a.d;
    var var_1 = !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.a.e.b, reverseBits(~arg_2.b)) << ((reverseBits(firstLeadingBit(1u)) >> ((_wgslsmith_mod_u32(arg_3.a.e.a, 4294967295u) & 25355u) % 32u)) % 32u), 19u)];
    global2 = array<vec3<bool>, 19>();
    let var_2 = _wgslsmith_f_op_f32(783f * _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.d, global1.c))));
    var var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f * _wgslsmith_f_op_f32(sign(arg_0.a.c))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(global1.a, vec3<f32>(arg_0.a.c, global1.a.x, -1610f), -1000f, true, Struct_1(1u, vec3<u32>(arg_2.a.x, 27754u, 4294967295u), vec3<i32>(-1i, arg_0.a.e.c.x, 56273i), arg_2.a.x)), 2147483647i, Struct_3(Struct_1(u_input.c.x, global1.e.b, arg_0.c.a.c, 19445u)), global1.c), arg_2, arg_0.c.a, Struct_4(Struct_2(vec3<f32>(global1.c, global1.a.x, arg_0.a.b.x), vec3<f32>(global1.a.x, -300f, arg_0.a.a.x), -575f, global1.d, Struct_1(28039u, global1.e.b, vec3<i32>(global1.e.c.x, 15922i, arg_0.a.e.c.x), 4294967295u)), global1.e.c.x, Struct_3(arg_0.a.e), 464f)))), 1005f)));
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(657f - -1191f), -135f)), 808f, -351f), _wgslsmith_f_op_vec3_f32(arg_0.a.a - vec3<f32>(-776f, arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1982f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-2193f)), global1.b.x, arg_0.a.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), all(!select(select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a.d), arg_1.wz), !vec2<bool>(global1.d, arg_1.x), true)), Struct_1(25366u, min((vec3<u32>(global1.e.a, u_input.c.x, 8988u) << (global1.e.b % vec3<u32>(32u))) << (countOneBits(global1.e.b) % vec3<u32>(32u)), vec3<u32>(~global0[_wgslsmith_index_u32(4294967295u, 25u)], ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(45997u, 27864u), vec2<u32>(0u, 78649u)))), arg_0.c.a.c, 4294967295u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -462f, _wgslsmith_f_op_f32(f32(-1f) * -218f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2000f, -245f, 393f))))), global1.a, false))));
    global0 = array<u32, 25>();
    let var_2 = arg_0;
    return arg_0.d;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = 1i;
    global2 = array<vec3<bool>, 19>();
    var var_1 = vec3<u32>(countOneBits(~max(u_input.c.x, firstLeadingBit(49497u))), 89985u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(select(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4469u, global0[_wgslsmith_index_u32(global1.e.d, 25u)]), 25u)], any(vec4<bool>(false, global1.d, true, global1.d))), 25u)], u_input.c.x) ^ min(global1.e.d, firstLeadingBit(u_input.c.x)));
    var var_2 = false;
    var var_3 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global1.b.x, _wgslsmith_f_op_f32(958f - _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(vec3<f32>(-620f, -1000f, arg_0), global1.b, -470f, global1.d, global1.e), u_input.b, Struct_3(global1.e), global1.a.x), vec4<bool>(global1.d, global1.d, global1.d, true), Struct_5(var_1.zz, global1.d, global1.d))))), global1.a, global1.b.x, -(~39783i) >= reverseBits(global1.e.c.x), Struct_1(1u, ~global1.e.b & _wgslsmith_add_vec3_u32(u_input.a.yyw, u_input.c), ~_wgslsmith_sub_vec3_i32(global1.e.c, global1.e.c), ~0u)), 21984i, Struct_3(global1.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.c)));
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(select(select(vec4<u32>(u_input.a.x, arg_1.a.e.b.x, ~57105u, 0u), (vec4<u32>(6355u, 78093u, 1163u, 0u) | vec4<u32>(66386u, global0[_wgslsmith_index_u32(50447u, 25u)], arg_0, global0[_wgslsmith_index_u32(11124u, 25u)])) | u_input.a, arg_2.x), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(80494u, global0[_wgslsmith_index_u32(arg_1.c.a.b.x, 25u)]), u_input.c.xx), ~(global0[_wgslsmith_index_u32(arg_1.a.e.b.x, 25u)] ^ 0u), 47070u), vec4<bool>(true, !all(vec4<bool>(true, true, false, true)), select(arg_1.a.d, true, func_1(2062f).d), !(!global1.d))), abs(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), vec4<u32>(_wgslsmith_mult_u32(global1.e.b.x, u_input.c.x), 6469u, 44602u, arg_0))));
    let var_1 = all(arg_2.zy);
    var_0 = u_input.a;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.b)), arg_1.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(1113f, arg_1.a.c), _wgslsmith_f_op_f32(global1.a.x + arg_1.d)))), 423f), 217f == global1.c, func_1(_wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1209f + arg_1.a.c))))).e);
    global0 = array<u32, 25>();
    return global1.e;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = u_input.d.x;
    global0 = array<u32, 25>();
    let var_1 = !select(vec4<bool>(all(vec2<bool>(true, true)), global1.d, true, global1.d), vec4<bool>(global1.d, 8786i <= _wgslsmith_clamp_i32(arg_0.a.c.x, 7024i, -1i), any(vec4<bool>(global1.d, global1.d, false, false)), any(vec4<bool>(true, true, true, false)) && false), any(!(!vec4<bool>(true, true, global1.d, global1.d))));
    global2 = array<vec3<bool>, 19>();
    let var_2 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(arg_0.a.d | 1u, 25u)], 19u)];
    return Struct_4(func_1(-450f), func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 1u, 4294967295u | u_input.c.x, u_input.c.x), min(vec4<u32>(arg_0.a.b.x, 89045u, u_input.a.x, global1.e.d), u_input.a)), Struct_4(Struct_2(vec3<f32>(arg_1.x, global1.b.x, -104f), _wgslsmith_f_op_vec3_f32(global1.b + global1.b), 560f, var_2.x | var_2.x, global1.e), 1i, Struct_3(Struct_1(4294967295u, vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(-75334i, -46125i, -2147483647i), u_input.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -274f)))), select(!(!global2[_wgslsmith_index_u32(global1.e.a, 19u)]), !(!var_1.ywz), !global2[_wgslsmith_index_u32(~0u, 19u)])).c.x, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -319f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(4294967295u, 53940u);
    var var_1 = func_5(Struct_3(func_4(u_input.c.x, Struct_4(func_1(-232f), ~u_input.b, Struct_3(Struct_1(u_input.c.x, global1.e.b, vec3<i32>(0i, u_input.b, 2147483647i), global0[_wgslsmith_index_u32(17095u, 25u)])), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(global1.a, vec3<f32>(global1.c, global1.a.x, 1023f), -614f, global1.d, global1.e), u_input.b, Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<i32>(37288i, 9717i, global1.e.c.x), u_input.a.x)), global1.c), vec4<bool>(true, true, false, false), Struct_5(vec2<u32>(74947u, 4294967295u), false, true)))), !global2[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, global1.c, global1.b.x, global1.c), vec4<f32>(268f, global1.b.x, global1.c, -246f), global1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.c, global1.a.x, -435f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 238f, global1.c, global1.a.x)))));
    var var_2 = Struct_5(vec2<u32>(1u, 0u << (~(~var_1.a.e.b.x) % 32u)), false, var_1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 46033u, 0u), firstLeadingBit(vec4<u32>(36339u, 9172u, global0[_wgslsmith_index_u32(global1.e.d, 25u)], 1u))) ^ u_input.a) << (reverseBits(~u_input.a) % vec4<u32>(32u)), 4294967295u);
}

