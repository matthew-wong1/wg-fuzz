struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_4,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_add_vec4_i32(~arg_0.c, ~vec4<i32>(-2927i | -arg_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), arg_0.c.yx), firstTrailingBit(0i)), _wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(1i, -24448i, -4769i, arg_1)), 4163i));
    global0 = true;
    var var_1 = false;
    var var_2 = countOneBits(-2147483647i);
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1756f, _wgslsmith_f_op_f32(f32(-1f) * -793f))), -382f, -1000f));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec3<i32> {
    var var_0 = Struct_1(any(select(select(select(vec3<bool>(arg_1, false, false), vec3<bool>(true, false, arg_1), arg_1), vec3<bool>(arg_1, false, true), true), select(!vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, false), true), vec3<bool>(true, arg_1, any(vec4<bool>(false, arg_1, false, arg_1))))), select(vec4<i32>((arg_0.x & -37807i) ^ -23686i, arg_0.x, _wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(u_input.a.x, -1548i, 31171i), vec3<bool>(false, arg_1, arg_1)), reverseBits(arg_0.yxx)), arg_0.x), vec4<i32>(~(-2147483647i), -2171i, -2147483647i, -1i), arg_1), arg_0);
    var var_1 = vec2<u32>(~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1u, 29307u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(58804u, 39487u), vec2<u32>(30369u, 9352u)))), 31207u);
    var_0 = Struct_1(arg_1, firstLeadingBit(_wgslsmith_add_vec4_i32(arg_0, var_0.b)), vec4<i32>(abs(abs(-38034i)), _wgslsmith_clamp_i32(1i, 56519i, _wgslsmith_clamp_i32(-var_0.b.x, arg_0.x, ~arg_0.x)), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, u_input.b.x, u_input.b.x, arg_0.x), arg_0)), -arg_0), 28750i));
    var var_2 = Struct_2(-547f, var_0.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(var_2.a + -1000f)), vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-var_2.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 816f))))));
    return var_0.c.zwy;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> Struct_5 {
    var var_0 = Struct_4(((-arg_1.b.x ^ ~0i) << ((arg_1.e & (arg_1.e >> (1u % 32u))) % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_0.e, ~34019u), ~max(1u, arg_0.e)) % 32u));
    let var_1 = arg_0.a.x;
    var var_2 = arg_0.d;
    let var_3 = Struct_3(arg_1.d);
    var_2 = arg_0.d;
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1054f, -1000f))))), _wgslsmith_sub_vec3_i32(arg_0.d.c.yxy, func_3(_wgslsmith_mult_vec4_i32(arg_1.d.c, ~vec4<i32>(17418i, arg_0.c.a, arg_0.d.b.x, -33291i)), false)), arg_1.c, Struct_1(!(!(var_1 >= 293f)), vec4<i32>(-arg_1.d.b.x, -_wgslsmith_dot_vec2_i32(arg_0.d.c.zy, vec2<i32>(arg_1.c.a, 2147483647i)), func_3(vec4<i32>(2147483647i, -62366i, arg_1.d.b.x, 0i) & var_3.a.b, var_1 < arg_0.a.x).x, _wgslsmith_mult_i32(1i, abs(u_input.b.x))), _wgslsmith_mod_vec4_i32(min(min(vec4<i32>(-28455i, -15181i, -12920i, -32764i), arg_1.d.b), _wgslsmith_add_vec4_i32(var_2.c, vec4<i32>(arg_0.b.x, 10589i, 1i, var_0.a))), vec4<i32>(_wgslsmith_clamp_i32(0i, 31201i, -1i), -4444i, ~25024i, firstLeadingBit(-1i)))), select(arg_1.e, arg_0.e, select(false && arg_1.d.a, all(vec2<bool>(var_3.a.a, var_3.a.a)) | arg_0.d.a, var_3.a.a)));
}

