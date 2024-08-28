struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1439f), arg_1.c & any(vec4<bool>(any(vec4<bool>(arg_2.c, arg_1.c, true, arg_0.c)), arg_0.c || true, true, any(vec4<bool>(arg_1.c, arg_0.c, arg_2.c, false)))));
    var var_1 = -(vec2<i32>(u_input.a.x, -56106i) ^ vec2<i32>(16532i, max(19981i, u_input.a.x))) << ((_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(min(42254u, 4294967295u), ~1u), vec2<u32>(1u, 1u)) << (vec2<u32>(~8689u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = arg_0.a.x;
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, arg_1.c), select(select(vec3<bool>(arg_1.c, arg_2.c, arg_1.c), !vec3<bool>(var_0.c, arg_0.c, arg_1.c), false), !select(vec3<bool>(false, false, var_0.c), vec3<bool>(true, arg_2.c, false), arg_1.c), arg_2.c)), vec3<bool>(1i == var_1.x, all(select(!vec2<bool>(arg_0.c, arg_2.c), vec2<bool>(true, var_0.c), !vec2<bool>(false, arg_1.c))), true), !vec3<bool>(any(!vec2<bool>(true, var_0.c)), true, var_0.c));
    var var_3 = var_0;
    return false;
}

fn func_2() -> vec3<f32> {
    var var_0 = all(select(vec2<bool>(func_3(Struct_1(vec3<f32>(-323f, -1454f, 841f), 300f, true), Struct_1(vec3<f32>(-747f, -1000f, -1000f), 694f, false), Struct_1(vec3<f32>(475f, -1144f, -1000f), -503f, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, !any(vec3<bool>(false, false, false)))));
    global0 = 1f;
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-485f, -1829f, -1055f), vec3<f32>(-348f, 998f, -439f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(900f, -180f, -107f), vec3<f32>(-811f, -317f, 492f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(232f, 263f)) * 1520f))), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, false, false), true), all(vec4<bool>(false, true, true, false)))));
    let var_3 = ~4294967295u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 753f, -439f), _wgslsmith_f_op_vec3_f32(-var_2.a)), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_2.b))), func_3(Struct_1(var_2.a, -898f, true), Struct_1(var_2.a, var_2.a.x, var_2.c), Struct_1(var_2.a, var_2.b, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)), _wgslsmith_f_op_f32(f32(-1f) * -547f), var_2.b), false)));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2080f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)))) * _wgslsmith_f_op_f32(trunc(arg_0)));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -242f)), 1276f), _wgslsmith_f_op_vec3_f32(func_2())), arg_0, all(vec2<bool>(true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.a))), var_0, true);
    return var_2.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.b;
    global1 = ~42524u << (arg_0 % 32u);
    var_0 = u_input.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-105f + _wgslsmith_f_op_vec3_f32(func_2()).x) + _wgslsmith_f_op_f32(-arg_1.b))) + _wgslsmith_f_op_f32(round(-768f)));
    var var_1 = reverseBits(_wgslsmith_sub_i32(~(~u_input.a.x), 1i)) > _wgslsmith_mult_i32(_wgslsmith_sub_i32(15977i, u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-u_input.a, u_input.a & u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(12986i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1i), u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(44347i, -2147483647i, 2147483647i) ^ vec3<i32>(u_input.b, 14430i, -1i), -vec3<i32>(u_input.a.x, u_input.a.x, 7255i))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-402f, -321f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(func_2()).x))) - vec3<f32>(-1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(-1310f, 65454u)).x), 1207f)), arg_1.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(96923u, Struct_1(_wgslsmith_f_op_vec3_f32(func_1(620f, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -226f), true));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1459f, var_0.b) * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x), 552f))), var_0.a.x, var_0.c | true);
    var var_1 = func_4(62223u, Struct_1(var_0.a, _wgslsmith_f_op_f32(-func_4(1u, Struct_1(vec3<f32>(1000f, var_0.a.x, var_0.a.x), 1096f, var_0.c)).b), var_0.c));
    var_1 = Struct_1(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.b, _wgslsmith_f_op_f32(var_0.a.x * var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + var_0.a), 665f, !(var_1.a.x == 876f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(100f, 783f, -365f)), var_1.a.x, var_0.c), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1378f, -300f, var_1.b), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), (u_input.b >= -2147483647i) || true)));
    var var_2 = u_input.a;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1067f + _wgslsmith_f_op_vec3_f32(func_2()).x), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(ceil(-691f))), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) + _wgslsmith_f_op_f32(abs(1959f)))))), func_4(firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(22380u, 59373u, 29345u)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, 1000f, var_1.b)) * _wgslsmith_f_op_vec3_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_1.a.x) - -430f), all(vec4<bool>(true, false, var_0.c, true)) || var_0.c)).a.x, all(!vec4<bool>(var_1.c, true, true, var_0.c)));
    var var_4 = ~51098u;
    var_2 = ~vec2<i32>(~(-_wgslsmith_div_i32(45265i, u_input.a.x)), i32(-1i) * -20526i);
    var var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-var_0.a)), -293f, select(!var_1.c, true && !(!var_0.c), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~(~vec2<i32>(14472i, -62651i)))), -2147483647i, 48700u, _wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_sub_i32((-12815i & u_input.b) ^ (u_input.a.x >> (76573u % 32u)), i32(-1i) * -1i) | _wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
}

