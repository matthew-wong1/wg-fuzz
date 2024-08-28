struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(max(u_input.a, arg_1.x), max(firstLeadingBit(~_wgslsmith_clamp_u32(arg_2.e, 21971u, 1u)), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2.e, 31718u, arg_2.c), vec3<u32>(u_input.a, 42647u, arg_1.x), vec3<bool>(true, false, arg_0.b.x)), ~arg_1)));
    var_0 = _wgslsmith_sub_u32(~39357u, 46289u);
    var_0 = 11749u;
    var_0 = u_input.a;
    var_0 = 35935u;
    return arg_3.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(arg_3.x, 1i, arg_3.x, -6135i)), abs(-vec4<i32>(arg_3.x, arg_3.x, 1i, -6040i))) & firstTrailingBit(select(~vec4<i32>(arg_3.x, -2147483647i, -67865i, arg_3.x), -vec4<i32>(-24714i, -2147483647i, -2147483647i, 9392i), !arg_2.a.b)));
    var var_1 = _wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(-arg_2.a.c));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1676f));
    let var_2 = Struct_4(arg_0.a);
    let var_3 = (1i & max(~_wgslsmith_clamp_i32(arg_3.x, 23467i, -26249i), -func_3(Struct_1(arg_2.b, vec4<bool>(true, arg_2.b, false, arg_2.a.a), -429f), arg_1.xzx, arg_2, vec4<i32>(var_0.x, var_0.x, arg_3.x, var_0.x)))) | 18272i;
    return Struct_1(true, !(!(!select(vec4<bool>(true, true, arg_2.d.a, false), vec4<bool>(arg_2.a.a, false, false, true), arg_2.d.a))), arg_0.a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_2(Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-289f, arg_0.c, 126f, arg_0.c))))), vec4<f32>(arg_0.c, 188f, -1946f, _wgslsmith_f_op_f32(-arg_0.c))))), ~(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 75532u, 4294967295u, 0u), vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)))), Struct_2(Struct_1(false, vec4<bool>(arg_0.c != 1129f, arg_0.a, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(918f - -651f)))), false, u_input.a, Struct_1(arg_0.a, arg_0.b, arg_0.c), _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(0u, max(u_input.a, 12606u)))), vec3<i32>(abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, -73638i), -1i), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-2895i, -1i), vec2<i32>(1509i, -15863i)))), 1i));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~62051u), u_input.a), 52847u << (min(u_input.a, 1u | (0u & u_input.a)) % 32u));
    var var_2 = 1f;
    var_1 = 17105u;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f - -1033f));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)), vec2<bool>(arg_0.a, true), -41693i, arg_0.a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(max(-1141f, arg_1.a.x)), -145f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1854f - -1000f), arg_1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.x, arg_1.a.x, 1324f, arg_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, arg_1.a.x, -291f, arg_1.a.x) * vec4<f32>(arg_1.a.x, 824f, arg_1.a.x, arg_2.c)))), vec4<f32>(_wgslsmith_f_op_f32(step(-364f, -1990f)), 831f, -915f, arg_1.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(884f, arg_1.a.x) + _wgslsmith_f_op_f32(trunc(arg_1.a.x))), arg_1.a.x)), arg_1.a.x, arg_1.a.x, 286f));
    var var_1 = _wgslsmith_sub_i32(1i, 2147483647i);
    let var_2 = abs(~7354u);
    var var_3 = func_4(func_2(Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2128f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, -509f, arg_2.c, -707f)))), countOneBits(abs(~vec4<u32>(var_2, u_input.a, 70391u, 28481u))), Struct_2(Struct_1(true, !vec4<bool>(true, arg_2.b.x, arg_1.b.x, arg_2.b.x), 1f), countOneBits(u_input.a) >= firstLeadingBit(u_input.a), _wgslsmith_sub_u32(countOneBits(0u), _wgslsmith_dot_vec2_u32(arg_3.yz, arg_3.zx)), func_2(Struct_4(vec4<f32>(-341f, -809f, -158f, arg_1.a.x)), vec4<u32>(arg_3.x, arg_3.x, 4294967295u, 55247u), Struct_2(Struct_1(true, vec4<bool>(true, arg_2.b.x, arg_1.b.x, arg_1.b.x), arg_1.a.x), true, var_2, Struct_1(arg_1.b.x, arg_2.b, 647f), var_2), ~arg_0), _wgslsmith_div_u32(abs(u_input.a), var_2 | arg_3.x)), vec3<i32>(~arg_1.c ^ countOneBits(arg_0.x), -arg_1.c, ~1i)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, -448f, -128f, _wgslsmith_f_op_f32(390f + arg_2.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(522f, arg_2.c, var_3.a.x, arg_1.a.x), vec4<f32>(329f, -1225f, 875f, var_3.a.x), arg_1.d)) + vec4<f32>(arg_2.c, -221f, arg_1.a.x, 1247f))) + vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x - arg_2.c), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f + var_3.a.x)), var_3.a.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_4.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1007f, 227f, var_3.a.x))), vec4<f32>(-1000f, var_0.x, -367f, var_0.x)) + var_4.a));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(~(~vec4<u32>(u_input.a, u_input.a, 45534u, arg_2.e)), min(firstTrailingBit(vec4<u32>(u_input.a, 30617u, 46913u, 24192u)), _wgslsmith_div_vec4_u32(vec4<u32>(6005u, arg_2.c, u_input.a, 0u), vec4<u32>(u_input.a, arg_2.e, 0u, 1u)))), vec4<u32>(abs(~5994u), firstTrailingBit(0u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13284u, 4294967295u, 78518u, 43743u), vec4<u32>(u_input.a, u_input.a, arg_2.c, 0u)), firstLeadingBit(16186u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2.c, u_input.a, arg_2.e), vec4<u32>(u_input.a, 48069u, u_input.a, arg_2.c)), abs(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u))))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, arg_2.e, 0u), ~(~vec4<u32>(1u, arg_2.e, u_input.a, arg_2.c))));
    var var_1 = any(vec2<bool>(true && !arg_2.d.b.x, arg_2.b));
    var_1 = arg_2.a.b.x;
    var var_2 = func_4(arg_2.d);
    let var_3 = var_2.a;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, 1i, arg_3, var_2.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_3, 16150i, arg_3), vec4<i32>(0i, 2147483647i, -2147483647i, 42512i), vec4<i32>(var_2.c, var_2.c, 1i, 4681i))), reverseBits(vec4<i32>(17936i, var_2.c, 24062i, var_2.c)), true), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, var_2.c, -15283i, 2147483647i), -vec4<i32>(7666i, -22076i, 1i, 18310i)), vec4<i32>(_wgslsmith_div_i32(arg_3, -1i), reverseBits(var_2.c), -1i, _wgslsmith_add_i32(arg_3, 5824i)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_3, arg_3, var_2.c) | vec4<i32>(var_2.c, -65327i, var_2.c, arg_3), reverseBits(vec4<i32>(-1i, 49487i, 66586i, arg_3))))), firstTrailingBit(i32(-1i) * -var_2.c));
}

