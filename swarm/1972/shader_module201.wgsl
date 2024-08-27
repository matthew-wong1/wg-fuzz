struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(69147u, false, 1000f), vec3<i32>(i32(-2147483648), 10350i, 51084i)), Struct_2(Struct_1(5239u, true, 558f), vec3<i32>(-38922i, -6372i, -23566i)), Struct_2(Struct_1(1u, true, 114f), vec3<i32>(-88940i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(1u, false, -633f), vec3<i32>(-60728i, -23716i, -32514i)), Struct_2(Struct_1(29512u, false, -149f), vec3<i32>(-6180i, -23697i, 1i)), Struct_2(Struct_1(1u, true, -1708f), vec3<i32>(1i, 2147483647i, 23036i)), Struct_2(Struct_1(54211u, false, 689f), vec3<i32>(0i, 34329i, -4437i)), Struct_2(Struct_1(4294967295u, true, 1459f), vec3<i32>(-35840i, 2147483647i, -10488i)), Struct_2(Struct_1(0u, true, -674f), vec3<i32>(41601i, 34174i, 29810i)), Struct_2(Struct_1(1u, false, 590f), vec3<i32>(0i, -35286i, 0i)), Struct_2(Struct_1(4294967295u, true, 1430f), vec3<i32>(8341i, i32(-2147483648), 30011i)), Struct_2(Struct_1(73801u, true, -1000f), vec3<i32>(-5265i, 2147483647i, 59i)), Struct_2(Struct_1(4294967295u, true, 788f), vec3<i32>(17328i, -24103i, -12222i)), Struct_2(Struct_1(1u, true, -1404f), vec3<i32>(i32(-2147483648), -54195i, 0i)), Struct_2(Struct_1(4294967295u, true, 1000f), vec3<i32>(-10291i, -50055i, -1i)), Struct_2(Struct_1(17997u, false, 1599f), vec3<i32>(29370i, 1i, 7949i)), Struct_2(Struct_1(0u, false, 971f), vec3<i32>(34423i, 2147483647i, 58303i)), Struct_2(Struct_1(0u, true, 982f), vec3<i32>(-4381i, 19790i, i32(-2147483648))), Struct_2(Struct_1(1u, true, -1575f), vec3<i32>(81059i, 25790i, 36709i)), Struct_2(Struct_1(4294967295u, true, 124f), vec3<i32>(16127i, 0i, 59638i)), Struct_2(Struct_1(42270u, true, -1360f), vec3<i32>(2147483647i, 0i, -27213i)));

var<private> global1: array<f32, 18> = array<f32, 18>(1000f, -1568f, 893f, 172f, -768f, -973f, 1085f, 491f, -563f, 1538f, -266f, 801f, 1682f, 1720f, -140f, 705f, -711f, 538f);

