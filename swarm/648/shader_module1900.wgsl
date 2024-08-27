struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<f32>(775f, -673f), vec2<i32>(17209i, 0i), i32(-2147483648));

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 1u, 38988u, 48814u), vec4<u32>(4294967295u, 42781u, 19431u, 114193u), vec4<u32>(72159u, 6321u, 81857u, 4294967295u), vec4<u32>(12140u, 61298u, 54958u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 69058u), vec4<u32>(4294967295u, 1u, 20117u, 1u), vec4<u32>(1u, 1u, 1u, 73825u), vec4<u32>(4294967295u, 1u, 1u, 8506u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = arg_0;
    global1 = ~countOneBits(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, 97107u | global1.x), 8u)] >> (global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(6041u)), 8u)] % vec4<u32>(32u)));
    global1 = _wgslsmith_mod_vec4_u32(~global4[_wgslsmith_index_u32(10025u, 8u)], vec4<u32>(~1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(global1.x), _wgslsmith_add_u32(61257u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(26788u, global1.x), ~u_input.d)), abs(1u), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a, 4294967295u), 8u)], vec4<u32>(global1.x, 1u, u_input.b.x, u_input.e)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(6942u, 8u)], u_input.b), 4294967295u) % 32u)));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), -621f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(598f)), _wgslsmith_f_op_f32(step(global2.b.x, _wgslsmith_f_op_f32(select(-187f, global2.b.x, true)))), -1847f));
    let var_1 = Struct_2(Struct_1(global3.x, global2.b, _wgslsmith_sub_vec2_i32(~(vec2<i32>(-4262i, 1i) | global2.c), firstLeadingBit(arg_0.c)), -arg_0.c.x));
    return arg_0.c.x;
}

