struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(913f, 739f), vec4<u32>(4294967295u, 4294967295u, 0u, 68922u)), Struct_1(vec2<f32>(-1322f, -157f), vec4<u32>(11679u, 4294967295u, 4294967295u, 42435u)), Struct_1(vec2<f32>(700f, -1483f), vec4<u32>(0u, 46034u, 75644u, 8227u)), Struct_1(vec2<f32>(-866f, 1000f), vec4<u32>(3203u, 13394u, 95802u, 63234u)), Struct_1(vec2<f32>(760f, -595f), vec4<u32>(19332u, 10308u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(936f, -660f), vec4<u32>(4294967295u, 7440u, 1u, 4831u)), Struct_1(vec2<f32>(398f, 2311f), vec4<u32>(4294967295u, 43422u, 0u, 30030u)), Struct_1(vec2<f32>(-1000f, 1365f), vec4<u32>(60266u, 1u, 1u, 22511u)), Struct_1(vec2<f32>(373f, -770f), vec4<u32>(1u, 21997u, 20565u, 49174u)), Struct_1(vec2<f32>(-236f, 1209f), vec4<u32>(1u, 93u, 18725u, 7235u)), Struct_1(vec2<f32>(-1355f, 136f), vec4<u32>(0u, 89027u, 0u, 0u)), Struct_1(vec2<f32>(-977f, -155f), vec4<u32>(33542u, 84375u, 4294967295u, 1u)), Struct_1(vec2<f32>(686f, 239f), vec4<u32>(22784u, 1u, 1u, 45884u)), Struct_1(vec2<f32>(1562f, -1288f), vec4<u32>(21479u, 48366u, 1u, 0u)), Struct_1(vec2<f32>(-1009f, 239f), vec4<u32>(4937u, 78238u, 32063u, 46535u)), Struct_1(vec2<f32>(541f, 174f), vec4<u32>(42700u, 0u, 4294967295u, 0u)), Struct_1(vec2<f32>(595f, 193f), vec4<u32>(21765u, 4294967295u, 1u, 1u)), Struct_1(vec2<f32>(1251f, -1331f), vec4<u32>(49704u, 4294967295u, 56650u, 4294967295u)));

var<private> global1: array<vec3<u32>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>) -> vec4<i32> {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_0 = arg_0.d;
    var var_1 = var_0.b.a.x;
    global1 = array<vec3<u32>, 17>();
    return -vec4<i32>(46852i, abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(5694i, arg_0.c, u_input.a, 48903i), vec4<i32>(arg_0.b, 1558i, 1i, -12331i), false), -vec4<i32>(u_input.a, arg_0.c, 0i, 20137i))), arg_0.b, 1i);
}

fn func_3(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = !vec2<bool>(true, _wgslsmith_f_op_f32(min(-491f, _wgslsmith_f_op_f32(ceil(-1246f)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1178f + arg_0.x))));
    let var_1 = var_0.x;
    global0 = array<Struct_1, 18>();
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-566f, var_2, _wgslsmith_div_f32(357f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-915f, 1153f, 570f) - vec3<f32>(var_2, -794f, 274f)))))));
    return func_2(Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(arg_0)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(105091u, 1u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 62638u, u_input.c.x), vec4<u32>(4364u, 1u, 74837u, 1u))), _wgslsmith_mod_i32(~0i, _wgslsmith_add_i32(firstLeadingBit(u_input.a), ~u_input.a)), -44032i, Struct_2(~(~u_input.c.xy), global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 7621u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(12468u, u_input.c.x, u_input.b, 0u), vec4<u32>(15177u, 19048u, 9878u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.b))), u_input.c.x, max(~abs(vec4<u32>(u_input.c.x, 1u, 116295u, u_input.b)), firstTrailingBit(countOneBits(~vec4<u32>(u_input.c.x, 25928u, u_input.c.x, 53418u))))).xy;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = min(vec4<i32>(-2147483647i, 0i, -arg_2.x, arg_2.x), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.x, arg_1.x, arg_1.x, arg_2.x) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 39138u, u_input.c.x, u_input.b), vec4<u32>(u_input.b, u_input.c.x, u_input.b, 0u)), vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x), min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(u_input.c.x, 5904u, u_input.b, 0u))) % vec4<u32>(32u)), arg_1));
    var_0 = vec4<i32>(arg_2.x, ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, 369f) * vec2<f32>(-585f, -443f))).x, _wgslsmith_clamp_i32(0i, (var_0.x << (u_input.b % 32u)) & reverseBits(-2147483647i), select(-2147483647i, -2147483647i, true) ^ 2147483647i), 0i) | vec4<i32>(func_2(Struct_4(Struct_1(vec2<f32>(-1356f, 808f), vec4<u32>(4294967295u, u_input.c.x, u_input.b, u_input.b)), u_input.a, -1i, Struct_2(u_input.c.xz, global0[_wgslsmith_index_u32(50609u, 18u)]), vec4<u32>(u_input.b, 65509u, 1u, 49252u) & vec4<u32>(u_input.b, u_input.c.x, 2231u, 8754u)), 4294967295u, ~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.b, 72370u), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u)) % vec4<u32>(32u))).x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-15633i, 2147483647i, arg_1.x, 53533i), -vec4<i32>(arg_3.x, -21970i, var_0.x, u_input.a) ^ arg_1), var_0.x & func_3(vec2<f32>(-1582f, -131f)).x, abs(arg_1.x) >> (abs(40916u) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(135f)), -365f), _wgslsmith_f_op_f32(-1170f * _wgslsmith_f_op_f32(step(680f, -555f))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1641f)))))));
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.x));
    global1 = array<vec3<u32>, 17>();
    return var_1.x;
}

