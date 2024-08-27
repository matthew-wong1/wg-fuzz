struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    let var_0 = ~arg_0.d;
    var var_1 = Struct_3(Struct_2(false, Struct_1(vec2<u32>(27408u, 51576u >> (arg_2.x % 32u)), ~(~arg_0.e.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(671f)), _wgslsmith_f_op_f32(arg_3.b.b.c + arg_3.a.b.c))))), arg_0.b, arg_3.c, min(select(reverseBits(max(arg_0.b.b.b.x, -2147483647i)), ~arg_3.d, all(vec2<bool>(true, arg_3.a.a))), var_0), arg_0.b.b);
    let var_2 = arg_3.c.x;
    let var_3 = 4294967295u;
    let var_4 = Struct_1(arg_0.a.b.a, arg_0.b.b.b, _wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1050f * -208f)))), any(select(vec4<bool>(arg_3.a.a, arg_3.a.a, arg_3.b.a, false), select(vec4<bool>(arg_3.a.a, true, var_1.a.a, var_1.a.a), vec4<bool>(true, arg_0.b.a, arg_0.b.a, arg_0.b.a), vec4<bool>(true, var_1.b.a, arg_0.b.a, var_1.a.a)), !vec4<bool>(false, arg_3.b.a, true, true))))));
    return var_1.a.b.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = !vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true);
    var var_2 = Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(func_3(Struct_3(Struct_2(var_0, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, 2147483647i), -1000f)), Struct_2(var_1.x, Struct_1(u_input.a.zy, vec2<i32>(41475i, 12558i), 2157f)), vec4<f32>(1517f, -291f, 842f, 1056f), -37515i, Struct_1(u_input.a.yw, vec2<i32>(-8234i, -38331i), -1369f)), ~vec2<u32>(76043u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 9078u), Struct_3(Struct_2(false, Struct_1(vec2<u32>(u_input.a.x, 12995u), vec2<i32>(13881i, 19749i), 1538f)), Struct_2(false, Struct_1(vec2<u32>(5760u, 0u), vec2<i32>(1i, 2147483647i), 611f)), vec4<f32>(673f, 1000f, 514f, -1191f), 2147483647i, Struct_1(vec2<u32>(u_input.a.x, 49162u), vec2<i32>(1i, 0i), 1117f))), 1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1827f), _wgslsmith_f_op_f32(-395f - 1612f)))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)))), _wgslsmith_f_op_f32(f32(-1f) * -150f));
    let var_4 = abs(u_input.a.zxw) << (_wgslsmith_sub_vec3_u32(u_input.a.zwx, u_input.a.zyz) % vec3<u32>(32u));
    return Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.b.a.x | 32967u, 1u), var_2.b.a.x), u_input.a.x), select(~(firstLeadingBit(vec2<i32>(var_2.b.b.x, var_2.b.b.x)) ^ ~vec2<i32>(0i, -1i)), firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_2.b.b, var_2.b.b), var_2.b.b)), var_1), -1367f);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = 2147483647i;
    var_0 = ~arg_2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(1269f)), _wgslsmith_div_f32(arg_1.e.c, 221f), -1252f, 701f)))));
    var var_2 = arg_1;
    let var_3 = func_2();
    return func_2();
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.c + arg_1.c), 1651f, func_2().c)));
    var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.c), 1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -498f) - var_0.x))));
    var var_1 = Struct_2(((max(2147483647i, arg_1.b.x) >> (u_input.a.x % 32u)) & arg_1.b.x) <= ~_wgslsmith_clamp_i32(-15805i, ~arg_1.b.x, select(arg_1.b.x, 0i, false)), arg_1);
    var_1 = Struct_2(false != any(!(!vec4<bool>(var_1.a, true, true, var_1.a))), Struct_1(arg_1.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2098i, 1i, arg_1.b.x), -vec3<i32>(0i, arg_1.b.x, arg_1.b.x)), (var_1.b.b.x << (u_input.a.x % 32u)) ^ ~var_1.b.b.x), 1223f));
    let var_2 = vec3<i32>(-2147483647i, ~0i, var_1.b.b.x);
    return Struct_3(Struct_2(false, Struct_1(vec2<u32>(countOneBits(u_input.a.x), ~75u), var_1.b.b, _wgslsmith_f_op_f32(min(arg_1.c, var_1.b.c)))), Struct_2(true, Struct_1(var_1.b.a | abs(vec2<u32>(arg_1.a.x, 82614u)), var_1.b.b & (vec2<i32>(-2147483647i, 2814i) >> (arg_1.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(136f, arg_0.x)) + -125f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), 306f, var_1.b.c, _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.b.x, 23604i), min(-29760i, -1i)), _wgslsmith_mod_i32(-var_2.x, 82565i), func_3(Struct_3(Struct_2(var_1.a, arg_1), Struct_2(true, arg_1), arg_0, -2147483647i, Struct_1(arg_1.a, vec2<i32>(0i, 15754i), -138f)), vec2<u32>(arg_1.a.x, u_input.a.x), vec3<u32>(var_1.b.a.x, u_input.a.x, var_1.b.a.x) ^ vec3<u32>(arg_1.a.x, 27827u, arg_1.a.x), Struct_3(Struct_2(true, Struct_1(arg_1.a, var_1.b.b, arg_0.x)), Struct_2(true, arg_1), arg_0, var_2.x, arg_1)), -34566i), ~(vec4<i32>(35777i, var_1.b.b.x, -1i, 0i) >> (vec4<u32>(84628u, 17525u, 42012u, 0u) % vec4<u32>(32u))) ^ (select(vec4<i32>(10534i, -1i, var_1.b.b.x, var_1.b.b.x), vec4<i32>(30185i, arg_1.b.x, 0i, -32739i), true) ^ vec4<i32>(-30500i, var_2.x, var_1.b.b.x, -1i))), Struct_1(firstTrailingBit(u_input.a.zw) ^ vec2<u32>(1u, func_2().a.x), max(vec2<i32>(~(-2147483647i), 0i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.b.x, arg_1.b.x), reverseBits(vec2<i32>(-10741i, var_1.b.b.x)))), _wgslsmith_f_op_f32(exp2(arg_1.c))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042f, 570f, 520f, 893f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1094f, -661f, -640f, -2193f))))), func_4(~vec4<i32>(33414i, abs(18612i), 1i, -1i), Struct_3(Struct_2(false, func_2()), Struct_2(!arg_0, Struct_1(u_input.a.yw, vec2<i32>(84066i, -2147483647i), 698f)), vec4<f32>(-1000f, 357f, 1000f, _wgslsmith_f_op_f32(min(-526f, 758f))), -23440i, Struct_1(~u_input.a.xw, select(vec2<i32>(-2147483647i, -12937i), vec2<i32>(1i, -1i), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -690f))), vec2<i32>(-6265i, firstTrailingBit(-2508i))));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, _wgslsmith_f_op_f32(var_0.b.b.c + 850f), _wgslsmith_div_f32(-659f, 106f), _wgslsmith_f_op_f32(var_0.a.b.c + -100f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.b.c, -713f, _wgslsmith_f_op_f32(var_0.a.b.c - -623f), _wgslsmith_f_op_f32(trunc(1000f))))))), func_4(~(-vec4<i32>(var_0.a.b.b.x, var_0.e.b.x, -38973i, var_0.d)) & ((vec4<i32>(29107i, var_0.a.b.b.x, var_0.d, -1i) | vec4<i32>(-12939i, 2147483647i, var_0.e.b.x, var_0.a.b.b.x)) & abs(vec4<i32>(var_0.e.b.x, var_0.e.b.x, 30411i, var_0.b.b.b.x))), func_5(vec4<f32>(var_0.b.b.c, -2634f, func_4(vec4<i32>(var_0.e.b.x, var_0.e.b.x, 12725i, -2147483647i), Struct_3(Struct_2(var_0.b.a, Struct_1(var_0.e.a, vec2<i32>(1i, var_0.b.b.b.x), var_0.e.c)), Struct_2(var_0.a.a, var_0.b.b), vec4<f32>(-1000f, -129f, var_0.e.c, 1642f), var_0.e.b.x, var_0.e), vec2<i32>(var_0.b.b.b.x, 2147483647i)).c, _wgslsmith_f_op_f32(var_0.b.b.c + 105f)), func_4(select(vec4<i32>(1i, var_0.e.b.x, 61385i, var_0.e.b.x), vec4<i32>(67758i, 2147483647i, var_0.b.b.b.x, -3259i), false), Struct_3(Struct_2(var_0.b.a, Struct_1(var_0.b.b.a, var_0.a.b.b, 639f)), Struct_2(arg_0, var_0.b.b), vec4<f32>(-697f, var_0.b.b.c, -1296f, var_0.c.x), 42773i, Struct_1(u_input.a.yw, vec2<i32>(var_0.e.b.x, var_0.d), 1156f)), var_0.e.b)), _wgslsmith_mult_vec2_i32(~(~var_0.e.b), abs(func_2().b))));
    var_0 = Struct_3(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-var_0.c), !vec4<bool>(var_0.a.a, var_0.a.a, true, false)))), func_2()).a, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.c), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(abs(var_0.c.x)))), Struct_1(vec2<u32>(var_0.e.a.x >> (4294967295u % 32u), var_0.b.b.a.x), abs(vec2<i32>(1i, -2147483647i)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(var_0.b.b.c, var_0.e.c, true))))).b, var_0.c, 1i, var_0.b.b);
    var var_1 = var_0.c.zy;
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(min(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1635f, var_0.c.x, var_1.x, var_1.x) + vec4<f32>(1760f, 639f, 649f, -626f))))), Struct_1(vec2<u32>(var_0.e.a.x, u_input.a.x), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-3294i, var_0.d), var_0.e.b), ~vec2<i32>(-17509i, var_0.e.b.x)) << (u_input.a.zw % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.c.x))))));
    return func_2().b;
}

