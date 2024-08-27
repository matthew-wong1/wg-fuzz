struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
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

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<u32>(45898u, 20378u), 0i, vec3<u32>(1u, 10160u, 0u), vec2<bool>(false, true)), vec2<f32>(415f, -627f), vec4<bool>(false, false, true, true), Struct_2(vec3<i32>(1i, i32(-2147483648), -41053i), 797f, Struct_1(vec2<u32>(1u, 28083u), -45971i, vec3<u32>(1u, 4294967295u, 4294967295u), vec2<bool>(false, true)), vec2<i32>(2147483647i, -1i), Struct_1(vec2<u32>(171u, 17879u), 26713i, vec3<u32>(14084u, 1u, 47437u), vec2<bool>(false, false))));

var<private> global1: vec2<bool>;

var<private> global2: u32;

var<private> global3: vec2<f32> = vec2<f32>(-348f, 862f);

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = 1u;
    global3 = vec2<f32>(arg_2.x, global3.x);
    global1 = arg_0.c.yw;
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(global0.b, arg_3.zw))))));
    return select(vec2<bool>(select(true, !select(false, false, true), !global0.d.e.d.x), !((global0.a.a.x <= u_input.a.x) | true)), arg_0.d.e.d, select(global0.a.d, global0.c.wz, vec2<bool>(true, global1.x && any(arg_0.c))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<i32>) -> i32 {
    let var_0 = Struct_3(global0.d.c, global0.b, global0.c, global0.d);
    let var_1 = _wgslsmith_f_op_f32(var_0.d.b + global0.b.x);
    let var_2 = !vec2<bool>(any(func_3(var_0, false, vec3<f32>(global3.x, -859f, -1422f), vec4<f32>(var_0.b.x, var_0.d.b, global0.b.x, global0.b.x))) && (global0.b.x <= _wgslsmith_f_op_f32(-var_1)), func_3(var_0, true && (arg_3.x > -43029i), vec3<f32>(global0.b.x, 1266f, _wgslsmith_f_op_f32(round(var_0.d.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1277f, var_0.b.x, 1081f, var_1))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-990f, 572f, -1165f, global3.x))), vec4<bool>(false, arg_1.d.x, global1.x, true)))).x);
    var var_3 = arg_1.c.x;
    let var_4 = var_1;
    return _wgslsmith_mult_i32(-var_0.a.b, -1i >> (var_0.a.c.x % 32u));
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    global0 = Struct_3(Struct_1(vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 43097u, 0u), vec4<u32>(4294967295u, u_input.a.x, 1u, 29757u)), 4294967295u), 4294967295u), -arg_0.x, vec3<u32>(~global0.a.a.x, 62278u, 4294967295u), !(!(!vec2<bool>(true, global0.a.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(round(-429f))), _wgslsmith_f_op_vec2_f32(-global0.b)))), select(!select(global0.c, global0.c, all(vec4<bool>(true, true, true, false))), select(select(!vec4<bool>(true, global0.c.x, false, true), vec4<bool>(global0.d.e.d.x, false, global1.x, global0.a.d.x), select(global0.c, vec4<bool>(false, global1.x, global1.x, global0.c.x), global1.x)), global0.c, !vec4<bool>(true, global1.x, global0.c.x, global1.x)), vec4<bool>(true, false, !(global0.d.b < global3.x), func_3(Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u), -2147483647i, vec3<u32>(22888u, 22783u, u_input.a.x), vec2<bool>(global1.x, true)), global0.b, global0.c, Struct_2(global0.d.a, global3.x, Struct_1(vec2<u32>(0u, global0.a.a.x), -45932i, vec3<u32>(u_input.a.x, global0.a.c.x, u_input.a.x), global0.d.c.d), global0.d.a.xz, global0.d.c)), global1.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, 1539f, -1434f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 816f, -218f, global0.d.b), vec4<f32>(991f, -667f, global3.x, global0.b.x))).x)), Struct_2(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.b)))), global0.a, global0.d.d, Struct_1(~abs(vec2<u32>(1u, global0.a.a.x)), 41442i, firstTrailingBit(global0.a.c >> (global0.a.c % vec3<u32>(32u))), !vec2<bool>(global0.d.c.d.x, global1.x))));
    var var_0 = true;
    global1 = select(func_3(Struct_3(Struct_1(~vec2<u32>(global0.d.c.a.x, 108591u), 17408i >> (u_input.a.x % 32u), ~vec3<u32>(u_input.a.x, 0u, global0.d.c.a.x), global0.d.c.d), global0.b, vec4<bool>(any(vec2<bool>(global1.x, true)), u_input.b <= 31995i, true, any(global0.c)), global0.d), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 171f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b, 745f, global0.d.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -688f, global3.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(725f, 826f, global3.x))))), vec4<f32>(_wgslsmith_f_op_f32(min(1227f, _wgslsmith_f_op_f32(757f - global0.b.x))), -1000f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * global0.b.x))), vec2<bool>(global0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(956f, 1145f) * -2252f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.x)))), true);
    let var_1 = _wgslsmith_f_op_f32(-global3.x);
    global4 = _wgslsmith_div_i32(_wgslsmith_mult_i32(firstTrailingBit(reverseBits(-6487i)), abs(-20329i)), select(-23414i, _wgslsmith_sub_i32(35644i, firstTrailingBit(-2147483647i)), !any(vec4<bool>(false, false, global1.x, global0.d.e.d.x))) << (_wgslsmith_clamp_u32(~u_input.a.x, ~global0.d.e.c.x, ~48341u) % 32u));
    return Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b, 1i, arg_0.x, -14117i)) << (vec4<u32>(1u, global0.a.c.x, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<i32>(~u_input.d, global0.a.b, -71729i, 16327i)), _wgslsmith_mult_i32(~(-2147483647i), -(~u_input.d)), u_input.b), 427f, Struct_1(~(vec2<u32>(0u, u_input.a.x) << (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(1u, 3765u)) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(arg_0.x, global0.a.b, 0i, arg_0.x)), vec4<i32>(u_input.d, u_input.b, 8352i, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.x, -7601i, 0i), vec4<i32>(global0.a.b, u_input.c, global0.a.b, 7966i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -62849i, -24789i, -1i), vec4<i32>(-1i, -2147483647i, global0.a.b, arg_0.x)))), ~(~vec3<u32>(u_input.a.x, 4294967295u, 2652u)) << (~_wgslsmith_div_vec3_u32(global0.a.c, global0.d.c.c) % vec3<u32>(32u)), func_3(Struct_3(global0.d.e, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(2010f, global3.x))), select(vec4<bool>(false, false, global0.a.d.x, global1.x), global0.c, vec4<bool>(false, true, global0.d.e.d.x, true)), Struct_2(vec3<i32>(0i, arg_0.x, 37822i), global3.x, global0.a, arg_0.yx, global0.a)), any(!global0.c), vec3<f32>(global3.x, -1488f, 501f), vec4<f32>(-908f, _wgslsmith_div_f32(703f, 574f), _wgslsmith_f_op_f32(f32(-1f) * -1368f), global0.d.b))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.d, arg_0.x)), vec2<i32>(arg_0.x, 2147483647i)), Struct_1((vec2<u32>(2614u, global0.d.c.a.x) ^ select(vec2<u32>(global0.a.c.x, global0.d.c.c.x), vec2<u32>(54282u, 22497u), global0.c.xy)) & reverseBits(vec2<u32>(0u, 1u)), func_2(_wgslsmith_mod_i32(0i << (u_input.a.x % 32u), -2147483647i), global0.d.c, vec2<bool>(false, global1.x && false), vec2<i32>(global0.a.b & u_input.b, arg_0.x | global0.a.b)), ~max(~vec3<u32>(global0.d.c.c.x, 34844u, u_input.a.x), global0.a.c & global0.d.c.c), func_3(Struct_3(global0.d.e, global0.b, global0.c, Struct_2(global0.d.a, var_1, global0.a, vec2<i32>(global0.d.c.b, 0i), Struct_1(u_input.a, 1i, vec3<u32>(global0.d.c.c.x, 1u, 1u), global0.d.c.d))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-221f, global0.d.b, 213f)))), vec4<f32>(_wgslsmith_div_f32(-306f, global3.x), -409f, _wgslsmith_f_op_f32(round(-1000f)), -1049f))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = global0.c;
    global4 = arg_2.a.x;
    var var_1 = func_4(~_wgslsmith_mod_vec3_i32(arg_2.a, -global0.d.a) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.e.c << (vec3<u32>(arg_2.e.c.x, 4294967295u, 30821u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_2.e.a.x), global0.a.c, vec3<u32>(35907u, arg_2.c.c.x, 62626u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.d.e.c.x, u_input.a.x, 8707u), arg_2.e.c)) % vec3<u32>(32u)));
    var var_2 = vec4<bool>(!var_1.e.d.x, true, var_1.e.d.x, !(((global0.a.b & global0.a.b) <= ~51723i) | (select(arg_2.e.d.x, false, var_1.e.d.x) || global1.x)));
    let var_3 = Struct_3(func_4(global0.d.a | vec3<i32>(_wgslsmith_sub_i32(u_input.c, global0.d.a.x), _wgslsmith_add_i32(1i, -4124i), ~17385i)).e, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(global0.b, global0.b)), _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(132f, var_1.b)))), global0.b)))), global0.c, global0.d);
    return global0.a.d;
}

