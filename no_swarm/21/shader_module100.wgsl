struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(554f, 1619f, -1023f, 1000f), -1000f);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), global1.a.x);
    var var_1 = !(~_wgslsmith_dot_vec4_u32(firstTrailingBit(arg_1), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(12976u, arg_1.x, 40465u, arg_1.x))) < ~10440u);
    global1 = arg_2;
    let var_2 = Struct_1(vec4<f32>(global0.b, var_0.b, arg_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f + -2666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - 107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.x, global1.b))));
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec4_f32(round(var_0.a));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(~(-32414i), ~(vec4<u32>(49236u, 1u, 72077u, u_input.a.x) >> (u_input.a % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.a + arg_3.a), global1.b), Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - global0.a), global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a + arg_3.a)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_f_op_f32(411f - 1600f))), global0.a.x)));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1564i, (~46435i << (_wgslsmith_dot_vec3_u32(u_input.a.ywz, u_input.a.xxx) % 32u)) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(21031i, -4086i, -51042i, 1i), vec4<i32>(1i, -1i, 0i, -2147483647i)) << (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-33853i, 46593i, -15936i)), ~vec3<i32>(1i, 1i, 1i))), reverseBits(vec3<i32>(1i, 1i, 1i)));
    var_1 = ~(firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_1.x, -2147483647i), vec3<i32>(var_1.x, 2147483647i, 9704i)))) << (~_wgslsmith_add_vec3_u32(u_input.a.wyx, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)));
    global1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), all(vec3<bool>(!select(true, false, arg_1), true, !(1u < u_input.a.x)))));
    return all(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_1, true), true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(-global0.b), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(9901i, u_input.a, Struct_1(global0.a, 835f), Struct_1(vec4<f32>(global1.a.x, global1.a.x, global1.b, 1000f), global0.b))).x), -1660f)));
    var var_1 = -1367f;
    var var_2 = vec4<u32>(countOneBits(~u_input.a.x), _wgslsmith_add_u32(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(45530u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(69903u, 40456u, u_input.a.x, u_input.a.x), arg_1), ~u_input.a)) & (~(~u_input.a.x) | firstTrailingBit(countOneBits(20528u))), ~(~u_input.a.x), ~firstLeadingBit(~60042u));
    var var_3 = !select(select(select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), arg_1), true), select(!vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), true), vec2<bool>(!arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), !(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(false, false))), true);
    let var_4 = reverseBits(reverseBits(vec3<u32>(min(4294967295u, 0u), ~u_input.a.x, _wgslsmith_add_u32(6061u, u_input.a.x) ^ _wgslsmith_div_u32(6331u, u_input.a.x))));
    return 164f;
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(global1.a, -159f);
    global0 = Struct_1(vec4<f32>(-504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 496f) - 360f), -1511f), 352f);
    var var_1 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, i32(-1i) * -4610i)) & select(min(abs(vec2<i32>(53890i, 24751i)), vec2<i32>(-2147483647i, -10770i)), vec2<i32>(1i, 1i) >> ((u_input.a.xw | vec2<u32>(42789u, u_input.a.x)) % vec2<u32>(32u)), false), vec2<i32>(0i, _wgslsmith_mult_i32(4208i, _wgslsmith_mod_i32(-2147483647i, 1i))));
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(449f, -886f)) + _wgslsmith_f_op_vec4_f32(func_3(-19230i, _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), var_0, Struct_1(global0.a, var_0.b))).x), var_0.a.x, _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-554f)) + -1138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global1.a.x)) - -292f)));
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec4<f32>(arg_1.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2118f)), _wgslsmith_f_op_f32(abs(930f))), arg_2.b);
    global1 = var_0;
    global1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(func_4(~vec4<i32>(-2147483647i, 2313i, -36516i, -13754i), func_2(true, -653f <= global1.a.x, _wgslsmith_f_op_f32(sign(-599f)), arg_2))), arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - 989f))));
    var var_1 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b)))), global1.b, arg_2.a.x), 1000f);
    global1 = func_5(arg_2.a);
    return 553f;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = ~reverseBits(-max(min(arg_1, arg_1), i32(-1i) * -22838i));
    return arg_0;
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = -144f;
    var var_1 = 38077u;
    var var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(select(arg_0, arg_0 | arg_0, arg_0 < -44625i), arg_0, -(arg_0 >> (arg_1.x % 32u))), select(-vec3<i32>(arg_0, 1i, arg_0), -vec3<i32>(-2252i, 47185i, -2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_3 = any(vec4<bool>(true, true, !((u_input.a.x >= u_input.a.x) == true), true));
    global0 = func_5(vec4<f32>(arg_3, 595f, -963f, _wgslsmith_f_op_f32(-func_5(vec4<f32>(784f, 499f, 1662f, -1235f)).b)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, 1395f, _wgslsmith_f_op_f32(f32(-1f) * -1570f), global1.a.x)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec4_i32(reverseBits(~select(vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(1826i, -1i, -19837i, 1i), vec4<bool>(true, true, false, true))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, 0i, 47915i, 0i), vec4<i32>(32461i, 2147483647i, 3367i, 24013i), min(vec4<i32>(1i, -2147483647i, -2147483647i, 53008i), vec4<i32>(1i, -32754i, -2147483647i, -1i))) & reverseBits(-vec4<i32>(20370i, -43696i, -20120i, 1i)));
    let var_1 = func_7(-9902i, ~firstTrailingBit(u_input.a.yx), func_6(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), global0.a), _wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global0.a.x)), Struct_1(vec4<f32>(-929f, global1.a.x, global0.b, 890f), -387f)))), 57556i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-731f, -1458f, true)) * _wgslsmith_div_f32(global0.a.x, 581f)) + global0.b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) + _wgslsmith_f_op_f32(select(-2281f, global1.a.x, false)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.b)));
    var_2 = _wgslsmith_f_op_f32(func_6(func_6(func_6(Struct_1(var_1.a, global1.a.x), select(var_0.x, var_0.x, false)), var_0.x), 37561i).a.x - _wgslsmith_f_op_f32(var_1.b * func_6(func_7(-var_0.x, _wgslsmith_add_vec2_u32(u_input.a.wy, u_input.a.wy), var_1, var_1.a.x), var_0.x | min(-40602i, var_0.x)).b));
    var_0 = vec4<i32>(_wgslsmith_div_i32(-13352i, 2147483647i), -59750i, var_0.x, var_0.x | -(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -57025i, var_0.x, -76405i), vec4<i32>(-20290i, -15394i, 1i, 0i))));
    global1 = func_7(abs(-2147483647i), u_input.a.wy, func_6(var_1, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, vec2<f32>(global1.a.x, -376f), var_1)) + global0.b))) - 416f));
    var var_3 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(72060i);
}

