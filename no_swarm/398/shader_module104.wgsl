struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(38498u, vec3<f32>(-1341f, -1272f, 1000f)), Struct_1(59415u, vec3<f32>(-1000f, -210f, -942f)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = global0.a;
    var var_1 = max(min(_wgslsmith_mod_u32(var_0.a, ~4294967295u >> (firstLeadingBit(2984u) % 32u)), ~select(1u << (global0.a.a % 32u), ~u_input.b.x, true)), ~4294967295u);
    global2 = array<vec4<f32>, 10>();
    let var_2 = -abs(~(~u_input.c.zx) << ((vec2<u32>(1u, 13003u) & ~u_input.b) % vec2<u32>(32u)));
    var var_3 = u_input.c.x;
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_2(global0.a, Struct_1(~_wgslsmith_mod_u32(~4294967295u, func_3()), global0.a.b));
    let var_1 = arg_2;
    global0 = Struct_2(Struct_1(select(reverseBits(arg_0.x) | firstLeadingBit(arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.b.x, var_0.a.a), arg_0.wzw), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(select(var_1, var_0.a.b.x, false)), _wgslsmith_f_op_f32(arg_2 - var_0.a.b.x)))), var_0.b);
    global2 = array<vec4<f32>, 10>();
    global2 = array<vec4<f32>, 10>();
    return vec4<u32>(var_0.b.a, _wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, _wgslsmith_div_u32(6641u, _wgslsmith_mod_u32(global0.a.a, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(1663u, 0u, global0.b.a, 30523u))))), max(~u_input.e.x, 0u), 6532u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = 1u ^ arg_1;
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.e.x, 0u, 13081u, ~arg_1), vec4<u32>(u_input.a.x << (87558u % 32u), reverseBits(20512u), _wgslsmith_sub_u32(35420u, global0.a.a), arg_1 >> (58908u % 32u)) ^ (~vec4<u32>(7995u, 4294967295u, 0u, 3920u) & ~vec4<u32>(u_input.b.x, 63198u, 0u, global0.a.a)), vec4<u32>(0u, ~1u, u_input.a.x, reverseBits(global0.a.a)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(global0.b.a, 1u, 21696u, 2345u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_1, global0.b.a, global0.b.a), vec4<u32>(u_input.a.x, u_input.b.x, global0.b.a, arg_1), vec4<u32>(1u, arg_1, 4294967295u, 1u))) % vec4<u32>(32u))), -(~(-arg_0.x) ^ arg_0.x), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, -2147483647i, arg_0.x), u_input.c.x, -13403i, u_input.c.x), reverseBits(arg_0 << (vec4<u32>(84277u, u_input.e.x, 5499u, arg_1) % vec4<u32>(32u))))), ~(u_input.b.x ^ 53526u), ~func_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1, arg_1, arg_1), vec4<u32>(global0.b.a, 1u, 4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.x * -386f)), 436f));
    return Struct_2(Struct_1(73769u, global1.zwx), Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(35028u, 0u, u_input.b.x) << (countOneBits(1u) % 32u), _wgslsmith_mult_u32(abs(u_input.b.x), u_input.a.x)), global0.b.b));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1068f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) + 551f))));
    var var_1 = -760f;
    var_1 = -679f;
    let var_2 = -(~(~(~abs(vec4<i32>(-39526i, 2147483647i, u_input.c.x, u_input.c.x)))));
    let var_3 = func_1(var_2, 0u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(ceil(-1199f))), 734f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1987f, -1014f) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.b.x + var_0)))))));
    return firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~0u, ~1u, 18432u >> (var_3.b.a % 32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a, 21468u, 1u, 0u), vec4<u32>(var_3.a.a, 4294967295u, 0u, 1u), vec4<u32>(var_3.b.a, 1u, 4294967295u, 0u))) | ~(~(~vec4<u32>(30351u, var_3.a.a, arg_0.b.a, 18236u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_2(func_1(vec4<i32>(u_input.c.x << (~arg_1.x % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -33450i, u_input.c.x, 39318i), vec4<i32>(u_input.c.x, 20879i, -1i, -31512i)), u_input.c.x >> (~139194u % 32u), countOneBits(u_input.d.x)), max(u_input.b.x, 1u), global2[_wgslsmith_index_u32(~global0.b.a, 10u)]).b, global0.b);
    global1 = _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.zzw, ~(~(~arg_1.yxy))), 10u)]));
    var_0 = func_1(reverseBits(reverseBits(-vec4<i32>(u_input.d.x, 0i, u_input.c.x, 1i) & (vec4<i32>(25193i, u_input.c.x, 2147483647i, u_input.d.x) << (vec4<u32>(arg_1.x, global0.a.a, arg_1.x, 23430u) % vec4<u32>(32u))))), 1u, vec4<f32>(_wgslsmith_f_op_f32(var_0.b.b.x * 1013f), 100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-198f)) + _wgslsmith_f_op_f32(-global0.a.b.x)) * _wgslsmith_f_op_f32(-func_1(vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.d.x), 8301u, global2[_wgslsmith_index_u32(arg_1.x, 10u)]).b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1843f, _wgslsmith_f_op_f32(round(var_0.b.b.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, -348f, global1.x) - vec3<f32>(global0.a.b.x, global1.x, global1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.b.x))), global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)))) + _wgslsmith_f_op_vec3_f32(-var_0.a.b));
    let var_2 = func_1(vec4<i32>(0i, ~u_input.c.x, -2147483647i, _wgslsmith_add_i32(firstTrailingBit(u_input.d.x), -10620i)), ~(~arg_1.x), global2[_wgslsmith_index_u32(func_2(vec4<u32>(~(var_0.a.a << (var_0.a.a % 32u)), ~4294967295u, arg_0.x, 1u), 707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1395f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(336f)))))).x, 10u)]).b;
    return u_input.e;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = Struct_3(select(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_0.x, global0.b.a, u_input.a.x, global0.b.a)), vec4<u32>(4294967295u, global0.a.a, u_input.a.x, 3156u) & vec4<u32>(3717u, u_input.b.x, global0.b.a, global0.b.a), vec4<u32>(global0.b.a, 0u, 4294967295u, 7845u)) ^ ~(~vec4<u32>(4349u, 0u, 4294967295u, arg_0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.a, 104595u, 4294967295u, global0.a.a), vec4<u32>(arg_0.x, 86649u, 42044u, u_input.a.x), vec4<u32>(4294967295u, 0u, global0.a.a, arg_0.x)), max(vec4<u32>(global0.a.a, u_input.b.x, 1u, 4294967295u), vec4<u32>(23690u, 4294967295u, 736u, 0u))), ~max(vec4<u32>(u_input.e.x, 40662u, arg_0.x, 64923u), vec4<u32>(u_input.a.x, arg_0.x, global0.b.a, arg_0.x))), arg_3.x), u_input.c.x, abs(~min(~vec4<i32>(arg_1.x, 1i, u_input.c.x, 15118i), vec4<i32>(u_input.c.x, -1i, arg_1.x, u_input.c.x))), _wgslsmith_dot_vec2_u32(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, ~40996u), _wgslsmith_mult_vec2_u32(~u_input.a, vec2<u32>(global0.a.a, arg_0.x)))), func_2(countOneBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b.x, arg_0.x, 4294967295u, 16331u)), vec4<u32>(global0.a.a, 1u, 1u, 1814u) | vec4<u32>(u_input.e.x, arg_0.x, arg_0.x, global0.b.a))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global0.b.b.x + 295f))))));
    let var_2 = !select(arg_3, vec3<bool>(false, false, !arg_3.x), !vec3<bool>(all(vec3<bool>(var_0.x, arg_3.x, arg_3.x)), arg_1.x < 26203i, var_0.x));
    let var_3 = vec2<i32>(arg_1.x, reverseBits(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2907i, arg_1.x), u_input.c.zz), vec2<i32>(arg_1.x, 0i))));
    var_0 = var_2;
    return Struct_3(~reverseBits(~(~var_1.a)), u_input.c.x, ~((var_1.c & _wgslsmith_add_vec4_i32(var_1.c, var_1.c)) ^ var_1.c), u_input.a.x, var_1.e >> (var_1.e % vec4<u32>(32u)));
}

