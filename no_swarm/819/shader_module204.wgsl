struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -426f;

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = select(-abs(select(1i, ~2147483647i, true)), arg_0.d.c.x, 1i < _wgslsmith_mod_i32(1i, arg_0.d.c.x));
    global2 = select(select(select(vec3<bool>(arg_0.a, false, arg_2.x > -1480f), !vec3<bool>(true, global2.x, global2.x), arg_0.a), !(!vec3<bool>(true, global2.x, false)), vec3<bool>(!global2.x, -648f > _wgslsmith_f_op_f32(-arg_3.a), arg_0.a)), vec3<bool>(select(-arg_0.d.c.x <= ~(-2147483647i), arg_0.d.b.x, true), !arg_0.a, arg_0.d.b.x), arg_0.a);
    let var_1 = 63143u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f + arg_3.a)) == 1959f;
    global2 = !vec3<bool>(!arg_0.a != true, true, true);
    return arg_0.d;
}

fn func_3() -> vec3<u32> {
    return ~u_input.c.zzw;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = u_input.e;
    let var_1 = -713f;
    let var_2 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-arg_0));
    let var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(func_3(), ~(vec3<u32>(arg_2.a, 56494u, u_input.d) << (u_input.c.zwx % vec3<u32>(32u)))), u_input.c.yzw);
    let var_4 = firstTrailingBit(~arg_2.a);
    return Struct_4(0u, Struct_3(_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, arg_0, arg_0, 214f) + vec4<f32>(var_2, -1329f, var_1, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, var_1, 858f, arg_0) - vec4<f32>(685f, 539f, -460f, -1037f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, 1110f, 453f, var_1))))))), abs(-(~arg_2.c.x)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    let var_0 = vec4<u32>(1u, ~(~(~arg_1)) << (64962u % 32u), firstTrailingBit(arg_1), ~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 43767u), u_input.c.yxw), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 24704u), min(49755u, arg_0.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.c.yw))), _wgslsmith_f_op_vec2_f32(max(arg_0.c.yw, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.yy))))))) + arg_0.c.xx);
    var var_2 = -18881i;
    let var_3 = var_0.x;
    global2 = select(!(!(!select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, false, false)))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true & any(vec2<bool>(global2.x, global2.x)), true), vec3<bool>(!global2.x & (arg_0.a >= var_3), !(!global2.x), false), vec3<bool>(!(!global2.x), all(!vec4<bool>(false, false, global2.x, global2.x)), (global2.x || true) && any(global2.yx))), all(select(select(!vec4<bool>(true, true, true, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, false)), vec4<bool>(global2.x, !global2.x, select(global2.x, global2.x, false), global2.x), true)));
    return vec3<bool>(false, global2.x, !any(vec3<bool>(global2.x & true, any(vec3<bool>(global2.x, false, false)), global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec3<bool>(global2.x, !global2.x, true), select(func_4(func_2(_wgslsmith_f_op_f32(-1482f * -692f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2351f, 515f, 304f) - vec3<f32>(877f, 452f, 1181f)), func_1(Struct_2(global2.x, 271f, -1000f, Struct_1(1u, vec2<bool>(true, global2.x), vec4<i32>(-37685i, u_input.a.x, u_input.e, 1i))), Struct_3(1000f), vec3<f32>(-1328f, 322f, -173f), Struct_3(1075f))), u_input.b), vec3<bool>(true, true, true), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x) >= u_input.a.x), global2.x);
    global2 = select(select(!func_4(func_2(408f, vec3<f32>(610f, -284f, -2278f), Struct_1(u_input.d, vec2<bool>(global2.x, global2.x), vec4<i32>(1i, u_input.a.x, -1i, u_input.e))), 34782u), select(!(!vec3<bool>(global2.x, global2.x, global2.x)), select(vec3<bool>(false, true, false), !vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, true)), true), func_4(func_2(-271f, vec3<f32>(-545f, 1180f, -354f), Struct_1(u_input.d, global2.yy, vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.e))), ~(~43813u))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1967f * -2176f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1638f)) - 331f), _wgslsmith_mult_u32(1u, countOneBits(7607u)) == u_input.d, true), vec3<bool>(!all(vec3<bool>(true, global2.x, true)) && global2.x, !global2.x, global2.x));
    global2 = select(func_4(func_2(-1000f, _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, 350f, 420f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, 211f, 1000f))), Struct_1(_wgslsmith_mod_u32(u_input.b, 1u), !vec2<bool>(global2.x, global2.x), vec4<i32>(-13458i, -31144i, -2147483647i, -71908i) << (vec4<u32>(u_input.d, 16482u, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), abs(u_input.b)), vec3<bool>(global2.x, all(global2.xx), global2.x), select(!(!vec3<bool>(true, true, global2.x)), func_4(func_2(_wgslsmith_f_op_f32(ceil(-1050f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 243f, 574f) + vec3<f32>(-901f, 1176f, 122f)), Struct_1(u_input.d, global2.yy, vec4<i32>(-1i, 13650i, -1i, u_input.a.x))), _wgslsmith_mult_u32(firstTrailingBit(1u), u_input.c.x)), true));
    let var_0 = func_4(Struct_4(~(abs(u_input.b) & ~u_input.c.x), func_2(_wgslsmith_f_op_f32(-743f + -510f), vec3<f32>(393f, _wgslsmith_f_op_f32(step(-1040f, -491f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(Struct_2(global2.x, 468f, 300f, Struct_1(0u, global2.yz, vec4<i32>(u_input.a.x, 12735i, u_input.a.x, u_input.e))), Struct_3(907f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(437f, 1510f, -145f), vec3<f32>(-587f, -1958f, 844f))), Struct_3(375f))).b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1398f, -132f, -301f, -1729f))))))), i32(-1i) * -1i), ~(~95842u)).zx;
    global1 = func_3().x;
    let var_1 = u_input.e;
    var var_2 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(443f)))) - _wgslsmith_f_op_f32(f32(-1f) * -453f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(162f, 1073f, -1511f), vec3<f32>(788f, 208f, -1638f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-2140f, 1000f, 1106f), vec3<f32>(666f, -573f, -570f)))))), Struct_1(20691u, vec2<bool>(all(vec3<bool>(true, var_0.x, global2.x)), func_4(Struct_4(1u, Struct_3(-337f), vec4<f32>(1186f, -2028f, 534f, -302f), -58447i), ~32888u).x), _wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.e, 1i, -1i, 10295i) | vec4<i32>(var_1, 61788i, u_input.a.x, -1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-29354i, -1i, u_input.a.x, var_1), vec4<i32>(var_1, var_1, 1i, var_1)))));
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(38089u, countOneBits(_wgslsmith_div_u32(0u, u_input.d) << (_wgslsmith_div_u32(0u, 58673u) % 32u))), firstTrailingBit(var_2.a), ~(~var_2.a), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.a, 24056u, 4294967295u, var_2.a), vec4<u32>(abs(u_input.c.x), 4294967295u, 10555u, _wgslsmith_mod_u32(var_2.a, 23696u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 41051u, var_2.a, var_2.a), vec4<u32>(u_input.b, u_input.d, u_input.d, 30917u)) << (firstLeadingBit(u_input.c.x) % 32u), 4294967295u, var_2.a, func_3().x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, var_1, func_1(Struct_2(true, _wgslsmith_f_op_f32(-447f * var_2.b.a), _wgslsmith_div_f32(239f, 497f), Struct_1(4294967295u, var_0, vec4<i32>(u_input.e, 0i, var_2.d, 0i))), Struct_3(_wgslsmith_f_op_f32(step(200f, var_2.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1657f, var_2.b.a, var_2.c.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(302f, -696f, var_2.b.a), var_2.c.yxx))), func_2(_wgslsmith_div_f32(-1230f, 269f), _wgslsmith_f_op_vec3_f32(var_2.c.zxx + vec3<f32>(var_2.b.a, var_2.c.x, var_2.c.x)), func_1(Struct_2(global2.x, -841f, 449f, Struct_1(36542u, vec2<bool>(var_0.x, false), vec4<i32>(387i, var_1, u_input.a.x, u_input.e))), var_2.b, vec3<f32>(2079f, var_2.c.x, 273f), Struct_3(-1175f))).b).c.x, -_wgslsmith_div_i32(var_2.d, 0i)), var_2.c.x, var_1, vec4<i32>(14439i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), u_input.a.yy) << (var_2.a % 32u), -19102i, min(i32(-1i) * -1i, _wgslsmith_sub_i32(19489i, -16905i))) & firstLeadingBit(vec4<i32>(var_2.d, countOneBits(2147483647i), firstTrailingBit(71972i), _wgslsmith_sub_i32(-2147483647i, var_1))));
}