fn func_5(arg_0: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.b >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 28003u, 0u), countOneBits(vec3<u32>(119888u, arg_0.e, arg_0.e))) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(2590u, 5745u, arg_0.e), vec3<u32>(90186u, arg_0.e, 20834u), vec3<u32>(arg_0.e, 13621u, 39491u)) & _wgslsmith_add_vec3_u32(vec3<u32>(7622u, arg_0.e, 26581u), vec3<u32>(1u, 16008u, 0u))) % vec3<u32>(32u))) % vec3<u32>(32u)), (vec3<i32>(arg_0.b.x, ~15429i, arg_0.b.x & arg_0.c.a) >> (vec3<u32>(56739u, arg_0.e & arg_0.e, ~84652u) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(reverseBits(min(vec3<u32>(0u, 13064u, 48295u), vec3<u32>(4294967295u, arg_0.e, 0u))), ~vec3<u32>(0u, 73721u, arg_0.e) & vec3<u32>(arg_0.e, 0u, arg_0.e)) % vec3<u32>(32u)));
    var var_1 = abs(max(arg_0.c.a, arg_0.c.a));
    global0 = true;
    var var_2 = arg_0.d.a;
    var_1 = -55773i;
    return func_4(func_4(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a), u_input.c | vec3<i32>(1i, arg_0.d.c.x, var_0), func_4(arg_0, arg_0).c, arg_0.d, abs(6112u)), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1524f, arg_0.a.x, -522f) + vec3<f32>(arg_0.a.x, 1496f, arg_0.a.x)), vec3<i32>(u_input.a.x, 2848i, var_0), Struct_4(u_input.b.x), arg_0.d, ~0u)), func_4(arg_0, func_4(func_4(Struct_5(arg_0.a, vec3<i32>(1i, var_0, 49244i), Struct_4(var_0), arg_0.d, arg_0.e), arg_0), func_4(Struct_5(vec3<f32>(312f, -650f, arg_0.a.x), u_input.a, Struct_4(-37205i), Struct_1(false, vec4<i32>(var_0, 1i, -2147483647i, 2147483647i), vec4<i32>(var_0, arg_0.b.x, -52658i, 35571i)), arg_0.e), arg_0)))), Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-796f, arg_0.a.x, arg_0.a.x) * arg_0.a))), ~vec3<i32>(var_0, -var_0, _wgslsmith_dot_vec2_i32(arg_0.b.zy, vec2<i32>(-2147483647i, arg_0.b.x))), Struct_4(arg_0.d.b.x), arg_0.d, arg_0.e));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = func_5(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(true, vec4<i32>(6409i, -23099i, u_input.c.x, 0i), vec4<i32>(-1i, arg_0, -1i, 2147483647i)), u_input.b.x, Struct_4(-23168i), false)))), u_input.c, Struct_4(-6679i), Struct_1(true, vec4<i32>(arg_0, 2147483647i, 59181i, 29783i), vec4<i32>(0i, u_input.c.x, u_input.c.x, arg_0)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(39665u, 44773u, 1u, 34377u))), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) * _wgslsmith_div_vec3_f32(arg_1.yyx, vec3<f32>(arg_1.x, arg_1.x, -920f))), _wgslsmith_mult_vec3_i32(u_input.a, func_3(vec4<i32>(u_input.b.x, u_input.c.x, -35202i, -33618i), true)), Struct_4(-67554i), Struct_1(true, -vec4<i32>(64665i, 1i, -34033i, u_input.c.x), -vec4<i32>(-1039i, u_input.c.x, -8659i, u_input.a.x)), max(~10355u, ~arg_2.x))));
    var_0 = func_4(Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.xwz))), select(-select(var_0.d.b.xwz, vec3<i32>(0i, 13684i, 29593i), false), _wgslsmith_mult_vec3_i32(u_input.b, u_input.c) >> ((vec3<u32>(118084u, 1u, arg_2.x) | vec3<u32>(1809u, 1u, arg_2.x)) % vec3<u32>(32u)), any(vec2<bool>(false, var_0.d.a))), Struct_4(-2147483647i), var_0.d, 1u), func_5(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(474f, var_0.a.x, 1000f))), ~vec3<i32>(-2147483647i, var_0.d.c.x, var_0.d.c.x), var_0.c, Struct_1(var_0.d.a, vec4<i32>(-2147483647i, u_input.a.x, -394i, u_input.a.x), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, -52843i)), 4294967295u), func_5(func_4(Struct_5(vec3<f32>(var_0.a.x, arg_1.x, var_0.a.x), vec3<i32>(u_input.c.x, 2147483647i, 1i), var_0.c, Struct_1(var_0.d.a, vec4<i32>(u_input.a.x, var_0.c.a, var_0.b.x, -1i), vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, 27567i)), 0u), Struct_5(var_0.a, vec3<i32>(arg_0, arg_0, arg_0), Struct_4(var_0.b.x), var_0.d, 1u))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 418f, !(!var_0.d.a)))));
    let var_2 = var_0.c;
    var var_3 = 1u;
    return var_0.d;
}

