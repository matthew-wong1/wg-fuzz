struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-461f, 1000f, 646f, 699f), vec4<u32>(63418u, 1u, 4294967295u, 21760u), vec3<bool>(false, true, false), 0i);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<f32>(407f, -387f, 302f, 1320f), vec4<u32>(92676u, 793u, 22706u, 4294967295u), vec3<bool>(false, false, false), 13617i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(2094f)), -129f, _wgslsmith_f_op_f32(-1085f + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -452f)), global1.a.a))), global1.a.b, global1.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.a.d), vec2<i32>(global1.a.d, u_input.a)));
    let var_1 = Struct_3(var_0);
    global1 = Struct_3(global1.a);
    let var_2 = 332f;
    let var_3 = vec2<i32>(~countOneBits(firstLeadingBit(var_0.d >> (u_input.b.x % 32u))), arg_3);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1096f, var_2, -754f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-854f, -576f, var_1.a.a.x <= var_2)), _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(round(783f))) - var_0.a.zzy));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    global0 = global1.a;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.zzw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1934f, arg_0, global1.a.a.x)) - global1.a.a.yzx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1050f, arg_0, 442f)))) * _wgslsmith_f_op_vec3_f32(func_3(select(global1.a.c.yz, vec2<bool>(arg_2, arg_2), global1.a.c.zz), _wgslsmith_sub_u32(7463u, 0u), global0.c.yy, max(global1.a.d, global1.a.d))))));
    global1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global1.a.a.x, global0.a.x, _wgslsmith_f_op_f32(sign(arg_1.x))), global1.a.b, !vec3<bool>(global0.c.x, arg_2, global0.d > global0.d), -max(~global1.a.d, -79828i)));
    let var_1 = global1.a.c.x;
    var var_2 = Struct_4(Struct_3(global1.a), u_input.a != u_input.a);
    return _wgslsmith_div_i32(-25173i, _wgslsmith_mod_i32(~_wgslsmith_add_i32(global1.a.d, 5980i), 2147483647i) << (18747u % 32u));
}

