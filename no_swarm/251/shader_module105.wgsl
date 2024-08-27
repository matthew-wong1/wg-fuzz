struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(4294967295u, 27490u)), Struct_1(vec2<u32>(113424u, 1u)), Struct_1(vec2<u32>(73865u, 6618u)), Struct_1(vec2<u32>(16956u, 6004u)), Struct_1(vec2<u32>(17436u, 1u)), Struct_1(vec2<u32>(1u, 59891u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 77215u)), Struct_1(vec2<u32>(57591u, 4294967295u)), Struct_1(vec2<u32>(47001u, 1u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = _wgslsmith_sub_u32(~reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.a.x, global0.a.x, 1144u), u_input.a), select(34609u, 13135u, arg_1.a.c))), abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a & u_input.a, min(vec4<u32>(46278u, global0.a.x, 12858u, 8883u), u_input.a)), 44813u)));
    global0 = arg_1.c;
    var var_2 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -17326i, u_input.c), ~vec3<i32>(1i, u_input.c, arg_1.a.d))) << ((vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, global0.a.x, arg_1.b.x), vec3<u32>(1u, 0u, 0u)), u_input.a.zwx), 0u, _wgslsmith_clamp_u32(countOneBits(arg_1.c.a.x), ~48260u, ~0u)) >> (~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 28351u, u_input.b), countOneBits(vec3<u32>(global0.a.x, global0.a.x, 0u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.c), vec3<i32>(-24773i, u_input.c, arg_1.a.d)), vec3<i32>(_wgslsmith_sub_i32(arg_1.a.d, 1i), arg_1.a.d, select(-24011i, var_2.x, true))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 5333i, u_input.c), ~vec3<i32>(-14933i, 2147483647i, 24183i)), vec3<i32>(arg_1.a.d >> (17174u % 32u), -64630i, -67450i)), vec3<i32>(var_2.x, reverseBits(firstTrailingBit(-2147483647i)), countOneBits(var_2.x ^ arg_1.a.d))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.e - _wgslsmith_f_op_f32(exp2(1f))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = vec3<f32>(546f, 855f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f + 1384f))))));
    let var_1 = Struct_1(~_wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(~38951u, u_input.b)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -432f), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false)), 1i, _wgslsmith_f_op_f32(step(419f, 319f))), ~max(u_input.a.zyx, vec3<u32>(20045u, 4294967295u, u_input.b)), global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1f));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1188f, var_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_0.x, -1209f), vec3<f32>(193f, -1521f, var_0.x), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1000f, -709f), vec3<f32>(-1490f, var_2.x, var_0.x)) * vec3<f32>(-2940f, -206f, var_2.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1778f, 633f, _wgslsmith_div_f32(var_0.x, -444f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.x)), 992f, -541f)), select(!vec3<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, false))), !vec3<bool>(all(vec3<bool>(false, true, true)), true, true), any(vec4<bool>(true, true, true, true)))));
    var var_4 = Struct_1(_wgslsmith_clamp_vec2_u32(~global0.a, var_1.a | (~vec2<u32>(u_input.a.x, u_input.a.x) << ((vec2<u32>(global0.a.x, 55867u) ^ var_1.a) % vec2<u32>(32u))), var_1.a));
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -590f >= var_0.x), vec4<bool>(true, true, true, true), true), !vec4<bool>(-1000f == var_0.x, true, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(true, true, false))), select(vec4<bool>(u_input.c == _wgslsmith_dot_vec4_i32(vec4<i32>(-13091i, u_input.c, -9636i, 2147483647i), vec4<i32>(11989i, arg_0.x, -13244i, 2147483647i)), -arg_0.x < 49374i, true, false), !vec4<bool>(2147483647i > arg_0.x, arg_0.x != u_input.c, false, true), vec4<bool>(select(true, true, true), false, true, true)), select(select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, false, true), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(~(~(~vec4<i32>(18982i, -1i, arg_3.d, arg_2.d))), vec4<i32>(arg_3.d, max(1i, -28011i), i32(-1i) * -10935i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.d, -41484i), vec2<i32>(arg_2.d, u_input.c)))), vec4<i32>(~firstLeadingBit(16152i), arg_2.d, 1i, _wgslsmith_div_i32(1i, arg_2.d))));
    let var_1 = true;
    var var_2 = Struct_3(Struct_2(arg_2.e, vec4<bool>(true && select(false, arg_2.b.x, true), !var_1, (i32(-1i) * -1i) >= (-1i >> (u_input.b % 32u)), false), !(!all(arg_2.b.xzy)), -38651i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(726f, 1257f, var_1))) + _wgslsmith_f_op_f32(295f + 225f))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 38365u, 1u), ~vec3<u32>(21843u, 4294967295u, _wgslsmith_div_u32(2362u, u_input.a.x))), global1[_wgslsmith_index_u32(firstTrailingBit(min(4045u, ~global0.a.x)) >> (~28763u % 32u), 10u)]);
    var var_3 = arg_2;
    var var_4 = min(_wgslsmith_div_u32(~(~var_2.c.a.x), ~var_2.b.x), u_input.a.x);
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global0 = Struct_1(u_input.a.yy);
    var var_0 = Struct_3(func_4(vec4<bool>(false, arg_0.c, true, !all(vec2<bool>(arg_0.b.x, false))), vec4<f32>(317f, 520f, arg_0.e, arg_0.e), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e, -485f) - arg_0.a), vec4<bool>(select(arg_0.c, arg_0.c, true), arg_0.b.x, all(vec4<bool>(true, arg_0.b.x, true, arg_0.c)), arg_0.b.x), false, -(i32(-1i) * -33545i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(793f, 1525f, true)) * _wgslsmith_f_op_f32(-arg_0.a))), arg_0), u_input.a.xyx, Struct_1(vec2<u32>(~u_input.b, 0u)));
    var var_1 = countOneBits(max(_wgslsmith_mult_vec3_i32(~abs(vec3<i32>(1i, arg_1, u_input.c)), vec3<i32>(arg_1, 0i, arg_0.d)), abs(~vec3<i32>(var_0.a.d, var_0.a.d, var_0.a.d)) | ~_wgslsmith_div_vec3_i32(vec3<i32>(5890i, arg_0.d, 52984i), vec3<i32>(31128i, arg_1, -2147483647i))));
    global1 = array<Struct_1, 10>();
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(-863f)), !vec4<bool>(false, var_0.a.b.x, any(arg_0.b), arg_0.b.x), var_0.a.c || any(vec2<bool>(true, true)), ~(-u_input.c), -385f), ~u_input.a.yyz, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(62785u, 0u) & vec2<u32>(var_0.c.a.x, var_0.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.zw), firstTrailingBit(62379u)))));
    return var_0.c;
}

