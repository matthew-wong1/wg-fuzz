struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<i32>(-1i, -73307i, -26006i), Struct_1(236f, 54581u, vec3<i32>(i32(-2147483648), 0i, 11436i), vec2<bool>(false, false))), Struct_2(vec3<i32>(1i, 1i, -19394i), Struct_1(415f, 1u, vec3<i32>(-16560i, -45609i, 15558i), vec2<bool>(false, false))), Struct_2(vec3<i32>(-36630i, 27546i, i32(-2147483648)), Struct_1(338f, 0u, vec3<i32>(7532i, 61699i, 0i), vec2<bool>(true, false))), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 23247i), Struct_1(-518f, 42796u, vec3<i32>(-16762i, -25456i, -1i), vec2<bool>(false, false))), Struct_2(vec3<i32>(i32(-2147483648), 0i, 13419i), Struct_1(-1900f, 8225u, vec3<i32>(1i, 13814i, -32674i), vec2<bool>(true, false))));

var<private> global3: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-1i, 1i, 0i, 0i), vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, -17073i, 2147483647i), vec4<i32>(1i, -1i, -10914i, 0i), vec4<i32>(2147483647i, 2147483647i, 1i, 17075i), vec4<i32>(0i, 21713i, -25988i, 24652i), vec4<i32>(-1i, -1i, -3755i, -45170i), vec4<i32>(0i, 1i, i32(-2147483648), -66365i));