fn func_2() -> Struct_4 {
    global4 = array<vec4<u32>, 8>();
    var var_0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(max(41990i, global2.c.x) << (global3.x % 32u), u_input.c, func_3(Struct_1(1u, global2.b, vec2<i32>(-1i, global2.d), 23594i)), 47304i), ~vec4<i32>(~18311i, ~(-2147483647i), _wgslsmith_mod_i32(u_input.a, 2147483647i), 1i), select(_wgslsmith_sub_vec4_i32(-vec4<i32>(28572i, u_input.a, -24873i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 6645i, 28769i, 0i), vec4<i32>(u_input.a, u_input.c, 54141i, 38412i), vec4<i32>(u_input.c, -1i, -40272i, 1i))), ~countOneBits(vec4<i32>(-1i, -1i, 0i, global2.d)), false));
    let var_1 = Struct_2(Struct_1(1323u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.b.x, 1793f))), firstLeadingBit(vec2<i32>(countOneBits(u_input.a), max(var_0.x, u_input.a))), _wgslsmith_div_i32(-(7185i >> (1u % 32u)), ~(~(-29045i)))));
    var var_2 = Struct_4(Struct_3(-1883f, global1.yyy, -7840i, u_input.e, (~19074u >> (_wgslsmith_mod_u32(0u, 1u) % 32u)) & (4294967295u >> (var_1.a.a % 32u))), !vec3<bool>(true, !select(false, true, true), true));
    var var_3 = select(vec3<bool>(!any(!vec2<bool>(var_2.b.x, var_2.b.x)), -(~var_2.a.c) >= _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-64836i, global2.c.x, 1i, global2.c.x)), -vec4<i32>(36152i, 1i, 0i, 0i)), global2.b.x >= var_2.a.a), !vec3<bool>(var_2.b.x & var_2.b.x, var_2.b.x, any(select(vec4<bool>(true, var_2.b.x, true, true), vec4<bool>(false, true, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, false, false, var_2.b.x)))), var_2.b.x);
    return Struct_4(Struct_3(var_1.a.b.x, vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(global3.x), ~1u), global3.x, 33445u), firstTrailingBit(-1i), var_2.a.b.x << (26340u % 32u), 1u), var_2.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = select(~global4[_wgslsmith_index_u32(arg_3.b.x, 8u)], max(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, arg_3.e, arg_3.b.x, global3.x), vec4<u32>(global3.x, global1.x, u_input.d.x, global2.a)), ~vec4<u32>(global1.x, 0u, global3.x, global2.a)), vec4<u32>(~74022u, _wgslsmith_sub_u32(arg_1.a.b.x, arg_2.b.x), ~0u, u_input.b.x)) | _wgslsmith_mult_vec4_u32(~global4[_wgslsmith_index_u32(1u, 8u)] >> (~vec4<u32>(1u, 28726u, u_input.e, global3.x) % vec4<u32>(32u)), ~vec4<u32>(arg_3.d, 4294967295u, global3.x, u_input.d.x)), !vec4<bool>(true, arg_0.x && any(vec4<bool>(arg_0.x, true, true, true)), any(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_0.x)), any(select(vec4<bool>(arg_0.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(true, arg_1.b.x, false, arg_0.x), vec4<bool>(arg_1.b.x, false, false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, arg_3.a, 184f) + vec3<f32>(1068f, -282f, global2.b.x)))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(~8697u, ~_wgslsmith_div_u32(1u, var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a.a, var_1.x), vec2<f32>(-1780f, arg_1.a.a))))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), -946f)), vec2<i32>(arg_1.a.c, 2147483647i), 6297i));
    let var_3 = func_2();
    global0 = true && (645f < func_2().a.a);
    return arg_3;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_2().b, func_2(), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a))), global1.xyw ^ countOneBits(vec3<u32>(25000u, global2.a, 4294967295u)), ~0i, global3.x, u_input.e), func_2().a).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f + 1573f) * _wgslsmith_f_op_f32(min(201f, 198f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - -1011f) - 927f), -1000f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.a, arg_2.a, arg_3.a, -454f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 708f, arg_3.a, 663f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(global2.b.x * 1038f), _wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(arg_3.a + -1728f)))));
    var var_2 = func_4(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), all(vec3<bool>(true, false, false))), !func_2().b, true), func_2(), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, true), Struct_4(arg_3, vec3<bool>(false, false, true)), arg_3, arg_3).a * arg_3.a))), ~arg_3.b, ~global2.d, 56595u, arg_3.e), func_4(select(func_2().b, func_2().b, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), true)), Struct_4(Struct_3(arg_2.a, global1.zyx, u_input.c, arg_1.x, 1u), vec3<bool>(false, func_2().b.x, false)), arg_3, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1474f), abs(vec3<u32>(global1.x, arg_3.b.x, 32655u)), select(31755i, _wgslsmith_add_i32(arg_3.c, -1i), global1.x >= arg_3.e), arg_2.e, ~(~global3.x))));
    var var_3 = _wgslsmith_f_op_f32(trunc(global2.b.x));
    let var_4 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f))), ~vec3<u32>(~0u, min(0u, 48125u), 4294967295u), var_2.c, func_2().a.b.x, global1.x), vec3<bool>(true, true, func_2().a.c == ~(-15227i)));
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    global2 = Struct_1(58713u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)) * global2.b)), _wgslsmith_clamp_vec2_i32(select(-(~global2.c), vec2<i32>(~(-4152i), ~u_input.c), vec2<bool>(true, any(vec4<bool>(arg_0, true, false, true)))), ~(vec2<i32>(-2147483647i, arg_3.c) >> (global1.yw % vec2<u32>(32u))), abs(global2.c)), abs(-u_input.a));
    return func_5(firstTrailingBit(vec2<i32>(-2147483647i, arg_3.c)) << (~vec2<u32>(25103u, ~35063u) % vec2<u32>(32u)), ~vec2<u32>(countOneBits(abs(17376u)), arg_1.x), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(150f - -238f), _wgslsmith_f_op_f32(global2.b.x + arg_2.a))) - -295f), vec3<u32>(arg_3.d, 19435u, 107941u), _wgslsmith_div_i32(-23971i, ~(~11772i)), 1u, ~_wgslsmith_add_u32(reverseBits(1u), func_2().a.d)), func_4(vec3<bool>(true, true, !arg_0), func_2(), Struct_3(global2.b.x, _wgslsmith_div_vec3_u32(arg_3.b, ~vec3<u32>(71294u, 9314u, 8675u)), 0i, ~(~arg_3.d), ~global2.a), arg_2));
}

