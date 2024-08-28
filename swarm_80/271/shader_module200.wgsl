struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(16271i, 1i), vec4<f32>(717f, 1871f, -956f, -105f));

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<Struct_2, 10>;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, 381f)) * arg_1))), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-25207i, 3530i, global0.a.x), firstTrailingBit(vec3<i32>(0i, 2147483647i, 33659i) ^ vec3<i32>(arg_3, global0.a.x, -7946i)), any(vec2<bool>(false, true))), vec3<i32>(u_input.a, reverseBits(firstTrailingBit(-9933i)), (i32(-1i) * -2147483647i) << (~u_input.b % 32u))), vec3<bool>(all(!(!vec3<bool>(arg_0.c.x, true, true))), (arg_0.c.x | true) || arg_0.c.x, all(!select(arg_0.c.xy, arg_0.c.yx, arg_0.c.yz))));
    let var_1 = any(vec2<bool>(!arg_0.c.x, false));
    var var_2 = global2[_wgslsmith_index_u32(1u, 10u)];
    var_2 = Struct_2(-(global0.a & vec2<i32>(1i, 1i)), global0.b);
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.b))), vec4<f32>(-687f, _wgslsmith_f_op_f32(abs(var_0.a)), -1279f, 285f)));
    return true;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_2, 2>();
    let var_0 = any(vec4<bool>(select(arg_0 | true, true, func_3(Struct_1(340f, u_input.c, vec3<bool>(arg_0, true, arg_0)), 1117f, -1443f, 0i)) || true, !(any(vec3<bool>(false, true, arg_0)) && !arg_0), false, arg_0));
    var var_1 = any(!vec4<bool>(func_3(Struct_1(arg_3, arg_2, vec3<bool>(true, true, arg_0)), 306f, 2461f, -2147483647i), false, arg_0 | var_0, 1u != u_input.b)) & var_0;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f - 1050f)) - 179f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(1005f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-469f - -889f) + 932f)));
    let var_2 = min(arg_1, 4294967295u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(443f - 165f) + 974f), 73528i, vec3<bool>(any(select(!vec3<bool>(arg_0, false, false), vec3<bool>(var_0, false, arg_0), true)), 925f >= _wgslsmith_div_f32(-399f, _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + 364f)) < global3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    global2 = array<Struct_2, 10>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.x, -22632i), vec2<i32>(_wgslsmith_add_i32(-45631i, -25101i), 1i), min(vec2<i32>(15746i, u_input.c), global0.a)) ^ firstLeadingBit(reverseBits(abs(vec2<i32>(-2147483647i, 0i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1461f, global3.x, 1702f, arg_0.a), vec4<f32>(-453f, -657f, -1349f, -1104f))), global0.b, select(vec4<bool>(false, false, arg_0.c.x, false), vec4<bool>(arg_2.x, arg_2.x, false, true), arg_0.c.x))), global0.b), vec4<f32>(-1845f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(arg_0.a * 383f)), -1265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * global3.x))), vec4<bool>(arg_0.c.x, select(arg_0.c.x, true, false), false, true && (global0.a.x < global0.a.x)))));
    let var_1 = 0u;
    var var_2 = select(arg_0.c.x, !any(select(select(vec2<bool>(false, false), arg_0.c.zy, true), !arg_0.c.xz, !arg_2.x)), (u_input.c <= _wgslsmith_mod_i32(global0.a.x, 22254i)) || !func_3(arg_0, 2347f, _wgslsmith_f_op_f32(arg_0.a + -268f), 1i));
    global0 = Struct_2(~select(vec2<i32>(u_input.c, var_0.a.x), vec2<i32>(var_0.a.x, global0.a.x), any(arg_2)) >> (~(~(~vec2<u32>(arg_1.x, 8461u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, 306f, global0.b.x, -690f) + vec4<f32>(1378f, global3.x, global0.b.x, -973f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, 438f, -1699f, 500f) - vec4<f32>(-2618f, arg_0.a, 435f, global0.b.x)), any(vec2<bool>(true, true)))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(502f, -225f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-353f)), _wgslsmith_f_op_f32(select(var_0.b.x, -1415f, arg_0.c.x)))), -840f, global3.x))));
    return _wgslsmith_f_op_f32(-global0.b.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(687f - _wgslsmith_f_op_f32(-global0.b.x));
    let var_1 = global2[_wgslsmith_index_u32(u_input.b, 10u)];
    global0 = Struct_2(abs(-(~vec2<i32>(26282i, global0.a.x) >> ((vec2<u32>(16362u, 19220u) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_4(func_2(false, 5174u, u_input.d, 211f), firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), func_2(true, 4294967295u, -2147483647i, -244f).c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-370f, -1636f), _wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = -_wgslsmith_add_vec4_i32(select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_1.a.x, -26652i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.a, var_1.a.x))), firstLeadingBit(~vec4<i32>(-652i, -1i, 2147483647i, global0.a.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), vec4<i32>(u_input.d, var_1.a.x >> ((u_input.b << (4294967295u % 32u)) % 32u), firstLeadingBit(i32(-1i) * -2147483647i), firstTrailingBit(-1i)));
    return func_2(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)) || (_wgslsmith_add_i32(_wgslsmith_div_i32(global0.a.x, 21113i), var_2.x) == ~u_input.a), 13945u, -11526i, -590f);
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = global3.yzy;
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), u_input.b)), 2u)];
    global2 = array<Struct_2, 10>();
    let var_2 = func_2(true, abs(u_input.b), -arg_1 & reverseBits(var_1.a.x), _wgslsmith_f_op_f32(-global3.x));
    return !(!(!(_wgslsmith_div_u32(0u, u_input.b) >= (u_input.b ^ u_input.b))));
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_2, 2>();
    global0 = Struct_2(select(vec2<i32>(arg_0.b << (16646u % 32u), 0i), -vec2<i32>(u_input.a, 2147483647i) & -vec2<i32>(global0.a.x, global0.a.x), true) | abs(vec2<i32>(1i, i32(-1i) * -28090i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(178f, -768f, global0.b.x, arg_0.a))), _wgslsmith_f_op_vec4_f32(-global0.b)))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(func_2(arg_0.c.x, _wgslsmith_sub_u32(u_input.b, 1u), arg_0.b, -902f), select(vec2<u32>(u_input.b, ~1u), vec2<u32>(abs(1u), countOneBits(u_input.b)), _wgslsmith_add_i32(arg_0.b, 56267i) >= 20877i), arg_0.c)), countOneBits(-2147483647i), !func_1(1203f).c);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(~u_input.b), ~4294967295u), 2u)];
    let var_2 = select(select(!select(vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(false, arg_0.c.x, var_0.c.x, arg_0.c.x), true), select(!(!vec4<bool>(true, false, false, var_0.c.x)), !(!vec4<bool>(false, arg_0.c.x, arg_0.c.x, false)), select(!vec4<bool>(var_0.c.x, arg_0.c.x, true, arg_0.c.x), select(vec4<bool>(true, true, var_0.c.x, true), vec4<bool>(true, false, arg_0.c.x, false), vec4<bool>(true, arg_0.c.x, var_0.c.x, false)), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true))), all(select(vec4<bool>(arg_0.c.x, false, true, true), !vec4<bool>(arg_0.c.x, var_0.c.x, var_0.c.x, false), !vec4<bool>(false, false, true, arg_0.c.x)))), vec4<bool>(func_1(1099f).c.x, false, !func_1(_wgslsmith_f_op_f32(global0.b.x + global3.x)).c.x, true), (_wgslsmith_f_op_f32(trunc(arg_0.a)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -747f) * _wgslsmith_f_op_f32(-global0.b.x))) | (((-19487i > arg_0.b) | arg_0.c.x) & !arg_0.c.x));
    return global2[_wgslsmith_index_u32(1u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, 48146u, ~u_input.b), 10u)];
    let var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(global0.b.x * -230f), 1i, vec3<bool>(true, true, func_5(vec4<bool>(true, true, false, true), max(27814i, 1932i), func_1(-795f), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.d), vec3<i32>(-7816i, -27610i, 29368i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1642f)), global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.x)))));
    global1 = array<Struct_2, 2>();
    global2 = array<Struct_2, 10>();
    global0 = func_6(func_1(global3.x), var_0.b.x);
    var var_1 = 21601i >> (u_input.b % 32u);
    let var_2 = vec2<bool>(true, func_1(493f).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(~(i32(-1i) * -20183i), _wgslsmith_div_i32(u_input.c | -76865i, ~var_0.a.x)), ((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 1u, 1u)) << (~vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(13399u, u_input.b, 33972u), vec3<u32>(10319u, u_input.b, 7584u)), vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(4294967295u, 22297u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 1955u, u_input.b) % vec3<u32>(32u))), vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(90788u, u_input.b, 4294967295u)), u_input.b)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, select(18418i, global0.a.x, false), abs(var_0.a.x), 2147483647i & global0.a.x), select(-vec4<i32>(global0.a.x, global0.a.x, -1i, var_0.a.x), countOneBits(vec4<i32>(var_0.a.x, 50315i, u_input.c, 1i)), true))));
}

