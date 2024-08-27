struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: array<f32, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_0.yw;
    let var_1 = (arg_0.x | (any(select(vec4<bool>(true, true, false, arg_0.x), arg_0, var_0.x)) && select(true, true, !arg_0.x))) || var_0.x;
    let var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 30u)] + -234f);
    global1 = array<f32, 30>();
    var var_3 = reverseBits(u_input.d.x);
    return vec3<bool>(true, var_1, arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> Struct_5 {
    let var_0 = any(!vec4<bool>(false, !arg_2.b.a, (true | arg_2.d.c.x) && true, false || (u_input.b == 1i)));
    global0 = array<vec4<f32>, 21>();
    global1 = array<f32, 30>();
    var var_1 = Struct_3(Struct_2(u_input.d.x, abs(~(-vec4<i32>(u_input.b, arg_2.d.b.x, arg_2.d.b.x, 1i))), func_3(select(!vec4<bool>(arg_1.a, false, var_0, arg_0.a), !vec4<bool>(false, arg_1.a, arg_2.b.a, true), !vec4<bool>(arg_2.a.a, var_0, false, true)))));
    let var_2 = vec3<u32>(63557u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.d.a, u_input.d.x, arg_2.e), vec3<u32>(34403u, u_input.d.x, arg_2.e)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 32708u), vec3<u32>(var_1.a.a, arg_2.e, u_input.d.x), vec3<u32>(arg_3, 0u, 49458u))), firstLeadingBit(19715u)), ~u_input.d.x);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1482f - _wgslsmith_f_op_f32(795f * arg_1.b)) + 772f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) * arg_1.b) * arg_0.b), -2308f));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_2(17936u, abs(vec4<i32>(arg_1, -55518i, _wgslsmith_mult_i32(u_input.a, -1i), u_input.a) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 35693u, u_input.d.x), vec4<u32>(u_input.d.x, 30541u, u_input.d.x, 7177u)) % vec4<u32>(32u))), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(vec4<bool>(true, true, true, true))), true));
    global1 = array<f32, 30>();
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    global1 = array<f32, 30>();
    return reverseBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, var_0.a, u_input.d.x, var_0.a), vec4<u32>(var_0.a, u_input.d.x, u_input.d.x, 48532u)))) >> (~vec4<u32>(15489u, 22142u, countOneBits(u_input.d.x), ~1u) % vec4<u32>(32u));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(469f - global1[_wgslsmith_index_u32(u_input.d.x, 30u)]))) > 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(751f)))))), Struct_1(any(vec3<bool>(true, all(vec2<bool>(true, arg_2.x)), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 30u)]) + _wgslsmith_f_op_f32(-168f - arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(Struct_1(arg_2.x, 580f), Struct_1(true, arg_3), Struct_4(Struct_1(arg_2.x, arg_3), Struct_1(true, -462f), 886f, Struct_2(arg_0, vec4<i32>(u_input.a, arg_1.x, 2147483647i, 21982i), vec3<bool>(arg_2.x, false, true)), 0u), u_input.d.x).a), _wgslsmith_f_op_f32(sign(-1128f))) + -1896f), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(Struct_5(-806f, vec2<f32>(global1[_wgslsmith_index_u32(36670u, 30u)], -901f)), arg_1.x).x, 4294967295u, ~u_input.d.x, 29295u), _wgslsmith_div_vec4_u32(~vec4<u32>(70523u, arg_0, 23244u, 0u), ~vec4<u32>(11680u, arg_0, 0u, 4294967295u))), vec4<i32>(-(~(-2147483647i)), -35599i, _wgslsmith_div_i32(-11984i, arg_1.x), min(25629i, _wgslsmith_div_i32(arg_1.x, u_input.b))), arg_2), 4294967295u);
    let var_1 = Struct_2(~38463u, max(u_input.c, vec4<i32>(reverseBits(_wgslsmith_div_i32(-44447i, u_input.c.x)), -(~u_input.b), -2168i, 2147483647i)), !vec3<bool>(arg_2.x, !func_3(vec4<bool>(false, var_0.b.a, false, arg_2.x)).x, false));
    var var_2 = var_0.d.c.x;
    let var_3 = ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(29489u, u_input.d.x, var_0.d.a, 4376u), countOneBits(vec4<u32>(21430u, 49930u, 25769u, 1u))));
    var var_4 = 2147483647i;
    return Struct_4(Struct_1(arg_2.x, _wgslsmith_f_op_f32(-644f - -393f)), var_0.b, _wgslsmith_f_op_f32(-arg_3), Struct_2(func_4(Struct_5(arg_3, vec2<f32>(global1[_wgslsmith_index_u32(20437u, 30u)], 1461f)), 22805i).x >> (0u % 32u), _wgslsmith_sub_vec4_i32(firstTrailingBit(var_1.b), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 18525i, 2147483647i, var_1.b.x), var_0.d.b), var_0.d.b)), var_0.d.c), ~_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_div_u32(var_0.d.a, var_3)) ^ u_input.d.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> u32 {
    global0 = array<vec4<f32>, 21>();
    var var_0 = func_5(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d.x, 47771u, arg_1.a.a, 39476u) >> (vec4<u32>(1u, arg_1.a.a, 75390u, arg_1.a.a) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(35558u, arg_1.a.a, arg_1.a.a, 4294967295u)), func_4(func_2(Struct_1(false, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), arg_0, Struct_4(Struct_1(false, -275f), Struct_1(arg_0.a, arg_0.b), 1192f, arg_1.a, 42947u), 1u), arg_1.a.b.x)) ^ ~arg_1.a.a, vec4<i32>(min(31235i, arg_2), _wgslsmith_clamp_i32(-3714i, max(1i, arg_2), ~(-2147483647i)) & 0i, 23803i ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2, arg_1.a.b.x), 0i), _wgslsmith_mult_i32(-arg_1.a.b.x ^ (12740i | arg_2), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.a.b.wzw, vec3<i32>(1i, u_input.c.x, u_input.c.x), u_input.c.yxx), vec3<i32>(-2147483647i, u_input.a, -23299i)))), vec3<bool>(!arg_1.a.c.x, arg_0.a, true), global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(arg_1.a.a, ~1u)), 30u)]);
    let var_1 = !all(var_0.d.c);
    let var_2 = func_2(Struct_1(func_3(select(select(vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_0.a, false), vec4<bool>(arg_0.a, var_1, arg_1.a.c.x, arg_1.a.c.x), vec4<bool>(false, true, var_0.a.a, false)), vec4<bool>(arg_1.a.c.x, arg_0.a, arg_1.a.c.x, var_1), vec4<bool>(false, arg_0.a, true, arg_0.a))).x, arg_0.b), func_5(arg_1.a.a, ~vec4<i32>(firstLeadingBit(arg_1.a.b.x), _wgslsmith_sub_i32(8018i, -1i), u_input.a >> (53997u % 32u), u_input.a), var_0.d.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 35737u), 0u), 30u)])).a, Struct_4(func_5(_wgslsmith_clamp_u32(firstTrailingBit(u_input.d.x), _wgslsmith_clamp_u32(arg_1.a.a, 0u, 4294967295u), arg_1.a.a), -arg_1.a.b, !arg_1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)).a, Struct_1(!var_0.b.a | (arg_1.a.c.x != false), -186f), arg_0.b, func_5(var_0.d.a, vec4<i32>(var_0.d.b.x, arg_2, var_0.d.b.x, -28325i) | -var_0.d.b, vec3<bool>(true, true, true), arg_0.b).d, 21455u), func_4(func_2(var_0.a, func_5(var_0.e, abs(arg_1.a.b), vec3<bool>(true, true, var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -883f)).a, Struct_4(func_5(0u, var_0.d.b, vec3<bool>(true, false, false), 100f).b, arg_0, -1562f, func_5(31528u, var_0.d.b, vec3<bool>(true, arg_1.a.c.x, false), arg_0.b).d, arg_1.a.a ^ u_input.d.x), var_0.d.a), 1419i).x);
    var var_3 = func_5(firstTrailingBit(var_0.d.a) ^ 36618u, vec4<i32>(func_5(5773u, -vec4<i32>(-2465i, 0i, 2147483647i, 20912i), arg_1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1520f)).d.b.x << (_wgslsmith_mult_u32(var_0.d.a, var_0.e) % 32u), 19884i, 2147483647i, -u_input.b), func_5(~(~arg_1.a.a), arg_1.a.b, func_5(u_input.d.x, -var_0.d.b, select(func_3(vec4<bool>(false, true, var_0.b.a, false)), !arg_1.a.c, func_3(vec4<bool>(arg_0.a, false, var_0.a.a, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) + _wgslsmith_f_op_f32(-arg_0.b))).d.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.b, 1000f)))).d.c, global1[_wgslsmith_index_u32((abs(58335u) >> (firstLeadingBit(_wgslsmith_add_u32(7998u, var_0.e)) % 32u)) ^ (~1u | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 15404u), arg_1.a.a & var_0.e, u_input.d.x)), 30u)]).d.b.x;
    return _wgslsmith_add_u32(0u, _wgslsmith_add_u32(~0u, _wgslsmith_mult_u32(~(11436u | var_0.d.a), 13488u)));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> StorageBuffer {
    var var_0 = Struct_3(func_5(_wgslsmith_div_u32(~(~0u), 4294967295u), vec4<i32>(u_input.b, -46827i, 55747i, _wgslsmith_dot_vec2_i32(vec2<i32>(-8066i, u_input.b), u_input.c.yy)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-arg_1)).d);
    global0 = array<vec4<f32>, 21>();
    var var_1 = var_0.a.c.yy;
    global1 = array<f32, 30>();
    var_1 = var_0.a.c.xz;
    return StorageBuffer(-44230i, arg_0.x, 4294967295u, vec3<i32>(min(var_0.a.b.x, var_0.a.b.x), -28739i, u_input.a << ((u_input.d.x & firstTrailingBit(var_0.a.a)) % 32u)), 21184u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)]) + vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 30u)] * -187f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(87030u, 30u)])))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, 1077f, 955f, -934f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1576f, var_0.x, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], var_0.x, -1000f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 743f, var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]))))));
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = func_6(vec2<u32>(~_wgslsmith_clamp_u32(4294967295u | u_input.d.x, u_input.d.x, ~1u), min(_wgslsmith_mod_u32(u_input.d.x, 18427u), u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(func_1(Struct_1(true, global1[_wgslsmith_index_u32(57796u, 30u)]), Struct_3(Struct_2(0u, u_input.c, vec3<bool>(false, true, true))), 3858i) >> (u_input.d.x % 32u), 30u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-141f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8328u, 30u)]) - _wgslsmith_f_op_f32(select(1530f, global1[_wgslsmith_index_u32(u_input.d.x, 30u)], false)))))));
}

