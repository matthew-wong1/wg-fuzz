struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1618f, 250f, 301f, -304f);

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(abs(1i)), 1i, 0i), -(~(vec3<i32>(-32118i, 14060i, 27047i) >> (vec3<u32>(11417u, u_input.b, 1u) % vec3<u32>(32u)))) << (~reverseBits(min(vec3<u32>(u_input.a, 1u, u_input.b), vec3<u32>(0u, u_input.a, 1u))) % vec3<u32>(32u)));
    var var_1 = select(select(!select(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, false, true, false)), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, arg_0, false, arg_0), arg_0), true), vec4<bool>(~0u > u_input.b, any(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, false, arg_0, arg_0), true)), true, true), arg_0), vec4<bool>(241f != _wgslsmith_f_op_f32(step(-721f, _wgslsmith_f_op_f32(sign(1722f)))), u_input.b != ~(~107000u), any(select(!vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), !arg_0)), false), select(true, _wgslsmith_f_op_f32(sign(arg_1.a.x)) >= _wgslsmith_f_op_f32(-arg_1.a.x), arg_0) || arg_0);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, arg_1.a.x, -1122f, global0.x))))))));
    var_1 = select(select(vec4<bool>(all(!vec4<bool>(var_1.x, true, false, true)), true, var_1.x, (u_input.a > u_input.a) || (u_input.b != u_input.b)), vec4<bool>(all(var_1.xw), false, any(var_1.wy), select(false, true, arg_0) && (u_input.b > u_input.a)), var_1.x), select(!vec4<bool>(arg_1.a.x == arg_1.a.x, any(vec3<bool>(false, true, arg_0)), false, arg_0), vec4<bool>(_wgslsmith_f_op_f32(-global0.x) == -349f, any(var_1.wzy), all(var_1.zzz), var_1.x), vec4<bool>(all(!var_1.xwx), true, true, true)), all(!vec3<bool>(732f < global0.x, false, arg_0)));
    global1 = array<Struct_1, 12>();
    return _wgslsmith_clamp_vec4_i32(select(-abs(vec4<i32>(4998i, 31075i, 9938i, -35980i)), ~vec4<i32>(2147483647i, 0i, -25657i, -31609i), !all(vec4<bool>(false, var_1.x, arg_0, var_1.x))) ^ firstTrailingBit(-(~vec4<i32>(-41687i, 2147483647i, -32948i, -32621i))), vec4<i32>(44400i, abs(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(42274i, -1i, 1i)), firstTrailingBit(vec3<i32>(1i, -60145i, -1i)))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -26649i, 2443i), vec3<i32>(18061i, -30630i, -70953i)), 18221i), abs(2766i)), ~vec4<i32>(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -6669i, 0i), vec3<i32>(2147483647i, -75367i, 74420i))), ~(0i >> (0u % 32u)), -1i, _wgslsmith_clamp_i32(~(-1i), countOneBits(1i), i32(-1i) * -1i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = !select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, true), true);
    var var_1 = vec2<i32>(arg_0.x, -73318i) & -_wgslsmith_div_vec2_i32(arg_0.yw, arg_0.xy);
    var var_2 = global1[_wgslsmith_index_u32(~4294967295u, 12u)];
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-197f, 375f)), -2048f)), _wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_div_f32(arg_1.a.x, 998f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(741f, -1121f)) + _wgslsmith_f_op_f32(f32(-1f) * -341f))));
    let var_4 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 389f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1135f)), var_2.a)));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    var var_0 = -16675i;
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_dot_vec3_i32(max(firstTrailingBit(-vec3<i32>(-2147483647i, 2147483647i, -35128i)), vec3<i32>(1i, 1i, reverseBits(-1i))), ~select(vec3<i32>(-56700i, 5059i, 0i) >> (vec3<u32>(4294967295u, u_input.b, u_input.a) % vec3<u32>(32u)), max(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-19441i, 82667i, 2147483647i)), all(vec4<bool>(true, true, false, false))) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b & u_input.a, ~1u), ~min(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.b, 26598u, 0u))) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(select(func_3(0u == u_input.a, Struct_1(vec4<f32>(-321f, global0.x, global0.x, -802f))), firstLeadingBit(vec4<i32>(7314i, 23734i, -1i, 1i)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true))), global1[_wgslsmith_index_u32(0u, 12u)])));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(max(~u_input.a, 92215u >> (u_input.b % 32u)), 0u >> (u_input.b % 32u)), u_input.a), 12u)];
    return firstLeadingBit(~(~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 1u)), ~vec2<u32>(14337u, u_input.b))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))) + _wgslsmith_f_op_f32(floor(-1115f)))));
    let var_1 = ~(~_wgslsmith_mod_u32(0u, 1u));
    let var_2 = max(_wgslsmith_div_u32(var_0.x, 1u), _wgslsmith_mult_u32(~(~(1u << (var_1 % 32u))), firstLeadingBit(4294967295u)));
    let var_3 = _wgslsmith_mult_u32(~62474u, min(func_2(global0.x).x, ~reverseBits(func_2(-1063f).x)));
    global1 = array<Struct_1, 12>();
    return ~vec2<u32>(firstLeadingBit(~u_input.b >> (~1u % 32u)), 86457u);
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = ~(-1i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(-1i) * -vec4<i32>(-23228i, arg_0.x, arg_0.x, arg_0.x), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 1385f, global0.x, -332f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -202f, 1758f)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1963f, var_1.a.x) - _wgslsmith_f_op_f32(global0.x * var_1.a.x)), _wgslsmith_f_op_f32(floor(350f)))))), -268f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(679f)) + var_1.a.x), -361f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(firstTrailingBit(34108i), arg_0.x, max(arg_0.x, 37903i), ~arg_0.x), global1[_wgslsmith_index_u32(~reverseBits(1u), 12u)])).x * 1853f));
    let var_2 = arg_0;
    var var_3 = vec4<u32>(_wgslsmith_div_u32(24931u, ~(arg_2.x >> (4294967295u % 32u))), 1u, firstLeadingBit(~u_input.a), abs(1u)) | firstTrailingBit(reverseBits(~countOneBits(vec4<u32>(4294967295u, 43757u, arg_2.x, 4294967295u))));
    return var_1;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-176f, _wgslsmith_f_op_f32(round(-1391f)), _wgslsmith_f_op_f32(min(797f, 787f)), 1f), arg_1.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 968f, -110f, global0.x), arg_1.a))))));
    let var_1 = 75662u;
    let var_2 = arg_1;
    return select(select(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(58919i, -45432i, arg_0.x), vec3<i32>(0i, arg_0.x, -2147483647i)), ~13957i, func_3(true, Struct_1(var_2.a)).x, countOneBits(-2147483647i))), ~(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -39284i)), all(vec3<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, false)), false))), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.x, arg_0.x, 70622i), -vec4<i32>(1i, arg_0.x, 2147483647i, 1i))), ~(-(~vec4<i32>(-39862i, arg_0.x, 8958i, arg_0.x)))), !(!(!any(vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_6(vec2<i32>(1i, 1i), func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(2143i, 28806i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(19372i, -18292i))), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false)), reverseBits(func_1(Struct_1(vec4<f32>(621f, global0.x, 2123f, global0.x)), true)))));
    let var_1 = global1[_wgslsmith_index_u32(5250u, 12u)];
    let var_2 = ~vec2<u32>(~abs(_wgslsmith_add_u32(0u, u_input.b)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_add_u32(abs(11188u), ~u_input.a)), var_0.zyw);
}

