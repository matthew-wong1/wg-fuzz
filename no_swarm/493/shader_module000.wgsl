struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(9265i, vec3<u32>(0u, 99674u, 4294967295u), 0u), Struct_1(1i, vec3<u32>(1u, 22990u, 67336u), 32000u), Struct_1(-9827i, vec3<u32>(46496u, 108559u, 53058u), 36019u), Struct_1(-40240i, vec3<u32>(61256u, 50393u, 26900u), 8811u), Struct_1(1i, vec3<u32>(76321u, 1u, 58141u), 97266u), Struct_1(-40639i, vec3<u32>(60029u, 13251u, 73039u), 0u), Struct_1(2147483647i, vec3<u32>(1u, 65515u, 111755u), 41100u), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 9728u), 1u), Struct_1(1i, vec3<u32>(4294967295u, 120958u, 4294967295u), 51212u), Struct_1(1i, vec3<u32>(17197u, 72552u, 50046u), 7885u), Struct_1(38942i, vec3<u32>(0u, 75175u, 0u), 0u), Struct_1(-1i, vec3<u32>(21368u, 13688u, 0u), 21367u), Struct_1(-25713i, vec3<u32>(4730u, 22358u, 58072u), 1u), Struct_1(40228i, vec3<u32>(49819u, 69369u, 4294967295u), 27767u), Struct_1(30947i, vec3<u32>(47430u, 6639u, 1u), 4294967295u), Struct_1(i32(-2147483648), vec3<u32>(1u, 26956u, 4294967295u), 5246u), Struct_1(2147483647i, vec3<u32>(4294967295u, 0u, 7577u), 0u), Struct_1(0i, vec3<u32>(1u, 34256u, 4294967295u), 4294967295u), Struct_1(-25848i, vec3<u32>(4294967295u, 134005u, 77857u), 1u), Struct_1(-9107i, vec3<u32>(53126u, 15584u, 0u), 50443u), Struct_1(-21007i, vec3<u32>(32978u, 35465u, 1u), 26536u), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 67081u), 0u), Struct_1(6107i, vec3<u32>(0u, 4294967295u, 4294967295u), 1u), Struct_1(51417i, vec3<u32>(32358u, 127810u, 80625u), 4294967295u), Struct_1(40515i, vec3<u32>(39552u, 0u, 33144u), 27192u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec3<u32> {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_f32(sign(arg_1.x));
    let var_1 = Struct_2(Struct_1(1i, _wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(61188u, u_input.b, u_input.a))), min(vec3<u32>(u_input.b, 107488u, 0u), vec3<u32>(0u, 38649u, u_input.b)) >> (vec3<u32>(u_input.b, 24295u, 4294967295u) % vec3<u32>(32u))), 4294967295u), arg_2.x, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(67345u, 2921u, u_input.a, u_input.a), vec4<u32>(13445u, 68854u, 4294967295u, 32907u)), 4294967295u >> (_wgslsmith_mod_u32(u_input.a, 4294967295u) % 32u), any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1499f), var_0)) - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(464f, -990f)))), 65758u);
    let var_2 = ~firstLeadingBit(-(~(i32(-1i) * -10782i)));
    return _wgslsmith_add_vec3_u32(vec3<u32>(~1u, ~57727u, 1u), var_1.a.b);
}

