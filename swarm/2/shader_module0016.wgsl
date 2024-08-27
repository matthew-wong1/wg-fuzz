struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(2147483647i, vec2<f32>(871f, 386f), vec4<i32>(9275i, i32(-2147483648), 49575i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i)), Struct_2(1i, vec2<f32>(1055f, 401f), vec4<i32>(-1i, -40644i, 0i, 2147483647i), vec4<i32>(0i, 0i, -1i, 1i)), Struct_2(i32(-2147483648), vec2<f32>(278f, -1037f), vec4<i32>(-33138i, 48551i, -26152i, -63125i), vec4<i32>(-48187i, 27212i, -2653i, 39958i)), Struct_2(-1i, vec2<f32>(1457f, 672f), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<i32>(-55932i, 1i, 13326i, 1i)), Struct_2(-16891i, vec2<f32>(-1279f, 622f), vec4<i32>(-33677i, 2147483647i, -24534i, -7573i), vec4<i32>(-67054i, 6922i, i32(-2147483648), 1996i)), Struct_2(2147483647i, vec2<f32>(-210f, 1000f), vec4<i32>(41940i, 27270i, 36682i, 2147483647i), vec4<i32>(-1i, 14912i, 0i, 0i)), Struct_2(-30468i, vec2<f32>(1000f, -920f), vec4<i32>(0i, -23555i, -1i, i32(-2147483648)), vec4<i32>(76880i, -1i, i32(-2147483648), -1i)), Struct_2(1i, vec2<f32>(-147f, -441f), vec4<i32>(2147483647i, -1i, -6257i, -1i), vec4<i32>(37885i, 8641i, 30959i, -1693i)), Struct_2(20309i, vec2<f32>(-568f, 597f), vec4<i32>(-25193i, 1i, 1i, 2147483647i), vec4<i32>(16045i, -1070i, 2147483647i, -3167i)), Struct_2(-10870i, vec2<f32>(387f, 1336f), vec4<i32>(-41104i, -1i, 2147483647i, 3834i), vec4<i32>(17683i, i32(-2147483648), 0i, 4531i)), Struct_2(2147483647i, vec2<f32>(664f, -1465f), vec4<i32>(-12317i, -5668i, 1i, 7869i), vec4<i32>(-28607i, 0i, 2147483647i, -1i)), Struct_2(-1i, vec2<f32>(520f, -384f), vec4<i32>(14852i, 132i, -1i, -1i), vec4<i32>(i32(-2147483648), -25173i, -1i, 0i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(!(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(36556u, 0u))) == u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2297f, 210f, _wgslsmith_f_op_f32(-215f + arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.b.x))) * _wgslsmith_f_op_vec4_f32(step(arg_0.b, vec4<f32>(-920f, _wgslsmith_f_op_f32(-arg_0.b.x), -205f, arg_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x)) + _wgslsmith_div_f32(197f, arg_0.c.x))))), countOneBits(arg_0.d), select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.e, vec4<i32>(arg_0.d.x, u_input.d, u_input.d, 1897i)), vec4<i32>(0i, 1i, arg_0.d.x, -2147483647i)), vec4<i32>(~2147483647i, _wgslsmith_add_i32(u_input.d, u_input.d), u_input.e | u_input.d, 2147483647i)), vec4<i32>(1i, ~(~u_input.e), -1033i, -1287i), false));
    let var_1 = var_0;
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.a), ~4294967295u), ~u_input.c, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.b), vec3<u32>(1u, u_input.b, 1u)))), _wgslsmith_div_u32(4294967295u | u_input.a, u_input.a)), u_input.b, ~u_input.a << (1u % 32u), u_input.c);
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return Struct_2(countOneBits(arg_0.d.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + 609f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) * _wgslsmith_f_op_f32(1000f + -838f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -450f))), -var_0.e, vec4<i32>(-2147483647i, abs(u_input.d), firstLeadingBit(~var_1.d.x) | u_input.e, var_0.e.x));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!all(select(!vec3<bool>(arg_2.a, false, arg_2.a), select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, false)), false)));
    var var_1 = i32(-1i) * -_wgslsmith_div_i32(u_input.e | (50863i << (0u % 32u)), firstTrailingBit(13957i));
    var var_2 = Struct_1(all(!vec4<bool>(arg_2.a, select(true, false, false), true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(816f, 657f, arg_1.b.x, 1362f))), vec4<f32>(1032f, arg_1.b.x, arg_2.b.x, arg_2.c.x))) + vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x * -1019f), _wgslsmith_f_op_f32(abs(1057f)), _wgslsmith_f_op_f32(step(1679f, arg_1.b.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, _wgslsmith_f_op_f32(ceil(-231f)), _wgslsmith_f_op_f32(-arg_2.c.x))))), _wgslsmith_clamp_vec2_i32(arg_2.e.wx, _wgslsmith_sub_vec2_i32(-arg_1.c.wx, ~(-vec2<i32>(-1i, -2147483647i))), arg_1.c.wz), vec4<i32>(1i, -15572i, _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(arg_1.a, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.x, 2811i, u_input.d, -1i), arg_2.e)), 30263i) << (~(~min(vec4<u32>(109093u, arg_0, 95249u, arg_0), vec4<u32>(u_input.b, arg_0, 4294967295u, u_input.c))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_mult_vec3_u32(select(~(max(vec3<u32>(1348u, 42350u, 0u), vec3<u32>(u_input.c, arg_0, 10736u)) << (vec3<u32>(0u, arg_0, arg_0) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32((vec3<u32>(0u, 0u, u_input.b) ^ vec3<u32>(arg_0, u_input.a, u_input.c)) | vec3<u32>(4294967295u, u_input.a, 4294967295u), ~vec3<u32>(arg_0, arg_0, 1u)), false), vec3<u32>(~u_input.a, ~arg_0, arg_0));
    var_3 = vec3<u32>(~abs(39463u), arg_0, 62642u);
    return Struct_1(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(-754f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-415f, arg_2.b.x, arg_2.a | arg_2.a)) * _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(arg_2.c.x * -251f))), _wgslsmith_f_op_f32(trunc(-274f)), _wgslsmith_f_op_f32(ceil(1274f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(752f, 990f, var_2.b.x) - vec3<f32>(-242f, -697f, -511f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, var_2.c.x, var_2.c.x)))), func_2(arg_2).d.zy, vec4<i32>(arg_1.c.x, -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-3124i, 40968i, arg_1.c.x), var_2.e.wyy), -vec3<i32>(arg_2.d.x, arg_2.d.x, arg_1.a)), ~var_2.d.x, -2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = u_input.a;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(16543u, 0u, var_0) ^ vec3<u32>(4294967295u, var_0, u_input.c)), vec3<u32>(_wgslsmith_mod_u32(var_0, 1u), 12473u, var_0)) | 75578u), 12u)];
    global0 = array<Struct_2, 12>();
    var var_2 = true;
    let var_3 = !(!select(select(!vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), !(!vec3<bool>(false, arg_0.a, arg_0.a)), select(false, arg_0.a || false, any(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~countOneBits(_wgslsmith_add_u32(0u, var_0)), u_input.b), ~vec3<u32>(~var_0, ~_wgslsmith_add_u32(28076u, 11360u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 25802u, var_0, 0u), reverseBits(vec4<u32>(55917u, u_input.a, u_input.c, var_0)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 12>();
    var var_0 = ~vec4<u32>(u_input.b << (_wgslsmith_mult_u32(u_input.a & u_input.a, 1u) % 32u), ~firstTrailingBit(1u), func_4(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 41730u), vec2<u32>(u_input.b, u_input.b)), func_2(arg_0), Struct_1(true, vec4<f32>(312f, arg_0.b.x, 874f, arg_1), vec3<f32>(arg_1, -872f, -305f), arg_2.zz, vec4<i32>(arg_2.x, 17591i, arg_2.x, -18413i))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.e.yww, arg_0.e.yzz), arg_0.e.wzy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-535f, -598f, -1050f, -1084f), arg_0.b)), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b))), 24476u);
    var var_1 = select(u_input.c, _wgslsmith_mult_u32(min(var_0.x, ~u_input.a), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 9042u), var_0.wz) >> (1u % 32u))), true && any(!select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_0.a, arg_0.a, false))));
    var_0 = _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b, 1u, 8812u, u_input.c)), ~(~vec4<u32>(0u, 0u, 4294967295u, var_0.x)))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, 4294967295u), 4294967295u), ~4294967295u, 21700u, var_0.x << (15258u % 32u)));
    let var_2 = vec3<bool>(true, arg_0.a, 1432f >= _wgslsmith_f_op_f32(min(arg_1, -1000f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 * arg_1))) * _wgslsmith_f_op_f32(arg_0.b.x - -1387f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, 733f, 1513f, 675f) - vec4<f32>(589f, 1285f, -1179f, -1451f))))))), vec3<f32>(525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(696f * 203f) * _wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(round(1347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(2294f, 1474f)) + _wgslsmith_f_op_f32(-541f + _wgslsmith_f_op_f32(f32(-1f) * -622f)))), abs(~(~vec2<i32>(u_input.e, u_input.d))) ^ ((vec2<i32>(0i, -2147483647i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) & -(~vec2<i32>(-5051i, u_input.d))), vec4<i32>(min(1i, -1i), max(u_input.d, 4238i), -u_input.d, u_input.d) >> (~vec4<u32>(13669u, ~4294967295u, _wgslsmith_add_u32(u_input.a, 7519u), u_input.c) % vec4<u32>(32u)));
    global0 = array<Struct_2, 12>();
    var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1232f + 1148f))), _wgslsmith_f_op_f32(var_0.c.x + -281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_0.a, var_0.b, var_0.c, var_0.e.xw, vec4<i32>(-44007i, var_0.d.x, u_input.e, u_input.e)), 1338f, vec3<i32>(-18578i, u_input.d, -2147483647i), u_input.e))), 1343f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.x, var_0.b.x, var_0.c.x, 713f))))))), var_0.c, select(vec2<i32>(var_0.d.x, _wgslsmith_div_i32(-var_0.d.x, var_0.e.x)), vec2<i32>(0i, -33894i), !(!select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a), var_0.a))), var_0.e);
    var_0 = Struct_1(var_0.a, var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(select(372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -1198f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1046f)), var_0.e.yw, min(var_0.e, -var_0.e));
    let var_1 = func_3(u_input.b, Struct_2(min(2147483647i, -54537i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1000f))), vec2<f32>(-467f, 107f)))), var_0.e, vec4<i32>(~u_input.e, abs(u_input.e), ~u_input.e, max(u_input.e, var_0.d.x)) & firstTrailingBit(var_0.e & var_0.e)), Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -809f))), var_0.c.x, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b.wyx)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -1231f) + vec3<f32>(var_0.c.x, -410f, var_0.b.x)))), vec2<i32>(_wgslsmith_div_i32(var_0.d.x, var_0.d.x), _wgslsmith_mod_i32(-2147483647i, ~var_0.e.x)), min(-select(vec4<i32>(22441i, var_0.e.x, var_0.e.x, var_0.e.x), vec4<i32>(var_0.d.x, 5969i, 32208i, var_0.d.x), false), select(vec4<i32>(-37863i, -9675i, -17408i, u_input.d), vec4<i32>(u_input.e, -34635i, var_0.d.x, u_input.e), all(vec3<bool>(var_0.a, var_0.a, var_0.a))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)) * var_1.b.x) - 3254f));
    var_0 = Struct_1(var_0.d.x > _wgslsmith_mult_i32(u_input.d << (_wgslsmith_add_u32(2459u, 1u) % 32u), -45098i), func_3(0u, func_2(var_1), func_3(select(_wgslsmith_clamp_u32(u_input.b, 6965u, 71894u), u_input.b, any(vec4<bool>(false, var_0.a, var_0.a, true))), global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(!var_0.a, var_0.b, var_1.b.zxz, func_2(var_1).d.xx, -var_1.e))).b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, 1729f) * _wgslsmith_f_op_f32(-702f - -2064f)), 232f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -729f)), vec2<i32>(var_0.d.x, var_0.e.x), ~vec4<i32>(var_1.d.x << (~u_input.b % 32u), ~(-2147483647i), var_0.e.x, _wgslsmith_clamp_i32(1i, var_0.e.x, ~var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, countOneBits(vec3<i32>(u_input.e, -2147483647i, u_input.e >> (_wgslsmith_mod_u32(4294967295u, u_input.c) % 32u))), ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13446u, u_input.b, u_input.a), vec3<u32>(10631u, 12263u, 1u)), vec3<u32>(4294967295u, 48646u, u_input.b) << (vec3<u32>(3437u, u_input.a, u_input.c) % vec3<u32>(32u)))), vec3<i32>(15425i << (_wgslsmith_mult_u32(11626u, func_4(Struct_1(var_1.a, vec4<f32>(1346f, var_1.b.x, -350f, -866f), var_1.b.zww, vec2<i32>(var_0.d.x, u_input.d), vec4<i32>(957i, u_input.e, 982i, u_input.e)), var_1.e.yww, var_1.b)) % 32u), u_input.d, _wgslsmith_add_i32(u_input.e, ~(u_input.d ^ -1i))), var_1.e.x);
}

