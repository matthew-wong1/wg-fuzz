struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: u32 = 14173u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1470f, -1481f, 548f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, -1341f, -410f))))), (_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), 49258u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(8811u, 30078u, u_input.b), vec3<u32>(u_input.b, 1u, 24833u)) % 32u)) << (u_input.b % 32u), abs(vec2<i32>(1i, 0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a))))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x)), _wgslsmith_f_op_f32(select(var_0.a.x, -414f, any(vec3<bool>(true, true, true))))));
    var var_2 = -8893i;
    var_1 = _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.a))))));
    let var_3 = vec3<i32>(-1i, ~_wgslsmith_clamp_i32(-abs(-1i), var_0.c.x, var_0.c.x | 9018i), firstLeadingBit(~(~(-8944i))));
    return 1000f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(max(-640f, -637f))) + _wgslsmith_f_op_f32(-209f - 1486f)), _wgslsmith_f_op_f32(1191f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(1000f, 407f), true)))), countOneBits(_wgslsmith_mod_u32(~(u_input.b | u_input.b), 12770u)), u_input.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1859f), 1285f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-569f, var_0.a.x, 1714f))))), 1u, vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(-1i, u_input.a.x)), 1i) | firstLeadingBit(select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.c.x, var_0.c.x) << (vec2<u32>(var_0.b, 100961u) % vec2<u32>(32u)), true)));
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x);
    let var_2 = -vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, -2147483647i), vec2<i32>(-43591i, u_input.a.x)) & countOneBits(u_input.a.x), var_0.c.x, countOneBits(-var_0.c.x)));
    return Struct_1(vec3<f32>(-569f, 1043f, var_0.a.x), var_0.b, vec2<i32>(~_wgslsmith_div_i32(541i, _wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(var_2.x, var_0.c.x))), var_0.c.x));
}

fn func_1() -> Struct_1 {
    global0 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, var_0.a.x, var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-1705f - var_0.a.x), -626f, -673f))))), 1u, ~vec2<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.c.x, -2147483647i), countOneBits(var_0.c.x))));
    let var_2 = ~(~(~vec4<u32>(reverseBits(var_0.b), ~344u, reverseBits(1u), max(50905u, 46807u))));
    var var_3 = func_2();
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<u32> {
    var var_0 = vec3<i32>(arg_3, func_2().c.x, abs(-firstLeadingBit(-8406i)));
    let var_1 = 0u;
    global0 = arg_0.b;
    var_0 = reverseBits(vec3<i32>(~firstLeadingBit(-1i), abs(firstTrailingBit(u_input.a.x)), ~arg_3));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, func_2().a.x, _wgslsmith_f_op_f32(f32(-1f) * -454f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(187f, arg_1.a.x, -799f)))))))), ~(~_wgslsmith_add_u32(86706u, var_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(func_1().c.x, 1i), u_input.a));
    return reverseBits(~min(vec3<u32>(var_1, abs(0u), 4294967295u), select(~vec3<u32>(var_1, arg_0.b, arg_1.b), ~vec3<u32>(arg_1.b, var_2.b, arg_1.b), vec3<bool>(true, true, true))));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -9573i, u_input.a.x, reverseBits(_wgslsmith_mod_i32(56207i, 2147483647i)), u_input.a.x), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i)), select(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), abs(vec4<i32>(1i, -1i, u_input.a.x, u_input.a.x)), all(vec2<bool>(arg_0, arg_0)))));
    global0 = u_input.b;
    global0 = 9097u & abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, arg_1.x, arg_1.x, 43073u)), vec4<u32>(arg_1.x, 23458u, 1u, 64502u)), max(vec4<u32>(0u, 4294967295u, arg_1.x, u_input.b), vec4<u32>(u_input.b, arg_1.x, 132960u, 0u))));
    var var_1 = func_1();
    var var_2 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(!vec4<bool>(all(vec2<bool>(false, true)), false, true, true)), func_4(func_1(), Struct_1(vec3<f32>(428f, -1000f, -571f), 31820u, u_input.a), u_input.a.x, 0i));
    let var_1 = -764f;
    let var_2 = 4584u;
    global0 = var_2;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-148f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1161f - -1470f), _wgslsmith_f_op_f32(-var_0.a.x))), 2213f, -617f), vec4<f32>(_wgslsmith_f_op_f32(min(-1466f, var_0.a.x)), -1572f, -794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f * -1597f)))));
    var var_4 = !select(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true)), false, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), 18735i >= var_0.c.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, !all(vec2<bool>(false, false)), !all(vec4<bool>(false, true, false, false))));
    let var_5 = u_input.a.x;
    global0 = firstLeadingBit(reverseBits(~1u)) ^ _wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(0u, 68468u)), _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_0.b, 12324u), true), _wgslsmith_add_vec2_u32(vec2<u32>(var_2, 0u), vec2<u32>(u_input.b, 0u))), vec2<u32>(select(u_input.b, var_2, var_4.x), func_5(var_4.x, vec3<u32>(var_0.b, u_input.b, u_input.b)).b)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -11869i);
}

