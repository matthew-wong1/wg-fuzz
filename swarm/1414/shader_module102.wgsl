struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(-2124f, 1609f, 1549f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> vec3<i32> {
    global1 = Struct_2(Struct_1(_wgslsmith_mod_u32(abs(global1.a.a), global1.a.a), arg_1.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a)))), select(select(vec4<bool>(false, false, false, global1.c.d.x), global1.c.d, u_input.b <= 75864u), vec4<bool>(global0.x & false, arg_1.a.a.d.x && global1.a.d.x, all(vec4<bool>(arg_1.a.e.d.x, arg_1.a.a.d.x, global0.x, global0.x)), global0.x), any(select(vec3<bool>(true, global1.c.d.x, arg_2.c.e.d.x), global0.xwy, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.e))), Struct_1(~37731u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, arg_2.c.e.b.x, global1.b)))) * global1.e.b), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f * arg_1.a.a.b.x) * _wgslsmith_f_op_f32(ceil(1000f)))), vec4<bool>(true, u_input.a <= 1i, arg_1.a.a.d.x, arg_1.a.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.d + -572f), 182f))))), arg_2.c.c);
    global2 = arg_1.a.a.b;
    var var_0 = arg_2.d;
    var var_1 = select(!vec3<bool>(global1.e.d.x, arg_0, 83555u != _wgslsmith_mod_u32(arg_2.c.c.a, global1.c.a)), !global0.wxw, select(global1.e.d.wzz, arg_2.c.c.d.zwx, select(!global1.e.d.zyx, vec3<bool>(all(vec4<bool>(global1.a.d.x, false, arg_0, global0.x)), arg_2.c.c.d.x & arg_1.a.c.d.x, true), select(global1.e.d.x, false, any(global1.c.d.wzz)))));
    var var_2 = arg_1;
    return ~max(select(min(vec3<i32>(-28970i, u_input.a, 22501i), vec3<i32>(-40849i, arg_2.d, 2147483647i) & vec3<i32>(-849i, 2147483647i, u_input.a)), select(vec3<i32>(29108i, u_input.c.x, u_input.c.x), -vec3<i32>(arg_2.d, -14794i, u_input.c.x), all(var_2.a.a.d)), true), select(min(vec3<i32>(arg_2.d, 32832i, 2147483647i), vec3<i32>(-2147483647i, u_input.c.x, -38531i)), vec3<i32>(u_input.c.x, u_input.a, -1i), global0.xyy) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.c.a, global1.a.a, var_2.a.a.a) | vec3<u32>(var_2.a.e.a, 6411u, 44788u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.a.a, 1u, global1.c.a), vec3<u32>(0u, global1.e.a, arg_2.b))) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(-1000f)), global1.e.a, Struct_2(global1.e, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-global2.x)), Struct_1(39191u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e.b * global1.e.b) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(574f, global1.d, global1.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-590f)))), vec4<bool>(global1.a.d.x, global1.e.d.x, global1.a.d.x == false, true)), global1.a.b.x, Struct_1(global1.c.a, global1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), !vec4<bool>(global0.x, false, global1.e.d.x, true))), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.c.x, -2147483647i), func_3(true, Struct_4(Struct_2(Struct_1(62214u, global1.e.b, global2.x, vec4<bool>(false, global1.a.d.x, false, true)), arg_0, global1.e, 112f, Struct_1(global1.e.a, global1.e.b, 503f, global1.c.d))), Struct_3(621f, 1u, Struct_2(Struct_1(15762u, vec3<f32>(-665f, arg_0, 1618f), -1000f, vec4<bool>(global0.x, global1.c.d.x, true, global1.e.d.x)), global2.x, global1.a, -292f, global1.e), 20045i, -175f))) ^ -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -1i), global2.x);
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1211f))), vec3<f32>(-606f, var_1.c.c, _wgslsmith_f_op_f32(f32(-1f) * -352f))));
    var var_3 = global1.e.d.ww;
    let var_4 = Struct_2(Struct_1(101136u, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.x, var_0.e, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-607f - var_2.x)), var_2.x), 577f, !select(var_0.c.a.d, vec4<bool>(true, true, true, true), global1.e.d.x)), -1326f, Struct_1(1u, var_1.c.b, -752f, global1.a.d), _wgslsmith_f_op_f32(-global1.d), var_0.c.c);
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = false;
    global1 = Struct_2(arg_0.c.a, global2.x, func_2(_wgslsmith_f_op_f32(trunc(-585f))).c.a, global1.c.b.x, Struct_1(u_input.b, arg_0.c.c.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.c))), func_2(global1.d).c.a.d));
    let var_1 = Struct_4(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(944f, global1.b)), _wgslsmith_f_op_f32(trunc(1315f)))))).c);
    return global2.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: i32) -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(2215f), firstLeadingBit(-2147483647i))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1909f, -1058f))))));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.c + global1.d), _wgslsmith_f_op_f32(round(global2.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global1.d + -290f), var_0, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.b.x, global2.x, -1594f))), global0.x))));
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(717f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))))).c.e, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 * global2.x)), func_2(var_0).c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, var_0) - _wgslsmith_f_op_f32(-125f + 730f)))), global1.a.b.x), global1.e);
    global1 = func_2(var_2.b).c;
    return i32(-1i) * -(~70314i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.a;
    var var_1 = -119f;
    var var_2 = ~_wgslsmith_mult_i32(-(~(u_input.a ^ u_input.a)), func_1(global1.e.a, u_input.a, u_input.c.x, u_input.c.x));
    let var_3 = func_2(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(ceil(global1.a.c)))).c.c.d.yz;
    var var_4 = Struct_1(0u, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.c.c, global2.x))))), 294f, _wgslsmith_f_op_f32(min(-1475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.x)), !func_2(global2.x).c.e.d);
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.e.b, global1.a.b))), var_4.b)) + global1.e.b));
    let var_6 = ~vec4<u32>(reverseBits(1u), ~global1.c.a, ~firstLeadingBit(global1.e.a), ~firstTrailingBit(1u)) << (~vec4<u32>(10638u, min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(136u, 31845u, 4294967295u), vec3<u32>(51047u, 1u, u_input.b))), ~u_input.b ^ _wgslsmith_clamp_u32(19587u, u_input.b, u_input.b), global1.a.a) % vec4<u32>(32u));
    let var_7 = func_2(_wgslsmith_f_op_f32(min(-607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(round(global1.a.c)), true)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(790f, var_5.x, true)), -1053f)))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(u_input.a, -u_input.c.x, -u_input.a, ~(-678i)), (-vec4<i32>(u_input.c.x, u_input.a, 0i, u_input.c.x) | (vec4<i32>(-29474i, -2147483647i, u_input.c.x, u_input.a) | vec4<i32>(0i, u_input.c.x, u_input.c.x, -2147483647i))) ^ vec4<i32>(firstLeadingBit(u_input.a), 0i, 48521i, 2147483647i), var_3.x), u_input.b, ~(-1i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1301f, -934f, -266f, -1245f))), vec4<f32>(var_5.x, var_7.e.c, -661f, var_4.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.x, 1169f, 1162f, 1000f) * vec4<f32>(global2.x, var_5.x, -2828f, 460f))), global1.a.d.x)) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.x)))), 1000f, 971f, _wgslsmith_f_op_f32(f32(-1f) * -1191f))));
}

