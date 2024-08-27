struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-323f, 2321f, -263f, 552f, -466f, 505f, 521f, 1550f, 649f, -1651f, -1912f, -1000f, -1000f, -1351f, 1000f, 372f, -1480f, 847f, -125f, 403f, -816f, 284f, 1000f);

var<private> global1: array<vec4<bool>, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = Struct_4(u_input.c.x << (~u_input.a.x % 32u), _wgslsmith_div_u32(countOneBits(~0u | u_input.a.x), 4294967295u), Struct_1(select(!vec2<bool>(arg_1.x, arg_1.x), arg_1, arg_2.x || (arg_0.x < 91167u)), u_input.c.x, select(vec4<i32>(max(-1i, 1i), _wgslsmith_sub_i32(1i, arg_3), 6818i, ~u_input.c.x), vec4<i32>(_wgslsmith_div_i32(arg_3, 0i), -2147483647i, abs(1i), arg_3), false)), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1191f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(12246u, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 8100u), 23u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(213f, 2573f, -1643f, global0[_wgslsmith_index_u32(u_input.b, 23u)])))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(32905u, 23u)], 497f, -1390f, 380f) * vec4<f32>(1846f, 818f, -106f, global0[_wgslsmith_index_u32(arg_0.x, 23u)]))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1815f, global0[_wgslsmith_index_u32(90445u, 23u)], -662f, global0[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(87258u, 23u)], -104f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 567f))), !(arg_1.x || arg_2.x)))));
    global1 = array<vec4<bool>, 9>();
    var var_1 = u_input.c.x;
    var_1 = _wgslsmith_mod_i32(-(reverseBits(-40202i >> (1u % 32u)) & select(var_0.c.b, -66008i, any(vec2<bool>(false, true)))), ~26871i);
    let var_2 = _wgslsmith_div_vec2_u32(~(reverseBits(firstLeadingBit(vec2<u32>(var_0.b, 0u))) | firstLeadingBit(abs(vec2<u32>(66985u, arg_0.x)))), vec2<u32>(u_input.b, ~(~u_input.a.x)));
    return ~var_0.a;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    var var_0 = Struct_4(arg_0.a, arg_1.x, Struct_1(vec2<bool>(any(select(vec2<bool>(arg_2.a.x, arg_0.d), vec2<bool>(arg_2.a.x, false), false)), true), -1i, arg_2.c), arg_2.a.x, _wgslsmith_f_op_vec4_f32(arg_0.e - _wgslsmith_f_op_vec4_f32(arg_0.e * vec4<f32>(_wgslsmith_f_op_f32(select(-2096f, global0[_wgslsmith_index_u32(0u, 23u)], false)), _wgslsmith_f_op_f32(select(1853f, -1119f, arg_0.c.a.x)), -367f, 905f))));
    var var_1 = Struct_5(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-344f))), 431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1085f)) * var_0.e.x)), -1000f, arg_2, 2147483647i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-245f + 1587f), _wgslsmith_div_f32(312f, -1000f))))), Struct_3(Struct_2(vec3<f32>(-542f, _wgslsmith_f_op_f32(arg_0.e.x - 277f), global0[_wgslsmith_index_u32(arg_0.b, 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]) - _wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x)), arg_0.c, (arg_2.c.x >> (arg_0.b % 32u)) ^ ~9026i), func_3(vec2<u32>(arg_1.x, _wgslsmith_sub_u32(124899u, arg_1.x)), !select(vec2<bool>(var_0.d, arg_2.a.x), arg_0.c.a, true), vec2<bool>(true & arg_2.a.x, all(vec4<bool>(var_0.c.a.x, arg_0.c.a.x, false, arg_0.c.a.x))), _wgslsmith_mod_i32(arg_2.b, ~(-53468i))), false, firstTrailingBit(u_input.a)), vec2<f32>(global0[_wgslsmith_index_u32(36882u, 23u)], _wgslsmith_f_op_f32(-arg_0.e.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(193i, -arg_0.a, abs(-39349i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, arg_2.b, _wgslsmith_sub_i32(76080i, arg_2.b)), arg_0.c.c.xzw)));
    let var_2 = all(vec4<bool>(true, ((var_0.c.a.x & false) && true) & !arg_2.a.x, arg_0.c.a.x, true));
    return -var_0.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> i32 {
    global1 = array<vec4<bool>, 9>();
    let var_0 = Struct_5(arg_3, 780f, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, -406f, -168f))), -1502f, arg_3.c, u_input.c.x), -2147483647i, (arg_0.x || (arg_0.x & arg_0.x)) && true, countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, 28715u, 1u), vec4<u32>(u_input.b, 26164u, u_input.d, 22448u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a.zy))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(reverseBits(countOneBits(18124i)), func_2(Struct_4(2147483647i, u_input.d, Struct_1(arg_3.c.a, arg_3.c.c.x, arg_3.c.c), false, vec4<f32>(1128f, arg_3.a.x, global0[_wgslsmith_index_u32(92552u, 23u)], -889f)), select(vec4<u32>(47677u, 9131u, u_input.d, 11650u), vec4<u32>(63798u, u_input.a.x, u_input.d, 70180u), arg_0.x), Struct_1(vec2<bool>(arg_3.c.a.x, true), 2147483647i, vec4<i32>(52358i, arg_2, arg_2, u_input.c.x)))), _wgslsmith_dot_vec2_i32(-(~arg_3.c.c.yx), vec2<i32>(-2679i, func_3(u_input.a.xw, arg_3.c.a, vec2<bool>(true, arg_3.c.a.x), -1i))), -13255i));
    var var_1 = !var_0.c.a.c.a;
    var var_2 = -vec4<i32>(_wgslsmith_div_i32(~firstTrailingBit(arg_3.d), arg_2), 30637i, ~u_input.c.x, reverseBits(-1i));
    let var_3 = var_0.a.c.c.wz;
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.c;
    var var_1 = Struct_4(arg_1.b, firstLeadingBit(arg_1.d.x) >> (36560u % 32u), Struct_1(vec2<bool>(true, all(select(vec3<bool>(arg_1.a.c.a.x, true, arg_1.a.c.a.x), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), func_4(select(!vec3<bool>(arg_1.c, true, false), !vec3<bool>(arg_1.c, arg_1.c, arg_1.a.c.a.x), !vec3<bool>(true, false, arg_1.c)), any(select(arg_1.a.c.a, vec2<bool>(false, true), vec2<bool>(true, false))), func_2(Struct_4(arg_1.b, 4294967295u, Struct_1(arg_1.a.c.a, arg_1.a.d, vec4<i32>(-52124i, -46416i, arg_1.b, 0i)), false, arg_0), vec4<u32>(4294967295u, 16637u, arg_1.d.x, u_input.a.x), arg_1.a.c) ^ -3655i, arg_1.a), max(-(vec4<i32>(-1i, -53405i, -11488i, 1i) >> (vec4<u32>(u_input.b, arg_1.d.x, 0u, arg_1.d.x) % vec4<u32>(32u))), vec4<i32>(~u_input.c.x, ~(-8931i), arg_1.a.d, arg_1.b | arg_1.a.d))), arg_1.a.c.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], arg_0.x, -974f, arg_1.a.a.x))))))))));
    global1 = array<vec4<bool>, 9>();
    var var_2 = 0u;
    let var_3 = countOneBits(arg_1.a.c.c.zwy & vec3<i32>(func_4(select(vec3<bool>(false, arg_1.c, false), vec3<bool>(var_1.d, var_1.d, arg_1.a.c.a.x), var_1.d), var_1.c.a.x, -var_1.a, arg_1.a), ~1i, 0i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.b, arg_1.d.x, u_input.b, u_input.d)), 1u), 23u)])));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_2 {
    var var_0 = arg_1.a.c.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x)), arg_3.d.x), vec3<f32>(arg_3.c.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1512f + 214f), _wgslsmith_f_op_f32(1871f + 192f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), vec3<bool>(!arg_1.a.c.a.x, arg_3.a.c.a.x, arg_1.c.a.c.a.x)));
    global0 = array<f32, 23>();
    let var_2 = Struct_4(1i, ~_wgslsmith_clamp_u32(firstTrailingBit(arg_2.x), ~40781u, 7572u) | ~0u, arg_3.a.c, min(i32(-1i) * -1i, countOneBits(arg_3.c.a.c.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_3.c.d.x, 52745u), vec4<u32>(arg_1.c.d.x, 44461u, 44660u, u_input.a.x)) % 32u)) <= -1i, vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1397f)) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 23u)]))), !arg_1.a.c.a.x)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.a.a.x), _wgslsmith_f_op_f32(1990f * arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.a.x * var_1.x) * _wgslsmith_f_op_f32(188f - var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(1006f * arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3.b, arg_0.x), _wgslsmith_f_op_f32(759f + arg_1.d.x))), any(vec3<bool>(true, true, arg_3.a.c.a.x))))));
    global1 = array<vec4<bool>, 9>();
    return Struct_2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.x + -747f))))), -1436f), 1604f, Struct_1(select(!select(vec2<bool>(arg_1.a.c.a.x, true), vec2<bool>(arg_3.c.a.c.a.x, arg_3.a.c.a.x), vec2<bool>(arg_1.a.c.a.x, true)), !select(arg_1.a.c.a, arg_1.a.c.a, vec2<bool>(false, arg_1.a.c.a.x)), select(!arg_3.a.c.a, select(arg_1.c.a.c.a, var_2.c.a, vec2<bool>(arg_3.c.c, arg_1.c.a.c.a.x)), true)), -_wgslsmith_mod_i32(arg_1.e, 1i), firstTrailingBit(vec4<i32>(~2147483647i, var_2.a, var_0.x, 1i))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(35826u & u_input.d, 23u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 23u)])), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(func_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 1000f, global0[_wgslsmith_index_u32(1927u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(34771u, 23u)], 653f, global0[_wgslsmith_index_u32(u_input.b, 23u)]), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(vec2<bool>(false, true), 2147483647i, vec4<i32>(20645i, u_input.c.x, u_input.c.x, u_input.c.x)), 0i), u_input.c.x, false, u_input.a))))), Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 385f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) + vec3<f32>(global0[_wgslsmith_index_u32(131u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), abs(u_input.c.x)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, 3199u, u_input.d), 23u)], Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], -398f), 343f, Struct_1(vec2<bool>(false, false), 25580i, vec4<i32>(u_input.c.x, -52348i, u_input.c.x, 36533i)), u_input.c.x), -37079i, true, abs(vec4<u32>(33376u, u_input.b, u_input.d, 0u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(14593u, 23u)], 674f)), vec2<f32>(994f, 154f)), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), u_input.a, Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 1221f, -1046f) + vec3<f32>(-1283f, global0[_wgslsmith_index_u32(28642u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)])), global0[_wgslsmith_index_u32(u_input.d, 23u)], Struct_1(vec2<bool>(true, true), -1i, vec4<i32>(u_input.c.x, -19896i, u_input.c.x, u_input.c.x)), _wgslsmith_sub_i32(u_input.c.x, 8761i)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] - _wgslsmith_f_op_f32(select(-180f, 495f, false))), Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(27337u, 23u)], 496f), -858f, Struct_1(vec2<bool>(false, true), -42884i, vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x), -14613i, any(vec3<bool>(true, false, true)), ~vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]) - vec2<f32>(381f, 238f))), 19979i)), reverseBits(_wgslsmith_mult_i32(u_input.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(19321i, 35673i, u_input.c.x, 1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -13268i)), 1i)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(729f + global0[_wgslsmith_index_u32(76855u, 23u)]), _wgslsmith_f_op_f32(round(785f)))), Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(39502u, 23u)], -364f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] + -896f), func_5(vec2<f32>(-1483f, -1182f), Struct_5(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -100f, global0[_wgslsmith_index_u32(u_input.d, 23u)]), 425f, Struct_1(vec2<bool>(true, true), -48740i, vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)), 1i), 326f, Struct_3(Struct_2(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 23u)], -1077f), global0[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(8459i, -36i, u_input.c.x, -2147483647i)), 28696i), u_input.c.x, true, u_input.a), vec2<f32>(global0[_wgslsmith_index_u32(56644u, 23u)], 614f), 0i), vec4<u32>(62610u, u_input.b, 4294967295u, 31731u), Struct_5(Struct_2(vec3<f32>(-787f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 1450f), global0[_wgslsmith_index_u32(u_input.b, 23u)], Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i)), 1i), -755f, Struct_3(Struct_2(vec3<f32>(-655f, 1934f, -1243f), 990f, Struct_1(vec2<bool>(false, true), 13544i, vec4<i32>(-27071i, u_input.c.x, u_input.c.x, -24943i)), u_input.c.x), -1i, true, u_input.a), vec2<f32>(global0[_wgslsmith_index_u32(25374u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), u_input.c.x)).c, u_input.c.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(38012u, 44044u, u_input.d), u_input.b), 23u)], Struct_3(func_5(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(90133u, 23u)]), Struct_5(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(33681u, 23u)]), -193f, Struct_1(vec2<bool>(false, true), -2147483647i, vec4<i32>(51275i, 6678i, u_input.c.x, 3339i)), u_input.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_3(Struct_2(vec3<f32>(884f, 399f, global0[_wgslsmith_index_u32(56368u, 23u)]), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(u_input.c.x, 0i, -2147483647i, u_input.c.x)), 1218i), -10065i, true, vec4<u32>(u_input.d, u_input.d, 0u, 33077u)), vec2<f32>(global0[_wgslsmith_index_u32(96448u, 23u)], 652f), u_input.c.x), u_input.a, Struct_5(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -1339f), -323f, Struct_1(vec2<bool>(false, false), 0i, vec4<i32>(u_input.c.x, -1i, u_input.c.x, 0i)), -39304i), 1000f, Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 163f, 2652f), -1006f, Struct_1(vec2<bool>(true, true), -13584i, vec4<i32>(2147483647i, u_input.c.x, -32447i, 7060i)), u_input.c.x), -2147483647i, false, u_input.a), vec2<f32>(150f, 1554f), u_input.c.x)), _wgslsmith_mult_i32(1i, u_input.c.x), true, u_input.a << (vec4<u32>(u_input.b, u_input.a.x, 57456u, u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, global0[_wgslsmith_index_u32(u_input.d, 23u)])) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(4153u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])))), u_input.c.x), min(~abs(u_input.a), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(100209u, 68783u, 42521u, u_input.b), vec4<u32>(u_input.d, u_input.d, 0u, 60065u)), vec4<u32>(42039u, u_input.b, 615u, 14892u), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.d)))), Struct_5(func_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1107f, global0[_wgslsmith_index_u32(4294967295u, 23u)]))), Struct_5(Struct_2(vec3<f32>(-972f, 126f, -438f), global0[_wgslsmith_index_u32(0u, 23u)], Struct_1(vec2<bool>(true, false), -1i, vec4<i32>(u_input.c.x, 0i, 4595i, 21695i)), u_input.c.x), global0[_wgslsmith_index_u32(1552u, 23u)], Struct_3(Struct_2(vec3<f32>(340f, -110f, -1266f), 1000f, Struct_1(vec2<bool>(false, false), u_input.c.x, vec4<i32>(-1i, -1i, 1i, u_input.c.x)), -1i), 2147483647i, false, vec4<u32>(0u, 50754u, 0u, u_input.a.x)), vec2<f32>(-686f, global0[_wgslsmith_index_u32(4294967295u, 23u)]), 1i), firstLeadingBit(u_input.a), Struct_5(Struct_2(vec3<f32>(1119f, global0[_wgslsmith_index_u32(15778u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(vec2<bool>(true, true), 0i, vec4<i32>(0i, u_input.c.x, 0i, -2147483647i)), 15869i), global0[_wgslsmith_index_u32(17330u, 23u)], Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 1432f, 648f), 1166f, Struct_1(vec2<bool>(true, false), u_input.c.x, vec4<i32>(-12104i, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x), -1i, false, vec4<u32>(16443u, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -1759f), u_input.c.x)), _wgslsmith_f_op_f32(round(974f)), Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 2599f, global0[_wgslsmith_index_u32(u_input.b, 23u)]), 1262f, Struct_1(vec2<bool>(false, true), 2147483647i, vec4<i32>(-25098i, u_input.c.x, -14643i, u_input.c.x)), 6599i), 0i, true, vec4<u32>(u_input.d, u_input.b, u_input.b, u_input.d)), vec2<f32>(1f, 1f), ~u_input.c.x)).c.a.x, _wgslsmith_mult_vec4_u32(min(u_input.a, vec4<u32>(4294967295u, ~3005u, 5797u, 533u)), abs(~(~u_input.a))));
    let var_1 = Struct_4(u_input.c.x, 0u, var_0.a.c, _wgslsmith_mult_u32(u_input.b & ~49772u, ~(~23481u)) >= _wgslsmith_add_u32(var_0.d.x, countOneBits(~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(333f)), _wgslsmith_f_op_f32(-1656f + _wgslsmith_f_op_f32(-220f * -244f)), 1443f, _wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d.x, 23u)])))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.e);
    let var_3 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.c.a.x, var_0.a.c.a.x), var_0.a.c.a, any(vec3<bool>(false, var_1.d, true))), false), -13156i, -vec4<i32>(_wgslsmith_clamp_i32(var_1.c.b, ~var_0.b, var_1.c.b), _wgslsmith_sub_i32(func_3(u_input.a.ww, vec2<bool>(var_1.c.a.x, false), var_0.a.c.a, u_input.c.x), 1i), -2281i, ~var_1.a));
    global1 = array<vec4<bool>, 9>();
    var var_4 = func_5(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-442f)), -287f)), var_2.x), Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xww) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.e.x, 973f, -962f)))), 1f, func_5(var_0.a.a.zx, Struct_5(var_0.a, 916f, Struct_3(var_0.a, -1i, true, u_input.a), vec2<f32>(-1040f, var_0.a.b), 44171i), ~vec4<u32>(41923u, 35008u, 47324u, 1u), Struct_5(Struct_2(vec3<f32>(var_0.a.a.x, var_2.x, var_0.a.b), 714f, Struct_1(var_3.a, 2147483647i, vec4<i32>(-15921i, -1i, var_3.c.x, var_3.b)), var_1.a), -549f, var_0, vec2<f32>(-930f, var_0.a.a.x), -14275i)).c, var_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_f32(var_0.a.b - -329f)), Struct_3(var_0.a, -abs(11067i), any(select(global1[_wgslsmith_index_u32(u_input.d, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], vec4<bool>(true, true, false, var_1.d))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 4294967295u, var_0.d.x, u_input.a.x) & vec4<u32>(24419u, var_0.d.x, var_0.d.x, var_0.d.x), vec4<u32>(var_0.d.x, var_0.d.x, 1u, 10585u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-392f))), 874f), ~func_4(vec3<bool>(true, var_0.c, var_3.a.x), 1u > u_input.b, var_1.a, Struct_2(var_2.yzy, global0[_wgslsmith_index_u32(0u, 23u)], Struct_1(var_1.c.a, -25160i, var_1.c.c), -11748i))), var_0.d, Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1472f, -1259f, -746f))), global0[_wgslsmith_index_u32(~abs(13305u), 23u)], var_3, ~u_input.c.x ^ 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_5(var_1.e.xw, Struct_5(Struct_2(var_0.a.a, 1098f, var_0.a.c, 1i), var_1.e.x, var_0, vec2<f32>(var_1.e.x, var_0.a.b), 39591i), vec4<u32>(29443u, 0u, var_0.d.x, var_1.b), Struct_5(Struct_2(vec3<f32>(584f, var_1.e.x, var_1.e.x), var_2.x, var_1.c, u_input.c.x), var_0.a.a.x, Struct_3(Struct_2(vec3<f32>(var_1.e.x, 127f, var_1.e.x), var_2.x, var_0.a.c, 1i), -39700i, var_0.a.c.a.x, u_input.a), vec2<f32>(1524f, -150f), -71013i)).a.x, global0[_wgslsmith_index_u32(u_input.b | 4294967295u, 23u)], var_0.c & var_1.d))), Struct_3(var_0.a, abs(var_0.a.d), var_1.b <= var_1.b, vec4<u32>(var_0.d.x << (4294967295u % 32u), ~var_0.d.x, countOneBits(32793u), var_0.d.x)), var_2.zz, var_3.c.x));
    let var_5 = vec2<i32>(~(-17172i >> (var_0.d.x % 32u)), -_wgslsmith_mult_i32(var_4.d, _wgslsmith_clamp_i32(~var_1.a, func_2(var_1, vec4<u32>(var_0.d.x, 4294967295u, 16556u, u_input.b), Struct_1(var_4.c.a, 2147483647i, var_4.c.c)), -var_4.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, global0[_wgslsmith_index_u32(1u, 23u)], 2147483647i, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.d, 23u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 25489i | ~var_3.c.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -1i, -31068i, var_0.a.d), vec4<i32>(2147483647i, -12515i, var_0.a.d, 1i)), u_input.c.x, true)), max(vec3<i32>(2147483647i, ~(-1i), _wgslsmith_sub_i32(0i, 0i)), var_0.a.c.c.zxx)));
}

