struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1000f, Struct_1(63193u, 1i, -1i), vec4<i32>(51565i, i32(-2147483648), 2147483647i, 45107i), vec2<i32>(-18983i, 13004i));

var<private> global1: array<i32, 5> = array<i32, 5>(26187i, i32(-2147483648), 69138i, -1i, 14683i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(925f, _wgslsmith_f_op_f32(-955f * _wgslsmith_f_op_f32(abs(global0.a))))))), Struct_1(1197u, 18300i, 1i), vec4<i32>(-u_input.e, -global1[_wgslsmith_index_u32(1u, 5u)], min(1i, 0i), i32(-1i) * -select(13149i, -9009i, true)), countOneBits(((u_input.d.zy << (u_input.a % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u))) & -min(global0.d, u_input.d.zx)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.a), arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global0.b.a, 5u)], 1i), 36366i), -34175i, global0.c.x, -2147483647i), global0.c, vec4<i32>(1i | global0.d.x, firstLeadingBit(-32919i), max(~u_input.c, -35255i), ~u_input.b)), vec2<i32>(~(-34596i), min(global0.c.x, abs(~global1[_wgslsmith_index_u32(24281u, 5u)]))));
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    return firstLeadingBit(~select(u_input.a.x, ~u_input.a.x, true));
}

fn func_2() -> vec2<i32> {
    var var_0 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(true, true)), true || all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)), -11267i < u_input.d.x), select(vec3<bool>(false, (global0.c.x & -4485i) < _wgslsmith_mult_i32(0i, global0.c.x), any(vec2<bool>(false, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), any(vec2<bool>(false, true))), vec3<bool>(!select(false, false, true), !(global1[_wgslsmith_index_u32(474u, 5u)] != global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(global0.a * 554f), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, func_3(Struct_1(u_input.a.x, -1i, global0.c.x)), firstLeadingBit(global0.b.a)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(global0.b.a, u_input.a.x, 29184u)), abs(vec3<u32>(0u, u_input.a.x, 4294967295u)))), -u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(42713u, 5u)], 34836i), global0.b.c), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 5u)], -global1[_wgslsmith_index_u32(13702u, 5u)]))), global0.c, select(u_input.d.xy, select(vec2<i32>(47929i, -11212i), -global0.d, vec2<bool>(all(vec4<bool>(var_0.x, true, var_0.x, false)), var_0.x)), !vec2<bool>(true, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a)))), global0.b, ~_wgslsmith_clamp_vec4_i32(firstTrailingBit(~var_1.c), vec4<i32>(var_1.d.x, min(u_input.d.x, u_input.e), abs(-28769i), -2147483647i), ~var_1.c), u_input.d.yy);
    var var_2 = select(vec2<u32>(_wgslsmith_mult_u32(1u, (var_1.b.a | 6465u) ^ 0u), ~0u), vec2<u32>(global0.b.a, u_input.a.x) << (vec2<u32>(min(77352u, global0.b.a & 11736u), ~abs(var_1.b.a)) % vec2<u32>(32u)), ~_wgslsmith_sub_i32(var_1.b.c, select(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b, false)) >= ~(~var_1.d.x));
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.x, 33696u), vec2<u32>(global0.b.a, 59982u), var_0.zx), u_input.a), 1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(13157i, -23431i), min(1i, global1[_wgslsmith_index_u32(global0.b.a, 5u)]))), vec4<u32>(var_2.x ^ 0u, func_3(Struct_1(u_input.a.x, 11304i, 2147483647i)), 12838u, global0.b.a)), ~(~var_2.x), Struct_2(var_1.a, global0.b, ~max(var_1.c ^ global0.c, firstTrailingBit(var_1.c)), vec2<i32>(reverseBits(-1i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.a, global0.b.a), 5u)])), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2068f + 473f) + var_1.a)) - 1831f));
    return var_3.c.c.zz;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-1000f * 1420f), _wgslsmith_f_op_f32(-arg_0.a), -210f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-856f, -621f, arg_0.a, arg_1.a))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2100f + _wgslsmith_div_f32(arg_1.a, arg_1.a)), -1639f, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -288f) - -1579f)) * vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a * arg_0.a), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.a)))))));
    let var_1 = global0.c;
    let var_2 = Struct_4(Struct_3(Struct_1(1u, ~(arg_1.b.b >> (arg_1.b.a % 32u)), 26639i), vec4<u32>(arg_1.b.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(arg_0.b.a, 0u, arg_1.b.a)), ~3279u), abs(0u) ^ _wgslsmith_div_u32(global0.b.a, 43595u), global0.b.a)), reverseBits(arg_1.b.a | u_input.a.x), arg_0, 833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, 757f, true)) - 1f));
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    return Struct_2(_wgslsmith_f_op_f32(max(arg_1.a, arg_0.a)), Struct_1(u_input.a.x, -37540i, (i32(-1i) * -18642i) << (1u % 32u)), vec4<i32>(-1i) * -(-arg_0.c & global0.c), _wgslsmith_div_vec2_i32(u_input.d.xx, vec2<i32>(reverseBits(-1574i), -var_1.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = global0.b.a <= ~(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, 4294967295u, arg_1.x), vec3<u32>(arg_1.x, 1u, u_input.a.x)), ~arg_1.x, true));
    let var_1 = global0.b;
    global0 = func_4(Struct_2(_wgslsmith_div_f32(global0.a, global0.a), Struct_1(_wgslsmith_div_u32(arg_1.x, 111629u), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -21072i) ^ global0.c.yx, vec2<i32>(1i, 10659i) >> (vec2<u32>(39421u, var_1.a) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(global0.b.a, 5u)], 2147483647i, 1i)))), firstTrailingBit(global0.c), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-59118i, -30133i)), func_2()), u_input.b & (-39382i >> (arg_1.x % 32u)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(395f))) * 236f), Struct_1(countOneBits(~53749u), 1i, _wgslsmith_add_i32(0i, 17566i)), vec4<i32>(-(global1[_wgslsmith_index_u32(1u, 5u)] ^ -31668i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -2147483647i, -43126i)), firstLeadingBit(u_input.d)), ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, var_1.c) | vec2<i32>(u_input.b, 0i), _wgslsmith_add_vec2_i32(u_input.d.yz, vec2<i32>(u_input.d.x, -1i)))), _wgslsmith_mod_vec2_i32(countOneBits(u_input.d.xy), ~(-u_input.d.yy))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1092f, 203f, -336f, 917f) * vec4<f32>(global0.a, global0.a, global0.a, -1714f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-950f, global0.a, 2148f, global0.a), vec4<f32>(1916f, 547f, global0.a, global0.a))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(825f)), 1247f), -808f, true))), _wgslsmith_f_op_f32(-global0.a));
    return 1707f;
}

