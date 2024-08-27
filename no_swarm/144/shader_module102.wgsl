struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<u32>(1u, 4294967295u, 7013u, 81633u), Struct_2(Struct_1(vec4<u32>(4294967295u, 19370u, 67442u, 0u), vec4<i32>(-31211i, 16598i, 0i, -1436i)), vec3<f32>(616f, 224f, -1000f), 58535u, -1156f, vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), vec3<i32>(2147483647i, -2923i, -1i)), Struct_3(vec4<u32>(1u, 4294967295u, 25336u, 1505u), Struct_2(Struct_1(vec4<u32>(47010u, 38097u, 28704u, 25985u), vec4<i32>(-1966i, i32(-2147483648), 12854i, i32(-2147483648))), vec3<f32>(975f, 1299f, -191f), 4294967295u, 120f, vec4<u32>(30532u, 6992u, 30049u, 0u)), vec3<i32>(i32(-2147483648), 23806i, 2147483647i)), Struct_3(vec4<u32>(47469u, 53800u, 61161u, 4294967295u), Struct_2(Struct_1(vec4<u32>(2607u, 1u, 45072u, 0u), vec4<i32>(-38156i, -1i, -42330i, i32(-2147483648))), vec3<f32>(-365f, -330f, -880f), 22300u, -1278f, vec4<u32>(1u, 90469u, 0u, 8994u)), vec3<i32>(23025i, 1i, i32(-2147483648))), Struct_3(vec4<u32>(4294967295u, 4294967295u, 7575u, 1u), Struct_2(Struct_1(vec4<u32>(18515u, 25093u, 9674u, 0u), vec4<i32>(22859i, -37523i, 0i, -34916i)), vec3<f32>(-721f, 1193f, -542f), 29022u, 2579f, vec4<u32>(4261u, 4079u, 4294967295u, 4294967295u)), vec3<i32>(-14201i, 4326i, -1i)), Struct_3(vec4<u32>(34610u, 0u, 16773u, 0u), Struct_2(Struct_1(vec4<u32>(1u, 0u, 50012u, 1u), vec4<i32>(-1i, 27387i, i32(-2147483648), i32(-2147483648))), vec3<f32>(-465f, -614f, -1671f), 4294967295u, -628f, vec4<u32>(36412u, 4294967295u, 70463u, 1u)), vec3<i32>(16204i, 0i, i32(-2147483648))), Struct_3(vec4<u32>(4294967295u, 6441u, 1u, 4294967295u), Struct_2(Struct_1(vec4<u32>(35763u, 0u, 0u, 11783u), vec4<i32>(27275i, 9259i, i32(-2147483648), 26318i)), vec3<f32>(-1690f, -1087f, -498f), 345u, -769f, vec4<u32>(9555u, 4294967295u, 20259u, 64483u)), vec3<i32>(39117i, 2147483647i, 0i)), Struct_3(vec4<u32>(55311u, 4294967295u, 52669u, 1u), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 1u), vec4<i32>(i32(-2147483648), -41733i, 7731i, 1i)), vec3<f32>(773f, 1343f, 1352f), 34762u, -2019f, vec4<u32>(4294967295u, 64854u, 14997u, 29914u)), vec3<i32>(i32(-2147483648), -9771i, 23805i)), Struct_3(vec4<u32>(41574u, 4294967295u, 0u, 0u), Struct_2(Struct_1(vec4<u32>(1u, 15827u, 4294967295u, 4294967295u), vec4<i32>(1i, -1i, 2147483647i, -39211i)), vec3<f32>(-287f, -515f, -1000f), 16149u, 1336f, vec4<u32>(14933u, 14508u, 1u, 4294967295u)), vec3<i32>(-37850i, 1338i, -27528i)), Struct_3(vec4<u32>(87362u, 41937u, 1u, 1u), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<i32>(-35251i, -25700i, 1i, 0i)), vec3<f32>(-333f, 1000f, -1000f), 4294967295u, -242f, vec4<u32>(37092u, 32586u, 74484u, 19093u)), vec3<i32>(-9505i, -20283i, 1i)), Struct_3(vec4<u32>(27453u, 1u, 28249u, 60694u), Struct_2(Struct_1(vec4<u32>(6332u, 50448u, 1u, 4294967295u), vec4<i32>(2147483647i, -40657i, -24092i, 2147483647i)), vec3<f32>(469f, -918f, 622f), 41145u, -764f, vec4<u32>(4294967295u, 0u, 52749u, 73514u)), vec3<i32>(0i, 2147483647i, -2772i)), Struct_3(vec4<u32>(0u, 4294967295u, 52782u, 75765u), Struct_2(Struct_1(vec4<u32>(149091u, 3764u, 59418u, 0u), vec4<i32>(16017i, -1i, 1i, i32(-2147483648))), vec3<f32>(-752f, -1304f, -247f), 0u, 132f, vec4<u32>(83336u, 60869u, 0u, 35608u)), vec3<i32>(49626i, i32(-2147483648), -62979i)), Struct_3(vec4<u32>(1u, 60125u, 4294967295u, 28775u), Struct_2(Struct_1(vec4<u32>(4294967295u, 59084u, 27069u, 8083u), vec4<i32>(0i, 20662i, i32(-2147483648), 20700i)), vec3<f32>(1935f, -593f, -269f), 1u, 244f, vec4<u32>(18546u, 10322u, 0u, 56505u)), vec3<i32>(0i, 31083i, i32(-2147483648))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~1u, u_input.b, 146u), u_input.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = vec4<f32>(arg_0.b.d, -452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_div_f32(-654f, arg_0.b.d)), _wgslsmith_f_op_f32(267f - _wgslsmith_f_op_f32(-788f + arg_0.b.d)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) - _wgslsmith_f_op_f32(arg_0.b.b.x + -229f)), _wgslsmith_div_f32(1614f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !any(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1010f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.b.b.x)), _wgslsmith_f_op_f32(step(arg_0.b.d, arg_0.b.d)))))));
    let var_1 = arg_3.x | _wgslsmith_dot_vec2_i32(~select(vec2<i32>(45997i, -17287i), vec2<i32>(2147483647i, 0i), any(vec4<bool>(true, false, false, true))), arg_3.xx);
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(~0u), u_input.b, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.c.x, 0u, arg_0.b.e.x), u_input.c)), max(1u, min(63901u, arg_1.x))), select(~vec4<u32>(35842u, 0u, arg_0.a.x, 8011u), vec4<u32>(6123u, arg_1.x, arg_0.a.x, arg_1.x), select(false, false, true)) >> (((arg_0.b.e << (vec4<u32>(u_input.b, arg_1.x, arg_0.a.x, u_input.b) % vec4<u32>(32u))) >> ((arg_0.b.a.a >> (vec4<u32>(4294967295u, 4294967295u, 1u, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(reverseBits(arg_0.b.e)));
    let var_3 = Struct_4(select(_wgslsmith_sub_i32(-2147483647i, arg_2.x), -(~arg_3.x) ^ -2147483647i, true), var_0.x);
    var var_4 = Struct_1(vec4<u32>(~(arg_0.a.x >> (arg_1.x % 32u)), 0u, _wgslsmith_mult_u32(1u >> (_wgslsmith_mult_u32(arg_0.b.a.a.x, arg_1.x) % 32u), arg_0.b.a.a.x), abs(~u_input.c.x) | 0u), u_input.a);
    return -4583i;
}

fn func_2() -> i32 {
    var var_0 = Struct_4(func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~40939u, 1u << (u_input.b % 32u)) << (_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) % 32u), 12u)], vec2<u32>(~func_3(vec3<u32>(u_input.c.x, 1u, 51632u)), u_input.c.x), -vec3<i32>(0i, ~u_input.a.x, u_input.d << (u_input.b % 32u)), _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a.zyw, vec3<i32>(-27977i, 2147483647i, u_input.d)), ~vec3<i32>(u_input.d, u_input.d, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(512f, 1126f)))))));
    var_0 = Struct_4(u_input.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)))));
    let var_1 = Struct_4(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(var_0.b, -1132f))))));
    var_0 = var_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) * var_0.b), var_0.b, var_1.b, 896f);
    return func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yww, ~_wgslsmith_sub_vec3_u32(u_input.c.yyy, u_input.c.wzx)) | 27180u, 12u)], ~(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), u_input.b >> (u_input.b % 32u)) ^ vec2<u32>(~45807u, 4294967295u)), vec3<i32>(-7496i, 2147483647i, abs(10519i)), vec3<i32>(~abs(var_0.a), var_1.a, 1i) | -(vec3<i32>(u_input.a.x, -1i, var_1.a) & vec3<i32>(0i, 2147483647i, -18979i)));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_0 = 1i;
    let var_1 = vec3<bool>(true, arg_2.b.b.x >= _wgslsmith_f_op_f32(exp2(arg_2.b.b.x)), 25801u == _wgslsmith_dot_vec3_u32(abs(arg_1), _wgslsmith_clamp_vec3_u32(u_input.c.wzy, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 34165u, u_input.c.x), vec3<u32>(43460u, 57451u, arg_1.x)), ~arg_1)));
    global0 = array<Struct_3, 12>();
    return Struct_1(u_input.c | arg_2.a, ~(-countOneBits(u_input.a)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(arg_2.b.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b.d, _wgslsmith_div_f32(-254f, arg_2.b.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-652f)) + _wgslsmith_f_op_f32(round(-1903f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(585f, arg_2.b.b.x, false))) - arg_2.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(376f)) - _wgslsmith_f_op_f32(abs(arg_2.b.d))))));
    global0 = array<Struct_3, 12>();
    let var_1 = arg_2.b;
    let var_2 = func_5(i32(-1i) * -40548i, ~(~(arg_2.a.wzz >> (_wgslsmith_clamp_vec3_u32(arg_2.b.e.ywz, vec3<u32>(2495u, u_input.b, 6221u), var_1.e.zzw) % vec3<u32>(32u)))), Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, ~arg_0.a.x, 6124u, u_input.b), select(_wgslsmith_add_vec4_u32(u_input.c, var_1.e), vec4<u32>(1u, arg_0.a.x, 75255u, 1291u), false)), Struct_2(Struct_1(~vec4<u32>(arg_2.a.x, 951u, 27909u, arg_2.b.e.x), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1887f, var_0.x, -550f), var_0)), ~(~11589u), var_1.b.x, arg_0.a), countOneBits(select(vec3<i32>(arg_0.b.x, -2147483647i, 1i), _wgslsmith_add_vec3_i32(arg_0.b.xzw, var_1.a.b.zxw), true))));
    var var_3 = _wgslsmith_sub_vec3_u32(reverseBits(arg_0.a.wyx), arg_2.a.zzw);
    return Struct_1(vec4<u32>(_wgslsmith_mult_u32(min(1u, var_1.c), 0u), ~u_input.b, 1u, _wgslsmith_dot_vec4_u32(arg_0.a, _wgslsmith_clamp_vec4_u32(var_2.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, var_3.x, arg_2.b.a.a.x, 0u), vec4<u32>(81182u, arg_0.a.x, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 83878u, 4294967295u, 0u), vec4<u32>(16417u, 1u, arg_0.a.x, arg_2.b.c), vec4<u32>(arg_0.a.x, 4294967295u, 6988u, 0u))))), ~(~vec4<i32>(-2147483647i, arg_2.c.x, _wgslsmith_mult_i32(var_1.a.b.x, 92i), min(u_input.a.x, arg_0.b.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-156f, -897f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f))))));
    global0 = array<Struct_3, 12>();
    let var_1 = Struct_2(func_6(func_5(~func_2(), ~(u_input.c.xww & u_input.c.xxz), global0[_wgslsmith_index_u32(u_input.b, 12u)]), reverseBits(func_5(101889i, func_5(u_input.d, vec3<u32>(4294967295u, u_input.c.x, u_input.b), global0[_wgslsmith_index_u32(u_input.c.x, 12u)]).a.xyx, Struct_3(vec4<u32>(u_input.c.x, 3146u, u_input.b, 78256u), Struct_2(Struct_1(u_input.c, vec4<i32>(-2147483647i, 2147483647i, u_input.d, u_input.d)), vec3<f32>(1500f, -1041f, 2260f), 4294967295u, -591f, vec4<u32>(926u, 0u, u_input.c.x, 0u)), vec3<i32>(u_input.d, 1843i, -26173i))).b.x), global0[_wgslsmith_index_u32(29208u, 12u)]), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-756f, 183f, 787f), vec3<f32>(856f, 1439f, -117f), all(vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, 357f, 378f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1452f, -1397f, -734f)))))))), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(274f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f - -328f) * _wgslsmith_div_f32(-1207f, -658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + -1661f))), vec4<u32>(~(~1030u), u_input.b ^ countOneBits(firstTrailingBit(4531u)), u_input.c.x, 30044u));
    global0 = array<Struct_3, 12>();
    var var_2 = reverseBits(vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(-48749i), 25857i), 0i) ^ vec2<i32>(var_1.a.b.x, u_input.d));
    return Struct_1(vec4<u32>(u_input.b >> (u_input.b % 32u), select(0u, reverseBits(~u_input.b), true), abs(~1u), ~(var_1.a.a.x >> (firstTrailingBit(u_input.b) % 32u))), ~vec4<i32>(2147483647i, 0i, select(-52823i, u_input.a.x, false), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global0 = array<Struct_3, 12>();
    var var_1 = ~u_input.b;
    let var_2 = u_input.d;
    let var_3 = func_1();
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_4 = Struct_3(~(~max(vec4<u32>(u_input.b, var_3.a.x, u_input.c.x, u_input.c.x), var_3.a)) & vec4<u32>(0u, max(func_1().a.x, u_input.c.x << (u_input.c.x % 32u)), u_input.b, var_3.a.x), Struct_2(Struct_1(vec4<u32>(max(var_3.a.x, var_3.a.x), var_3.a.x, 20777u, _wgslsmith_add_u32(9957u, 1u)), ~vec4<i32>(var_0, 4066i, 1i, var_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(373f, 726f, 309f), vec3<f32>(-1000f, 768f, 392f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, 1329f, -489f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2833f, 1811f, -1000f))))), 35101u >> ((49305u >> ((var_3.a.x >> (u_input.c.x % 32u)) % 32u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f - 785f)))), u_input.c), func_5(var_2, vec3<u32>(53874u, _wgslsmith_add_u32(0u, 4294967295u), 1u), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 9531u), vec2<u32>(100620u, u_input.b)), _wgslsmith_mod_vec2_u32(var_3.a.ww, var_3.a.ww)), 12u)]).b.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), 1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, var_4.b.d, var_4.b.d)), vec3<f32>(_wgslsmith_f_op_f32(select(588f, -813f, true)), _wgslsmith_f_op_f32(step(var_4.b.b.x, var_4.b.d)), var_4.b.d))))));
}

