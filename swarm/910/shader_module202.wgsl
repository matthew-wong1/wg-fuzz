struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 28>;

var<private> global2: array<Struct_4, 20>;

var<private> global3: array<vec2<i32>, 14>;

var<private> global4: Struct_5 = Struct_5(Struct_4(vec3<f32>(467f, 1169f, 638f), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(vec3<f32>(-444f, -176f, -1000f), vec3<u32>(1u, 1u, 6264u)), Struct_1(2147483647i, vec2<i32>(33109i, 36308i), i32(-2147483648), vec3<bool>(false, true, true), 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global0.b.e;
    var var_1 = Struct_2(0i, Struct_1(global0.b.a, vec2<i32>(-1789i, -_wgslsmith_add_i32(global4.c.a, -25978i)), ~_wgslsmith_div_i32(-2147483647i, -2147483647i) >> (abs(_wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 1u))) % 32u), !vec3<bool>(all(vec3<bool>(true, true, global0.b.d.x)), global0.b.a > 57853i, any(global4.c.d)), -2147483647i >> (global4.a.b.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c, global0.c, vec4<bool>(global0.b.d.x, global4.c.d.x, global4.c.d.x, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -1445f, global4.a.a.x) + vec4<f32>(-1279f, global4.a.a.x, 1563f, global0.c.x))), _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(global0.c + global0.c))))));
    let var_2 = Struct_1(~u_input.b.x, firstTrailingBit(u_input.b.zx), _wgslsmith_dot_vec4_i32(vec4<i32>(4555i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), var_1.b.b), 52021i, u_input.d.x), -vec4<i32>(5717i, -54340i, 1i, -4210i)), !(!(!vec3<bool>(false, global0.b.d.x, true))), ~countOneBits(global0.a | -10203i) << (_wgslsmith_sub_u32(abs(~global4.a.b.x), 0u) % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.c)));
    var var_4 = global4.b.a.x;
    return _wgslsmith_f_op_f32(-var_1.c.x);
}

