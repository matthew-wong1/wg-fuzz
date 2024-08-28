struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(-((vec4<i32>(0i, -12826i, 19458i, 7069i) << (vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.b.x) % vec4<u32>(32u))) ^ -vec4<i32>(9381i, 1i, -1i, 2147483647i)) | reverseBits(vec4<i32>(0i, 2739i >> (u_input.a % 32u), min(-1i, -2147483647i), 96641i)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-186f, 280f, -1089f, -1120f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, -442f, -391f, 1815f))))), vec2<i32>(1i, -1i), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -718f))), vec4<i32>(1i, 1i, 4851i, _wgslsmith_dot_vec2_i32(vec2<i32>(16018i, 37187i), vec2<i32>(1i, 1i)))), 1597f, Struct_2(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), Struct_1(vec4<f32>(-817f, _wgslsmith_f_op_f32(trunc(-2266f)), _wgslsmith_f_op_f32(select(1000f, 418f, false)), _wgslsmith_f_op_f32(-128f * 347f)), -min(vec2<i32>(1i, -32912i), vec2<i32>(-2147483647i, 1i)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<f32>(-188f, -2221f), min(_wgslsmith_add_vec4_i32(vec4<i32>(31426i, -1i, 9656i, 29741i), vec4<i32>(0i, -5595i, -20893i, -1i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_dot_vec3_u32(u_input.c, ~(~u_input.c)), abs(u_input.c.zy)), true);
    global0 = array<Struct_3, 20>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(var_0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, 935f, -848f, -1953f)))), var_0.d.b.b, true, _wgslsmith_f_op_vec2_f32(-var_0.b.a.xx), abs(var_0.a));
    var var_2 = vec3<bool>(any(var_0.d.a.yx), var_0.c > 1000f, any(var_0.d.a.xzx));
    let var_3 = Struct_3(select(min(var_1.e, firstTrailingBit(vec4<i32>(-400i, 49505i, -35931i, var_1.e.x))), vec4<i32>(_wgslsmith_mult_i32(var_1.b.x, -2147483647i), _wgslsmith_div_i32(-14367i, var_0.a.x) << (select(u_input.a, 76500u, var_0.e) % 32u), _wgslsmith_mod_i32(reverseBits(-1i), _wgslsmith_clamp_i32(var_0.d.b.e.x, var_1.b.x, var_1.b.x)), var_1.e.x), !var_2.x), var_0.d.b, -425f, Struct_2(var_0.d.a, Struct_1(vec4<f32>(905f, var_1.d.x, _wgslsmith_div_f32(251f, 651f), _wgslsmith_f_op_f32(var_0.d.b.a.x + var_1.a.x)), -vec2<i32>(-12315i, var_1.e.x), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.yy * vec2<f32>(var_1.d.x, 301f))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.d.b.e.x, var_1.b.x, var_0.b.b.x), vec4<i32>(0i, var_0.b.e.x, -5133i, -1i))), ~u_input.a, var_0.d.d), !(0i <= (select(-18052i, 1i, var_2.x) >> (~0u % 32u))));
    return var_3.d.a.x;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(vec4<bool>(arg_2.c, _wgslsmith_f_op_f32(select(991f, _wgslsmith_f_op_f32(floor(167f)), select(false, false, false))) == _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(abs(arg_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), any(!(!vec2<bool>(arg_0, arg_0)))), arg_2, ~u_input.a, ~(~u_input.c.zx) | max(vec2<u32>(min(1u, 17277u), max(1u, u_input.a)), reverseBits(_wgslsmith_div_vec2_u32(u_input.c.zx, u_input.b))));
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_1 = var_0;
    global0 = array<Struct_3, 20>();
    return 1i;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_3(vec4<i32>(arg_3.x, _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(-1i, -1616i, arg_2.b.x)), min(vec3<i32>(-57561i, 1i, arg_3.x), arg_2.e.wzz), select(vec3<bool>(false, arg_2.c, arg_2.c), vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(arg_2.c, arg_2.c, false))), arg_2.e.zyw), arg_2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~4671i, arg_3.x, 0i), abs(max(vec3<i32>(1i, arg_2.e.x, 1i), vec3<i32>(-2147483647i, arg_3.x, arg_3.x))))), arg_2, _wgslsmith_f_op_f32(879f + -1032f), Struct_2(!(!(!vec4<bool>(arg_2.c, true, true, arg_2.c))), Struct_1(arg_2.a, (vec2<i32>(arg_2.e.x, arg_2.e.x) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))) >> ((u_input.c.xz << (vec2<u32>(0u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, arg_2.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_2.a.wy)), -countOneBits(arg_2.e)), u_input.c.x, u_input.b ^ _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(23579u, 72119u), vec2<u32>(u_input.a, 4294967295u)), ~u_input.b)), any(!vec2<bool>(false, arg_2.c)) && arg_2.c);
    let var_1 = var_0.d;
    var var_2 = ~(-2147483647i);
    var_2 = var_1.b.e.x;
    let var_3 = Struct_3(~(-vec4<i32>(arg_2.b.x | arg_3.x, var_0.d.b.e.x & 13196i, abs(arg_3.x), ~1i)), var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(-var_1.b.a.x), true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(156f)), -158f, var_1.a.x))))), Struct_2(!select(!vec4<bool>(var_1.b.c, false, true, false), !vec4<bool>(false, false, true, arg_2.c), !vec4<bool>(true, var_0.d.a.x, var_0.e, arg_2.c)), arg_2, 1u << (countOneBits(var_1.d.x) % 32u), ~vec2<u32>(max(var_1.c, 85677u), _wgslsmith_add_u32(19318u, var_0.d.c))), arg_2.c);
    return vec4<bool>(arg_2.c, !any(!select(var_1.a.xyy, vec3<bool>(false, true, false), var_0.d.a.wwx)), !(var_3.d.b.c | any(vec3<bool>(true, var_3.b.c, false))) || ((36702u & ~arg_1) > 92364u), arg_2.c);
}

