struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: vec4<f32>;

var<private> global2: u32;

var<private> global3: vec2<f32> = vec2<f32>(-190f, -468f);

var<private> global4: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(-109f, 23070i, vec4<bool>(true, false, true, false), vec4<u32>(46815u, 4294967295u, 1u, 4294967295u), vec3<u32>(11975u, 4294967295u, 0u)), vec4<u32>(0u, 1u, 2802u, 5300u), Struct_2(Struct_1(-634f, -25236i, vec4<bool>(true, false, false, true), vec4<u32>(18625u, 1u, 50011u, 731u), vec3<u32>(24399u, 14981u, 67337u)))), Struct_3(Struct_1(1228f, 0i, vec4<bool>(true, true, false, true), vec4<u32>(0u, 1u, 0u, 8417u), vec3<u32>(71327u, 0u, 49372u)), vec4<u32>(28153u, 1u, 1u, 104072u), Struct_2(Struct_1(375f, 835i, vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 28015u, 4294967295u, 41202u), vec3<u32>(4095u, 0u, 4294967295u)))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(3256f, -1544f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<vec3<bool>, 9>();
    global4 = array<Struct_3, 2>();
    let var_0 = !(!vec4<bool>(!all(global0[_wgslsmith_index_u32(u_input.c, 9u)]), !arg_2, true, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), u_input.d.x, vec4<bool>(!var_0.x, true, global1.x < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(global1.x)), false)), false), vec4<u32>(u_input.a.x, 0u, ~_wgslsmith_mod_u32(arg_1.x, _wgslsmith_add_u32(arg_1.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.c), vec2<u32>(0u, 48052u)) >> (_wgslsmith_div_u32(u_input.a.x, ~0u) % 32u)), u_input.a.xyz);
    return var_1;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1098f, -425f, 104f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2260f, global3.x, global1.x, -1149f)))))));
    global4 = array<Struct_3, 2>();
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.xyx), _wgslsmith_f_op_vec3_f32(-global1.yxx))), vec3<bool>(true, true, true))), u_input.a.xww, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(694f, global1.x, 1550f))), u_input.a.xxw, false).c.x || true));
    var var_2 = vec2<bool>(!var_1.a.c.x, !any(var_1.a.c));
    var var_3 = Struct_2(var_1.a);
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, _wgslsmith_div_i32(-1i, -1i)), 4826i);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f - global3.x) - 1f)));
    var_0 = -1029f;
    let var_1 = func_2(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-135f)) + -1067f), 106f), ~vec3<u32>(u_input.c, u_input.a.x, 14695u), any(select(select(!global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.a.x), 9u)], select(true, true, false)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true)) | all(vec4<bool>(false, true, true, false)))));
    var var_2 = Struct_2(Struct_1(-416f, func_3() ^ _wgslsmith_div_i32(~var_1.b, abs(u_input.b)), func_2(global1.zyy, (vec3<u32>(u_input.a.x, 40106u, 70055u) >> (var_1.d.xzw % vec3<u32>(32u))) | var_1.d.zzx, true).c, vec4<u32>(abs(~var_1.d.x), 26357u, 1u, abs(~36024u)), vec3<u32>(36602u << (u_input.c % 32u), _wgslsmith_div_u32(u_input.c, 10551u), ~4294967295u) >> (vec3<u32>(~var_1.e.x, u_input.a.x << (6363u % 32u), 0u) % vec3<u32>(32u))));
    var var_3 = ~(vec2<i32>(~73386i, -var_2.a.b) | u_input.d.yx);
    return global4[_wgslsmith_index_u32(~27540u ^ _wgslsmith_mod_u32(firstTrailingBit(0u), u_input.a.x), 2u)];
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(Struct_1(-181f, arg_1, arg_0.c.a.c, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c, 25310u, arg_2.a.d.x, 28846u)), _wgslsmith_sub_vec4_u32(func_1().c.a.d, ~arg_0.b)), vec3<u32>((10564u << (arg_2.a.d.x % 32u)) >> (~arg_2.a.d.x % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_0.a.e.x, u_input.a.x), vec4<u32>(1u, arg_0.b.x, 46642u, 4294967295u)), ~arg_0.a.d.x), ~(~1u))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(true, arg_2.a.c.x, false);
    let var_1 = func_4(Struct_3(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a.a, -999f, arg_2.a.a), _wgslsmith_f_op_vec3_f32(-global1.wxx))), countOneBits(select(arg_2.a.e, u_input.a.zyy, arg_2.a.c.wxx)), false), _wgslsmith_clamp_vec4_u32(func_4(Struct_3(arg_2.a, vec4<u32>(30464u, 1u, 7540u, 4294967295u), arg_2), u_input.d.x, Struct_2(arg_2.a)).a.d >> (func_1().a.d % vec4<u32>(32u)), arg_2.a.d, arg_2.a.d), Struct_2(arg_2.a)), -arg_1 ^ _wgslsmith_sub_i32(-37853i, -2147483647i), arg_2).a.c.x;
    global4 = array<Struct_3, 2>();
    let var_2 = arg_2.a;
    let var_3 = vec4<f32>(-853f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) * -139f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-571f, global1.x) + -156f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f))), _wgslsmith_f_op_f32(round(arg_2.a.a)));
    return arg_2;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec2<i32> {
    global4 = array<Struct_3, 2>();
    let var_0 = u_input.d;
    global0 = array<vec3<bool>, 9>();
    let var_1 = global4[_wgslsmith_index_u32(func_1().a.d.x, 2u)];
    var var_2 = func_1().c.a;
    return firstTrailingBit(vec2<i32>(min(func_4(global4[_wgslsmith_index_u32(abs(arg_1.a.e.x), 2u)], abs(var_1.a.b), var_1.c).a.b, _wgslsmith_mult_i32(arg_1.a.b, 1i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_6(firstLeadingBit(u_input.a.xy), func_5(abs(u_input.c), _wgslsmith_add_i32(~8826i, _wgslsmith_sub_i32(21335i, -2433i)), func_4(func_1(), ~0i, Struct_2(Struct_1(global3.x, u_input.b, vec4<bool>(false, true, true, false), vec4<u32>(u_input.a.x, 1u, u_input.c, 4294967295u), u_input.a.xwy)))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))));
    global1 = vec4<f32>(511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x - global3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)), global3.x);
    let var_1 = -vec3<i32>(i32(-1i) * -(~var_0.x), 0i, var_0.x);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, 315f, 1173f, 1000f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, -1000f, global1.x, global1.x), vec4<f32>(-1500f, global1.x, -728f, -841f)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-680f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1924f), -378f)), -315f)));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1504f, _wgslsmith_f_op_f32(ceil(-1472f))))));
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_sub_u32(u_input.c, 4262u ^ u_input.c)));
}