fn func_2() -> Struct_1 {
    global4 = Struct_5(Struct_4(vec3<f32>(global4.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -265f)), vec3<u32>(~4294967295u, 4294967295u, ~abs(41065u))), Struct_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.b.a.x, _wgslsmith_f_op_f32(select(global4.a.a.x, -857f, true)), -1131f))), global4.b.b), Struct_1(-18602i, vec2<i32>(_wgslsmith_dot_vec2_i32(global4.c.b, select(vec2<i32>(global4.c.e, u_input.b.x), vec2<i32>(37993i, u_input.b.x), vec2<bool>(true, true))), ~_wgslsmith_mult_i32(global0.b.c, 1i)), 1i, select(!vec3<bool>(global4.c.d.x, true, false), vec3<bool>(global0.b.d.x, any(global0.b.d.xz), false), global4.c.d.x), 1i));
    global1 = array<u32, 28>();
    let var_0 = global0.b.d;
    global0 = Struct_2(_wgslsmith_div_i32(-17954i, -27601i), global4.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c * global0.c) + _wgslsmith_f_op_vec4_f32(global0.c + global0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, 266f, -1099f, _wgslsmith_f_op_f32(-global0.c.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.a.x, global0.c.x, global4.a.a.x, -3018f))))));
    let var_1 = select(select(global0.b.d, select(vec3<bool>(var_0.x, all(vec2<bool>(false, var_0.x)), var_0.x), select(vec3<bool>(true, false, true), global0.b.d, var_0.x), select(var_0.x, global0.b.d.x, true)), any(vec4<bool>(var_0.x, false, any(vec4<bool>(true, global0.b.d.x, global0.b.d.x, var_0.x)), any(global4.c.d)))), select(vec3<bool>(false & any(global4.c.d), global0.b.d.x, true), vec3<bool>(true, true, global4.a.a.x <= _wgslsmith_f_op_f32(abs(-2022f))), select(!select(global4.c.d, vec3<bool>(true, false, false), var_0.x), global0.b.d, select(select(vec3<bool>(global4.c.d.x, global0.b.d.x, var_0.x), vec3<bool>(false, global0.b.d.x, true), true), !vec3<bool>(global0.b.d.x, false, true), false))), select(global0.b.d, vec3<bool>(!select(var_0.x, false, false), !(u_input.d.x <= global4.c.a), true), global4.c.d));
    return Struct_1(global4.c.b.x, -(~(-global3[_wgslsmith_index_u32(1u, 14u)])), ~countOneBits(_wgslsmith_sub_i32(~global0.a, 1i)), global0.b.d, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global4.c.c, global4.c.a, u_input.b.x), vec4<i32>(u_input.d.x, 0i, -5858i, global4.c.e))), vec2<i32>(global4.c.b.x, countOneBits(0i)), true), _wgslsmith_mult_vec2_i32(~(~vec2<i32>(global4.c.c, 0i)), reverseBits(global3[_wgslsmith_index_u32(28550u >> (global4.a.b.x % 32u), 14u)]))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    global1 = array<u32, 28>();
    global0 = Struct_2(u_input.b.x, Struct_1(42470i, vec2<i32>(~arg_1.b.x, 2147483647i), _wgslsmith_dot_vec2_i32(arg_1.b, arg_1.b | (vec2<i32>(global0.b.b.x, -2147483647i) | global4.c.b)), global4.c.d, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(2147483647i, global0.a, global0.a, -13187i)), vec4<i32>(2147483647i, arg_1.e, -2147483647i, u_input.b.x))), global0.c);
    let var_0 = Struct_2(abs(~_wgslsmith_clamp_i32(31921i, arg_1.b.x, -2147483647i)) ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -31022i), _wgslsmith_mult_i32(-global4.c.e, global4.c.a)), func_2(), _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(_wgslsmith_f_op_f32(global4.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -936f)), global4.a.a.x, global4.a.a.x, _wgslsmith_f_op_f32(-global4.a.a.x))));
    var var_1 = _wgslsmith_add_i32(global0.a, 1i);
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.a.zw ^ vec2<u32>(select(12445u, firstTrailingBit(0u), global0.b.d.x != false), ~global4.b.b.x & u_input.a.x), vec2<u32>(u_input.c, u_input.a.x << (select(firstTrailingBit(u_input.a.x), firstLeadingBit(0u), true) % 32u)));
    return -func_2().a ^ _wgslsmith_clamp_i32(abs(-(arg_1.c << (60230u % 32u))), arg_1.e, u_input.b.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_5 {
    global0 = Struct_2(-34371i, func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * -1103f))), -958f, _wgslsmith_div_f32(global0.c.x, -103f), -797f));
    var var_0 = ~global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(~1u, 0u)), 28u)];
    global0 = Struct_2(min(global4.c.c, ~(-9155i)), Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.d.x, 2147483647i), vec4<i32>(1i, 0i, -33173i, -1i)), -(vec4<i32>(13615i, -2147483647i, -54580i, 16183i) | vec4<i32>(global4.c.b.x, -35614i, 895i, global4.c.c))), ~(-vec2<i32>(1i, 1i) ^ firstLeadingBit(vec2<i32>(global0.b.b.x, global4.c.c))), ~(~_wgslsmith_mod_i32(-2147483647i, global0.b.e)), select(vec3<bool>(true, 104034i != global4.c.c, all(vec4<bool>(true, global0.b.d.x, true, false))), func_2().d, true), global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)));
    let var_1 = global4.a.b.x;
    global2 = array<Struct_4, 20>();
    return Struct_5(global2[_wgslsmith_index_u32(1u, 20u)], Struct_4(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4.b.a.x, global0.c.x), -468f)), -1497f, _wgslsmith_f_op_f32(301f * _wgslsmith_f_op_f32(min(3303f, global4.a.a.x)))), arg_0), global0.b);
}