fn func_2() -> f32 {
    let var_0 = func_5(-717f, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(~min(u_input.a, u_input.c.x), _wgslsmith_mult_u32(1u, u_input.c.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2476f)), -789f, -1000f, _wgslsmith_f_op_f32(-775f - -256f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, 1940f, 265f, -750f)))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(19589i, 31604i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-36828i, -1i)), -vec2<i32>(-32257i, -2147483647i))), !any(vec3<bool>(false, false, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1754f * 2611f)), 1988f), ~(reverseBits(vec4<i32>(1i, 9891i, -4906i, 3395i)) << (~vec4<u32>(1941u, u_input.a, 0u, u_input.c.x) % vec4<u32>(32u)))), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -28491i, 1i >> (u_input.c.x % 32u)), func_4(!any(vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(step(-524f, 687f)), _wgslsmith_div_f32(-495f, -125f), _wgslsmith_f_op_f32(f32(-1f) * -889f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, 987f, 745f, 1117f)), vec2<i32>(13191i, -62700i), func_3(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, -129f)), max(vec4<i32>(-2147483647i, -2147483647i, 1i, 11480i), vec4<i32>(24410i, 0i, 40351i, 2147483647i))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(1401f + -784f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-357f)))), _wgslsmith_f_op_f32(f32(-1f) * -1272f), -1797f) - vec4<f32>(-1080f, -1390f, 608f, _wgslsmith_div_f32(-1741f, -742f))), max(-firstTrailingBit(-vec2<i32>(2147483647i, 0i)), vec2<i32>(4583i, _wgslsmith_sub_i32(-1i, -1i) << ((u_input.b.x << (4294967295u % 32u)) % 32u))), ~_wgslsmith_mult_u32(reverseBits(15763u), abs(u_input.a)) < u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, 746f) + vec2<f32>(302f, -2082f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, 356f))), select(var_0.xw, var_0.yz, true))) + vec2<f32>(1f, 1f)), _wgslsmith_add_vec4_i32(-(~(vec4<i32>(0i, -1i, -93i, 0i) >> (vec4<u32>(0u, u_input.b.x, 0u, 8662u) % vec4<u32>(32u)))), ~max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(48225i, -2147483647i, 777i, 0i))));
    let var_2 = countOneBits(-(~var_1.e));
    let var_3 = var_1;
    return var_3.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-487f, -1185f, 667f, -200f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1271f, -156f, -171f, 477f) - vec4<f32>(-1000f, 1190f, 497f, -458f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-186f, 1308f, 1309f, 2035f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2108f * -1827f), -2330f, _wgslsmith_f_op_f32(func_2()), 415f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-352f, -286f, -1586f, 540f), vec4<f32>(-1440f, -996f, -1000f, 1000f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(590f, _wgslsmith_f_op_f32(f32(-1f) * -1108f), -857f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(405f)), -714f, _wgslsmith_f_op_f32(floor(-1957f)), -927f))));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(33624u, 20u)];
    global0 = array<Struct_3, 20>();
    var_0 = var_2.b.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_2.d.b.a * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2305f, -600f, -379f, -1006f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-645f, var_0.x, var_2.c, 1000f), vec4<f32>(2641f, var_0.x, var_0.x, var_2.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, 136f, 747f, -494f) - vec4<f32>(-271f, var_0.x, 199f, var_2.c)), !var_2.d.a))), abs(firstTrailingBit(~_wgslsmith_add_vec2_i32(var_2.b.b, vec2<i32>(var_2.b.e.x, 48839i)))), all(func_5(var_0.x, _wgslsmith_add_u32(1u, ~var_2.d.c), var_2.d.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1041i), ~vec2<i32>(var_2.a.x, var_2.d.b.e.x))).wwx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(678f, 1230f) - vec2<f32>(-479f, var_2.c)) * _wgslsmith_f_op_vec2_f32(round(var_0.zx))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(-170f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1268f), 1f)), ~vec4<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.b.e.x, var_2.d.b.e.x, var_2.d.b.e.x, var_2.b.e.x), var_2.a), _wgslsmith_add_i32(var_2.a.x, var_2.a.x)), 7243i, ~var_2.b.e.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    var var_0 = -1296f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-881f - 648f), any(arg_0.zz)))))));
    let var_1 = arg_2.e.zwx;
    return ~func_4(arg_0.x, arg_2.a.xxy, Struct_1(arg_2.a, -(vec2<i32>(1i, 3029i) << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.d, arg_2.d)), vec4<i32>(var_1.x, -arg_2.b.x, 16112i, arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec3<bool>(true, true, true));
    let var_1 = 44236i & abs(func_6(select(vec4<bool>(false, var_0, false, false), vec4<bool>(false, true, var_0, true), vec4<bool>(true, var_0, true, true)), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), func_1()) >> (u_input.a % 32u));
    var var_2 = u_input.b;
    var var_3 = 521i;
    var var_4 = vec3<bool>(true, all(select(vec2<bool>(func_5(637f, var_2.x, Struct_1(vec4<f32>(-576f, 108f, 641f, 153f), vec2<i32>(var_1, var_1), var_0, vec2<f32>(1997f, 1092f), vec4<i32>(var_1, var_1, 2147483647i, var_1)), vec2<i32>(var_1, -2147483647i)).x, var_0), vec2<bool>(!var_0, true), vec2<bool>(var_0, !var_0))), (i32(-1i) * -1i) > var_1);
    var var_5 = vec2<i32>(-(~(~_wgslsmith_clamp_i32(var_1, var_1, 0i))), -_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -58330i, 50967i, var_1), vec4<i32>(0i, var_1, var_1, var_1)), vec4<i32>(var_1, -18082i, var_1, var_1) >> (~vec4<u32>(u_input.b.x, var_2.x, 3023u, 20691u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(927u, reverseBits(1u & (var_2.x ^ 4294967295u))), 1513f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(179f, -817f) - _wgslsmith_f_op_f32(-614f + -1403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-999f, -213f))), -1071f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-544f, 246f, 1714f, 312f))))))), -2147483647i ^ select(1i, -6017i, any(vec4<bool>(true, true, false, false))));
}

