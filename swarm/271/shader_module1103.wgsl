struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_1(false, -1i), Struct_1(false, 25794i), vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_4(Struct_1(true, 0i), Struct_1(false, -23547i), vec4<u32>(40025u, 19074u, 77182u, 9398u)), Struct_4(Struct_1(true, -48788i), Struct_1(true, 48354i), vec4<u32>(1u, 21038u, 44968u, 109464u)), Struct_4(Struct_1(true, 51547i), Struct_1(true, -19132i), vec4<u32>(0u, 1u, 1u, 1u)), Struct_4(Struct_1(false, -31371i), Struct_1(true, -1i), vec4<u32>(101667u, 0u, 0u, 1u)), Struct_4(Struct_1(false, -46023i), Struct_1(true, -13252i), vec4<u32>(4294967295u, 26686u, 41672u, 0u)), Struct_4(Struct_1(false, -1i), Struct_1(true, i32(-2147483648)), vec4<u32>(40764u, 28858u, 4294967295u, 23051u)), Struct_4(Struct_1(true, i32(-2147483648)), Struct_1(false, 0i), vec4<u32>(0u, 4294967295u, 1u, 31689u)), Struct_4(Struct_1(false, 1i), Struct_1(false, -22578i), vec4<u32>(4294967295u, 0u, 1u, 37325u)), Struct_4(Struct_1(true, 1i), Struct_1(false, i32(-2147483648)), vec4<u32>(44326u, 22921u, 4294967295u, 4294967295u)));

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -380f);
    var var_2 = true;
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-34438i, countOneBits(-u_input.c >> (min(u_input.e, 72535u) % 32u))), u_input.b.yx);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1078f, 1285f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1922f))))), _wgslsmith_f_op_f32(-2144f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1191f), -1000f)), any(!vec4<bool>(true, arg_0.b.x, true, arg_1.x)))));
    return true;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = firstLeadingBit(-vec4<i32>(0i, -u_input.d, u_input.d, u_input.b.x)) | firstTrailingBit(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(arg_2, arg_2, -1i, u_input.c)), ~select(vec4<i32>(33467i, arg_2, u_input.c, arg_2), vec4<i32>(-6685i, 7899i, arg_2, arg_2), vec4<bool>(true, true, true, arg_0))));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-443f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))), _wgslsmith_div_f32(-1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(1000f, 1701f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(f32(-1f) * -460f))))));
    let var_3 = firstTrailingBit(~19620u);
    var var_4 = Struct_1(any(select(select(!vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(arg_3.b.x, false, true, true), vec4<bool>(true, false, arg_0, arg_0)), vec4<bool>(arg_0, all(vec3<bool>(arg_3.b.x, arg_3.b.x, false)), !arg_0, false), true)), ~_wgslsmith_mod_i32(var_0.x, u_input.c & (1i >> (u_input.a % 32u))));
    return !select(select(arg_3.b, select(select(vec3<bool>(arg_3.b.x, false, arg_0), arg_3.b, true), !arg_3.b, !arg_0), !vec3<bool>(false, var_4.a, arg_0)), vec3<bool>(all(!vec2<bool>(true, arg_3.b.x)), 1360u > ~var_1, false), any(arg_3.b));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_3(vec2<u32>(u_input.a ^ ~(~u_input.e), 1u), select(!vec3<bool>(true, true, all(vec2<bool>(true, false))), func_4(func_3(Struct_3(vec2<u32>(4294967295u, 40601u), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)) | true, ~58186u, firstLeadingBit(u_input.c), Struct_3(vec2<u32>(u_input.a, u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), func_4(func_3(Struct_3(vec2<u32>(25278u, u_input.e), vec3<bool>(false, false, true)), vec3<bool>(true, false, true)), ~u_input.e, u_input.b.x, Struct_3(abs(vec2<u32>(u_input.a, u_input.a)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)))));
    var var_1 = !var_0.b.x;
    var var_2 = Struct_1(!var_0.b.x, u_input.d);
    var_1 = !(!var_2.a);
    var_2 = Struct_1(!(!any(!vec4<bool>(var_0.b.x, var_2.a, var_0.b.x, false))), var_2.b);
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-488f, 1826f, 192f), vec3<f32>(191f, 983f, 2048f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, -2736f, -688f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, 1549f, -378f))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1481f))))), -662f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(434f)))), _wgslsmith_f_op_f32(-124f * -1325f)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = select(select(!arg_1, !(!select(arg_1, arg_1, arg_1)), vec4<bool>(true, arg_1.x, _wgslsmith_mult_i32(arg_3.x, -2147483647i) > _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 23154i, 34173i), vec3<i32>(u_input.d, arg_3.x, arg_3.x)), select(arg_1.x, true, false))), vec4<bool>(select(false, all(!vec2<bool>(arg_1.x, true)), any(vec3<bool>(true, true, true))), (0u >> (~u_input.a % 32u)) == 1u, all(!arg_1.wyw), !((arg_0.x == 39325i) && all(vec2<bool>(arg_1.x, false)))), select(vec4<bool>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-arg_2.x) > arg_2.x, arg_1.x), arg_1, 65246u == reverseBits(reverseBits(u_input.a))));
    let var_1 = Struct_3(vec2<u32>(~max(u_input.a, _wgslsmith_div_u32(u_input.a, 13414u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, u_input.e), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(38862u, 22505u, u_input.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 69418u), vec3<u32>(0u, 4294967295u, 4142u), vec3<u32>(u_input.a, 1u, 0u))))), func_4(arg_1.x, u_input.e, arg_0.x, Struct_3(vec2<u32>(0u >> (1u % 32u), _wgslsmith_clamp_u32(u_input.a, 1u, 77081u)), vec3<bool>(46620u == u_input.a, arg_1.x, func_4(false, u_input.a, -2147483647i, Struct_3(vec2<u32>(25955u, u_input.e), var_0.yzz)).x))));
    var var_2 = ~vec3<u32>(_wgslsmith_div_u32(18862u, var_1.a.x), 12101u, var_1.a.x);
    var var_3 = reverseBits(~(-_wgslsmith_mod_i32(-1i, 65986i << (u_input.e % 32u))));
    let var_4 = vec3<i32>(~_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_3) >> (var_2.yy % vec2<u32>(32u)), u_input.b.zx), select(3488i | (_wgslsmith_add_i32(1i, arg_0.x) >> (reverseBits(42593u) % 32u)), firstTrailingBit(-abs(arg_3.x)), false & !(var_1.a.x < var_2.x)), ~(i32(-1i) * -1i));
    return Struct_1(select(select(true | all(vec2<bool>(var_1.b.x, true)), false, true), (arg_2.x <= _wgslsmith_f_op_f32(max(-1272f, 103f))) | var_1.b.x, false), 1i);
}