fn func_1() -> f32 {
    var var_0 = 1i;
    var_0 = -max(-27318i, 1i);
    var_0 = -func_6(func_5(vec3<i32>(1i, i32(-1i) * -45425i, i32(-1i) * -16290i), func_4(func_2(Struct_4(vec4<f32>(-258f, -1219f, -981f, 746f)), vec4<u32>(u_input.a, 34143u, 78933u, 1u), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), -2070f), false, u_input.a, Struct_1(true, vec4<bool>(false, false, true, true), -837f), u_input.a), vec3<i32>(0i, -2147483647i, 66285i))), Struct_1(any(vec3<bool>(true, false, true)), vec4<bool>(true, true, false, false), 1097f), vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, select(4294967295u, u_input.a, true))), !vec4<bool>(true, u_input.a < 108322u, func_2(Struct_4(vec4<f32>(1406f, 2151f, 850f, 2350f)), vec4<u32>(u_input.a, 0u, u_input.a, 0u), Struct_2(Struct_1(true, vec4<bool>(false, true, false, false), 518f), true, 0u, Struct_1(true, vec4<bool>(true, false, true, true), 669f), 4294967295u), vec3<i32>(-416i, 1i, 37305i)).a, any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-195f + -327f)), all(vec4<bool>(true, false, true, false)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(1u, 9125u, 1u)), Struct_1(all(vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(round(831f))), ~73052u), -33192i);
    var var_1 = abs(vec4<i32>(-abs(35149i), _wgslsmith_sub_i32(1i, -1i), 1i, -2147483647i));
    var_1 = vec4<i32>(func_6(func_5(var_1.zyx, func_4(func_2(Struct_4(vec4<f32>(1962f, -784f, -204f, 614f)), vec4<u32>(8911u, 4294967295u, u_input.a, u_input.a), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), 1000f), true, u_input.a, Struct_1(true, vec4<bool>(true, false, true, false), -769f), u_input.a), vec3<i32>(-60761i, 0i, 1i))), func_2(func_5(var_1.yxy, Struct_3(vec2<f32>(1000f, 1097f), vec2<bool>(true, true), var_1.x, true), Struct_1(false, vec4<bool>(false, false, false, true), 112f), vec3<u32>(u_input.a, 53509u, u_input.a)), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 38391u), vec4<u32>(78381u, u_input.a, 1u, u_input.a)), Struct_2(Struct_1(true, vec4<bool>(true, false, true, false), -1711f), true, u_input.a, Struct_1(true, vec4<bool>(true, false, true, true), -1000f), u_input.a), -var_1.yxx), vec3<u32>(u_input.a, ~1u, 55116u)), vec4<bool>(all(vec2<bool>(true, true)), true, false, any(vec3<bool>(true, true, true))), Struct_2(func_2(Struct_4(vec4<f32>(1769f, -279f, 696f, -748f)), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(1u, u_input.a, 1u, 4294967295u) % vec4<u32>(32u)), Struct_2(Struct_1(true, vec4<bool>(true, true, true, false), 562f), true, 0u, Struct_1(false, vec4<bool>(false, false, false, true), -991f), u_input.a), ~vec3<i32>(-7951i, 0i, -26197i)), true, ~u_input.a, func_2(Struct_4(vec4<f32>(-1067f, 651f, -127f, 683f)), vec4<u32>(u_input.a, 88996u, u_input.a, u_input.a), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), -302f), true, 4294967295u, Struct_1(true, vec4<bool>(true, true, true, true), 1264f), 25752u), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.x, var_1.x), vec3<i32>(var_1.x, -13827i, var_1.x))), firstLeadingBit(4294967295u)), _wgslsmith_clamp_i32(-var_1.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(19i, -1i, var_1.x), _wgslsmith_clamp_vec3_i32(var_1.zzx, var_1.xxy, vec3<i32>(var_1.x, var_1.x, var_1.x))))), func_6(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(359f)), _wgslsmith_f_op_f32(trunc(298f)), _wgslsmith_f_op_f32(f32(-1f) * -537f), 465f)), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, true, true))), Struct_2(func_2(Struct_4(vec4<f32>(-619f, -1087f, -897f, 1000f)), ~vec4<u32>(u_input.a, 59941u, u_input.a, 4294967295u), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), 890f), false, 0u, Struct_1(false, vec4<bool>(false, true, true, false), 685f), 96792u), -vec3<i32>(var_1.x, 1i, var_1.x)), false, u_input.a, func_2(func_5(vec3<i32>(12769i, -1i, var_1.x), Struct_3(vec2<f32>(-1297f, -321f), vec2<bool>(false, false), var_1.x, true), Struct_1(true, vec4<bool>(true, true, false, true), 1114f), vec3<u32>(u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(9032u, u_input.a, u_input.a, 56498u), Struct_2(Struct_1(false, vec4<bool>(true, true, false, true), -327f), false, 4461u, Struct_1(true, vec4<bool>(false, true, false, false), 645f), u_input.a), ~var_1.ywy), u_input.a), -2147483647i), ~(-10555i), -1i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-786f - _wgslsmith_f_op_f32(-1890f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1551f + 332f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), !all(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(468f * _wgslsmith_f_op_f32(ceil(1376f)))));
    let var_1 = 1i;
    var var_2 = func_2(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, -491f, var_0.c, var_0.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -790f, 2190f, 958f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, -638f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, -1944f, -1000f, var_0.c) * vec4<f32>(var_0.c, 1085f, var_0.c, var_0.c))))), min(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 21640u, 1u, 21716u) % vec4<u32>(32u)), vec4<u32>(629u, 38050u, 1u, 68302u) << (vec4<u32>(0u, 4294967295u, u_input.a, 2859u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u) >> (vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) | select(vec4<u32>(u_input.a, u_input.a, 69078u, 1u), vec4<u32>(49224u, u_input.a, 26267u, u_input.a), var_0.b))), Struct_2(var_0, _wgslsmith_div_u32(u_input.a, u_input.a) >= u_input.a, u_input.a, var_0, firstTrailingBit(firstLeadingBit(~u_input.a))), countOneBits(vec3<i32>(_wgslsmith_mult_i32(8177i, var_1), -38112i, _wgslsmith_mod_i32(var_1, 0i)) >> (vec3<u32>(4294967295u, 9849u, _wgslsmith_add_u32(42469u, 1267u)) % vec3<u32>(32u)))).b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), reverseBits(vec4<u32>(u_input.a, 30940u, u_input.a, 16113u))), vec4<u32>(reverseBits(_wgslsmith_add_u32(4294967295u, u_input.a)), firstTrailingBit(~33987u), u_input.a, 10021u)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1685f - -505f), -705f) * var_0.c)));
}