fn func_1() -> Struct_1 {
    global3 = array<vec2<i32>, 14>();
    let var_0 = global0.b;
    var var_1 = func_5(u_input.a.yyz, global4.c.d.x, Struct_1(var_0.b.x, vec2<i32>(global0.b.c, ~global4.c.a ^ -32864i), _wgslsmith_div_i32(countOneBits(~global0.a), _wgslsmith_mod_i32(global0.b.a, global4.c.a)), select(global0.b.d, var_0.d, !(!vec3<bool>(global4.c.d.x, true, true))), -func_4(select(global4.c.d, vec3<bool>(false, var_0.d.x, global0.b.d.x), vec3<bool>(var_0.d.x, false, var_0.d.x)), func_2())));
    let var_2 = Struct_2(u_input.b.x, global4.c, vec4<f32>(global4.a.a.x, var_1.a.a.x, 1310f, -276f));
    var var_3 = (1u ^ countOneBits(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global4.a.b.x, 0u), 28u)])) >> (~(~(~u_input.c)) % 32u);
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(global4.b.b.x, global1[_wgslsmith_index_u32(~abs(0u), 28u)], global4.b.b.x);
    var var_1 = func_5(u_input.a.zyw, func_5(~(u_input.a.zzw >> (~vec3<u32>(global4.a.b.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], global4.b.b.x) % vec3<u32>(32u))), func_2().d.x, Struct_1(arg_0.a, vec2<i32>(func_4(vec3<bool>(false, global4.c.d.x, false), Struct_1(u_input.b.x, vec2<i32>(-19417i, 52420i), u_input.b.x, global4.c.d, -9500i)), func_1().b.x), ~0i, global0.b.d, ~56179i | arg_1.x)).c.d.x, func_2()).c;
    let var_2 = Struct_2(~global0.a, Struct_1(_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-15088i, -1i, global0.a)), -vec3<i32>(15412i, global4.c.e, arg_1.x)), min(func_1().e, ~arg_0.e)), min(vec2<i32>(15571i, arg_1.x) & func_5(vec3<u32>(global1[_wgslsmith_index_u32(3657u, 28u)], 4294967295u, 51403u), false, Struct_1(arg_0.c, vec2<i32>(-2147483647i, global0.b.e), global0.a, global4.c.d, 0i)).c.b, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a, global4.c.a), vec2<i32>(-1i, arg_1.x)) >> (u_input.a.wz % vec2<u32>(32u))), -4370i << (_wgslsmith_add_u32(u_input.a.x, ~global4.b.b.x) % 32u), vec3<bool>(true, any(!arg_0.d.yy), arg_0.d.x), abs(-2147483647i) ^ _wgslsmith_clamp_i32(-39534i, global4.c.c ^ u_input.d.x, func_4(global4.c.d, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1736f, global0.c.x, global0.c.x, global4.b.a.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.a.a.x, 1000f, global0.c.x, global4.a.a.x))))));
    let var_3 = var_2;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(479f)), _wgslsmith_f_op_f32(abs(global4.a.a.x))))), _wgslsmith_f_op_f32(trunc(-1345f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, var_3.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.c.d.x;
    var var_1 = -50444i;
    let var_2 = _wgslsmith_f_op_f32(func_6(func_1(), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global4.c.b.x, global0.a, global4.c.a, -8102i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, u_input.b.x, global0.a), vec4<i32>(global4.c.c, global0.a, 1i, 3410i))) | vec4<i32>(u_input.b.x, u_input.b.x, -19091i, func_2().b.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -20570i, global0.a), vec4<i32>(u_input.b.x, 10961i, 1i, 1i)), ~vec4<i32>(global4.c.b.x, u_input.d.x, u_input.d.x, global0.b.b.x)) >> (firstLeadingBit(vec4<u32>(26916u, global4.b.b.x, u_input.c, u_input.c) & u_input.a) % vec4<u32>(32u))), global4.c.d.x));
    var var_3 = global4.b.b.x ^ ~global4.b.b.x;
    var_3 = ~u_input.c;
    var_1 = -28362i;
    var_1 = ~global4.c.e;
    let var_4 = -countOneBits(global4.c.b) >> (vec2<u32>(global1[_wgslsmith_index_u32(((0u ^ global1[_wgslsmith_index_u32(global4.a.b.x, 28u)]) >> (4294967295u % 32u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 46334u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 1u, 1u)), 28u)], 6399u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(64215u);
}