var<private> global2: array<bool, 8>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_1(1u, all(select(vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_2.x, 8u)], false, true), !arg_0, select(arg_0, arg_0, global2[_wgslsmith_index_u32(11557u, 8u)]))) && any(arg_0.wwz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27807u, 18u)] + -970f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-337f, -908f)))))));
    let var_1 = min(arg_2.x, ~4294967295u);
    var var_2 = -1i;
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 394f, 137f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -732f, var_0.c) + vec3<f32>(365f, global1[_wgslsmith_index_u32(arg_1.x, 18u)], var_0.c))), vec3<f32>(_wgslsmith_f_op_f32(select(-1364f, 1738f, true)), _wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1, 18u)] - 875f)), arg_0.x)))), vec2<i32>(-u_input.b, abs(-firstTrailingBit(2147483647i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(21385u, 18u)], -1201f), vec3<f32>(global1[_wgslsmith_index_u32(6386u, 18u)], var_0.c, -345f)), vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 18u)], global1[_wgslsmith_index_u32(var_1, 18u)], var_0.c)))))), Struct_3(Struct_1(1u ^ (u_input.a.x >> (66083u % 32u)), !(!global2[_wgslsmith_index_u32(var_1, 8u)]), global1[_wgslsmith_index_u32(var_0.a, 18u)]), vec2<i32>(1i, -1i)));
    var var_4 = var_0;
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(13300i, -1i), 2147483647i), -var_3.d.b.x), _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec2_i32(var_3.b, _wgslsmith_add_vec2_i32(vec2<i32>(var_3.b.x, var_3.d.b.x), vec2<i32>(-1i, 1i)))), abs(-var_3.b.x) ^ u_input.d));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = array<bool, 8>();
    var var_0 = Struct_3(arg_0.a, ~(~vec2<i32>(abs(u_input.c), func_3(vec4<bool>(arg_0.a.b, global2[_wgslsmith_index_u32(4294967295u, 8u)], true, arg_0.a.b), vec3<u32>(28394u, arg_0.a.a, u_input.a.x), vec4<u32>(102689u, 0u, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, _wgslsmith_f_op_f32(sign(305f)), _wgslsmith_div_f32(-709f, 554f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.c, var_0.a.c, global1[_wgslsmith_index_u32(var_0.a.a, 18u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 124f, -513f)))))), arg_0.b.yx & select(abs(vec2<i32>(0i, 2147483647i)), arg_0.b.yy, !all(vec2<bool>(var_0.a.b, arg_0.a.b))), vec3<f32>(405f, _wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.c)) - -279f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1381f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 18u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.c)) + _wgslsmith_f_op_f32(abs(-848f))))), Struct_3(arg_0.a, countOneBits(vec2<i32>(2147483647i, ~1i))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_1.c), ~(-var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c), 988f, -724f)), Struct_3(Struct_1(reverseBits(~var_0.a.a), true, var_0.a.c), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(0i), select(-3882i, u_input.d, false)), ~max(vec2<i32>(var_0.b.x, -30719i), vec2<i32>(var_1.b.x, arg_0.b.x)))));
    let var_3 = countOneBits(var_2.d.b);
    return arg_0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = func_2(Struct_2(arg_3.a, max(vec3<i32>(1i, -1i, arg_3.b.x >> (0u % 32u)), vec3<i32>(6787i, u_input.c, 0i) << (firstLeadingBit(arg_2.yxy) % vec3<u32>(32u)))));
    global0 = array<Struct_2, 21>();
    var var_1 = arg_0.yy;
    let var_2 = Struct_4(vec3<f32>(-125f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1380f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1980f)))), ~(-firstTrailingBit(-vec2<i32>(arg_3.b.x, arg_3.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, -1441f, arg_1) + vec3<f32>(var_0.c, global1[_wgslsmith_index_u32(1320u, 18u)], 2319f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1402f, var_0.c, -1257f)))))), Struct_3(Struct_1(0u << (u_input.a.x % 32u), !(!var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 18u)]) - _wgslsmith_f_op_f32(trunc(908f)))), vec2<i32>(~arg_3.b.x, u_input.d)));
    return ~(~(~(~(vec4<u32>(var_2.d.a.a, u_input.a.x, 1u, 4294967295u) >> (arg_2 % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_4 {
    global1 = array<f32, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, arg_2.a.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, arg_0.a.c) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.a, 18u)], global1[_wgslsmith_index_u32(3554u, 18u)])))))) - vec2<f32>(1f, global1[_wgslsmith_index_u32(1u, 18u)]));
    global1 = array<f32, 18>();
    var var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, arg_0.a.a) ^ ~11435u, 18u)], _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1000f, 557f)), _wgslsmith_f_op_f32(floor(var_1.c))))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 + _wgslsmith_f_op_vec3_f32(max(var_2, vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(1u, 18u)], -1079f))))) * _wgslsmith_f_op_vec3_f32(step(var_2, var_2))), firstTrailingBit(arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, arg_2.a.c, arg_2.a.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.c, var_1.c, var_0.x) * var_2)))), Struct_3(Struct_1(_wgslsmith_sub_u32(u_input.a.x, ~arg_1.x), any(vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.c - arg_0.a.c), arg_0.a.c)), _wgslsmith_add_vec2_i32(abs(_wgslsmith_sub_vec2_i32(arg_2.b.zy, vec2<i32>(-43741i, 31166i))), ~vec2<i32>(arg_0.b.x, arg_3.x))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = abs(vec4<i32>(~0i, func_4(arg_0.d, countOneBits(vec4<u32>(arg_0.d.a.a, 1u, 37525u, 1u) & vec4<u32>(arg_0.d.a.a, u_input.a.x, 4294967295u, 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x), false), vec3<u32>(u_input.a.x, u_input.a.x, 45534u)), 21u)], min(vec4<i32>(-5648i, arg_0.d.b.x, -2147483647i, u_input.c) & vec4<i32>(2760i, -4886i, arg_0.d.b.x, arg_0.d.b.x), ~vec4<i32>(15529i, -1i, u_input.b, 6398i))).d.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, arg_0.b.x), ~vec2<i32>(u_input.c, arg_0.d.b.x)), arg_0.b.x), 0i));
    global0 = array<Struct_2, 21>();
    global2 = array<bool, 8>();
    var var_1 = abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-60929i, arg_0.d.b.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(2147483647i, 0i)), reverseBits(arg_0.b))));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(~arg_0.d.a.a), abs(firstTrailingBit(1u))), 21u)];
    return Struct_1(u_input.a.x, false, _wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(min(-643f, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 8u)], false, !(u_input.b <= u_input.b), global2[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 8u)]);
    global1 = array<f32, 18>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)] + 1094f)))))), _wgslsmith_f_op_f32(-774f + 407f));
    var var_2 = func_5(func_4(Struct_3(Struct_1(1u, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), -_wgslsmith_mult_vec2_i32(vec2<i32>(1710i, 76487i), vec2<i32>(7149i, u_input.b))), ~func_1(vec3<bool>(true, true, var_0.x), _wgslsmith_f_op_f32(abs(-159f)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 34696u, 35901u) % vec4<u32>(32u)), Struct_2(Struct_1(1u, var_0.x, -1474f), vec3<i32>(u_input.b, u_input.b, 2147483647i))), Struct_2(Struct_1(37827u, var_0.x, _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(1u, 18u)])), vec3<i32>(u_input.d, -1i, u_input.b) | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1132i, -2147483647i), vec3<i32>(u_input.d, u_input.c, -1i))), vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.c), 0i, ~6007i, min(select(u_input.d, u_input.d, global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_mult_i32(u_input.c, u_input.d)))));
    let var_3 = 23518u;
    let var_4 = func_4(func_4(func_4(Struct_3(Struct_1(var_2.a, true, var_1.x), vec2<i32>(u_input.b, -31609i)), vec4<u32>(~102541u, 4294967295u & var_3, ~var_3, u_input.a.x), global0[_wgslsmith_index_u32(~u_input.a.x, 21u)], ~(~vec4<i32>(u_input.c, 13582i, 17548i, -33775i))).d, ~select(abs(vec4<u32>(11792u, 8608u, u_input.a.x, 60773u)), ~vec4<u32>(1u, var_2.a, var_3, var_3), false), Struct_2(Struct_1(func_2(Struct_2(Struct_1(106u, var_0.x, var_2.c), vec3<i32>(-27135i, u_input.b, -14663i))).a, true, _wgslsmith_f_op_f32(max(627f, var_2.c))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-1i, 0i, -85741i), vec3<i32>(u_input.d, u_input.c, -2147483647i), var_2.b), vec3<i32>(1i, u_input.b, -4634i))), vec4<i32>(2147483647i, abs(1i), -1i, func_4(Struct_3(Struct_1(var_2.a, true, var_1.x), vec2<i32>(2147483647i, 3978i)), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 34837u), global0[_wgslsmith_index_u32(~4294967295u, 21u)], firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.d, 16096i))).d.b.x)).d, vec4<u32>(abs(abs(~16951u)), _wgslsmith_clamp_u32(74120u, ~_wgslsmith_clamp_u32(var_2.a, 4294967295u, u_input.a.x), min(28133u, ~u_input.a.x)), ~(~var_2.a), 6946u), Struct_2(Struct_1(~0u, -404f != _wgslsmith_f_op_f32(var_2.c * -272f), global1[_wgslsmith_index_u32(func_5(Struct_4(vec3<f32>(var_1.x, -784f, -1380f), vec2<i32>(u_input.c, 2147483647i), vec3<f32>(var_2.c, var_2.c, var_2.c), Struct_3(Struct_1(10262u, var_2.b, global1[_wgslsmith_index_u32(1u, 18u)]), vec2<i32>(0i, -2147483647i)))).a, 18u)]), -vec3<i32>(u_input.d, ~0i, -45812i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, 13239i, u_input.b, -16386i), abs(vec4<i32>(u_input.c, u_input.b, 2147483647i, u_input.b))) ^ reverseBits(vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 16985i), vec2<i32>(-28133i, 16998i)), -u_input.d, firstTrailingBit(-2147483647i)))).d;
    let var_5 = var_4.a;
    var_0 = !vec4<bool>(true, any(select(vec4<bool>(var_0.x, var_4.a.b, global2[_wgslsmith_index_u32(var_4.a.a, 8u)], global2[_wgslsmith_index_u32(var_2.a, 8u)]), vec4<bool>(true, false, false, false), func_2(Struct_2(var_5, vec3<i32>(1i, 25434i, var_4.b.x))).b)), !var_2.b, (~var_2.a >> (firstLeadingBit(var_3) % 32u)) == 4294967295u);
    let var_6 = var_0.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1174f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))))), u_input.a.x, -_wgslsmith_sub_i32(~2147483647i, u_input.b | 0i) << (_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(var_2.a, var_4.a.a)) % 32u), -countOneBits(~vec4<i32>(var_4.b.x, -27589i, 2147483647i, -8671i)));
}

