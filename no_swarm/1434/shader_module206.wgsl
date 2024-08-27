struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(24513i, -2086i, 9108i);

var<private> global1: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(1570f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-992f, 188f))), 1f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-833f))), -1768f, true))));
    let var_1 = Struct_1(~(~u_input.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(20568u, u_input.a), vec2<u32>(u_input.a, 1u))) | 31438u, true);
    global0 = select(vec3<i32>(-2147483647i, max(1i, -global0.x), ~_wgslsmith_add_i32(0i, global0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(global0.x, 1i, 1i)), vec3<i32>(1i, _wgslsmith_mult_i32(-1i, -22292i), abs(2147483647i)), abs(vec3<i32>(global0.x, -2147483647i, -3229i))), _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(global0.x, global0.x, -9429i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 7318i, global0.x), vec3<i32>(global0.x, -1i, global0.x)), reverseBits(vec3<i32>(5568i, 0i, global0.x))))), select(!vec3<bool>(!var_1.b, true, all(vec3<bool>(var_1.b, var_1.b, var_1.b))), select(!vec3<bool>(true, false, var_1.b), vec3<bool>(any(vec3<bool>(false, var_1.b, var_1.b)), false | var_1.b, true), !(!var_1.b)), var_1.b & true));
    global1 = 7260u;
    var var_2 = Struct_1(~7381u, !(!var_1.b) || any(!select(vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, true, true, var_1.b))));
    return 640f;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(select(_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.a, 63050u), 104236u), ~35738u, false), false);
    let var_1 = _wgslsmith_f_op_f32(-1246f + 700f);
    var var_2 = vec3<f32>(1520f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 * 905f), 1123f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * 492f));
    var var_3 = Struct_1(~(~1u), true);
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2357f) * _wgslsmith_f_op_f32(select(var_1, -488f, true))), -606f))));
    return i32(-1i) * -global0.x;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global0 = vec3<i32>(-2147483647i, arg_2, _wgslsmith_sub_i32(-2147483647i, global0.x));
    global0 = vec3<i32>(-1i) * -(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, 0i), select(vec3<i32>(global0.x, 1i, arg_2), vec3<i32>(17564i, arg_2, arg_2), vec3<bool>(arg_3.b, true, arg_3.b))) << (firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 31143u, 1u), vec3<u32>(u_input.a, u_input.a, arg_3.a))) % vec3<u32>(32u)));
    global0 = ~select(select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, -9866i, 8864i) ^ vec3<i32>(2147483647i, -1i, arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 8365i), vec3<i32>(-18932i, -1i, 1i))), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -4033i, global0.x), ~vec3<i32>(global0.x, -60730i, -1964i)), arg_3.b), vec3<i32>(global0.x, ~2175i, 25738i >> (~u_input.a % 32u)), select(select(vec3<bool>(arg_3.b, false, true), vec3<bool>(false, false, arg_3.b), all(vec4<bool>(arg_3.b, true, true, true))), vec3<bool>(true, !arg_3.b, any(vec2<bool>(arg_3.b, arg_3.b))), false));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_2(arg_3), -25367i, ~1i), vec3<i32>(15386i, -1i, abs(-11483i))) >> (~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_3.a, 101u, 0u) >> (max(vec3<u32>(74862u, 46764u, 59941u), vec3<u32>(0u, arg_0, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a, 40377u, 84396u) ^ vec3<u32>(arg_3.a, arg_3.a, 68958u), vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(39274u, 4294967295u, 25784u))) % vec3<u32>(32u));
    var var_0 = vec4<bool>(arg_3.b, false, !any(vec2<bool>(!arg_3.b, false)), global0.x <= arg_2);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, arg_1))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -595f)) - _wgslsmith_div_f32(589f, -501f)), arg_1)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = ~reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, 24930i) ^ vec3<i32>(-2147483647i, -1i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -3449i, global0.x), vec3<i32>(42282i, global0.x, 0i))), firstLeadingBit(-vec3<i32>(0i, -1i, -2554i))));
    var var_0 = vec3<u32>(1u, 4294967295u, ~u_input.a);
    var_0 = ~(arg_1 ^ arg_1);
    global1 = abs(4294967295u);
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(25913u, ~(~75652u)), abs(abs(2330u)) >> (u_input.a % 32u), countOneBits(select(~(~arg_1.x), 34621u, any(vec2<bool>(true, true)))));
    return Struct_1(_wgslsmith_sub_u32(20565u, max(~u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(171u, 37952u), vec2<u32>(0u, var_0.x)))), !all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.a, -128f, global0.x, Struct_1(1u, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(231f, 260f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), -744f))), ~(~abs(~vec3<u32>(u_input.a, 22042u, 1u))));
    let var_1 = ~vec3<u32>(~0u, 45624u, min(reverseBits(u_input.a), ~1u));
    global0 = ~(~firstLeadingBit(countOneBits(vec3<i32>(13159i, -17991i, global0.x))));
    global1 = ~_wgslsmith_clamp_u32(select(~1u, 85626u, true), var_0.a, select(1u, ~var_1.x, true) >> (reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.a)) % 32u));
    var var_2 = var_0.b;
    let var_3 = select(global0.x, global0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(global0.x, -1i, -(-2147483647i >> (var_1.x % 32u)), -1i), var_1);
}

