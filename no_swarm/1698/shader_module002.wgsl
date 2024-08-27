struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: vec2<bool>;

var<private> global2: f32 = -509f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    global1 = vec2<bool>(!all(!arg_0.e.zw) & false, true);
    global1 = select(arg_2.b.xx, arg_0.e.xz, vec2<bool>(arg_0.e.x, any(!arg_2.b.xx)));
    let var_0 = Struct_1(vec2<f32>(146f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, 177f)), _wgslsmith_f_op_f32(floor(1786f))) * arg_0.a.x)), !(_wgslsmith_mod_u32(abs(arg_0.c), 4294967295u) <= 1u), max(0u, _wgslsmith_div_u32(3599u, ~_wgslsmith_clamp_u32(arg_2.a, arg_1, u_input.a.x))), _wgslsmith_f_op_vec4_f32(step(arg_0.d, arg_0.d)), select(vec4<bool>(arg_2.b.x, !arg_2.b.x, !(arg_0.b && true), any(select(vec4<bool>(false, true, arg_2.c, true), vec4<bool>(global1.x, false, false, arg_2.b.x), false))), !vec4<bool>(any(arg_0.e), any(vec4<bool>(true, global1.x, true, arg_2.b.x)), arg_2.a > arg_1, false), select(arg_0.e, select(arg_0.e, !vec4<bool>(false, false, false, arg_0.b), !arg_0.e), arg_2.c)));
    var var_1 = var_0;
    var var_2 = -firstLeadingBit(2147483647i);
    return 1u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x));
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    let var_0 = Struct_2(0u, vec3<bool>(all(vec3<bool>(643f < arg_1.d.x, arg_1.c < arg_3, arg_0)), all(arg_1.e), arg_0 != select(global1.x, true, any(arg_1.e))), 112738u > (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, arg_1.c, 32613u, arg_1.c), select(vec4<u32>(arg_3, arg_3, arg_3, 26857u), vec4<u32>(u_input.a.x, 23425u, arg_1.c, arg_1.c), vec4<bool>(global1.x, false, global1.x, true))) & arg_1.c));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * arg_1.a.x));
    return ~((arg_3 ^ _wgslsmith_sub_u32(~16024u, ~arg_1.c)) | ~(~_wgslsmith_mult_u32(var_0.a, arg_1.c)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.xx - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 273f)), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x >> (u_input.a.x % 32u), u_input.c.x | u_input.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 1i, 2147483647i, 5632i)), vec4<i32>(0i, u_input.b.x, u_input.c.x, u_input.c.x) & vec4<i32>(1i, -10878i, u_input.b.x, 23943i))) >= u_input.c.x, func_4(-3793i > u_input.c.x, Struct_1(arg_0.xy, !all(vec2<bool>(global1.x, true)), abs(u_input.a.x), arg_0, vec4<bool>(all(vec4<bool>(global1.x, true, true, true)), global1.x, global1.x, arg_0.x >= arg_0.x)), u_input.b.x >> (~37194u % 32u), func_3(Struct_1(arg_0.zw, true, _wgslsmith_div_u32(31550u, u_input.a.x), arg_0, !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), ~9641u | firstTrailingBit(1u), Struct_2(u_input.a.x, vec3<bool>(true, global1.x, true), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(788f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -156f, _wgslsmith_f_op_f32(arg_0.x * 1218f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-380f, 156f, arg_0.x, 484f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-790f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(1889f, arg_0.x, 933f, arg_0.x)))) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(-576f))), arg_0.x)), select(vec4<bool>(false, !any(vec3<bool>(true, false, global1.x)), global1.x, false), vec4<bool>(global1.x, global1.x, all(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, global1.x), true)), global1.x), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x))));
    var var_1 = var_0;
    let var_2 = vec4<bool>(!var_0.b || true, _wgslsmith_mult_i32(-(~u_input.b.x), u_input.b.x) < 54078i, all(var_1.e.zy), !global1.x);
    return u_input.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -393f));
    global0 = array<vec2<i32>, 26>();
    let var_0 = arg_0.e.zyw;
    global0 = array<vec2<i32>, 26>();
    global2 = _wgslsmith_f_op_f32(-arg_0.d.x);
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(584f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-544f, -1000f) + vec2<f32>(119f, -1391f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1345f, -1338f))))), arg_0, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, -116f, -170f, 874f) + vec4<f32>(1072f, 250f, 664f, -697f))) >> ((u_input.a.x >> (_wgslsmith_add_u32(1u, 0u) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, 1138f, -633f, 1000f))), vec4<bool>(true, true, true, true == all(vec4<bool>(true, global1.x, true, false)))), ~((firstTrailingBit(vec2<i32>(u_input.c.x, u_input.b.x)) & u_input.c.xz) >> (vec2<u32>(countOneBits(42868u), 0u ^ u_input.a.x) % vec2<u32>(32u))));
    let var_1 = !var_0.e.xxy;
    var_0 = Struct_1(var_0.a, all(vec3<bool>(u_input.b.x > u_input.b.x, !(!var_1.x), var_1.x)), 43079u, _wgslsmith_f_op_vec4_f32(vec4<f32>(532f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - func_5(Struct_1(var_0.a, true, var_0.c, var_0.d, var_0.e), u_input.b).a.x), -822f, var_0.d.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.d, vec4<f32>(var_0.d.x, -538f, 2455f, 553f))))), !vec4<bool>(u_input.b.x != _wgslsmith_mod_i32(u_input.b.x, 0i), _wgslsmith_f_op_f32(-399f * var_0.d.x) != 570f, !all(var_0.e), global1.x));
    let var_2 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(func_4(true, Struct_1(vec2<f32>(var_0.d.x, 209f), arg_0, 34632u, var_0.d, var_0.e), -5537i, ~60788u), 50470u), ~select(44249u, var_0.c, true) << (_wgslsmith_dot_vec3_u32(u_input.a, countOneBits(vec3<u32>(33940u, u_input.a.x, 0u))) % 32u)), var_0.e.zyz, true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(837f, var_0.d.x), var_0.d.zz, true)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, -879f), var_0.d.ww))))), -308f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.a.x) - var_0.a.x)), 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f * var_0.d.x) * var_0.a.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1631f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, var_0.a.x))) * -449f)), var_0.e);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_3.a.x, 290f)))))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-685f, _wgslsmith_f_op_f32(-var_3.d.x))))), var_1.x || true, func_4(any(func_5(Struct_1(var_3.d.wx, var_2.b.x, 1681u, vec4<f32>(-1312f, -1000f, var_3.d.x, -1209f), var_3.e), global0[_wgslsmith_index_u32(35226u, 26u)]).e.ww), var_3, select(-(~(-2147483647i)), 14939i, arg_0), reverseBits(4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-343f)) - _wgslsmith_f_op_f32(min(var_0.a.x, -485f))), 1042f, 649f, _wgslsmith_f_op_f32(-var_0.d.x)), select(func_5(var_3, ~vec2<i32>(u_input.b.x, u_input.b.x)).e, !var_3.e, !(var_3.c <= ~7520u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -227f;
    global1 = !(!(!vec2<bool>(true, global1.x)));
    let var_0 = func_1(true);
    let var_1 = 61033u;
    global0 = array<vec2<i32>, 26>();
    global2 = _wgslsmith_f_op_f32(-1682f - -854f);
    let var_2 = ~2147483647i;
    global0 = array<vec2<i32>, 26>();
    let var_3 = vec3<bool>(!any(!var_0.e.zxw), ((~var_1 | 1u) >= (u_input.a.x | 0u)) || func_5(func_1(var_0.b), ~(-u_input.c.yy)).b, !(true && var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~min(vec3<u32>(1u, var_1, 4294967295u) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a)), ~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_2, u_input.b.x), -2147483647i), 83996i));
}

