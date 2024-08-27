struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(193f, 874f, -1000f);

var<private> global2: i32 = -29994i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_1(arg_0.b, arg_0.b, vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-13773i, 36069i, -20641i, 85985i)), vec4<i32>(u_input.b, 0i, 55845i, u_input.b))), -countOneBits(arg_3)), ~vec3<u32>(u_input.a.x, 10635u, ~_wgslsmith_dot_vec3_u32(u_input.c.zyw, vec3<u32>(0u, arg_0.d.x, arg_0.d.x))));
    let var_1 = -563f;
    var var_2 = Struct_1(_wgslsmith_div_f32(global1.x, -572f), _wgslsmith_f_op_f32(f32(-1f) * -195f), abs(firstLeadingBit(~reverseBits(global0.c))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.x, arg_1.x, arg_2.d.x), vec3<u32>(58335u, 32358u, arg_2.d.x))) >> (arg_2.d % vec3<u32>(32u)));
    let var_3 = -18933i;
    let var_4 = Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(319f, var_2.b), _wgslsmith_f_op_f32(max(global1.x, arg_0.b)), true))) - 111f), (vec2<i32>(-1i) * -(~arg_0.c)) | vec2<i32>(17816i, 1i), arg_2.d);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, global1.x, global1.x), vec3<f32>(469f, var_4.b, var_0.b), false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, -1511f, -836f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_2.b, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(805f, arg_0.a, 1899f) * vec3<f32>(var_2.a, arg_2.b, var_2.b)))))));
}