fn func_1() -> vec4<i32> {
    global0 = func_5(func_4(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), func_2(vec3<i32>(-2147483647i, u_input.c, u_input.c))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2251f, 842f, -1000f, -122f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1074f, -1313f, 746f, -107f), vec4<f32>(286f, 663f, -479f, -830f)))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f)), vec4<bool>(true, true, true, true), true, -2147483647i, 621f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1257f, Struct_3(Struct_2(218f, vec4<bool>(true, false, true, false), false, -8777i, 493f), vec3<u32>(u_input.b, 1u, 97098u), Struct_1(u_input.a.xx))))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), true), (u_input.c << (u_input.b % 32u)) != -u_input.c, -55134i, _wgslsmith_f_op_f32(round(971f)))), -(~(-_wgslsmith_div_i32(-7036i, u_input.c))));
    let var_0 = abs(~(~41622u));
    return firstLeadingBit(vec4<i32>(~firstTrailingBit(u_input.c), _wgslsmith_add_i32(-49984i, _wgslsmith_mod_i32(reverseBits(-2147483647i), -13847i >> (global0.a.x % 32u))), 2147483647i, ((u_input.c | -15652i) & ~u_input.c) ^ u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(-2017f + 961f)))))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1915f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(1000f, Struct_3(Struct_2(148f, vec4<bool>(true, false, true, false), false, -2147483647i, 1000f), u_input.a.zyx, global1[_wgslsmith_index_u32(45899u, 10u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, global0.a.x, 45258u, u_input.a.x), vec4<u32>(u_input.b, 93437u, global0.a.x, u_input.b)) >> (countOneBits(reverseBits(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))));
}