fn func_1() -> Struct_3 {
    let var_0 = 715f;
    let var_1 = max(func_2(var_0, _wgslsmith_f_op_vec4_f32(global0.a * global1.a.a), global0.c.x), ~2147483647i) << (~countOneBits(u_input.b.x) % 32u);
    let var_2 = !(true | global1.a.c.x);
    let var_3 = global1.a.a.wy;
    let var_4 = Struct_4(Struct_3(global1.a), !((var_2 && any(vec4<bool>(var_2, global0.c.x, global0.c.x, false))) || true));
    return Struct_3(var_4.a.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    var var_0 = select(!global1.a.c, select(global1.a.c, vec3<bool>(func_1().a.c.x & !arg_1.b, !(global0.c.x & false), (global1.a.b.x >= arg_1.a.a.b.x) | true), vec3<bool>(global1.a.c.x, all(arg_2.c), global1.a.c.x && arg_2.c.x)), !select(func_1().a.c, select(global1.a.c, global1.a.c, vec3<bool>(true, true, true)), false));
    var var_1 = select(vec3<bool>(false, -(~arg_1.a.a.d) != -3316i, min(~u_input.a, _wgslsmith_sub_i32(arg_2.d, -17202i)) >= 0i), vec3<bool>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.a.a.d, -10350i), u_input.a) <= _wgslsmith_div_i32(-1i, min(u_input.a, -57600i)), global0.c.x, all(vec4<bool>(false, true, true, global0.c.x))), func_1().a.c);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(219f - -102f), global0.a.x, any(select(vec2<bool>(var_1.x, true), vec2<bool>(true, arg_2.d != 0i), !func_1().a.c.yz))));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2290f, _wgslsmith_f_op_f32(round(-241f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-777f, _wgslsmith_f_op_f32(floor(arg_1.a.a.a.x)), 620f, -1056f) - func_1().a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1906f), 1f, _wgslsmith_div_f32(arg_2.a.x, 1738f), 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, global1.a.a.x, global0.a.x, -727f))))), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, 18116u, global1.a.b.x, arg_2.b.x), vec4<u32>(arg_1.a.a.b.x, arg_2.b.x, 25306u, 70085u)) ^ ~firstLeadingBit(~global0.b), vec3<bool>(any(!select(vec4<bool>(false, arg_1.b, true, true), vec4<bool>(true, global1.a.c.x, var_0.x, false), vec4<bool>(arg_1.b, true, global1.a.c.x, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1399f)), 129f)) > -1364f, all(!arg_1.a.a.c)), _wgslsmith_mod_i32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_1.a.a.a, arg_2.a))), !(1u < arg_1.a.a.b.x)), _wgslsmith_sub_i32(~_wgslsmith_add_i32(arg_2.d, -18163i), i32(-1i) * -2147483647i)));
    return Struct_4(func_1(), all(!arg_1.a.a.c.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(2553f, _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(global1.a.a.x - 858f)), Struct_4(func_1(), true), func_1().a);
    var var_1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(~(global0.d ^ 2147483647i), global1.a.d << (0u % 32u)), u_input.a & _wgslsmith_mult_i32(global1.a.d, ~var_0.a.a.d)), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(44169i, global0.d), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_mult_i32(48264i, global1.a.d)) >> (var_0.a.a.b.x % 32u), func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a.zxz))), func_4(global0.a.zxw, Struct_4(func_1(), select(true, true, false)), Struct_1(func_4(global1.a.a.zxz, Struct_4(Struct_3(Struct_1(global0.a, vec4<u32>(15408u, 17431u, 51698u, 4294967295u), vec3<bool>(var_0.b, global0.c.x, global1.a.c.x), 9628i)), var_0.a.a.c.x), var_0.a.a).a.a.a, vec4<u32>(13801u, u_input.b.x, global1.a.b.x, 1u) >> (var_0.a.a.b % vec4<u32>(32u)), global0.c, u_input.a)), var_0.a.a).a.a.d);
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(1095f)), 1000f, global1.a.a.x), max(-1i, _wgslsmith_dot_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(var_1.x, 0i, 24946i, u_input.a))), vec4<i32>(-2147483647i, var_1.x, ~var_0.a.a.d, _wgslsmith_add_i32(var_0.a.a.d, var_1.x)))));
    var_0 = Struct_4(Struct_3(func_4(var_2.a, Struct_4(Struct_3(var_0.a.a), global1.a.c.x && var_0.b), Struct_1(global1.a.a, vec4<u32>(global0.b.x, 5025u, global1.a.b.x, global1.a.b.x), !global0.c, 2147483647i)).a.a), 4294967295u >= ~(~(~global0.b.x)));
    let var_3 = var_1.x;
    var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.a))), var_0.a.a.b, !vec3<bool>(false, global0.c.x, global1.a.c.x), _wgslsmith_clamp_i32(-global1.a.d, ~(-2147483647i), global1.a.d))), all(vec3<bool>((-2147483647i ^ global0.d) < var_1.x, all(global1.a.c), global1.a.c.x)));
    let var_4 = 23248u;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a.a.a + func_4(global0.a.www, func_4(vec3<f32>(var_2.a.x, -589f, global0.a.x), func_4(global1.a.a.zzx, Struct_4(Struct_3(global1.a), global0.c.x), Struct_1(vec4<f32>(-376f, global0.a.x, var_2.a.x, 103f), var_0.a.a.b, global1.a.c, u_input.a)), func_1().a), global1.a).a.a.a), global0.b, vec3<bool>(!global0.c.x, (func_2(-1671f, vec4<f32>(var_2.a.x, var_2.a.x, 1331f, -793f), global1.a.c.x) ^ _wgslsmith_mult_i32(-14435i, var_0.a.a.d)) > -16379i, global1.a.c.x), 30741i);
    var_2 = Struct_2(vec3<f32>(365f, _wgslsmith_f_op_f32(ceil(369f)), _wgslsmith_f_op_f32(ceil(global0.a.x))), -(-var_2.b << (~66507u % 32u)) | (i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, ~vec3<u32>(global1.a.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_0.a.a.b.yw), func_4(vec3<f32>(840f, var_2.a.x, -1164f), Struct_4(var_0.a, global1.a.c.x), Struct_1(vec4<f32>(-585f, var_2.a.x, var_5.a.x, -214f), vec4<u32>(1u, 0u, 0u, global0.b.x), vec3<bool>(var_5.c.x, var_0.b, true), 0i)).a.a.b.x), ~countOneBits(global1.a.b.x)));
}

