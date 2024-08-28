struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12789u;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(2147483647i, 0i, 0i, 95258i), vec4<i32>(15812i, i32(-2147483648), -14908i, -23661i), vec4<i32>(-1i, -41858i, 2147483647i, 4899i), vec4<i32>(-26530i, 74548i, -19167i, 1i), vec4<i32>(26604i, -34768i, 2147483647i, -19275i), vec4<i32>(-8215i, 19368i, 42080i, -1i), vec4<i32>(-19147i, 5113i, -1i, -48256i), vec4<i32>(4191i, -44696i, -1i, 0i), vec4<i32>(2307i, -8671i, 0i, 1i), vec4<i32>(18661i, -1i, 2147483647i, 31939i), vec4<i32>(1i, -10174i, 2147483647i, 18376i), vec4<i32>(26303i, -1898i, 62989i, 21621i), vec4<i32>(-21726i, 1i, 20701i, 1i), vec4<i32>(-1i, -23082i, 0i, -1i), vec4<i32>(-32994i, -1i, -1i, 2147483647i), vec4<i32>(42781i, -1i, 40655i, 10826i), vec4<i32>(-20825i, -1i, 2147483647i, 2147483647i), vec4<i32>(-40452i, 24666i, 2147483647i, 1i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 13658i), vec4<i32>(2147483647i, -3115i, -25557i, 15307i), vec4<i32>(55803i, 68160i, 21106i, 56458i), vec4<i32>(0i, -16749i, 1i, 1i), vec4<i32>(-5885i, 1i, i32(-2147483648), 56125i), vec4<i32>(57806i, 0i, -1i, 33143i), vec4<i32>(-58736i, 1i, 38358i, -1i), vec4<i32>(13790i, -1i, 2147483647i, -1i), vec4<i32>(39505i, 0i, -25441i, 0i), vec4<i32>(2147483647i, 2147483647i, 14816i, 2147483647i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    global0 = arg_2.b.e.x;
    let var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-arg_2.b.a, _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(26367u, 28u)], abs(vec4<i32>(arg_2.c.d, -1i, arg_3.c.x, arg_2.b.d))), vec4<i32>(70783i, _wgslsmith_dot_vec3_i32(vec3<i32>(-10094i, arg_3.c.x, arg_2.c.d), vec3<i32>(arg_3.a.a.x, 17408i, arg_3.b.b.d)), max(arg_2.b.a.x, 0i), -1i)), vec4<i32>(59917i, arg_2.c.a.x, 2147483647i, 1i));
    var var_1 = !select(!select(select(vec4<bool>(arg_2.c.b.x, false, false, arg_3.d), vec4<bool>(arg_3.a.b.x, arg_2.c.b.x, false, false), vec4<bool>(arg_3.b.c.b.x, false, arg_1.x, false)), !vec4<bool>(arg_3.d, arg_1.x, false, false), !vec4<bool>(arg_2.b.b.x, true, arg_1.x, arg_3.b.b.b.x)), !(!(!vec4<bool>(arg_2.b.b.x, arg_1.x, false, false))), all(!vec4<bool>(arg_3.b.b.b.x, arg_2.c.b.x, true, false)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.a - arg_0.yy), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1296f, arg_0.x))))), arg_2.c, arg_2.b);
    var var_3 = !(!(~(~arg_2.b.e.x) >= arg_3.a.e.x));
    return arg_3.b.b.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(select(select(vec4<bool>(!arg_1.b.c.b.x, true, false, !arg_1.d), select(!vec4<bool>(true, arg_1.d, arg_1.b.c.b.x, true), !vec4<bool>(arg_1.b.c.b.x, arg_1.a.b.x, arg_1.b.b.b.x, arg_1.a.b.x), vec4<bool>(true, false, true, false)), vec4<bool>(true, arg_1.a.b.x, !arg_1.d, true)), vec4<bool>(arg_1.a.b.x, false, !select(true, false, false), all(vec4<bool>(arg_1.b.c.b.x, false, arg_1.a.b.x, arg_1.d))), arg_1.d), arg_1);
    let var_1 = (true | any(var_0.b.a.b)) & arg_1.d;
    global1 = array<vec4<i32>, 28>();
    var_0 = Struct_4(vec4<bool>(!var_0.b.d, true, !var_1, true), arg_1);
    var var_2 = arg_1.b.b.d;
    return select(var_0.a, !select(select(var_0.a, select(vec4<bool>(false, false, var_0.b.a.b.x, arg_1.b.b.b.x), vec4<bool>(var_1, var_0.b.a.b.x, var_0.b.d, false), var_0.a), !var_0.a), !(!vec4<bool>(arg_1.b.c.b.x, true, true, false)), var_0.a), select(!(!var_0.a.x), var_0.a.x, var_1));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1055f, -729f)))), _wgslsmith_f_op_f32(arg_2.x * -801f), _wgslsmith_f_op_f32(max(-768f, _wgslsmith_f_op_f32(trunc(arg_2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1165f, 859f, arg_1.b.b.b.x || arg_1.d))), -631f, 2047f));
    var var_1 = _wgslsmith_f_op_f32(min(1711f, _wgslsmith_f_op_f32(-var_0.x)));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(-1194f, 249f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = arg_1.b.c;
    return _wgslsmith_f_op_f32(round(arg_2.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_2.c.x;
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(-583f, Struct_3(Struct_1(arg_1.c.a, !arg_2.a.b, vec4<f32>(-344f, arg_2.a.c.x, 474f, arg_0.a.c.x), arg_1.c.d | arg_1.c.d, vec4<u32>(0u, arg_2.a.e.x, arg_0.a.e.x, arg_2.b.c.e.x)), Struct_2(vec2<f32>(-1023f, 564f), arg_3, Struct_1(vec4<i32>(1i, arg_0.a.d, arg_1.c.d, 1i), vec2<bool>(true, false), arg_2.a.c, arg_0.a.a.x, arg_2.a.e)), vec4<i32>(_wgslsmith_div_i32(arg_1.b.d, -2147483647i), abs(-922i), arg_3.a.x, func_3(vec3<f32>(arg_3.c.x, 450f, 901f), arg_3.b, arg_0.b, arg_2)), select(true, any(vec2<bool>(true, arg_3.b.x)), !arg_3.b.x))), Struct_3(arg_3, Struct_2(arg_0.a.c.xw, Struct_1(arg_0.c, func_4(arg_3.c.x, Struct_3(arg_2.b.b, arg_2.b, vec4<i32>(arg_1.c.a.x, 0i, -57822i, -39382i), arg_1.c.b.x)).yw, _wgslsmith_f_op_vec4_f32(step(arg_3.c, vec4<f32>(165f, arg_3.c.x, -1219f, 1126f))), arg_3.d >> (arg_1.b.e.x % 32u), arg_2.a.e << (vec4<u32>(arg_1.b.e.x, arg_1.c.e.x, 0u, u_input.a.x) % vec4<u32>(32u))), arg_3), vec4<i32>(-arg_0.b.b.d | -arg_2.c.x, -1i, -(~arg_3.d), arg_0.c.x), _wgslsmith_clamp_i32(arg_2.c.x, i32(-1i) * -44055i, select(arg_3.a.x, arg_1.c.d, false)) == countOneBits(max(arg_1.b.d, arg_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.b.a - arg_2.a.c.xz)))))));
    var_0 = 1i;
    var var_2 = Struct_4(!(!vec4<bool>(any(vec4<bool>(false, arg_2.a.b.x, arg_2.a.b.x, true)), true, false, true)), Struct_3(Struct_1(min(arg_0.a.a, min(vec4<i32>(-1i, arg_3.d, -1i, -1i), arg_0.b.b.a)), vec2<bool>(select(arg_1.b.b.x, arg_3.b.x, true), true), arg_3.c, i32(-1i) * -arg_1.b.a.x, vec4<u32>(arg_3.e.x >> (arg_1.b.e.x % 32u), arg_2.b.c.e.x, ~arg_3.e.x, 0u | arg_2.a.e.x)), arg_1, countOneBits(arg_1.b.a), false));
    let var_3 = 4294967295u;
    return firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(var_3, 12065u)) & (var_2.b.b.c.e.x & select(arg_2.b.c.e.x, var_3, false)), 0u));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<u32>) -> vec4<f32> {
    global0 = 1u;
    let var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(arg_1.x, 28u)], vec2<bool>(all(vec3<bool>(true, true, false)), true), vec4<f32>(1f, 1f, 1f, 1f), max(-16877i, 61209i), vec4<u32>(arg_0.x, ~arg_0.x << (u_input.a.x % 32u), 17773u, u_input.a.x & 5595u)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1839f, 237f) - vec2<f32>(-868f, 195f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-400f, 469f), vec2<f32>(458f, 2368f))))), Struct_1(-global1[_wgslsmith_index_u32(1u, 28u)] ^ ~vec4<i32>(-2147483647i, -24216i, 62805i, -2147483647i), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(137f + 1475f), _wgslsmith_f_op_f32(trunc(-240f)), 1f, _wgslsmith_f_op_f32(abs(249f))), _wgslsmith_sub_i32(firstTrailingBit(2147483647i), countOneBits(2147483647i)), vec4<u32>(4085u & u_input.a.x, abs(4294967295u), ~arg_1.x, arg_1.x)), Struct_1(select(~global1[_wgslsmith_index_u32(arg_1.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(true, true, false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec4<f32>(_wgslsmith_f_op_f32(602f - -141f), _wgslsmith_f_op_f32(472f + 1000f), _wgslsmith_f_op_f32(-283f * -1882f), -1999f), 37752i, vec4<u32>(arg_1.x, arg_0.x, 0u, 0u) << (select(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(26896u, 23957u, arg_1.x, arg_1.x), true) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, 1i, -38254i, 0i), global1[_wgslsmith_index_u32(arg_0.x, 28u)]) >> (~vec4<u32>(u_input.a.x & 130098u, u_input.b.x | u_input.b.x, 1u, _wgslsmith_div_u32(arg_1.x, arg_0.x)) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1244f + 587f) + -642f), 1f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-386f, 671f))));
    global1 = array<vec4<i32>, 28>();
    var var_1 = _wgslsmith_mod_u32(1u, countOneBits(arg_0.x));
    global1 = array<vec4<i32>, 28>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1870f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -877f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.c.x, -217f))), -1000f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.c.x, var_0.a.c.x, 1222f, var_0.b.c.c.x))))) + var_0.a.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - 337f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-234f, 1055f)), -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -566f)), 165f);
    global1 = array<vec4<i32>, 28>();
    var var_1 = 98673u;
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(select(0u >> (~(u_input.a.x & 17314u) % 32u), _wgslsmith_mult_u32(select(1u, _wgslsmith_div_u32(u_input.a.x, u_input.b.x), var_0.x <= var_0.x), select(u_input.a.x, max(0u, 1u), true)), false), 28u)], vec2<bool>(true, arg_0.x), _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 41229u), u_input.a.xz), ~firstTrailingBit(func_2(Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_0, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), -14i, vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u)), Struct_2(vec2<f32>(-1000f, 867f), Struct_1(arg_1, arg_0, vec4<f32>(var_0.x, var_0.x, var_0.x, 550f), arg_1.x, vec4<u32>(u_input.a.x, 51376u, u_input.a.x, 41067u)), Struct_1(global1[_wgslsmith_index_u32(0u, 28u)], vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(789f, -1000f, var_0.x, var_0.x), arg_1.x, vec4<u32>(4294967295u, u_input.b.x, 41988u, u_input.a.x))), vec4<i32>(arg_1.x, arg_1.x, -2147483647i, 0i), arg_0.x), Struct_2(vec2<f32>(var_0.x, var_0.x), Struct_1(global1[_wgslsmith_index_u32(1u, 28u)], vec2<bool>(true, true), vec4<f32>(var_0.x, -746f, var_0.x, -1000f), -60105i, vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b.x)), Struct_1(arg_1, vec2<bool>(true, arg_0.x), vec4<f32>(var_0.x, var_0.x, -165f, 500f), arg_1.x, vec4<u32>(4294967295u, 20848u, u_input.b.x, u_input.b.x))), Struct_3(Struct_1(vec4<i32>(16282i, 14260i, 1i, arg_1.x), arg_0, vec4<f32>(1585f, -713f, -1235f, var_0.x), arg_1.x, vec4<u32>(67031u, 1u, u_input.b.x, u_input.b.x)), Struct_2(vec2<f32>(var_0.x, var_0.x), Struct_1(vec4<i32>(arg_1.x, -54125i, arg_1.x, 13596i), arg_0, vec4<f32>(var_0.x, var_0.x, -428f, -359f), arg_1.x, vec4<u32>(u_input.a.x, u_input.b.x, 46731u, 1u)), Struct_1(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x), vec2<bool>(true, arg_0.x), vec4<f32>(var_0.x, var_0.x, 512f, var_0.x), -2147483647i, vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 63322u))), vec4<i32>(arg_1.x, -2147483647i, arg_1.x, -2147483647i), true), Struct_1(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -1i), arg_0, vec4<f32>(var_0.x, 1061f, 792f, -1459f), -2147483647i, vec4<u32>(61540u, u_input.b.x, 1u, u_input.a.x)))))), ~arg_1.x, vec4<u32>(~8795u, u_input.b.x, ~firstLeadingBit(u_input.a.x) ^ (u_input.b.x | 23453u), u_input.a.x));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(abs(arg_1), vec4<i32>(_wgslsmith_div_i32(1i, arg_1.x), _wgslsmith_mod_i32(var_2.d >> (var_2.e.x % 32u), i32(-1i) * -59488i), 1i, _wgslsmith_sub_i32(min(-12724i, -1i), i32(-1i) * -1i)), -countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) ^ abs(arg_1)), !var_2.b, vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(var_0.x, Struct_3(Struct_1(vec4<i32>(var_2.d, -5814i, -10654i, arg_1.x), arg_0, var_2.c, -25572i, var_2.e), Struct_2(var_2.c.wy, Struct_1(global1[_wgslsmith_index_u32(var_2.e.x, 28u)], var_2.b, vec4<f32>(-1000f, var_2.c.x, 1018f, 1909f), arg_1.x, vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 1u)), Struct_1(var_2.a, arg_0, vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), 1i, var_2.e)), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], false)), Struct_3(Struct_1(arg_1, var_2.b, vec4<f32>(263f, var_0.x, 1746f, var_0.x), var_2.a.x, vec4<u32>(u_input.a.x, var_2.e.x, 0u, 66757u)), Struct_2(var_0.xy, Struct_1(global1[_wgslsmith_index_u32(19565u, 28u)], vec2<bool>(var_2.b.x, var_2.b.x), var_2.c, 40922i, vec4<u32>(0u, 137u, var_2.e.x, u_input.b.x)), Struct_1(vec4<i32>(var_2.a.x, 0i, -1i, 10091i), arg_0, vec4<f32>(620f, var_0.x, -1510f, -1906f), var_2.d, var_2.e)), vec4<i32>(arg_1.x, -1i, -1i, var_2.d) | global1[_wgslsmith_index_u32(var_2.e.x, 28u)], !var_2.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))))))), _wgslsmith_div_f32(var_0.x, var_2.c.x), -1617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f + 230f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.c.x, var_0.x)))))), ~_wgslsmith_sub_i32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1000f)), !var_2.b, Struct_2(vec2<f32>(var_0.x, var_2.c.x), Struct_1(vec4<i32>(arg_1.x, 0i, 2147483647i, arg_1.x), vec2<bool>(false, true), var_2.c, 23611i, vec4<u32>(4294967295u, 6925u, var_2.e.x, u_input.b.x)), Struct_1(vec4<i32>(var_2.a.x, -2147483647i, 465i, var_2.a.x), arg_0, var_2.c, -2147483647i, var_2.e)), Struct_3(Struct_1(vec4<i32>(var_2.a.x, var_2.d, arg_1.x, 2147483647i), vec2<bool>(false, var_2.b.x), var_2.c, arg_1.x, var_2.e), Struct_2(var_2.c.zx, Struct_1(var_2.a, vec2<bool>(arg_0.x, false), vec4<f32>(var_2.c.x, 587f, var_0.x, var_2.c.x), var_2.d, var_2.e), Struct_1(vec4<i32>(2147483647i, arg_1.x, 2147483647i, var_2.d), var_2.b, vec4<f32>(var_2.c.x, -1068f, var_0.x, -1000f), var_2.d, var_2.e)), global1[_wgslsmith_index_u32(var_2.e.x, 28u)], arg_0.x)), -(var_2.a.x >> (40926u % 32u))), vec4<u32>(min(29249u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_2.e.x) | u_input.a, var_2.e.yxx)), _wgslsmith_clamp_u32(50113u, 56813u, var_2.e.x), 4294967295u, ~var_2.e.x ^ 41793u));
    return countOneBits(select(min(var_3.e.wx, _wgslsmith_add_vec2_u32(vec2<u32>(62205u, 40552u), vec2<u32>(var_3.e.x, var_3.e.x)) << (_wgslsmith_sub_vec2_u32(u_input.a.yy, var_3.e.zx) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~var_2.e.zz ^ countOneBits(vec2<u32>(var_2.e.x, 85440u)), countOneBits(select(var_2.e.wz, var_2.e.xy, vec2<bool>(var_3.b.x, var_3.b.x))), ~(~vec2<u32>(4294967295u, u_input.a.x))), var_2.b.x || false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -635f;
    global0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-196f)) - -410f) - -968f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + -415f))) - var_1))));
    var var_2 = func_1(vec2<bool>(_wgslsmith_f_op_f32(-1415f + _wgslsmith_f_op_f32(exp2(var_1))) > 662f, all(vec4<bool>(true, true, true, true))), vec4<i32>(33480i, 1i, 0i, select(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-7577i, 15550i, 1i)), ~vec3<i32>(-16032i, -12993i, -1i)), -2147483647i, !select(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(vec4<bool>(true, false, true, false), func_4(-159f, Struct_3(Struct_1(global1[_wgslsmith_index_u32(27643u, 28u)], vec2<bool>(true, true), vec4<f32>(var_1, -1309f, var_1, -194f), -1i, vec4<u32>(var_2.x, 22229u, u_input.b.x, u_input.a.x)), Struct_2(vec2<f32>(var_1, var_1), Struct_1(global1[_wgslsmith_index_u32(22119u, 28u)], vec2<bool>(false, false), vec4<f32>(var_1, var_1, var_1, -349f), -45911i, vec4<u32>(1u, u_input.a.x, 1u, 40977u)), Struct_1(vec4<i32>(2147483647i, -50246i, 8937i, -13503i), vec2<bool>(true, true), vec4<f32>(var_1, var_1, -275f, var_1), 1312i, vec4<u32>(2000u, 25995u, 73433u, 0u))), vec4<i32>(1i, 1i, 0i, 5339i), true)), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<i32>(2147483647i, -2147483647i, 2147483647i, -41384i), vec2<bool>(true, true), vec4<f32>(-317f, var_1, var_1, -1155f), -2147483647i, vec4<u32>(10472u, var_2.x, 1u, 7870u)), Struct_2(vec2<f32>(-1142f, -1963f), Struct_1(vec4<i32>(16547i, 35034i, 0i, -35700i), vec2<bool>(false, false), vec4<f32>(1434f, var_1, var_1, var_1), 32794i, vec4<u32>(var_2.x, 33045u, 4294967295u, 0u)), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, -1i), vec2<bool>(true, false), vec4<f32>(-271f, var_1, 158f, var_1), 7930i, vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 67528u))), ~vec4<i32>(-1i, -33941i, 2147483647i, 2147483647i), false), vec2<f32>(_wgslsmith_f_op_f32(select(var_1, var_1, false)), -947f))) * 1292f), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_sub_vec4_i32(abs(global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-46365i, 0i, 1i, -3596i), global1[_wgslsmith_index_u32(36883u, 28u)]), -vec4<i32>(1i, -14101i, -1i, 5489i)), abs(vec4<i32>(2147483647i, -6159i, 39407i, 2147483647i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))), -_wgslsmith_div_i32(firstTrailingBit(-38983i), -48422i >> (var_2.x % 32u)) & _wgslsmith_mod_i32(2147483647i, ~(~(-2147483647i))));
}