var<private> global4: array<i32, 1> = array<i32, 1>(-6169i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, 232f, -1885f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, 937f, -1000f, 2160f))))));
    global0 = u_input.d.x;
    let var_1 = Struct_3(Struct_2(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i | u_input.a.x, u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.wxx, vec3<i32>(u_input.c.x, global4[_wgslsmith_index_u32(64878u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)]))), global4[_wgslsmith_index_u32(1u, 1u)], -global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 1u)]), Struct_1(_wgslsmith_f_op_f32(trunc(var_0.x)), min(_wgslsmith_div_u32(0u, u_input.d.x), u_input.d.x), ~(u_input.c.www ^ u_input.c.ywx), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)))));
    global2 = array<Struct_2, 5>();
    let var_2 = Struct_1(var_0.x, 60880u, countOneBits(abs(vec3<i32>(reverseBits(var_1.a.b.c.x), -u_input.a.x, _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(u_input.d.x, 1u)], global4[_wgslsmith_index_u32(63795u, 1u)], -58565i)))), !var_1.a.b.d);
    return firstLeadingBit(_wgslsmith_mod_i32(var_2.c.x, 2147483647i ^ -u_input.c.x));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = array<Struct_2, 5>();
    var var_0 = true;
    var var_1 = Struct_1(-1052f, ~(arg_0.b.b << (_wgslsmith_mult_u32(~arg_0.b.b, ~4294967295u) % 32u)), vec3<i32>(-15345i, func_3(), u_input.a.x), select(arg_0.b.d, select(vec2<bool>(arg_0.b.d.x, any(vec4<bool>(false, arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x))), vec2<bool>(true, true), any(select(vec4<bool>(true, true, arg_0.b.d.x, true), vec4<bool>(arg_0.b.d.x, true, true, true), true))), arg_0.b.d.x && !all(arg_0.b.d)));
    let var_2 = _wgslsmith_f_op_f32(sign(126f));
    var_1 = Struct_1(_wgslsmith_div_f32(-716f, arg_0.b.a), abs(~(~_wgslsmith_div_u32(4294967295u, 4294967295u))), countOneBits(~max(var_1.c, vec3<i32>(11460i, -18741i, u_input.a.x))), select(select(var_1.d, vec2<bool>(737f > var_2, select(var_1.d.x, var_1.d.x, arg_0.b.d.x)), any(select(vec3<bool>(arg_0.b.d.x, arg_0.b.d.x, var_1.d.x), vec3<bool>(false, false, var_1.d.x), vec3<bool>(arg_0.b.d.x, arg_0.b.d.x, true)))), select(select(vec2<bool>(arg_0.b.d.x, true), var_1.d, true), !(!var_1.d), vec2<bool>(var_1.d.x | var_1.d.x, false)), !(!vec2<bool>(var_1.d.x, arg_0.b.d.x))));
    return Struct_1(_wgslsmith_f_op_f32(-1316f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-584f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_2 * var_1.a)))), arg_0.b.b, ~((u_input.c.zyw | reverseBits(u_input.b.xzw)) << (u_input.d.ywz % vec3<u32>(32u))), vec2<bool>(true, var_1.d.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    global4 = array<i32, 1>();
    global2 = array<Struct_2, 5>();
    global2 = array<Struct_2, 5>();
    var var_0 = ~u_input.d;
    global4 = array<i32, 1>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1341f * _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-523f * arg_3))), 855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) * 462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-249f, arg_2.a)))) * _wgslsmith_f_op_f32(-arg_2.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.a), arg_3, -1074f, arg_1.b.a) + vec4<f32>(_wgslsmith_div_f32(306f, arg_2.a), _wgslsmith_f_op_f32(-arg_1.b.a), -1847f, func_2(global2[_wgslsmith_index_u32(10084u, 5u)]).a))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(-arg_1.b.a)), reverseBits(~min(1u, arg_1.b.b)), vec3<i32>(-1i, firstLeadingBit(abs(-u_input.b.x)), 29393i), vec2<bool>(all(!vec4<bool>(true, arg_1.b.d.x, false, arg_1.b.d.x)) & any(!vec4<bool>(arg_1.b.d.x, arg_1.b.d.x, false, false)), select(-2608f < _wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_mult_i32(arg_1.a.x, -2147483647i) <= max(1i, arg_1.a.x), any(vec4<bool>(arg_1.b.d.x, arg_1.b.d.x, arg_1.b.d.x, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(u_input.d.x, Struct_2(u_input.b.xwy, func_2(Struct_2(~arg_1.a, Struct_1(arg_1.b.a, 1u, vec3<i32>(2147483647i, 15471i, var_0.c.x), vec2<bool>(var_0.d.x, var_0.d.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f - var_0.a)), ~(~44448u), select(arg_1.a, vec3<i32>(var_0.c.x, func_2(Struct_2(u_input.c.wzz, Struct_1(154f, u_input.d.x, vec3<i32>(u_input.a.x, u_input.c.x, var_0.c.x), var_0.d))).c.x, -2147483647i), true), !vec2<bool>(arg_1.b.d.x, arg_1.b.d.x)), arg_1.b.a));
    let var_2 = arg_1.b.d.x;
    let var_3 = Struct_1(-737f, ~33639u, (~vec3<i32>(arg_1.a.x, var_0.c.x, arg_0) | vec3<i32>(-global4[_wgslsmith_index_u32(arg_1.b.b, 1u)], min(arg_1.a.x, 5445i), 22923i)) | _wgslsmith_sub_vec3_i32(var_0.c, arg_1.b.c), arg_1.b.d);
    var var_4 = func_2(global2[_wgslsmith_index_u32(var_0.b, 5u)]);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c.wwx, func_1(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(4360u, 1u)], -31127i), Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.ww, vec2<i32>(42431i, 34964i)), ~global4[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.c.x), Struct_1(_wgslsmith_f_op_f32(select(419f, -1000f, false)), ~4294967295u, u_input.b.zxx, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))))));
    let var_1 = ~(~(-global4[_wgslsmith_index_u32(u_input.d.x, 1u)]));
    let var_2 = _wgslsmith_f_op_f32(select(var_0.b.a, var_0.b.a, all(!var_0.b.d)));
    var var_3 = u_input.a.x;
    global2 = array<Struct_2, 5>();
    let var_4 = true;
    global4 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~6754u, func_3(), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.wx & vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, var_0.b.b)), vec2<u32>(var_0.b.b, var_0.b.b)));
}

