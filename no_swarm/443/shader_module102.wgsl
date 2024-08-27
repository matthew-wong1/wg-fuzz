struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<i32>(26620i, 9408i, -14477i, -24377i), Struct_1(vec4<f32>(-1016f, 1455f, 527f, -546f), vec4<f32>(152f, 1425f, -1448f, 533f), vec4<f32>(1737f, 441f, -311f, -137f), 848f), vec4<f32>(-1977f, -650f, 935f, -2460f), Struct_1(vec4<f32>(172f, -1000f, -777f, -775f), vec4<f32>(-1135f, -664f, -1822f, -728f), vec4<f32>(374f, 971f, -318f, -298f), 174f), vec4<u32>(45442u, 39985u, 1u, 39209u)));

var<private> global3: vec4<f32> = vec4<f32>(454f, 616f, 293f, -659f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    global2 = array<Struct_2, 1>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 576f, 564f, global3.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, -427f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, global3.x, global3.x, -2373f))), vec4<f32>(-952f, 523f, global3.x, global3.x))) * vec4<f32>(global3.x, -308f, -584f, _wgslsmith_f_op_f32(f32(-1f) * -1923f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -127f, -1000f) + vec4<f32>(global3.x, -772f, 950f, 1681f))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(1000f * global3.x), -599f, 1228f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -815f, global3.x, global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 481f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -402f) * global3.x)))));
    var var_1 = ~reverseBits(arg_0);
    let var_2 = _wgslsmith_f_op_f32(max(global3.x, -261f));
    global1 = abs(32482i >> (arg_1 % 32u));
    return !(!any(vec4<bool>(true, true, true, true)) || (1i >= ~(u_input.a << (1u % 32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    global2 = array<Struct_2, 1>();
    global2 = array<Struct_2, 1>();
    var var_0 = vec3<bool>(_wgslsmith_div_u32(~(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 2300u, arg_1.x), vec4<u32>(arg_0.x, 1209u, arg_0.x, arg_1.x))) <= ~firstLeadingBit(arg_0.x), all(vec2<bool>(true, false)), true);
    var_0 = select(vec3<bool>(!(!(!var_0.x)), func_3(-(vec2<i32>(u_input.a, -2147483647i) >> (arg_0 % vec2<u32>(32u))), ~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 4294967295u)), var_0.x), !(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), vec3<bool>(any(vec4<bool>(true, false, false, any(vec3<bool>(true, true, true)))), var_0.x, any(!vec4<bool>(false, var_0.x, true, true))));
    var_0 = select(!select(vec3<bool>(!var_0.x, false, true), vec3<bool>(true, true, !var_0.x), true), vec3<bool>(false, ~arg_1.x >= 4294967295u, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x))), select(!vec3<bool>(false, var_0.x && false, true), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), !select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), false), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, var_0.x), var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), true), var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1099f))))) + 305f);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    return 1u;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-2439f, -1000f, true)), arg_1, _wgslsmith_f_op_f32(trunc(380f)), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 821f, arg_1, arg_1)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -483f), _wgslsmith_f_op_f32(-arg_1), -1303f, _wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 2120f, arg_1, -1000f)), vec4<f32>(-395f, 290f, global3.x, arg_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1000f, -1020f, 975f), vec4<f32>(244f, 987f, 833f, -1253f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec2<u32>(16792u, 20192u), vec2<u32>(arg_0, arg_0), arg_1, vec4<i32>(u_input.a, u_input.a, -16763i, u_input.a))))), _wgslsmith_f_op_f32(exp2(arg_1)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -578f))))), _wgslsmith_f_op_f32(global3.x + 601f));
    let var_1 = var_0.b;
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(~arg_2.x, _wgslsmith_clamp_u32(firstTrailingBit(arg_2.x), arg_2.x, 35835u)), arg_3.x) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(~9035u, _wgslsmith_clamp_u32(arg_0, arg_2.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, arg_0) | arg_3.zz, ~arg_3.wx, vec2<u32>(24379u, 4294967295u))) % vec2<u32>(32u));
    var_0 = Struct_1(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), 360f, 1439f), _wgslsmith_div_vec4_f32(vec4<f32>(1183f, _wgslsmith_f_op_f32(-var_0.d), var_0.b.x, 1324f), _wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)), vec4<f32>(-2412f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-636f - global3.x), -2053f, false)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(-var_0.a.x));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-596f, arg_1)))), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(837f + var_0.b.x))), -663f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(119f, _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(min(arg_1, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d, arg_1, true)) + 1106f), 748f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(846f, 317f, global3.x, -428f)), _wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(-343f, arg_1, global3.x, 1508f), false)), true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, arg_1, 1806f, global3.x)))))), _wgslsmith_div_f32(1259f, -1000f));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(1092f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(min(-359f, 1469f))))));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_1 = vec4<i32>(0i, arg_1.x, u_input.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(18618i, abs(-36184i), abs(_wgslsmith_div_i32(u_input.a, -2147483647i))), arg_1.x));
    var var_2 = func_5(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f + 1409f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.c.x, global3.x)))))) - _wgslsmith_f_op_f32(-294f - _wgslsmith_f_op_f32(round(1f)))), vec2<u32>(0u, abs(1u)), vec4<u32>(_wgslsmith_add_u32(76426u, _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(45112u, 4968u, 26442u))), ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(28532u, 4294967295u, 1u), vec3<u32>(4294967295u, 27678u, 19871u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(67328u, 11562u, 29988u), vec3<u32>(7564u, 0u, 8464u), vec3<u32>(1u, 21147u, 44722u))), func_4(_wgslsmith_f_op_f32(func_2(vec2<u32>(1u, 1u), ~vec2<u32>(29099u, 4294967295u), _wgslsmith_div_f32(-171f, -328f), var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.x, arg_0.d, 1000f, global3.x), arg_0.a)))), _wgslsmith_mod_u32(~4294967295u, min(1u, ~28873u))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(select(-353f, _wgslsmith_f_op_f32(494f + global3.x), any(vec3<bool>(true, true, false))))), arg_0.b.x, 131f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global3.x))))) * vec4<f32>(_wgslsmith_f_op_f32(min(518f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(0u, 1120f, vec2<u32>(38732u, 4294967295u), vec4<u32>(44769u, 50083u, 20864u, 1u)).c.x)), -1157f, 472f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -846f <= _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)));
    global1 = reverseBits(1i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, 1000f, -1000f, global3.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 1324f, 471f, global3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, -1641f, global3.x, global3.x), vec4<f32>(global3.x, 1000f, global3.x, global3.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-637f + global3.x)), global3.x, _wgslsmith_f_op_f32(-942f + -190f), -416f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -762f, global3.x, 112f) * vec4<f32>(global3.x, global3.x, global3.x, 1129f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, global3.x, -1000f, global3.x) - vec4<f32>(global3.x, global3.x, -1196f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -794f, -1225f)), _wgslsmith_f_op_f32(-1364f + 237f)), -vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1710f, 284f, global3.x, -967f), vec4<f32>(global3.x, global3.x, 3218f, 374f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, global3.x, -805f, global3.x)))))))), _wgslsmith_f_op_f32(sign(503f)));
    var_1 = func_5(_wgslsmith_mod_u32(_wgslsmith_add_u32(min(0u, 0u), 13114u), ~1u) | (_wgslsmith_dot_vec2_u32(vec2<u32>(24859u, 0u), vec2<u32>(4294967295u, 4294967295u)) ^ 37718u), _wgslsmith_f_op_f32(var_1.c.x - global3.x), vec2<u32>(1u, 1u), abs(vec4<u32>(select(countOneBits(1u), _wgslsmith_mult_u32(1u, 4630u), var_0), 1u, _wgslsmith_mod_u32(1u, 1u), 4294967295u)));
    var_1 = func_5(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(14698u, 4294967295u)), var_1.d, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(~4294967295u, 4294967295u)), abs(vec2<u32>(1u, 1u))), abs(vec4<u32>(4294967295u, _wgslsmith_mod_u32(1u, ~22751u), 30694u, select(0u, firstLeadingBit(0u), any(vec2<bool>(false, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 27954i)), _wgslsmith_add_i32(u_input.a, -8097i), countOneBits(u_input.a)), -vec3<i32>(17386i, _wgslsmith_mod_i32(-2147483647i, 14547i), 13089i), vec3<bool>(!(!var_0), !var_0, !var_0)), -(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-30590i, -1i), vec2<i32>(13875i, 13685i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(10971i, u_input.a), vec2<i32>(1i, -2147483647i), vec2<i32>(2147483647i, u_input.a)))), -2003f, reverseBits(u_input.a), _wgslsmith_mult_u32(abs(0u), 0u));
}