fn func_6(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    var var_0 = arg_2.a;
    global0 = array<Struct_4, 10>();
    var var_1 = 4294967295u;
    let var_2 = ~vec3<u32>(select(_wgslsmith_mod_u32(u_input.e, u_input.a) << (0u % 32u), 24242u, _wgslsmith_f_op_f32(ceil(275f)) > _wgslsmith_f_op_f32(sign(720f))), ~_wgslsmith_mult_u32(select(4294967295u, 34353u, arg_0.x), u_input.a), u_input.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1576f - -599f), -443f)) * -1048f), 1000f)));
    return global0[_wgslsmith_index_u32(65229u >> (_wgslsmith_dot_vec3_u32(countOneBits(var_2), vec3<u32>(1u, 1u, ~u_input.e)) % 32u), 10u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = true;
    global1 = 375f;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x)), arg_3.a.x);
    let var_1 = func_6(vec4<bool>(all(vec4<bool>(true, arg_3.c.a, any(vec4<bool>(arg_2, true, false, arg_2)), true)), true, _wgslsmith_f_op_f32(floor(arg_3.a.x)) >= _wgslsmith_f_op_f32(-1128f + arg_3.a.x), true), -291f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x)))), func_5(arg_0.wwx, vec4<bool>(!arg_1.b.a | false, arg_1.a.a, all(select(vec4<bool>(arg_1.b.a, true, arg_2, arg_2), vec4<bool>(arg_3.c.a, true, true, arg_3.c.a), arg_3.c.a)), any(select(vec2<bool>(true, false), vec2<bool>(arg_2, false), arg_3.c.a))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_3.a.x, 435f)), _wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x), vec3<f32>(arg_3.a.x, arg_3.a.x, 1000f), vec3<bool>(true, true, arg_2))))), vec2<i32>(-1i) * -min(vec2<i32>(arg_1.a.b, u_input.c), vec2<i32>(-2147483647i, 15415i))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_f32(arg_3.a.x + -450f)));
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) * _wgslsmith_f_op_f32(f32(-1f) * -757f)) * _wgslsmith_f_op_f32(min(149f, _wgslsmith_f_op_f32(f32(-1f) * -179f)))) + _wgslsmith_f_op_f32(f32(-1f) * -226f)));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> StorageBuffer {
    var var_0 = abs(arg_0.b);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(192f - -2188f), _wgslsmith_f_op_f32(floor(arg_0.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.a.x, 1263f)), _wgslsmith_f_op_f32(-arg_3.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.x, arg_3.x, 1434f))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_3.x, arg_3.x) + vec3<f32>(arg_3.x, -131f, arg_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, arg_0.a.x, arg_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-498f, 721f, -2097f)))));
    var var_2 = func_6(vec4<bool>(arg_0.c.a, func_3(Struct_3(vec2<u32>(arg_1, 48551u), func_4(arg_0.c.a, 2230u, u_input.d, Struct_3(vec2<u32>(0u, u_input.a), vec3<bool>(arg_0.c.a, true, true)))), !vec3<bool>(false, arg_0.c.a, false)), true, arg_0.c.a), all(vec2<bool>(true, !(arg_0.c.a && arg_0.c.a))), arg_0.c);
    let var_3 = vec4<bool>(!arg_0.c.a, func_6(vec4<bool>(var_2.b.a, arg_0.c.a, var_2.b.a, func_4(arg_0.c.a, ~46698u, -7552i, Struct_3(vec2<u32>(4294967295u, var_0.x), vec3<bool>(true, var_2.b.a, arg_0.c.a))).x), true, Struct_1(true, _wgslsmith_mod_i32(abs(arg_2), countOneBits(-36607i)))).b.a, !(false != (_wgslsmith_mod_u32(var_0.x, arg_1) <= 27416u)), func_5(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b.x, 1i, arg_2), u_input.b, max(vec3<i32>(-709i, var_2.a.b, -35968i), u_input.b)), u_input.b, vec3<bool>(true, true, true)), !vec4<bool>(var_2.b.a, true, !arg_0.c.a, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.a.x, arg_0.a.x) * vec3<f32>(-386f, var_1.x, arg_0.a.x)), vec3<f32>(134f, 112f, arg_0.a.x), !vec3<bool>(var_2.b.a, arg_0.c.a, var_2.a.a))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1251f, -957f, -1089f), vec3<f32>(var_1.x, 1472f, var_1.x))), vec3<f32>(arg_3.x, -1000f, -374f)))), -u_input.b.xy << (~var_0.zy % vec2<u32>(32u))).a);
    return StorageBuffer(countOneBits(~_wgslsmith_add_i32(u_input.b.x, arg_0.c.b)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, var_2.b.b, 2147483647i), ~abs(vec3<i32>(-1i, arg_0.c.b, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(u_input.b.x, 2147483647i, u_input.c, 1i), Struct_4(Struct_1(true, 1i), Struct_1(false, 2147483647i), vec4<u32>(u_input.a, 31191u, 1u, u_input.e)), true, Struct_2(vec2<f32>(-1000f, -466f), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), Struct_1(true, -71420i), vec3<u32>(u_input.e, u_input.e, u_input.a)))) + _wgslsmith_div_vec2_f32(vec2<f32>(-436f, -271f), vec2<f32>(-720f, -1214f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1246f, 160f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, 763f) + vec2<f32>(1112f, 441f))), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.e, u_input.e, 68892u), vec4<u32>(u_input.e, u_input.a, 0u, u_input.e)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e, u_input.e, u_input.a), vec4<u32>(u_input.e, 0u, u_input.a, 9284u))), u_input.e, u_input.e), Struct_1(true, u_input.c), countOneBits(vec3<u32>(firstLeadingBit(0u), ~4294967295u, _wgslsmith_sub_u32(46273u, u_input.a)))), _wgslsmith_mod_u32(~u_input.a, ~(~u_input.a)) >> (1u % 32u), func_5(max(max(~u_input.b, vec3<i32>(u_input.d, u_input.d, u_input.b.x)), vec3<i32>(u_input.b.x & u_input.d, func_6(vec4<bool>(false, false, false, true), false, Struct_1(false, -14397i)).a.b, -u_input.c)), vec4<bool>(!(u_input.a < 50658u), false, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1167f, 757f, -609f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.d), select(vec2<i32>(u_input.b.x, -1i), u_input.b.xz, false)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 55704u) ^ vec2<u32>(8169u, u_input.a), select(vec2<u32>(79330u, 34110u), vec2<u32>(u_input.e, u_input.e), false), abs(vec2<u32>(u_input.e, 4294967295u))) % vec2<u32>(32u))).b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(460f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(240f * 618f)))))));
}