fn func_1() -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, -24313i) << (~u_input.c.yy % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(u_input.a), u_input.a)), ~select(vec2<i32>(-9230i, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1713i), vec2<i32>(-28514i, u_input.a)), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f - 381f) + _wgslsmith_f_op_f32(f32(-1f) * -783f)))) * _wgslsmith_div_f32(-351f, _wgslsmith_f_op_f32(func_4(any(vec3<bool>(true, true, true)), _wgslsmith_clamp_vec4_i32(func_2(Struct_4(global0[_wgslsmith_index_u32(0u, 18u)], var_0, 14035i, Struct_2(vec2<u32>(4294967295u, 4294967295u), global0[_wgslsmith_index_u32(520u, 18u)]), vec4<u32>(0u, 0u, 1u, 1u)), u_input.b, vec4<u32>(84725u, 3714u, u_input.c.x, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, var_0)), firstLeadingBit(vec4<i32>(-2147483647i, var_0, 600i, -1i))), -func_3(vec2<f32>(-1853f, -179f)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 36904i, u_input.a), vec3<i32>(var_0, var_0, var_0)))))));
    var var_2 = Struct_4(Struct_1(vec2<f32>(-904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), max(vec4<u32>(1u, _wgslsmith_add_u32(0u, 4294967295u), ~1u, reverseBits(u_input.c.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(34999u, u_input.c.x, 0u, u_input.b), ~vec4<u32>(95840u, 0u, u_input.b, u_input.c.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-11999i, func_2(Struct_4(Struct_1(vec2<f32>(-322f, 244f), vec4<u32>(22877u, u_input.b, 0u, u_input.b)), var_0, var_0, Struct_2(vec2<u32>(1u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<u32>(0u, u_input.c.x, u_input.b, u_input.c.x)), ~u_input.b, vec4<u32>(1u, u_input.b, u_input.b, u_input.b)).x), ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33327i, -32458i), vec2<i32>(-2534i, var_0), vec2<i32>(u_input.a, -2147483647i)))), var_0, Struct_2(vec2<u32>(4294967295u, _wgslsmith_add_u32(26987u, 1u)), global0[_wgslsmith_index_u32(u_input.b, 18u)]), ~vec4<u32>(~1u, select(1u, u_input.b, any(vec4<bool>(true, false, false, true))), 4294967295u | reverseBits(u_input.c.x), u_input.c.x));
    let var_3 = func_3(var_2.a.a);
    let var_4 = var_2.e.xx;
    return true;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    let var_0 = arg_3.c.b;
    var var_1 = firstLeadingBit(-3832i);
    let var_2 = !select(vec2<bool>(~u_input.a > _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, 25873i, arg_2.x)), all(!vec2<bool>(false, arg_0))), !(!(!vec2<bool>(true, arg_0))), false);
    global0 = array<Struct_1, 18>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = func_5(all(vec4<bool>(!func_1(), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), min(u_input.a, 17288i) == (-23453i ^ u_input.a))), 1u, _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(u_input.a, 1i, u_input.a)) & reverseBits(~vec3<i32>(6716i, u_input.a, u_input.a)), vec3<i32>(min(u_input.a << (u_input.c.x % 32u), abs(u_input.a)), _wgslsmith_sub_i32(-u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)), u_input.a)), Struct_3(Struct_2(~vec2<u32>(2815u, 0u) & firstTrailingBit(vec2<u32>(u_input.b, u_input.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3289f, -592f)), ~vec4<u32>(u_input.c.x, 1u, u_input.b, 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, -1122f)), max(max(vec4<u32>(u_input.c.x, 35732u, u_input.b, u_input.b), vec4<u32>(106466u, u_input.c.x, u_input.c.x, 66971u)), vec4<u32>(u_input.b, u_input.c.x, 10880u, 68199u))), Struct_2(vec2<u32>(u_input.c.x, ~1u), global0[_wgslsmith_index_u32(~u_input.c.x, 18u)])));
    var var_1 = (37068u << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29093u, 103045u), var_0.b.b.xw), 4294967295u) % 32u)) == _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(48727u, u_input.c.x)), firstLeadingBit(vec2<u32>(var_0.b.b.x, u_input.b))), firstTrailingBit(_wgslsmith_mod_u32(~21262u, 76906u)));
    var_1 = !select(1u >= (u_input.c.x ^ u_input.c.x), true, any(vec2<bool>(true, true))) || (_wgslsmith_f_op_f32(round(var_0.b.a.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.a.x), 1810f)));
    var var_2 = select(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a ^ -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -7799i, u_input.a, u_input.a), vec4<i32>(-50949i, 13527i, u_input.a, 65983i))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), func_3(var_0.b.a))), ~(vec2<i32>(-2196i, u_input.a) | ~vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-9281i, 39587i)))), vec2<bool>(true, true));
    let var_3 = vec3<i32>(-44098i, _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(816f, var_0.b.a.x)))).x, ~(~var_2.x))), -2147483647i);
    let var_4 = Struct_2(max(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, var_0.b.b.x), countOneBits(_wgslsmith_div_vec2_u32(var_0.b.b.zz, var_0.a))), vec2<u32>(3735u, ~(~1u))), global0[_wgslsmith_index_u32(u_input.b, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.a.x, 1003f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_4.b.a.x, var_4.b.a.x))))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, ~max(u_input.c.x, 21481u)), vec2<u32>(~(var_0.b.b.x & 0u), ~(u_input.c.x ^ 32669u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.b.a.x))), ~0u, var_2.x);
}

