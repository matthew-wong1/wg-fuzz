struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1065f, 1352f, 896f), vec3<f32>(813f, 1000f, -604f), vec3<f32>(690f, 750f, 1000f), vec3<f32>(-1739f, 1818f, -1124f), vec3<f32>(1424f, 1436f, -1322f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = ~arg_0.a.a.x;
    var var_1 = !(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(4294967295u, 60644u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 2828u), vec2<u32>(u_input.b.x, u_input.b.x))) == min(~u_input.a, ~(u_input.a >> (u_input.b.x % 32u))));
    let var_2 = ~abs(~firstTrailingBit(~vec2<u32>(4294967295u, 61938u)));
    var_1 = !(_wgslsmith_dot_vec3_i32(arg_0.a.a, firstTrailingBit(vec3<i32>(-30263i, 2147483647i, u_input.c))) != arg_0.a.a.x);
    let var_3 = min(-(~select(arg_0.a.a.yy, arg_0.a.a.xz >> (u_input.b % vec2<u32>(32u)), u_input.c <= -35912i)), -vec2<i32>(arg_0.a.a.x, arg_0.a.a.x));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1266f, 961f)));
    global0 = array<vec3<f32>, 5>();
    let var_1 = Struct_4((-firstTrailingBit(vec2<i32>(-53565i, arg_3.x)) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 90629u), vec2<u32>(1u, 1u)) & arg_1) % vec2<u32>(32u))) >> (arg_2.xx % vec2<u32>(32u)), 3970i, var_0, Struct_3(Struct_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3.x, -14952i, -70044i), vec3<i32>(0i, 0i, u_input.c) | vec3<i32>(0i, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(-var_0));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(-var_1.c)), -224f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-1197f - var_0))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(1000f * var_0))))));
    let var_3 = Struct_2(var_1.d.a.a);
    return Struct_1(arg_0, arg_0 <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, firstTrailingBit(0u), arg_1.x << (4294967295u % 32u)), abs(max(arg_2.xyy, arg_2.xxw))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), !func_3(Struct_3(var_3))), vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_3(Struct_3(var_3)), false)), _wgslsmith_add_i32(arg_3.x, _wgslsmith_dot_vec2_i32(var_1.a >> (max(arg_2.zy, vec2<u32>(75388u, arg_1.x)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(var_1.b, var_3.a.x) >> (vec2<u32>(33412u, 110232u) % vec2<u32>(32u)), arg_3 << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    let var_0 = vec4<u32>(u_input.b.x << (~0u % 32u), ~min(4294967295u << (arg_3.a % 32u), ~u_input.e ^ arg_3.a), 4294967295u, ~abs(abs(1u | arg_3.a)));
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    let var_1 = Struct_3(Struct_2(select(max(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, -1i), vec3<i32>(arg_3.d, u_input.c, u_input.c)), vec3<i32>(u_input.c, -4103i, arg_3.d)), (vec3<i32>(1i, arg_3.d, -2147483647i) << (vec3<u32>(36636u, var_0.x, 109159u) % vec3<u32>(32u))) & vec3<i32>(u_input.c, u_input.c, arg_3.d), arg_2.b)));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(select(-(~reverseBits(arg_3)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 0i, arg_3.x), vec4<i32>(1i, 12804i, u_input.c, arg_3.x)), _wgslsmith_sub_i32(1i, -arg_2.a.a.x)), true && !(arg_1.x != true)), -2147483647i, 496f, func_4(1595f, select(vec3<bool>(true, arg_1.x, true), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.zxx, arg_1.yzy), !select(vec3<bool>(false, false, false), vec3<bool>(arg_1.x, arg_1.x, true), true)), Struct_1(~u_input.e & u_input.b.x, !arg_1.x && arg_1.x, vec2<bool>(!arg_1.x, select(arg_1.x, true, arg_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, 0i, arg_3.x) >> (vec4<u32>(u_input.a, u_input.e, u_input.b.x, u_input.e) % vec4<u32>(32u)), vec4<i32>(arg_3.x, 13039i, 0i, 48032i))), func_2(11668u, vec2<u32>(14085u, u_input.a), firstLeadingBit(~vec4<u32>(0u, u_input.a, u_input.d, u_input.d)), firstLeadingBit(arg_3))), 201f);
    var_0 = Struct_4(arg_3 & abs(-countOneBits(vec2<i32>(-1i, arg_3.x))), arg_3.x, var_0.c, Struct_3(Struct_2(vec3<i32>(~var_0.a.x, ~var_0.b, arg_3.x | -10582i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1017f))));
    var var_1 = 27686u;
    var_1 = _wgslsmith_clamp_u32(1u, 3189u, reverseBits(~u_input.a));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-421f, var_0.c), _wgslsmith_f_op_f32(var_0.c * arg_0)))) - arg_0), -644f, 1044f);
    return func_2(u_input.d, ~(~(~u_input.b) >> (u_input.b % vec2<u32>(32u))), reverseBits(~abs(vec4<u32>(u_input.a, 32887u, u_input.e, 1u))), countOneBits(var_0.a));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1772f), _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(select(1569f, -1467f, true)))))));
    var var_1 = select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), !vec3<bool>(_wgslsmith_f_op_f32(round(arg_1.c)) <= arg_1.c, arg_0.b, !all(vec3<bool>(false, arg_0.c.x, true))), !select(select(vec3<bool>(arg_0.b, false, false), select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.b, true, arg_0.c.x), vec3<bool>(false, arg_0.b, arg_0.b)), !arg_0.c.x), vec3<bool>(true, !arg_0.c.x, false), !vec3<bool>(arg_0.c.x, false, false)));
    var_1 = select(select(vec3<bool>(false != func_2(arg_0.a, vec2<u32>(48380u, u_input.b.x), vec4<u32>(1u, 0u, 141064u, u_input.d), arg_1.d.a.a.xx).c.x, arg_0.d < 0i, arg_0.b), !select(vec3<bool>(false, var_1.x, arg_0.c.x), select(vec3<bool>(true, var_1.x, true), vec3<bool>(arg_0.b, true, true), var_1.x), var_1.x), u_input.a <= u_input.b.x), vec3<bool>(arg_0.b, any(vec4<bool>(arg_0.c.x, true, false, func_2(arg_0.a, u_input.b, vec4<u32>(u_input.e, 12813u, u_input.b.x, arg_0.a), vec2<i32>(arg_0.d, -1i)).c.x)), arg_0.c.x), any(!vec4<bool>(false, var_1.x, func_3(Struct_3(Struct_2(vec3<i32>(-2147483647i, u_input.c, 0i)))).x, any(vec3<bool>(var_1.x, true, true)))));
    var var_2 = true;
    var var_3 = func_4(arg_1.e, !(!(!(!vec3<bool>(arg_0.c.x, arg_0.b, var_1.x)))), func_2(func_2(countOneBits(arg_0.a), ~(~u_input.b), ~vec4<u32>(u_input.b.x, arg_0.a, 1u, u_input.b.x), arg_1.a).a, u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, ~3408u, ~arg_0.a, ~arg_0.a), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 0u, u_input.e, arg_0.a), vec4<u32>(69092u, arg_0.a, 1u, 4294967295u)), vec4<u32>(50272u, 4294967295u, 0u, arg_0.a) >> (vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 4294967295u, u_input.b.x), vec4<u32>(85572u, 0u, 51989u, 0u)))), vec2<i32>(~(-u_input.c), max(2147483647i, u_input.c) >> (60813u % 32u))), arg_0).a;
    return func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1337f + arg_1.e))), !(!vec3<bool>(func_3(Struct_3(Struct_2(var_3.a))).x, all(vec3<bool>(var_1.x, true, arg_0.b)), true)), func_2(arg_0.a, u_input.b, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(6938u, 6358u, u_input.b.x, u_input.a), ~vec4<u32>(4294967295u, 1u, u_input.e, 2948u)), 40081u, arg_0.a, _wgslsmith_add_u32(arg_0.a, ~1u)), vec2<i32>(-17857i, arg_1.d.a.a.x << (16964u % 32u))), arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-519f - 310f)))), !vec4<bool>(any(vec4<bool>(true, arg_0.c.x, true, true)), arg_0.c.x, arg_0.c.x, !arg_0.b), func_4(_wgslsmith_f_op_f32(f32(-1f) * -513f), !select(vec3<bool>(arg_0.c.x, true, false), vec3<bool>(true, true, true), arg_0.c.x), arg_0, func_2(~u_input.b.x, vec2<u32>(4294967295u, 23028u) >> (u_input.b % vec2<u32>(32u)), countOneBits(vec4<u32>(1u, 30413u, 0u, 1u)), vec2<i32>(0i, -2147483647i))), vec2<i32>(-arg_0.d, u_input.c)), Struct_4(vec2<i32>(arg_0.d, 2147483647i), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1768f))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -877f), vec3<bool>(false, false, false), arg_0, arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-303f, 285f) - 522f)))));
    var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1112f), select(vec3<bool>(arg_0.b, all(!vec3<bool>(false, arg_0.b, arg_0.b)), true), vec3<bool>(arg_0.c.x, false, true || arg_0.b), true && arg_0.b), arg_0, arg_0);
    var var_1 = global0[_wgslsmith_index_u32(~1u, 5u)];
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(round(var_1.x)))))), select(vec3<bool>(func_5(281f, !vec4<bool>(arg_0.b, true, false, arg_0.b), func_4(-1042f, vec3<bool>(false, true, arg_0.b), arg_0, arg_0), vec2<i32>(22401i, arg_0.d)).c.x, func_5(-933f, !vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), func_4(var_1.x, vec3<bool>(false, arg_0.b, arg_0.c.x), arg_0, arg_0), vec2<i32>(arg_0.d, -29886i)).c.x, arg_0.b), vec3<bool>(any(vec2<bool>(false, arg_0.b)), arg_0.b, var_0.a.a.x < 12608i), select(select(!vec3<bool>(arg_0.c.x, false, false), vec3<bool>(true, true, true), arg_0.c.x), vec3<bool>(true, arg_0.b, !arg_0.c.x), _wgslsmith_add_u32(22150u, arg_0.a) < ~1u)), func_2(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 70032u, u_input.d), vec3<u32>(1u, 49686u, u_input.a) & vec3<u32>(9329u, u_input.a, 0u)), ~(u_input.b << (select(vec2<u32>(51454u, u_input.b.x), u_input.b, arg_0.c.x) % vec2<u32>(32u))), vec4<u32>(u_input.a, arg_0.a, u_input.a, u_input.a), vec2<i32>(_wgslsmith_div_i32(u_input.c & -2147483647i, arg_0.d), select(arg_1.x, -2147483647i, false))), func_2(arg_0.a, _wgslsmith_div_vec2_u32(vec2<u32>(~15970u, ~1u), ~u_input.b), abs(vec4<u32>(arg_0.a, 0u, 26936u ^ arg_0.a, 0u)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, arg_0.d), func_4(var_1.x, vec3<bool>(true, arg_0.c.x, false), Struct_1(72238u, true, vec2<bool>(false, false), var_0.a.a.x), Struct_1(arg_0.a, arg_0.c.x, vec2<bool>(false, false), 2147483647i)).a.a.zy), arg_1.yz)));
    var var_2 = Struct_3(var_0.a);
    return 1i;
}

