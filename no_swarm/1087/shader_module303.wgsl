struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = vec3<bool>(!arg_0.a.x, false, false);
    var var_1 = arg_0;
    let var_2 = vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), firstTrailingBit(-vec3<i32>(3271i, 2147483647i, 3500i))) <= _wgslsmith_dot_vec4_i32(select(~vec4<i32>(1i, -1i, 2147483647i, -23571i), vec4<i32>(1i, 1i, 1i, 1i), any(vec3<bool>(var_0.x, true, var_0.x))), -vec4<i32>(1i, 1i, 1i, 1i)), true);
    var var_3 = Struct_1(!(!(!(!vec2<bool>(var_1.a.x, var_2.x)))));
    var var_4 = vec4<u32>(1u, ~27026u, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(0u, u_input.b), 4294967295u), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, 48114u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.b, u_input.a)))), 4294967295u);
    return 388f;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(1105f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -970f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), -336f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_0.a), vec2<f32>(1275f, var_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) * vec2<f32>(var_0.a, 193f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(514f, 874f));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(380f)))) + _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(false, false)), Struct_3(var_0.a)))), 778f));
    return !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), false), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1.x;
    let var_1 = -arg_0.xyz;
    var var_2 = Struct_2(Struct_1(select(select(!vec2<bool>(arg_1.x, arg_1.x), !vec2<bool>(var_0, false), func_2().yw), !func_2().xy, arg_1.x)), true);
    let var_3 = firstTrailingBit(countOneBits(arg_0.yyx) & ~(_wgslsmith_add_vec3_i32(arg_0.zww, vec3<i32>(arg_2.x, 41783i, arg_0.x)) & vec3<i32>(var_1.x, var_1.x, 4038i)));
    var var_4 = var_2.a;
    return Struct_2(var_2.a, false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1307f + _wgslsmith_f_op_f32(arg_1.a * -915f));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_div_f32(-971f, 426f))))));
    let var_2 = Struct_2(func_4(vec4<i32>(4422i >> (1u % 32u), 1i, _wgslsmith_mult_i32(0i, 2147483647i), 0i) | (select(vec4<i32>(-8437i, -2147483647i, -35903i, -21894i), vec4<i32>(1i, 0i, 0i, 2147483647i), arg_0.b) & firstLeadingBit(vec4<i32>(1i, 952i, 2147483647i, 2147483647i))), select(select(vec4<bool>(arg_3.a.x, false, arg_0.a.a.x, false), !vec4<bool>(true, arg_3.a.x, true, true), vec4<bool>(arg_0.a.a.x, arg_0.b, false, true)), vec4<bool>(arg_3.a.x && false, arg_0.b, arg_0.a.a.x, arg_3.a.x), any(vec3<bool>(arg_0.b, true, arg_0.a.a.x)) | (arg_3.a.x && arg_0.b)), ~vec4<i32>(2147483647i, -23921i << (1u % 32u), min(2147483647i, 26073i), min(-1i, 2895i)), 682f).a, all(vec3<bool>(true, arg_0.b && arg_3.a.x, any(!vec4<bool>(arg_0.a.a.x, true, false, false)))));
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -22916i, -3748i), vec4<i32>(7666i, -2147483647i, -15197i, 20351i)), countOneBits(firstTrailingBit(1i))), vec4<i32>(-(~(-41628i)), ~(0i << (u_input.b % 32u)), ~(-1i), _wgslsmith_mod_i32(~2147483647i, 1i))), vec4<i32>(0i, _wgslsmith_div_i32(reverseBits(firstTrailingBit(17256i)), abs(reverseBits(16043i))), 1i, 0i));
    var var_4 = func_4(var_3, vec4<bool>(any(select(select(vec4<bool>(arg_0.a.a.x, true, true, var_2.b), vec4<bool>(true, arg_3.a.x, arg_0.a.a.x, false), true), select(vec4<bool>(false, arg_3.a.x, true, var_2.a.a.x), vec4<bool>(false, true, false, var_2.b), vec4<bool>(var_2.b, arg_0.a.a.x, true, false)), func_2().x)), ((var_2.a.a.x != true) || true) & var_2.a.a.x, arg_3.a.x, any(vec3<bool>(11198u < u_input.a, !arg_0.b, true))), vec4<i32>(1i, var_3.x, -2147483647i, i32(-1i) * -2147483647i), var_1.a);
    return Struct_2(func_4(select(var_3, min(var_3, vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x)), any(!vec2<bool>(false, arg_3.a.x))), !(!(!vec4<bool>(false, var_2.a.a.x, var_2.b, arg_3.a.x))), select(_wgslsmith_clamp_vec4_i32(reverseBits(var_3), ~vec4<i32>(var_3.x, var_3.x, -31154i, 7268i), vec4<i32>(42504i, var_3.x, 2147483647i, var_3.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.x, var_3.x, 0i), vec4<i32>(0i, var_3.x, var_3.x, -34453i)), _wgslsmith_dot_vec2_i32(vec2<i32>(31721i, -2147483647i), var_3.yz), -13594i, _wgslsmith_div_i32(var_3.x, -1i)), !func_2()), -233f).a, any(!(!(!vec4<bool>(arg_0.a.a.x, false, arg_3.a.x, true)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = 1u;
    var var_1 = func_5(func_4(vec4<i32>(-1i) * -vec4<i32>(1987i, -1i, -12053i, -25196i), select(vec4<bool>(arg_2.x, !arg_2.x, any(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), true), vec4<bool>(true, !arg_2.x, arg_2.x || true, any(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x))), func_2()), reverseBits(vec4<i32>(~(-54634i), i32(-1i) * -1i, -2147483647i, 1i)), _wgslsmith_f_op_f32(-arg_3.x)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(406f)), _wgslsmith_f_op_f32(arg_3.x + arg_3.x), func_4(vec4<i32>(4564i, 1i, -1i, 2147483647i), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<i32>(60175i, 2147483647i, 0i, -2147483647i), arg_3.x).b)))), Struct_3(-434f), Struct_1(select(arg_2.yx, !vec2<bool>(arg_2.x, true), arg_2.x)));
    var_1 = Struct_2(var_1.a, var_1.a.a.x);
    var var_2 = !select(!(!select(vec4<bool>(true, var_1.a.a.x, false, true), vec4<bool>(false, true, true, arg_2.x), true)), func_2(), select(vec4<bool>(true, var_1.a.a.x, false | arg_2.x, !arg_2.x), select(vec4<bool>(var_1.b, arg_2.x, false, var_1.a.a.x), vec4<bool>(true, var_1.a.a.x, arg_2.x, var_1.b), vec4<bool>(false, arg_2.x, var_1.a.a.x, true)), func_2()));
    var_1 = Struct_2(Struct_1(vec2<bool>(!(!var_2.x), !(true & var_2.x))), true);
    return var_1.a.a;
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = vec2<bool>(arg_0.a.a.x, u_input.b >= arg_1);
    var var_1 = false | !any(select(!vec3<bool>(true, arg_0.b, false), !vec3<bool>(arg_0.a.a.x, true, false), vec3<bool>(false, var_0.x, true)));
    return func_5(func_5(Struct_2(func_5(func_4(vec4<i32>(0i, 30248i, -1i, 2147483647i), vec4<bool>(arg_0.a.a.x, var_0.x, var_0.x, false), vec4<i32>(-2406i, 0i, -2147483647i, 6539i), 1575f), Struct_3(-163f), Struct_3(-929f), arg_0.a).a, (arg_0.a.a.x || arg_0.a.a.x) | true), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1724f + -165f) - -364f)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) - _wgslsmith_f_op_f32(select(639f, -223f, arg_0.b)))), arg_0.a), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1411f, _wgslsmith_f_op_f32(-166f + 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f * -346f)))), Struct_3(_wgslsmith_f_op_f32(-1f)), func_4(-_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(15956i, 20712i, 1i, -72005i), vec4<i32>(-10184i, 1900i, 2147483647i, -39749i), vec4<i32>(0i, 2147483647i, 1i, -48698i)), abs(vec4<i32>(10005i, 94931i, 0i, 10487i))), !vec4<bool>(false, true, true, arg_0.b), select(-abs(vec4<i32>(0i, 1i, 0i, 2147483647i)), vec4<i32>(abs(2147483647i), i32(-1i) * -2147483647i, -1i, 13402i), false), 1292f).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(Struct_1(select(vec2<bool>(true, false), func_1(vec2<f32>(-663f, -752f), u_input.a, vec3<bool>(true, true, false), vec2<f32>(1678f, -877f)), true)), func_2().x), ~135691u);
    let var_1 = func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -27560i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(1i, -1i, -2147483647i, 2147483647i))), -53489i), vec4<i32>(1i, ~(-16090i), 1i, max(_wgslsmith_add_i32(1i, -40216i), -1i))), vec4<bool>(!var_0.b, true, var_0.b, select(false, !var_0.b, (u_input.a >= u_input.b) != !var_0.a.a.x)), vec4<i32>(-1i) * -select(max(vec4<i32>(1i, -23140i, 2147483647i, 2147483647i), vec4<i32>(-1i, 38387i, -2147483647i, -2147483647i)), ~vec4<i32>(8156i, -1i, -29345i, 2147483647i), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, false)), _wgslsmith_f_op_f32(func_3(func_4(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<bool>(true, false, var_0.a.a.x & var_0.b, all(vec4<bool>(false, false, false, true))), vec4<i32>(38455i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(130i, 55844i, -2147483647i), vec3<i32>(-1i, 1i, 10751i)), -2147483647i), -454f).a, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -398f))))).a;
    let var_2 = vec4<i32>(~firstLeadingBit(firstLeadingBit(-1i)), 19575i, ~(1i << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(47881u, u_input.a), vec2<u32>(30758u, 54818u)), ~vec2<u32>(4294967295u, 1u)) % 32u)), -2730i);
    var var_3 = -37559i;
    var_3 = 26969i;
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1225f, -404f))), abs(~reverseBits(-var_2.yxx)), vec4<u32>(~42409u, u_input.c, 1u, reverseBits(firstLeadingBit(u_input.b))), 630f);
}