fn func_6(arg_0: Struct_5, arg_1: f32) -> Struct_3 {
    var var_0 = ~vec3<u32>(min(~1u, _wgslsmith_add_u32(arg_0.e, 4294967295u)) ^ _wgslsmith_mult_u32(arg_0.e & 0u, arg_0.e << (1u % 32u)), select(~arg_0.e ^ firstLeadingBit(arg_0.e), 0u, arg_0.d.a), func_4(arg_0, arg_0).e);
    var var_1 = ~(~(vec4<u32>(7329u, ~var_0.x, _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(1u, 4294967295u)), var_0.x) & _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0.e, 95348u, 4294967295u), vec4<u32>(arg_0.e, var_0.x, var_0.x, 27565u) << (vec4<u32>(arg_0.e, var_0.x, 0u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = vec3<u32>(7779u << (_wgslsmith_div_u32(1u, ~0u) % 32u), 21469u, max(~arg_0.e, max(_wgslsmith_add_u32(~arg_0.e, 0u), _wgslsmith_dot_vec2_u32(var_0.xy, ~vec2<u32>(arg_0.e, arg_0.e)))));
    var_1 = vec4<u32>(0u, select(22800u, _wgslsmith_div_u32(var_2.x, ~var_1.x), !arg_0.d.a), 40368u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_0.e, 1u), 11982u, var_2.x), var_2)) << (~max(vec4<u32>(func_4(arg_0, arg_0).e, ~var_2.x, _wgslsmith_mult_u32(var_0.x, var_0.x), ~31573u), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e, var_2.x, 8602u, arg_0.e), vec4<u32>(var_0.x, var_2.x, 1u, 17582u)), vec4<u32>(1u, arg_0.e, var_2.x, arg_0.e) >> (vec4<u32>(21663u, var_2.x, var_1.x, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_3 = var_0.xz;
    return Struct_3(Struct_1(false, -select(vec4<i32>(u_input.a.x, -16799i, -40261i, arg_0.d.b.x), vec4<i32>(-2147483647i, 21010i, -2147483647i, u_input.c.x), arg_0.d.a) & ~vec4<i32>(-43731i, u_input.a.x, u_input.b.x, arg_0.d.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(6067i, arg_0.b.x, 1i, 42108i) | arg_0.d.b, vec4<i32>(0i, -22800i & u_input.c.x, 7020i, _wgslsmith_add_i32(-5762i, u_input.a.x)))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = arg_2.a.a;
    global0 = any(!select(select(!vec3<bool>(false, arg_2.a.a, var_0), select(vec3<bool>(arg_2.a.a, true, false), vec3<bool>(arg_2.a.a, true, false), true), !var_0), vec3<bool>(true, true, true), false));
    let var_1 = Struct_2(arg_1.x, min(12831i, max(-u_input.b.x, -74284i) ^ firstTrailingBit(u_input.b.x)));
    let var_2 = (vec4<u32>(max(min(arg_0.x, arg_0.x), arg_0.x), 1u, firstTrailingBit(func_4(Struct_5(arg_1, vec3<i32>(arg_2.a.b.x, -1i, arg_2.a.c.x), Struct_4(4183i), Struct_1(arg_2.a.a, arg_2.a.b, arg_2.a.b), 0u), Struct_5(arg_3.yxz, u_input.b, Struct_4(arg_2.a.b.x), Struct_1(arg_2.a.a, arg_2.a.c, arg_2.a.c), arg_0.x)).e), 48967u) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 24851u)) | ~vec4<u32>(arg_0.x, arg_0.x, 1u, 21407u), vec4<u32>(max(0u, arg_0.x), 1u, _wgslsmith_clamp_u32(arg_0.x, 62294u, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, 34383u), vec4<u32>(28864u, 48560u, 0u, arg_0.x)))) % vec4<u32>(32u))) & vec4<u32>(arg_0.x & arg_0.x, arg_0.x, firstTrailingBit(~(~arg_0.x)), _wgslsmith_sub_u32(~(~arg_0.x), ~0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(38410u, 4294967295u), arg_0) % 32u)));
    let var_3 = arg_2;
    return vec3<u32>(var_2.x ^ ~arg_0.x, var_2.x, firstTrailingBit(min(firstLeadingBit(~0u), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(reverseBits(countOneBits(countOneBits(~1u))), 19823u, _wgslsmith_sub_u32(~1u, (_wgslsmith_dot_vec3_u32(vec3<u32>(20786u, 0u, 38959u), vec3<u32>(4294967295u, 0u, 2635u)) & ~0u) | 1u));
    var_0 = min(~reverseBits(vec3<u32>(var_0.x, 4294967295u, 0u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), func_7(~(~var_0.xx) | var_0.yz, vec3<f32>(2522f, _wgslsmith_f_op_f32(step(-184f, _wgslsmith_div_f32(1000f, -563f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-215f)), -379f))), func_6(Struct_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1193f, -1000f, -732f))), min(vec3<i32>(0i, u_input.a.x, -14251i), u_input.b), Struct_4(u_input.b.x), func_1(-48035i, vec4<f32>(535f, 1835f, -2550f, 903f), vec2<u32>(1u, var_0.x)), _wgslsmith_add_u32(var_0.x, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(554f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_div_f32(777f, -1000f), _wgslsmith_f_op_f32(-1000f * 1648f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(min(436f, -1000f)), _wgslsmith_f_op_f32(min(965f, -999f)), _wgslsmith_f_op_f32(sign(-1030f))))));
    var var_1 = !select(vec2<bool>(true, _wgslsmith_div_u32(0u, 46676u) < (32565u ^ var_0.x)), !vec2<bool>(true, 55882u != var_0.x), vec2<bool>(true, true || (var_0.x > 7029u)));
    var var_2 = var_0.yz;
    var_0 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_0.x), vec3<u32>(var_2.x, var_2.x, var_2.x) << (vec3<u32>(25231u, var_2.x, var_0.x) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(func_7(var_0.zy, vec3<f32>(529f, 204f, -195f), Struct_3(Struct_1(var_1.x, vec4<i32>(-1i, u_input.a.x, u_input.c.x, 0i), vec4<i32>(u_input.a.x, u_input.c.x, -1i, u_input.b.x))), vec4<f32>(-1000f, -1996f, 590f, -2793f)), vec3<u32>(1u, var_0.x, 4294967295u) >> (vec3<u32>(1u, var_0.x, 13098u) % vec3<u32>(32u))), abs(vec3<u32>(1u, var_2.x, var_2.x)));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(~u_input.b.x, -2147483647i)), ~(~(-1i)) | -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.a.x), vec4<i32>(68084i, -13717i, -1i, u_input.c.x)), min(vec4<i32>(1i, 1i, 0i, -9182i), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x))), -17047i);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(u_input.a.x), 2147483647i);
}