fn func_2() -> vec3<f32> {
    var var_0 = vec2<bool>(firstLeadingBit(global0.d.x) < global0.d.x, true);
    var var_1 = firstLeadingBit(u_input.a.xww);
    var var_2 = !vec2<bool>(false, var_0.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1005f, global0.a, global0.b) + vec3<f32>(global1.x, global0.a, global0.b)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.b + global0.b), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(trunc(1617f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.a, -1817f, vec2<i32>(global0.c.x, u_input.b), global0.d), ~u_input.a.xzz, Struct_1(767f, global0.b, vec2<i32>(12539i, u_input.b), vec3<u32>(var_1.x, u_input.d, 2899u)), u_input.b)), !var_0.x)))));
    global0 = Struct_1(-195f, _wgslsmith_f_op_f32(1000f + -564f), vec2<i32>(u_input.b, -1i), (~(~vec3<u32>(27447u, 57727u, 0u)) & select(_wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(1u, global0.d.x, 16089u)), u_input.c.zyy, !var_2.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(82356u, u_input.a.x, 23647u), ~global0.d, ~global0.d) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-2550f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - global0.a) - -1180f)), 1111f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(231f, 240f, _wgslsmith_f_op_f32(-156f + global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * 1000f), _wgslsmith_f_op_f32(ceil(901f)), global0.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-133f, -808f, -169f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 443f, 244f)))), all(select(vec4<bool>(var_0.x, false, var_2.x, var_0.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), !var_0.x)))), var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<u32>) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b, -585f, arg_2)))))))));
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_1 = Struct_1(365f, _wgslsmith_f_op_f32(-533f + -1000f), ~(-arg_0.c), _wgslsmith_sub_vec3_u32(u_input.a.yxx, ~u_input.a.yzx));
    let var_2 = select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-35451i, 10055i, 82112i, arg_0.c.x), vec4<i32>(2147483647i, 2147483647i, u_input.b, -1i)), reverseBits(27723i | var_1.c.x), 2147483647i), -max(~vec4<i32>(2147483647i, u_input.b, -4088i, -18153i), vec4<i32>(arg_0.c.x, -49519i, 18045i, u_input.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.x, _wgslsmith_add_i32(u_input.b, min(var_1.c.x, 1i)), abs(0i), -18542i), select(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.b, 1i, u_input.b, 60587i)), vec4<i32>(2147483647i, 0i, 21498i, global0.c.x) << (vec4<u32>(4294967295u, 0u, arg_3.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.c.x, global0.c.x, var_1.c.x, -46233i), firstLeadingBit(vec4<i32>(1i, 24835i, arg_0.c.x, global0.c.x))), false)), !arg_1);
    return ~var_2.xzx;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<f32>(-1072f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(global1.x + 551f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global1.x, global0.a, vec2<i32>(arg_0, arg_1.x), u_input.a.xxw), global0.d, Struct_1(global0.a, global1.x, vec2<i32>(arg_1.x, arg_1.x), global0.d), -2147483647i)).x), arg_3.zy, select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, global0.d.x), global0.d), abs(global0.d), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, true)))), vec3<u32>(countOneBits(~u_input.c.x), 34279u, 2514u), Struct_1(_wgslsmith_f_op_f32(ceil(-617f)), -829f, _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_3.x, u_input.b), vec2<i32>(arg_1.x, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_0), vec2<i32>(17056i, arg_0))), min(abs(global0.d), u_input.a.wzw)), u_input.b)).x, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -907f)));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1468f, global1.x, 1436f) * vec4<f32>(var_0.x, -1315f, -1000f, global1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, -642f, var_0.x, global0.a) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, -408f, global1.x, global0.a))))))));
    var_0 = vec4<f32>(-105f, _wgslsmith_f_op_f32(step(global1.x, var_0.x)), global0.a, _wgslsmith_f_op_f32(var_0.x - var_0.x));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -871f)), _wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_mult_vec2_i32(select(vec2<i32>(49101i, global0.c.x), arg_1.xy, vec2<bool>(arg_2.x, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 0i), vec2<i32>(8103i, u_input.b))), max(global0.d ^ u_input.a.zxx, ~vec3<u32>(27873u, global0.d.x, u_input.a.x))), _wgslsmith_sub_vec3_u32(~vec3<u32>(global0.d.x, 8008u, u_input.d), vec3<u32>(_wgslsmith_mod_u32(global0.d.x, u_input.d), 0u, min(global0.d.x, 94309u))), Struct_1(-220f, -386f, select(~vec2<i32>(arg_1.x, 1i), ~arg_3.xy, any(arg_2)), u_input.c.xzx), -1i)).x, _wgslsmith_f_op_f32(-var_0.x));
    global1 = vec3<f32>(1000f, global0.a, -900f);
    return Struct_1(_wgslsmith_f_op_f32(-global0.a), -323f, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, -51105i)), abs(global0.c)), arg_3.xw), ~(~(~vec2<i32>(-49061i, u_input.b)))), vec3<u32>(u_input.d, u_input.d, 2928u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-global0.c.x, abs(abs(-vec3<i32>(global0.c.x, 32370i, u_input.b))) ^ ~(-func_1(Struct_1(1326f, -506f, global0.c, vec3<u32>(0u, u_input.a.x, 0u)), false, global0.b, vec2<u32>(global0.d.x, global0.d.x))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, any(vec3<bool>(false, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), global0.d.x != 66887u))), vec4<i32>(_wgslsmith_mult_i32(~(u_input.b << (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -25515i, -1i, 2147483647i) & vec4<i32>(0i, -2147483647i, -11403i, global0.c.x), ~vec4<i32>(12655i, global0.c.x, -17302i, -2147483647i))), 2147483647i, ~reverseBits(-24766i), -(-u_input.b ^ global0.c.x)));
    var var_1 = !select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, true, true), true), false), vec4<bool>(true, _wgslsmith_f_op_f32(floor(global0.b)) <= _wgslsmith_f_op_f32(global1.x * var_0.b), true, true), select(vec4<bool>(true, all(vec4<bool>(false, true, false, false)), false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true)));
    var var_2 = ~(-(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2305i, global0.c.x), ~var_0.c, -vec2<i32>(482i, var_0.c.x)) & _wgslsmith_div_vec2_i32(max(var_0.c, vec2<i32>(u_input.b, u_input.b)), var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, abs(_wgslsmith_div_i32(var_2.x, 0i)), -global0.c.x) | ~(-vec3<i32>(67703i, var_0.c.x, 1i)), 1307f, _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -19021i, ~(-1i), var_0.c.x, _wgslsmith_clamp_i32(-2147483647i ^ var_2.x, ~(-22340i), _wgslsmith_div_i32(-1264i, 36i))), -(~select(vec4<i32>(u_input.b, global0.c.x, var_2.x, 22828i), vec4<i32>(32740i, u_input.b, var_0.c.x, -22748i), var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(203f * var_0.b)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(global1.zy))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, -839f, 1195f, -209f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 1444f, -541f, -1042f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(811f, -444f, var_0.a, global0.b) - vec4<f32>(-796f, -1062f, 423f, 945f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1558f, var_0.b, var_0.a, global1.x)))), any(select(var_1.xy, var_1.yy, var_1.x)))))));
}