fn func_6(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) & vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x))), vec4<u32>(_wgslsmith_add_u32(func_4(vec4<i32>(arg_0.x, 2147483647i, -46217i, arg_0.x) | vec4<i32>(1i, arg_0.x, arg_0.x, -2147483647i), func_5(vec4<f32>(198f, arg_1, -1342f, 642f), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), arg_0, -1324f)), -vec2<i32>(arg_0.x, arg_0.x)).a.x, ~u_input.a.x), firstTrailingBit(u_input.a.x), u_input.a.x >> (select(83546u ^ u_input.a.x, ~u_input.a.x, any(arg_2.yz)) % 32u), ~func_2().a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, 420f));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, -460f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))), func_2());
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.zy) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 385f) * _wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1163f)))));
    let var_3 = _wgslsmith_f_op_f32(min(-692f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().c) * _wgslsmith_div_f32(var_2.a.b.c, 747f))));
    return Struct_3(Struct_2(!any(!vec4<bool>(var_2.b.a, arg_2.x, false, false)), Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.zw, ~vec2<u32>(39742u, u_input.a.x)), vec2<i32>(arg_0.x, var_2.b.b.b.x), -253f)), func_5(var_2.c, Struct_1(~u_input.a.xz, vec2<i32>(arg_0.x, -2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -107f))))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(495f, 1853f, var_2.a.b.c, -1233f), var_2.c)) * _wgslsmith_f_op_vec4_f32(abs(var_2.c))), i32(-1i) * -(1i << (~u_input.a.x % 32u)), var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(true && (any(vec4<bool>(true, false, true, true)) != true)), func_4(~abs(-vec4<i32>(3687i, 2147483647i, -58629i, 2147483647i)), Struct_3(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, 1000f, -1896f, 498f)), func_2()).b, Struct_2(true, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, -38791i), 1000f)), vec4<f32>(-235f, -1490f, _wgslsmith_div_f32(471f, 758f), _wgslsmith_f_op_f32(234f + 1458f)), _wgslsmith_mult_i32(-19209i, _wgslsmith_mult_i32(0i, -2147483647i)), Struct_1(u_input.a.zx, vec2<i32>(-5531i, -1i), _wgslsmith_f_op_f32(-728f * 152f))), firstLeadingBit((vec2<i32>(-14674i, -14285i) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) & ~vec2<i32>(-19252i, -2147483647i))).c, vec3<bool>(true, true, true));
    let var_1 = vec4<i32>(~(-1i), ~_wgslsmith_add_i32(var_0.a.b.b.x, 0i) ^ ~(-24465i), (var_0.e.b.x << (_wgslsmith_mult_u32(u_input.a.x, var_0.a.b.a.x) % 32u)) & (i32(-1i) * -9340i), -1i) & abs(vec4<i32>(-1i, 0i, -var_0.a.b.b.x, var_0.b.b.b.x) << (vec4<u32>(func_5(var_0.c, var_0.a.b).a.b.a.x, countOneBits(4294967295u), 4294967295u, u_input.a.x) % vec4<u32>(32u)));
    let var_2 = -1367f;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.c * 1201f) * func_2().c)));
    var_3 = -1972f;
    var var_4 = Struct_3(func_6(var_1.zw, 529f, select(!select(vec3<bool>(true, var_0.b.a, true), vec3<bool>(var_0.b.a, var_0.a.a, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(var_0.b.a, true, true), vec3<bool>(true, true, var_0.b.a)), var_0.b.a), select(vec3<bool>(var_0.b.a, true, true), vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), vec3<bool>(var_0.b.a, true, var_0.b.a)))).a, func_5(var_0.c, Struct_1(reverseBits(u_input.a.zx), vec2<i32>(func_6(var_0.e.b, var_2, vec3<bool>(true, true, true)).a.b.b.x, reverseBits(-46488i)), -951f)).a, _wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_mod_i32(2147483647i, 1i), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(var_0.e.a.x, 1u)) & _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.b.b.a, var_0.b.b.a), ~var_0.b.b.a), var_1.zw, func_6(var_0.e.b, 231f, select(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), vec3<bool>(false, var_0.b.a, true), select(vec3<bool>(true, var_0.b.a, var_0.b.a), vec3<bool>(false, var_0.b.a, false), false))).e.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c.x), -551f), _wgslsmith_f_op_f32(trunc(var_4.e.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 + var_4.b.b.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x + 1039f)))), Struct_1(vec2<u32>(61894u, func_6(var_1.xw, var_4.b.b.c, vec3<bool>(false, var_4.b.a, var_0.a.a)).b.b.a.x), var_1.wx, func_4(-var_1, Struct_3(var_0.b, var_0.a, vec4<f32>(-1166f, var_2, -1047f, -2039f), var_1.x, var_4.e), var_4.a.b.b).c)).e.a, -9380i, 1383f, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_6(vec2<i32>(-16889i, var_4.b.b.b.x), var_4.c.x, vec3<bool>(var_4.b.a, var_0.a.a, false)).e.c * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, 2676f)) - _wgslsmith_div_f32(func_4(var_1, Struct_3(Struct_2(true, var_4.e), Struct_2(true, var_0.e), vec4<f32>(var_0.a.b.c, 244f, var_0.b.b.c, -429f), 33073i, Struct_1(vec2<u32>(7112u, 36019u), var_4.e.b, var_0.b.b.c)), var_1.zx).c, var_0.a.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -1339f));
}