fn func_2() -> Struct_1 {
    let var_0 = abs(u_input.d);
    var var_1 = vec3<bool>(true, false, !all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))));
    var var_2 = Struct_1(34835i, func_3(u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(444f, 1218f, 280f, 482f))))), ~(-vec4<i32>(-3039i, -78447i, u_input.c, -8269i) ^ select(vec4<i32>(0i, 28003i, -41665i, u_input.c), vec4<i32>(-47295i, 1i, 1i, 1i), true))), ~u_input.b);
    let var_3 = all(!var_1.xx);
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_div_i32(var_2.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d, var_0, var_0), vec3<i32>(35671i, 14174i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-49058i, -2147483647i, -38745i), ~vec3<i32>(1i, var_2.a, -6624i)))), i32(-1i) * -50783i);
    return Struct_1(1i, countOneBits(~vec3<u32>(firstLeadingBit(41069u), u_input.b, 18323u)), reverseBits(~(~(~u_input.a))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = 235f;
    var var_1 = arg_3;
    var var_2 = global0[_wgslsmith_index_u32(146940u, 25u)];
    let var_3 = ~(~(select(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.c, arg_2.b.x, arg_1.x, var_2.b.x), vec4<u32>(91202u, arg_1.x, var_2.c, 0u)), ~vec4<u32>(1u, arg_2.c, arg_2.b.x, 0u), vec4<bool>(arg_3, arg_3, false, true)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(25511u, 56402u, 99417u, 4294967295u), vec4<u32>(14290u, arg_2.c, 4294967295u, var_2.c) >> (vec4<u32>(u_input.a, 11510u, 24826u, 38282u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(-37388i >> (firstTrailingBit(55521u) % 32u), i32(-1i) * -18300i), abs(~(~var_2.a)), arg_2.a));
    return ~0u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32((~u_input.b >> (func_4(arg_1.x, vec2<u32>(17090u, firstLeadingBit(46853u)), func_2(), true) % 32u)) << (arg_0.e % 32u), 25u)];
    var var_1 = true;
    var var_2 = vec4<u32>(var_0.c, 1734u, 63423u, 25948u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.xy);
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_clamp_i32(max(~var_0.a, _wgslsmith_clamp_i32(u_input.d, -2147483647i, -32869i)) | (-arg_0.a.a & _wgslsmith_div_i32(-1i, -30976i)), firstLeadingBit(_wgslsmith_div_i32(2147483647i | u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_0.a.a), vec2<i32>(arg_2.x, var_0.a)))), arg_3.x), _wgslsmith_clamp_u32(97686u, _wgslsmith_mult_u32(arg_0.c, ~arg_0.c), var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * 217f)), ~var_2.x);
    return all(vec2<bool>(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true))), var_2.x >= var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), func_1(Struct_2(Struct_1(-31970i, vec3<u32>(u_input.b, 0u, 70187u), u_input.a), u_input.d, 24214u, 289f, u_input.b), vec3<f32>(267f, -116f, -1135f), vec4<i32>(-2147483647i, u_input.c, 7854i, 1i), vec2<i32>(u_input.d, u_input.d)))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 25u)], -4318i, 11508u, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(select(-2386f, _wgslsmith_f_op_f32(min(-1551f, -1343f)), var_0.x))))), u_input.a);
    var var_2 = reverseBits(_wgslsmith_mult_i32(abs(max(u_input.d, _wgslsmith_clamp_i32(var_1.a.a, 1i, u_input.c))), -(~(~var_1.b))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d, -6635i, var_1.b), vec4<i32>(var_1.a.a, 16149i, -2147483647i, u_input.d)), abs(10095i), 259f > var_1.d), func_2().a), firstTrailingBit(countOneBits(~vec3<u32>(u_input.a, 4294967295u, var_1.c))), _wgslsmith_mult_u32(24792u, ~(u_input.a >> (var_1.a.c % 32u)))), i32(-1i) * -36346i, u_input.a, -530f, countOneBits(_wgslsmith_div_u32(~(2654u << (1u % 32u)), reverseBits(var_1.c))));
    let var_4 = -_wgslsmith_clamp_i32(-1i, firstTrailingBit(u_input.d | var_1.a.a), ~u_input.d) | -15303i;
    var var_5 = func_2();
    var var_6 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(~4294967295u, ~9332u)), abs(var_3.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1416f + _wgslsmith_f_op_f32(min(-1793f, var_3.d))), _wgslsmith_f_op_f32(f32(-1f) * -752f)))));
}