fn func_1() -> i32 {
    global1 = func_5(global0.a.d.x, _wgslsmith_div_i32(~(-u_input.d & u_input.c), _wgslsmith_div_i32(u_input.b, abs(i32(-1i) * -46706i))), func_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, func_2(u_input.b, global0.a, global0.a.d, vec2<i32>(global0.d.c.b, global0.a.b)), global0.d.a.x), min(~vec3<i32>(-1i, -4961i, -2147483647i), global0.d.a))));
    global4 = select(u_input.c, -36722i, all(vec2<bool>(false, any(global0.c) | true)));
    global1 = func_3(Struct_3(func_4(global0.d.a).c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global0.d.b * global0.d.b), _wgslsmith_div_f32(1646f, global0.d.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, -1453f)), _wgslsmith_f_op_vec2_f32(-global0.b)))), vec4<bool>(func_4(global0.d.a).e.d.x, global1.x, global0.d.a.x < global0.d.a.x, all(vec3<bool>(global0.d.e.d.x, global0.d.c.d.x, true))), Struct_2(global0.d.a, -890f, func_4(_wgslsmith_add_vec3_i32(vec3<i32>(32760i, 10483i, -23335i), global0.d.a)).c, ~global0.d.a.zx, Struct_1(global0.a.c.zz, ~global0.a.b, ~vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec2<bool>(true, true)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(17827u, u_input.a.x), 1u), 4294967295u) == (global0.a.c.x & select(firstLeadingBit(297u), u_input.a.x, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1032f - global0.b.x) + _wgslsmith_f_op_f32(step(1203f, global0.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1634f, global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -290f), global3.x, global3.x)));
    var var_0 = !select(select(global0.c.ywz, select(select(global0.c.www, global0.c.wyz, false), global0.c.zww, vec3<bool>(global1.x, global0.c.x, global0.d.c.d.x)), _wgslsmith_div_u32(global0.a.c.x, 4294967295u) > u_input.a.x), vec3<bool>(true, global0.b.x == _wgslsmith_f_op_f32(-129f - global3.x), global1.x), select(!(!vec3<bool>(true, true, global0.a.d.x)), !(!global0.c.zzz), select(select(global0.c.zwx, vec3<bool>(global1.x, global1.x, global0.a.d.x), true), !vec3<bool>(global1.x, global0.a.d.x, global1.x), any(vec3<bool>(global1.x, global1.x, global0.c.x)))));
    var var_1 = var_0.xy;
    return -12217i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global0.d.b, global3.x, -1783f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b, 537f, 244f, -1301f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(966f, _wgslsmith_f_op_f32(exp2(global3.x)), -1820f, _wgslsmith_f_op_f32(-1124f * global3.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global0.d.b, global0.b.x, global0.b.x), vec4<f32>(global0.b.x, 1949f, global3.x, -203f), false))))));
    global2 = abs(1u);
    global4 = select(func_1(), i32(-1i) * -_wgslsmith_div_i32(51263i, u_input.c), any(global0.c)) << (~(abs(~u_input.a.x) ^ 1u) % 32u);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_4(countOneBits(vec3<i32>(global0.d.d.x, -33176i, -74362i)) >> ((global0.a.c | global0.a.c) % vec3<u32>(32u))).b), func_4(abs(~_wgslsmith_sub_vec3_i32(global0.d.a, global0.d.a))).b));
    global4 = func_2(_wgslsmith_dot_vec2_i32(global0.d.a.zz, select(-select(vec2<i32>(global0.d.a.x, global0.a.b), vec2<i32>(global0.d.e.b, global0.a.b), false), reverseBits(global0.d.a.xx), global1.x)), global0.d.e, vec2<bool>(!all(!global0.d.e.d), false), vec2<i32>(max(9164i, 0i), 1i));
    global0 = Struct_3(Struct_1(vec2<u32>(0u, 1u) | vec2<u32>(global0.a.a.x, abs(4294967295u)), ~(global0.d.a.x | _wgslsmith_dot_vec3_i32(global0.d.a, global0.d.a)), reverseBits(global0.a.c), select(vec2<bool>(true, false), vec2<bool>(global1.x, global0.c.x), any(select(global0.c.wwz, global0.c.xwy, global0.c.x)))), global0.b, vec4<bool>(true, global0.c.x, false, select(true, _wgslsmith_f_op_f32(sign(443f)) >= _wgslsmith_div_f32(var_1, 237f), global0.c.x)), global0.d);
    let var_2 = global0.d.c.a.x;
    global3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~18382u);
}