fn func_7(arg_0: Struct_3, arg_1: vec4<u32>) -> i32 {
    var var_0 = global1.wy;
    global2 = array<vec4<f32>, 10>();
    var var_1 = func_1(reverseBits(vec4<i32>(_wgslsmith_div_i32(829i, -36895i), -select(u_input.d.x, -2147483647i, true), reverseBits(-2147483647i), _wgslsmith_mult_i32(func_6(arg_1.zy, u_input.c, vec3<f32>(934f, -249f, -899f), vec3<bool>(true, false, false)).c.x, u_input.d.x & -29540i))), func_4(Struct_2(func_1(-vec4<i32>(0i, u_input.c.x, 1887i, -1i), abs(4294967295u), vec4<f32>(global1.x, var_0.x, 1096f, global1.x)).a, Struct_1(~u_input.b.x, global1.yyw))).x, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~(~arg_0.e.x), 10u)]));
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(127f + -1000f), -4112f)), _wgslsmith_f_op_f32(-861f * -872f)), -1505f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1039f) * var_0.x), global0.b.b.x);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.zy, vec2<f32>(648f, var_1.a.b.x))) * _wgslsmith_f_op_vec2_f32(-global1.zx)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.xx)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 517f)))))) - vec2<f32>(939f, global0.b.b.x));
    return _wgslsmith_dot_vec2_i32(countOneBits(u_input.d), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(~(u_input.b | vec2<u32>(4294967295u, u_input.a.x)), func_4(func_1(vec4<i32>(-33980i, u_input.c.x, u_input.d.x, u_input.d.x), u_input.e.x, global2[_wgslsmith_index_u32(0u, 10u)]))), ~abs(countOneBits(u_input.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, func_1(vec4<i32>(u_input.d.x, u_input.c.x, 2147483647i, 0i), 0u, global2[_wgslsmith_index_u32(72486u, 10u)]).a.b.x, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.zwz, vec3<f32>(-1173f, 2510f, 1432f)))), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), true, select(false, true, false) && false)), ~firstTrailingBit(firstTrailingBit(~vec4<u32>(92723u, global0.b.a, u_input.e.x, 40429u))));
    global0 = func_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, -4386i, -2147483647i, 2147483647i), ~vec4<i32>(-2147483647i, -18742i, 0i, u_input.d.x)), func_6(firstTrailingBit(u_input.a), abs(vec3<i32>(u_input.c.x, u_input.d.x, 8192i)), _wgslsmith_f_op_vec3_f32(global0.a.b - vec3<f32>(-1000f, 1004f, global1.x)), vec3<bool>(false, false, true)).c, vec4<i32>(countOneBits(u_input.d.x), firstTrailingBit(0i), 0i, ~u_input.c.x))), ~19444u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.e, _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.a, u_input.b.x), u_input.a)), countOneBits(max(10826u, 26874u))), 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~_wgslsmith_div_vec3_u32(min(vec3<u32>(1u, global0.a.a, u_input.b.x), ~vec3<u32>(4294967295u, 100914u, 0u)), vec3<u32>(4294967295u << (u_input.b.x % 32u), 0u, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(1u, u_input.b.x)))), firstLeadingBit(_wgslsmith_mult_vec2_i32(reverseBits(-u_input.d), abs(u_input.c.zx))));
}