fn func_7(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_4 {
    global0 = array<vec3<f32>, 5>();
    var var_0 = func_4(-493f, arg_1.wwy, Struct_1(arg_0.x, arg_1.x, !(!vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(3390i, 29872i), vec2<i32>(2147483647i, u_input.c)) << (_wgslsmith_dot_vec3_u32(arg_0.yzw, vec3<u32>(1u, 35394u, 66675u)) % 32u), 0i)), Struct_1(~_wgslsmith_mult_u32(func_5(521f, arg_1, Struct_3(Struct_2(vec3<i32>(u_input.c, u_input.c, u_input.c))), vec2<i32>(u_input.c, u_input.c)).a, 55763u), !(!func_2(u_input.a, vec2<u32>(u_input.e, 4294967295u), vec4<u32>(51835u, 78434u, arg_0.x, 9637u), vec2<i32>(u_input.c, 394i)).b), vec2<bool>(true, any(select(arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1.x))), -2147483647i)).a;
    global0 = array<vec3<f32>, 5>();
    let var_1 = ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(select(u_input.d, u_input.a, false), ~1u, ~4294967295u), vec3<u32>(1u, 1u, u_input.b.x), arg_1.x), arg_0.yww);
    let var_2 = false;
    return Struct_4(_wgslsmith_mult_vec2_i32(min(vec2<i32>(var_0.a.x, var_0.a.x | 21143i), firstLeadingBit(-var_0.a.yx)), ~(~(~vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_div_i32(-(i32(-1i) * -1i), var_0.a.x) ^ -(i32(-1i) * -1i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-308f * -363f))), -1721f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f), -288f))), Struct_3(func_6(Struct_1(~u_input.a, false, vec2<bool>(var_2, arg_1.x), max(0i, u_input.c)), Struct_4(var_0.a.zz, 7482i, _wgslsmith_f_op_f32(1616f - -100f), func_4(-684f, arg_1.wwy, Struct_1(4294967295u, arg_1.x, arg_1.yx, u_input.c), Struct_1(10087u, false, arg_1.xy, 36654i)), _wgslsmith_div_f32(-308f, -2659f))).a), _wgslsmith_f_op_f32(f32(-1f) * -1253f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(~(_wgslsmith_sub_vec4_u32(vec4<u32>(63693u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.d, 0u, 0u, 1u) | vec4<u32>(19629u, u_input.b.x, u_input.a, 1u)) | vec4<u32>(u_input.a, ~u_input.e, 1u, 26973u)), vec4<bool>(false, (func_1(Struct_1(u_input.b.x, true, vec2<bool>(true, false), u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) << (~u_input.a % 32u)) < u_input.c, true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
    let var_1 = 127012u;
    var var_2 = func_6(Struct_1(4294967295u, !func_5(-190f, vec4<bool>(false, false, true, true), Struct_3(Struct_2(vec3<i32>(1i, u_input.c, 19910i))), min(var_0.d.a.a.xy, var_0.a)).b, select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), false), -(i32(-1i) * -var_0.d.a.a.x)), var_0).a;
    var_2 = func_4(-597f, select(vec3<bool>(!any(vec3<bool>(true, true, false)), true, true), vec3<bool>(true, true, true), !(u_input.e == ~u_input.a)), func_5(_wgslsmith_f_op_f32(var_0.c - -1464f), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, false, false))), var_0.d, ~min(max(var_0.d.a.a.xy, vec2<i32>(u_input.c, var_2.a.x)), vec2<i32>(1i, var_0.d.a.a.x))), Struct_1(~(~var_1), false, vec2<bool>(!func_5(-613f, vec4<bool>(true, false, true, false), Struct_3(var_0.d.a), var_2.a.yz).b, false), 16651i)).a;
    let var_3 = reverseBits(vec4<u32>(~var_1, 1u, select(~1u, reverseBits(1u), all(vec4<bool>(false, false, true, true))), firstLeadingBit(~var_1))) << (select(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 6735u, u_input.a, 1889u), _wgslsmith_mult_vec4_u32(vec4<u32>(122556u, u_input.b.x, 39715u, u_input.b.x), vec4<u32>(0u, 44068u, 4294967295u, 1u))), 1u, ~func_5(-1000f, vec4<bool>(true, true, false, false), var_0.d, vec2<i32>(u_input.c, var_0.d.a.a.x)).a, var_1), ~(~max(vec4<u32>(u_input.e, var_1, 54438u, 1u), vec4<u32>(u_input.e, 15431u, u_input.a, var_1))), true) % vec4<u32>(32u));
    var_2 = var_0.d.a;
    var var_4 = !vec2<bool>(false, func_2(var_3.x, _wgslsmith_clamp_vec2_u32(~u_input.b, ~u_input.b, ~var_3.xy), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_3.x, 21390u, var_1), countOneBits(vec4<u32>(var_3.x, 4294967295u, var_1, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(30503u, var_3.x, var_3.x, var_1), var_3, var_3)), var_0.a ^ var_0.a).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.e)), -1000f)), select(vec3<u32>(~1u, 1u, u_input.a), _wgslsmith_sub_vec3_u32(countOneBits(var_3.yxz), vec3<u32>(reverseBits(55597u), ~35169u, _wgslsmith_sub_u32(67482u, 17321u))), vec3<bool>(var_4.x, any(vec3<bool>(var_4.x, var_4.x, false)), !(var_1 > 2260u))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), -825f, var_0.c))), _wgslsmith_sub_u32(4294967295u, 1u), ~_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(84518u, 4294967295u)), ~min(u_input.b, u_input.b)));
}

