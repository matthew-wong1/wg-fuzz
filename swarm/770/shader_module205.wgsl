struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(50593u, 16891u);

var<private> global1: i32 = 45848i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global1 = u_input.b.x;
    let var_0 = _wgslsmith_mult_vec2_i32(abs(max(-vec2<i32>(u_input.b.x, u_input.c) ^ _wgslsmith_clamp_vec2_i32(u_input.b.yy, u_input.b.xx, u_input.b.zz), vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.c), select(7425i, 1i, false)))), -vec2<i32>(1i, -20499i));
    var var_1 = _wgslsmith_clamp_u32(~(~u_input.a), 1u, ~0u) | _wgslsmith_div_u32(~_wgslsmith_div_u32(~global0.x, 1u), ~11642u);
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 2830u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 23704u))), firstTrailingBit(vec2<u32>(u_input.a, global0.x) << (vec2<u32>(u_input.a, 55070u) % vec2<u32>(32u))), vec2<u32>(abs(global0.x), 4294967295u)));
    var var_2 = Struct_1(~vec4<u32>(32921u, _wgslsmith_add_u32(u_input.a, 0u), global0.x ^ u_input.a, countOneBits(22428u)), ~global0.x, ~u_input.a, ~(-u_input.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1351f, -1000f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-718f, -1211f))))))), vec2<f32>(_wgslsmith_f_op_f32(max(-899f, _wgslsmith_f_op_f32(sign(-255f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f + 1000f) - _wgslsmith_f_op_f32(-774f * 161f)))));
    return true;
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = vec4<i32>(-1i) * -min(vec4<i32>(select(-23810i, -20786i, arg_0.c), ~u_input.b.x, 1i, ~u_input.b.x), ~vec4<i32>(u_input.c, 0i, u_input.c, u_input.b.x));
    global0 = ~(~(~arg_0.a));
    var_0 = -(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, var_0.x, -12781i, var_0.x) | (vec4<i32>(u_input.c, var_0.x, u_input.b.x, -1i) << (vec4<u32>(0u, 1u, global0.x, arg_0.a.x) % vec4<u32>(32u))), -vec4<i32>(u_input.b.x, u_input.c, 35705i, -2147483647i)) << (vec4<u32>(select(4294967295u, abs(global0.x), arg_0.c), ~1u, 24310u, abs(_wgslsmith_sub_u32(arg_0.a.x, u_input.a))) % vec4<u32>(32u)));
    global0 = max(vec2<u32>(~18792u ^ (1u << (_wgslsmith_mult_u32(4294967295u, arg_0.a.x) % 32u)), reverseBits(~u_input.a) & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(80341u, 12971u, arg_0.a.x), vec3<u32>(4294967295u, 0u, 4294967295u)), ~vec3<u32>(global0.x, global0.x, u_input.a))), vec2<u32>(34648u, arg_0.a.x));
    global1 = ~(-u_input.b.x) ^ ~(~var_0.x);
    return _wgslsmith_clamp_vec2_u32(arg_0.a, ~min(max(~arg_0.a, vec2<u32>(arg_0.a.x, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global0.x), ~vec2<u32>(4294967295u, u_input.a))), select(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 31839u), vec2<u32>(u_input.a, 8041u), arg_0.a) >> ((vec2<u32>(global0.x, arg_0.a.x) & vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), arg_0.a, vec2<u32>(0u, ~4294967295u)), ~arg_0.a, vec2<bool>(true, !select(arg_0.c, arg_0.c, arg_0.c))));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a ^ global0.x, firstLeadingBit(global0.x)), countOneBits(vec2<u32>(global0.x, global0.x)) >> (~vec2<u32>(global0.x, 1u) % vec2<u32>(32u)))), vec2<f32>(-235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1643f - 1688f) + -2146f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f - -1059f)))), true);
    global0 = ~reverseBits(vec2<u32>(~u_input.a, firstTrailingBit(global0.x)));
    global1 = abs(u_input.b.x);
    var var_1 = all(vec3<bool>(true, true, !select(var_0.c, true, true)));
    global0 = func_4(Struct_3(_wgslsmith_mod_vec2_u32(select(var_0.a, vec2<u32>(3971u, u_input.a), var_0.c), ~vec2<u32>(0u, 1u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 4294967295u) | vec2<u32>(0u, 22798u), var_0.a) % vec2<u32>(32u)), var_0.b, !func_3()));
    return 26008i;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>) -> i32 {
    var var_0 = arg_0.a;
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(min(vec4<u32>(35389u >> (u_input.a % 32u), 64874u, _wgslsmith_div_u32(13451u, global0.x), 1u), (vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) | vec4<u32>(16969u, 18661u, u_input.a, global0.x)) >> (vec4<u32>(global0.x, global0.x, 53577u, 78588u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(u_input.a, global0.x, u_input.a, 1u)), max(~vec4<u32>(global0.x, 0u, 14773u, 4294967295u), ~vec4<u32>(32677u, 47127u, global0.x, 4294967295u)))), ~0u, ~_wgslsmith_mod_u32(1u, 1u), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f - -232f))), -1000f));
    global1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-(~(-26364i)), abs(0i), max(~arg_1.x, var_1.d ^ -11779i)), 0i ^ -_wgslsmith_clamp_i32(21197i, 35227i, arg_1.x), (2147483647i << ((var_1.c ^ var_1.c) % 32u)) & var_1.d), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, u_input.b.x, -42292i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1i, -2147483647i), u_input.b, arg_1.wyx), firstTrailingBit(vec3<i32>(6468i, arg_1.x, u_input.c)))), vec3<i32>(~_wgslsmith_div_i32(2147483647i, -2147483647i), var_1.d, ~arg_1.x ^ _wgslsmith_clamp_i32(-29516i, -2147483647i, u_input.c))), select(u_input.c, u_input.c, arg_0.a));
    var var_2 = arg_0;
    var_1 = Struct_1(var_1.a, _wgslsmith_mod_u32(var_1.a.x, global0.x), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.b, 78816u) & _wgslsmith_mod_u32(global0.x, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, var_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(93264u, 48319u, 0u, u_input.a), vec4<u32>(u_input.a, 94574u, 20650u, 21604u))))), ~(~40393i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_1.e.x + var_1.e.x), -2206f))));
    return ~u_input.b.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_4 {
    global1 = u_input.b.x;
    var var_0 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), 308f);
    global1 = func_5(Struct_5(_wgslsmith_add_i32(1i | u_input.c, arg_1.d.x << (global0.x % 32u)) != (-8391i ^ arg_1.a.d)), vec4<i32>(u_input.b.x, -11657i, func_2(), max(_wgslsmith_add_i32(arg_1.a.d, _wgslsmith_mod_i32(0i, arg_1.d.x)), _wgslsmith_clamp_i32(u_input.c, arg_1.d.x, -354i))));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.e.x, var_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.e.x + 555f) - _wgslsmith_div_f32(arg_1.c.e.x, 1424f)) - _wgslsmith_f_op_f32(-var_0.x)))));
    return Struct_4(arg_1, _wgslsmith_add_i32(-6393i, -17681i));
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> vec4<u32> {
    let var_0 = arg_1.x;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_3, 4294967295u << (arg_3 % 32u), u_input.a), vec3<u32>(u_input.a, ~arg_2.a.a.b, _wgslsmith_mod_u32(6191u, global0.x))), 1u, arg_2.a.a.c, ~global0.x), arg_2.a.a.a.x, ~(~u_input.a), _wgslsmith_sub_i32(0i, firstLeadingBit(_wgslsmith_sub_i32(4831i << (arg_3 % 32u), func_2()))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.c.e, _wgslsmith_f_op_vec2_f32(-arg_2.a.c.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(834f, -429f) - arg_2.a.c.e) * arg_2.a.a.e) * vec2<f32>(_wgslsmith_f_op_f32(trunc(355f)), _wgslsmith_f_op_f32(670f - arg_2.a.a.e.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-566f, var_1.e.x, arg_2.a.a.e.x), vec3<f32>(var_1.e.x, -1000f, var_1.e.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.e.x, arg_2.a.b, 529f))), vec3<f32>(_wgslsmith_f_op_f32(1737f - 489f), 2059f, -2011f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1268f, 757f, -1626f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.a.b, arg_2.a.a.e.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.x, var_1.e.x, -1342f), vec3<f32>(-734f, arg_2.a.c.e.x, arg_2.a.c.e.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(337f, -743f, 517f), vec3<f32>(388f, arg_2.a.a.e.x, -357f))))));
    global0 = ~(~var_1.a.xw);
    global1 = firstTrailingBit(var_1.d);
    return vec4<u32>(46783u, 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 28u), arg_2.a.c.a.xzx), 2689u) << (~select(39617u, arg_3, false) % 32u), max(_wgslsmith_mult_u32(global0.x & arg_2.a.c.c, var_1.c), 1u >> (arg_2.a.a.c % 32u))) & select(vec4<u32>(select(~global0.x, arg_2.a.c.a.x, arg_1.x && true), global0.x, arg_2.a.a.c, 1u), abs(~func_1(var_2, Struct_2(Struct_1(arg_2.a.c.a, arg_3, 3308u, arg_2.b, var_2.zx), -314f, Struct_1(var_1.a, 27667u, arg_2.a.a.c, 2147483647i, var_1.e), arg_2.a.d)).a.c.a), 1219f != _wgslsmith_f_op_f32(-var_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_6(any(vec2<bool>(false, true)), vec3<bool>(true, true, true), func_1(vec3<f32>(1638f, 760f, 1496f), Struct_2(Struct_1(vec4<u32>(1u, 4930u, u_input.a, u_input.a), 0u, global0.x, 40411i, vec2<f32>(-366f, 173f)), 826f, Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 2473u), u_input.a, global0.x, u_input.c, vec2<f32>(-1175f, 285f)), vec2<i32>(32974i, u_input.c))), _wgslsmith_mult_u32(global0.x, global0.x) | global0.x), u_input.a, 4294967295u, -25507i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1155f, 1000f)))), _wgslsmith_f_op_f32(-393f * -2276f), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-568f, 654f), -249f, _wgslsmith_f_op_f32(round(777f)))), Struct_2(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(546f, 566f, 1211f), vec3<f32>(-212f, -2364f, 399f), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec4<u32>(global0.x, global0.x, global0.x, 1u), 4294967295u, global0.x, 0i, vec2<f32>(623f, 423f)), -145f, Struct_1(vec4<u32>(u_input.a, 1u, global0.x, 29166u), 33290u, 1u, 0i, vec2<f32>(2584f, 642f)), u_input.b.xx)).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1118f + 429f)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 18093u, u_input.a), vec4<u32>(u_input.a, 18168u, 0u, 74621u)), 1u, 0u | u_input.a, ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1188f, -678f))), ~u_input.b.xy)).a.a, -vec2<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c ^ -55149i), func_5(Struct_5(true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -25506i, u_input.b.x, 11024i), vec4<i32>(-2147483647i, -72319i, u_input.c, -85289i)))));
    global1 = -23102i;
    global0 = reverseBits(vec2<u32>(~1u, u_input.a));
    let var_1 = 23586i;
    let var_2 = Struct_3(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(func_1(vec3<f32>(1331f, var_0.c.e.x, 529f), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 11800u), u_input.a, var_0.c.c, var_0.a.d, var_0.a.e), 2591f, var_0.a, var_0.d)).a.c.a, vec4<u32>(15464u, u_input.a, var_0.a.a.x, 2237u)), 8760u)), _wgslsmith_f_op_vec2_f32(floor(var_0.c.e)), !select(false, _wgslsmith_mult_i32(-1i, var_0.a.d) >= var_0.a.d, false));
    var_0 = Struct_2(var_0.a, var_2.b.x, var_0.a, vec2<i32>(var_0.a.d, _wgslsmith_mult_i32(var_1, -5316i << (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~(var_2.a >> (var_0.a.a.xx % vec2<u32>(32u)))), ~(~vec2<u32>(var_2.a.x, var_0.a.c)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))) + _wgslsmith_f_op_f32(f32(-1f) * -1639f))), var_0.c.a ^ _wgslsmith_mod_vec4_u32(~(var_0.c.a ^ var_0.c.a), var_0.c.a), var_1);
}

