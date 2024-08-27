struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(0i, false, vec3<bool>(true, true, false), vec4<bool>(false, false, true, true)), Struct_1(true), vec3<bool>(true, true, true)), Struct_4(Struct_2(1i, true, vec3<bool>(true, true, false), vec4<bool>(true, false, false, true)), Struct_1(false), vec3<bool>(true, true, true)), Struct_4(Struct_2(-30206i, true, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true)), Struct_1(false), vec3<bool>(true, true, true)), Struct_4(Struct_2(29083i, true, vec3<bool>(false, true, true), vec4<bool>(true, false, true, true)), Struct_1(false), vec3<bool>(true, true, false)), Struct_4(Struct_2(-261i, false, vec3<bool>(true, true, false), vec4<bool>(false, true, false, false)), Struct_1(true), vec3<bool>(true, true, true)), Struct_4(Struct_2(-9704i, false, vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), Struct_1(false), vec3<bool>(false, true, false)), Struct_4(Struct_2(1i, false, vec3<bool>(false, true, false), vec4<bool>(false, false, true, true)), Struct_1(true), vec3<bool>(true, true, true)), Struct_4(Struct_2(0i, true, vec3<bool>(true, true, true), vec4<bool>(false, true, true, false)), Struct_1(true), vec3<bool>(true, true, false)), Struct_4(Struct_2(19004i, true, vec3<bool>(false, true, false), vec4<bool>(false, false, false, false)), Struct_1(false), vec3<bool>(true, false, false)), Struct_4(Struct_2(0i, true, vec3<bool>(true, true, true), vec4<bool>(true, true, true, false)), Struct_1(true), vec3<bool>(true, true, false)), Struct_4(Struct_2(68805i, true, vec3<bool>(false, false, false), vec4<bool>(false, false, true, false)), Struct_1(true), vec3<bool>(true, true, true)), Struct_4(Struct_2(2147483647i, false, vec3<bool>(false, false, true), vec4<bool>(true, false, true, false)), Struct_1(false), vec3<bool>(true, true, false)), Struct_4(Struct_2(-1i, true, vec3<bool>(true, true, false), vec4<bool>(false, true, false, false)), Struct_1(true), vec3<bool>(true, false, false)));

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: f32 = -923f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    global0 = array<Struct_4, 13>();
    global1 = array<vec2<u32>, 20>();
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    return 36516i;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4) -> f32 {
    global1 = array<vec2<u32>, 20>();
    var var_0 = -vec2<i32>(u_input.e & (i32(-1i) * -arg_1), _wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -32165i, arg_1), u_input.b.zzy), -vec3<i32>(-37786i, arg_2.a.a, arg_2.a.a))));
    var_0 = countOneBits(u_input.d.xy) ^ ~vec2<i32>(-arg_1, u_input.d.x);
    let var_1 = vec3<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(3393u, u_input.c.x), ~u_input.a), u_input.c.x, _wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_div_u32(13550u, ~u_input.a)) | ~(~vec3<u32>(reverseBits(28864u), firstTrailingBit(u_input.a), u_input.a << (0u % 32u)));
    let var_2 = arg_2.b.a;
    return 1253f;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.c.x ^ u_input.c.x), 1u, 0u), ~vec3<u32>(42522u >> (u_input.c.x % 32u), 4294967295u, 18207u), ~reverseBits(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    var var_2 = var_0;
    global2 = -1415f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1424f, _wgslsmith_f_op_f32(func_3(vec2<f32>(581f, 248f), -1i, Struct_4(Struct_2(arg_0.a.a, false, vec3<bool>(false, var_0.a, true), arg_0.a.d), var_0, vec3<bool>(var_0.a, arg_0.c.x, var_0.a)))))))));
    return Struct_1(!all(select(select(vec3<bool>(false, false, var_0.a), arg_0.c, arg_0.a.d.wzx), !vec3<bool>(var_0.a, arg_0.b.a, arg_0.b.a), true)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_4, 13>();
    let var_0 = vec3<bool>(any(vec3<bool>(true, true, all(select(vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_0.a, arg_1, false), false)))), !arg_1, any(vec4<bool>(true, all(vec2<bool>(true, true)) == (arg_0.a || false), true, false)));
    var var_1 = abs(~arg_3);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -775f), 1719f)) > 186f;
    let var_3 = any(!var_0);
    return func_2(Struct_4(Struct_2(-8902i, any(select(vec4<bool>(var_3, var_0.x, var_0.x, arg_0.a), vec4<bool>(var_0.x, var_0.x, var_3, arg_1), vec4<bool>(var_0.x, true, arg_1, arg_1))), vec3<bool>(arg_0.a, true, false), select(!vec4<bool>(false, arg_0.a, true, true), !vec4<bool>(arg_0.a, arg_1, var_3, var_0.x), select(vec4<bool>(true, var_3, arg_1, true), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_3, var_0.x, var_3, false)))), arg_0, var_0));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1036f + _wgslsmith_f_op_f32(-895f - 355f))), -1703f, -1659f) + vec3<f32>(365f, _wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) + _wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f - -500f)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1430f)) * var_0.x) * -982f));
    var var_1 = arg_1.a.a;
    let var_2 = Struct_4(Struct_2(abs(max(~arg_0.x, u_input.d.x ^ arg_0.x)), arg_1.a.b, !select(!arg_2, !arg_1.a.c, !arg_2), arg_1.a.d), arg_1.b, vec3<bool>(true, var_0.x > -1000f, arg_3.a));
    return Struct_2(abs(max(-_wgslsmith_clamp_i32(arg_0.x, u_input.b.x, 13919i), -(var_2.a.a << (4294967295u % 32u)))), !arg_1.c.x, !var_2.a.c, !(!(!(!vec4<bool>(true, arg_1.a.c.x, false, var_2.b.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(vec3<i32>(select(u_input.b.x, func_1(), true), _wgslsmith_add_i32(u_input.e, u_input.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(7513u, 15371u, 11061u, u_input.a), vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x)) % 32u), _wgslsmith_mult_i32(u_input.b.x, 76491i) & ~u_input.e), Struct_4(Struct_2(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -75951i, u_input.b.x)), true, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), func_4(func_2(Struct_4(Struct_2(u_input.d.x, true, vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), Struct_1(true), vec3<bool>(true, false, true))), true, min(u_input.c.x, u_input.a), -u_input.e), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, func_2(global0[_wgslsmith_index_u32(u_input.a, 13u)]).a, true)), func_2(Struct_4(Struct_2(35908i, true, vec3<bool>(true, true, false), vec4<bool>(false, false, false, false)), Struct_1(false), vec3<bool>(false, true, true)))), Struct_1(!select(all(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(_wgslsmith_div_i32(i32(-1i) * -31843i, u_input.e)), select(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 21439i, var_0.a.a, -2147483647i), ~u_input.b), max(abs(var_0.a.a), select(2147483647i, var_0.a.a, true)), true)), max(select(vec3<i32>(~(-22222i), u_input.e, 2147483647i), u_input.b.xyw, !var_0.c), ~(u_input.d ^ vec3<i32>(-38377i, 14772i, u_input.b.x)) ^ vec3<i32>(firstTrailingBit(8435i), 11683i, u_input.e)), _wgslsmith_f_op_f32(529f - 2031f), vec2<i32>(reverseBits(1i), -2147483647i & var_0.a.a));
}