fn func_5(arg_0: f32) -> vec3<f32> {
    var var_0 = min(vec3<u32>(_wgslsmith_add_u32(global0.b.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(global0.b.a, 4294967295u), global0.b.a)), 92324u, 71269u), vec3<u32>(abs(u_input.a.x) ^ 4110u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), ~global0.b.a, ~u_input.a.x), u_input.a.x ^ (global0.b.a & u_input.a.x)) & (~vec3<u32>(78833u, u_input.a.x, global0.b.a) << (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 54348u), vec3<u32>(global0.b.a, 17449u, 4905u)), abs(vec3<u32>(global0.b.a, global0.b.a, 1u))) % vec3<u32>(32u))));
    let var_1 = vec3<i32>(-2147483647i, -22941i, global0.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(exp2(func_4(func_4(Struct_2(arg_0, global0.b, global0.c, vec2<i32>(-47683i, global1[_wgslsmith_index_u32(0u, 5u)])), Struct_2(arg_0, Struct_1(var_0.x, 62344i, var_1.x), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 11603i), vec2<i32>(u_input.c, -6533i))), Struct_2(-461f, Struct_1(4294967295u, -1i, 1136i), global0.c, vec2<i32>(20674i, 1i))).a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) + arg_0));
    var var_3 = !select(vec2<bool>(true, false), vec2<bool>(_wgslsmith_f_op_f32(arg_0 - 1196f) > _wgslsmith_f_op_f32(-arg_0), true), (true | (1446f >= arg_0)) & any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))));
    var var_4 = vec3<u32>(0u, _wgslsmith_mult_u32(u_input.a.x, var_0.x), global0.b.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -3236f, -305f))))) - vec3<f32>(_wgslsmith_f_op_f32(537f * global0.a), 582f, arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f + func_4(Struct_2(-1194f, global0.b, global0.c, u_input.d.yz), Struct_2(-137f, Struct_1(0u, 2147483647i, 42295i), vec4<i32>(34796i, 17280i, global0.c.x, 2147483647i), u_input.d.yy)).a) - var_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2)))), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, vec4<u32>(global0.b.a, 1u, global0.b.a, global0.b.a) << (vec4<u32>(0u, 44904u, global0.b.a, 4294967295u) % vec4<u32>(32u)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-211f - global0.a), _wgslsmith_div_f32(-1375f, 1380f))))))));
    var var_1 = ((all(vec3<bool>(true, true, true)) | all(vec2<bool>(true, true))) && (u_input.b <= (0i >> (1u % 32u)))) != true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(global0.b.a, global0.b.a, u_input.a.x), vec3<u32>(1u, 1u, global0.b.a)), vec3<u32>(49309u, 0u, 6821u) | vec3<u32>(1u, 4294967295u, global0.b.a), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, global0.b.a), ~vec3<u32>(11892u, u_input.a.x, 77160u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.a, 94509u, global0.b.a), vec3<u32>(u_input.a.x, 0u, global0.b.a)), ~vec3<u32>(13964u, 0u, u_input.a.x)))), _wgslsmith_div_i32(min(_wgslsmith_div_i32(global0.c.x, u_input.c) & u_input.e, _wgslsmith_sub_i32(1i, global0.d.x & global0.b.c)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.d), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0.b.a, 5u)]) ^ vec2<i32>(24687i, -21640i)), -7321i)), ~u_input.d.xx);
}