fn func_1() -> Struct_3 {
    var var_0 = func_6(_wgslsmith_clamp_i32(-global2.c.x & (-2147483647i >> (0u % 32u)), 22339i ^ -u_input.a, countOneBits(u_input.c)) >= u_input.c, global1.wy, func_5(global2.c, u_input.d, func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), func_2(), Struct_3(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_mod_vec3_u32(u_input.b.yxy, global1.www), global2.c.x, _wgslsmith_clamp_u32(global3.x, global2.a, global1.x), 80412u >> (global1.x % 32u)), func_2().a), func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), Struct_4(Struct_3(global2.b.x, vec3<u32>(global1.x, global1.x, 1u), -2093i, 1624u, global1.x), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), Struct_3(_wgslsmith_f_op_f32(-global2.b.x), vec3<u32>(20375u, 4294967295u, global1.x), -3882i, u_input.d.x, u_input.d.x), Struct_3(2228f, global1.xxy, -2147483647i >> (global1.x % 32u), ~global2.a, ~global3.x))), func_5(~(~abs(vec2<i32>(-13685i, -19696i))), func_4(vec3<bool>(true, false, true), Struct_4(Struct_3(-1194f, u_input.b.yww, 48608i, global2.a, u_input.e), vec3<bool>(true, false, false)), func_5(global2.c, ~vec2<u32>(u_input.b.x, 31486u), func_5(vec2<i32>(u_input.c, global2.c.x), global3.zy, Struct_3(global2.b.x, u_input.b.xyw, u_input.a, 0u, 9087u), Struct_3(global2.b.x, global1.yzw, 54862i, 48731u, global3.x)), Struct_3(global2.b.x, u_input.b.wyy, u_input.c, 0u, global3.x)), func_5(_wgslsmith_sub_vec2_i32(global2.c, global2.c), vec2<u32>(u_input.b.x, global3.x), func_2().a, Struct_3(global2.b.x, vec3<u32>(34049u, 3872u, 23302u), -51324i, u_input.e, global1.x))).b.zx, Struct_3(func_4(vec3<bool>(true, true, true), func_2(), Struct_3(global2.b.x, global1.zwx, -1i, global3.x, 62792u), Struct_3(-700f, vec3<u32>(global2.a, 9465u, u_input.b.x), 19484i, u_input.d.x, global3.x)).a, func_4(vec3<bool>(false, true, false), Struct_4(Struct_3(global2.b.x, vec3<u32>(global3.x, 45026u, 4294967295u), -37385i, global2.a, 22446u), vec3<bool>(true, true, false)), func_4(vec3<bool>(false, false, true), Struct_4(Struct_3(-1521f, global1.zzz, u_input.c, global1.x, 1u), vec3<bool>(true, false, true)), Struct_3(global2.b.x, vec3<u32>(67104u, u_input.e, u_input.d.x), global2.c.x, u_input.e, 22074u), Struct_3(1149f, global1.yyw, -2147483647i, u_input.e, global1.x)), func_2().a).b, _wgslsmith_add_i32(global2.c.x, -10711i) << (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(37940u, global2.a, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), global1.wyy)), _wgslsmith_clamp_u32(1u, ~u_input.e, global2.a)), func_5(-vec2<i32>(u_input.a, global2.d), global1.xz, func_4(vec3<bool>(false, false, true), func_2(), Struct_3(global2.b.x, u_input.b.wyx, 1i, global2.a, global2.a), Struct_3(934f, vec3<u32>(52795u, u_input.e, u_input.d.x), -42273i, 40589u, global3.x)), func_2().a)));
    let var_1 = global2.b;
    let var_2 = Struct_2(Struct_1(var_0.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, var_0.a) - global2.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1150f, 1000f) + global2.b)))), -(~global2.c >> (~var_0.b.xz % vec2<u32>(32u))), var_0.c));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), -700f)) + var_1.x), reverseBits(global1.zxy), ~var_2.a.c.x, ~(~(~global2.a)), firstLeadingBit(global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global3.x, _wgslsmith_f_op_vec2_f32(-global2.b), vec2<i32>(-1i) * -global2.c, abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -32840i, -6994i, -2147483647i), vec4<i32>(2147483647i, u_input.c, u_input.a, u_input.c)))));
    global2 = var_0.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.b.x), -1000f)), var_0.a.b.x, global2.b.x, _wgslsmith_f_op_f32(global2.b.x + var_0.a.b.x));
    let var_2 = Struct_4(func_1(), vec3<bool>(func_5(firstLeadingBit(vec2<i32>(29503i, global2.d)), global1.wz, Struct_3(-1000f, u_input.b.xzx, u_input.c, var_0.a.a, 13066u), func_2().a).a >= 3892f, true, true));
    global2 = var_0.a;
    global3 = ~(min(var_2.a.b, vec3<u32>(4294967295u, var_2.a.e, firstTrailingBit(global3.x))) << (~u_input.b.xyy % vec3<u32>(32u)));
    global0 = !(892f != global2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(func_1().a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.a, var_2.a.a) - _wgslsmith_f_op_f32(-736f - 282f)))));
}

