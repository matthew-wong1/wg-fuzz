struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_4(arg_0.b.b.b.b, arg_2, min(select(~vec3<u32>(arg_2.b.b.b, arg_0.a.x, u_input.a.x), arg_0.b.c, arg_2.c) & ~(~arg_0.b.c), arg_0.a ^ ~(vec3<u32>(global2.x, arg_0.b.c.x, u_input.a.x) ^ vec3<u32>(1u, 4294967295u, 19790u))));
    global1 = array<Struct_2, 6>();
    global2 = var_0.c;
    global2 = vec3<u32>(0u, 1810u, abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.c.xz >> (u_input.a % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(min(var_0.c.yz, var_0.c.xz), vec2<u32>(36520u, arg_0.b.a.b)))));
    global1 = array<Struct_2, 6>();
    return var_0.b;
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = arg_0.b;
    var var_1 = Struct_5(vec3<u32>(~reverseBits(~0u), global2.x | firstTrailingBit(_wgslsmith_mult_u32(global2.x, 1u)), 0u >> (u_input.b % 32u)), var_0, select(select(!(!vec3<bool>(var_0.b.c.x, false, true)), func_2(Struct_5(vec3<u32>(24498u, 4294967295u, 105128u), Struct_4(Struct_1(11062u, global2.x), arg_0.b.b, vec3<u32>(arg_0.a.x, 12974u, arg_0.a.x)), vec3<bool>(arg_1, false, false), 669f), var_0.b.c, arg_2, func_2(Struct_5(vec3<u32>(59995u, u_input.a.x, u_input.b), Struct_4(arg_0.b.a, Struct_3(var_0.b.a, Struct_2(-28701i, Struct_1(arg_0.a.x, 4294967295u)), vec3<bool>(arg_0.b.b.c.x, true, arg_2.c.x), 1u, Struct_2(-15362i, Struct_1(arg_2.d, var_0.b.d))), vec3<u32>(18757u, global2.x, arg_0.a.x)), vec3<bool>(false, var_0.b.c.x, arg_0.b.b.c.x), arg_0.b.b.a.x), arg_2.c, arg_2, 1i).b.a).c, var_0.b.c.x), var_0.b.c, !((arg_0.b.b.c.x != true) || arg_1)), arg_2.a.x);
    global2 = ~arg_0.b.c;
    let var_2 = Struct_5(firstTrailingBit(~vec3<u32>(min(0u, 59227u), _wgslsmith_div_u32(u_input.b, 64858u), 32441u)), var_1.b, vec3<bool>(arg_1, var_0.b.c.x, all(vec4<bool>(var_1.c.x, true, true | var_0.b.c.x, arg_0.b.b.c.x))), 1225f);
    global2 = select(min(~vec3<u32>(43143u, 4294967295u, arg_2.e.b.b), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, arg_0.a.x, arg_2.d), vec3<u32>(var_2.b.c.x, reverseBits(3251u), _wgslsmith_mod_u32(4294967295u, 1u)), var_1.a)), var_2.a, arg_2.c);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b.a.x + _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), arg_0.b.b.a.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> i32 {
    global0 = array<Struct_2, 8>();
    global2 = _wgslsmith_mult_vec3_u32(select(arg_1.c, arg_1.c, arg_1.b.a.x <= _wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(arg_1.b.a.x * 104f))), ~(~(~arg_1.c)));
    let var_0 = arg_1.b.c.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, 365f)), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<u32>(global2.x, u_input.b, arg_1.b.e.b.b), arg_1, arg_1.b.c, -1035f), select(arg_1.b.c.x, arg_1.b.c.x, arg_1.b.c.x), arg_1.b)).x), 117f));
    global0 = array<Struct_2, 8>();
    return u_input.c;
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_2, 8>();
    global1 = array<Struct_2, 6>();
    let var_0 = Struct_2(_wgslsmith_div_i32(~_wgslsmith_clamp_i32(u_input.d, -1i, -1i), firstTrailingBit(u_input.c & 2147483647i)) << (42058u % 32u), Struct_1(global2.x, ~1u));
    var var_1 = vec3<i32>(~(i32(-1i) * -2147483647i), firstLeadingBit(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<u32>(u_input.b, 36082u, 1u), Struct_4(Struct_1(global2.x, 1u), Struct_3(vec3<f32>(921f, -1000f, 489f), Struct_2(var_0.a, var_0.b), vec3<bool>(true, true, false), 1u, Struct_2(79171i, Struct_1(53041u, var_0.b.a))), vec3<u32>(33465u, global2.x, global2.x)), vec3<bool>(true, true, false), 957f), false, func_2(Struct_5(vec3<u32>(4294967295u, 7840u, u_input.b), Struct_4(Struct_1(84721u, 27928u), Struct_3(vec3<f32>(1150f, 964f, 216f), Struct_2(-65168i, var_0.b), vec3<bool>(false, false, false), 0u, Struct_2(0i, Struct_1(global2.x, u_input.b))), vec3<u32>(global2.x, global2.x, var_0.b.a)), vec3<bool>(true, false, false), 932f), vec3<bool>(false, false, true), Struct_3(vec3<f32>(509f, 332f, -1000f), global1[_wgslsmith_index_u32(global2.x, 6u)], vec3<bool>(false, false, true), u_input.b, Struct_2(var_0.a, Struct_1(31056u, var_0.b.a))), 0i))), Struct_4(Struct_1(global2.x, var_0.b.a), Struct_3(vec3<f32>(1000f, -1000f, 1909f), global1[_wgslsmith_index_u32(25709u, 6u)], vec3<bool>(false, false, true), 28663u, Struct_2(var_0.a, Struct_1(23197u, 46178u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.b.a, 1u), vec3<u32>(u_input.a.x, 34502u, global2.x), vec3<u32>(u_input.b, var_0.b.b, global2.x))))), -2147483647i);
    let var_2 = func_2(Struct_5(firstTrailingBit(vec3<u32>(var_0.b.a, u_input.a.x, u_input.a.x)) << (select(~vec3<u32>(var_0.b.a, global2.x, 57646u), vec3<u32>(9217u, var_0.b.a, global2.x), vec3<bool>(true, true, true)) % vec3<u32>(32u)), Struct_4(var_0.b, func_2(Struct_5(vec3<u32>(1u, global2.x, global2.x), Struct_4(Struct_1(var_0.b.a, global2.x), Struct_3(vec3<f32>(-312f, 566f, -268f), Struct_2(var_1.x, Struct_1(var_0.b.a, 42146u)), vec3<bool>(false, true, false), 43101u, global0[_wgslsmith_index_u32(15298u, 8u)]), vec3<u32>(4294967295u, 54467u, 1u)), vec3<bool>(true, false, true), -445f), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(31615u, 0u, 0u), Struct_4(var_0.b, Struct_3(vec3<f32>(1000f, 692f, 919f), Struct_2(var_1.x, Struct_1(var_0.b.a, global2.x)), vec3<bool>(true, false, true), 0u, Struct_2(var_0.a, Struct_1(4294967295u, 46757u))), vec3<u32>(1u, u_input.a.x, 1u)), vec3<bool>(true, true, true), -1301f), vec3<bool>(true, true, true), Struct_3(vec3<f32>(1575f, -554f, -148f), global1[_wgslsmith_index_u32(var_0.b.a, 6u)], vec3<bool>(false, false, false), var_0.b.b, global1[_wgslsmith_index_u32(26171u, 6u)]), -2241i), 2147483647i), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.b), 31920u, max(u_input.a.x, var_0.b.b))), select(func_2(Struct_5(vec3<u32>(var_0.b.a, u_input.a.x, 4227u), Struct_4(var_0.b, Struct_3(vec3<f32>(1538f, 1384f, 344f), Struct_2(var_0.a, Struct_1(global2.x, global2.x)), vec3<bool>(true, false, true), global2.x, global0[_wgslsmith_index_u32(0u, 8u)]), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), vec3<bool>(false, false, true), -1000f), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(1u, 26554u, 12091u), Struct_4(Struct_1(global2.x, var_0.b.b), Struct_3(vec3<f32>(-1103f, -180f, 1305f), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(true, true, true), var_0.b.b, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<u32>(0u, global2.x, 31442u)), vec3<bool>(true, false, true), 1035f), vec3<bool>(false, false, true), Struct_3(vec3<f32>(-167f, -556f, -1034f), global0[_wgslsmith_index_u32(1u, 8u)], vec3<bool>(false, false, false), global2.x, var_0), -39781i), _wgslsmith_dot_vec2_i32(var_1.zy, var_1.xz)).c, vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1965f))))), vec3<bool>(true || all(vec4<bool>(true, true, true, false)), true, func_2(Struct_5(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) >> (vec3<u32>(global2.x, var_0.b.a, global2.x) % vec3<u32>(32u)), Struct_4(var_0.b, Struct_3(vec3<f32>(2127f, -484f, -474f), Struct_2(var_0.a, Struct_1(u_input.a.x, 22970u)), vec3<bool>(false, false, true), 4294967295u, Struct_2(var_1.x, var_0.b)), vec3<u32>(u_input.b, var_0.b.b, global2.x)), vec3<bool>(true, false, true), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(vec3<u32>(4294967295u, 4294967295u, u_input.b), Struct_4(Struct_1(24816u, global2.x), Struct_3(vec3<f32>(722f, 663f, 576f), Struct_2(0i, Struct_1(4294967295u, global2.x)), vec3<bool>(false, false, true), 4294967295u, Struct_2(u_input.d, var_0.b)), vec3<u32>(global2.x, 38375u, u_input.b)), vec3<bool>(false, false, true), 1000f), false, Struct_3(vec3<f32>(-207f, -518f, 2574f), Struct_2(-2147483647i, var_0.b), vec3<bool>(true, true, false), 36582u, var_0))).x), vec3<bool>(true, true, true), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1480f, -883f, 906f)), var_0, vec3<bool>(true, true, true), 11730u, Struct_2(-7730i, Struct_1(u_input.a.x, 12159u))), u_input.c).c.x), func_2(Struct_5(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2.x, 1u), vec3<u32>(58136u, 18174u, 30463u)), Struct_4(var_0.b, Struct_3(vec3<f32>(-1042f, 146f, 618f), Struct_2(var_1.x, Struct_1(var_0.b.a, u_input.b)), vec3<bool>(false, true, false), 1u, Struct_2(var_0.a, var_0.b)), ~vec3<u32>(var_0.b.b, 32308u, 4294967295u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1901f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, -657f, 396f))), func_2(Struct_5(vec3<u32>(1u, u_input.b, 49670u), Struct_4(var_0.b, Struct_3(vec3<f32>(1892f, 1468f, -854f), global1[_wgslsmith_index_u32(62537u, 6u)], vec3<bool>(true, false, true), global2.x, var_0), vec3<u32>(1u, 28845u, 19173u)), vec3<bool>(false, false, true), -671f), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(27325u, 47329u, 0u), Struct_4(Struct_1(u_input.b, u_input.a.x), Struct_3(vec3<f32>(-389f, 1038f, -659f), var_0, vec3<bool>(false, false, true), u_input.b, Struct_2(2147483647i, Struct_1(global2.x, var_0.b.b))), vec3<u32>(var_0.b.b, 55076u, 1u)), vec3<bool>(false, false, false), 943f), vec3<bool>(false, true, true), Struct_3(vec3<f32>(-738f, 155f, -507f), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<bool>(true, false, true), global2.x, var_0), -19335i), 0i).b, vec3<bool>(true, true, true), 4294967295u, Struct_2(_wgslsmith_clamp_i32(-2147483647i, -47116i, 1i), var_0.b)), ~(~(-71019i) & (var_0.a >> (global2.x % 32u)))), _wgslsmith_add_i32(func_2(Struct_5(~vec3<u32>(u_input.b, var_0.b.a, u_input.b), Struct_4(var_0.b, Struct_3(vec3<f32>(-1402f, -1657f, 682f), var_0, vec3<bool>(true, false, false), u_input.a.x, Struct_2(var_0.a, Struct_1(u_input.b, 26568u))), vec3<u32>(0u, 1u, 20662u)), vec3<bool>(false, false, true), -212f), select(vec3<bool>(false, false, true), func_2(Struct_5(vec3<u32>(0u, 4294967295u, 5330u), Struct_4(var_0.b, Struct_3(vec3<f32>(553f, -1231f, -206f), global1[_wgslsmith_index_u32(30055u, 6u)], vec3<bool>(true, false, true), global2.x, Struct_2(0i, Struct_1(1u, 48403u))), vec3<u32>(41611u, var_0.b.a, 13799u)), vec3<bool>(false, false, false), -120f), vec3<bool>(false, true, true), Struct_3(vec3<f32>(507f, -1000f, 972f), Struct_2(-36904i, var_0.b), vec3<bool>(true, true, false), 26928u, var_0), 1i).c, false), Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-344f, -1000f, 219f), vec3<f32>(-534f, 761f, 1000f))), func_2(Struct_5(vec3<u32>(global2.x, 41925u, global2.x), Struct_4(Struct_1(0u, 55075u), Struct_3(vec3<f32>(-535f, -2362f, 443f), Struct_2(u_input.c, Struct_1(global2.x, 4968u)), vec3<bool>(false, true, true), 1u, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<u32>(36251u, var_0.b.b, global2.x)), vec3<bool>(true, false, false), 966f), vec3<bool>(false, true, true), Struct_3(vec3<f32>(-629f, -757f, 901f), Struct_2(-31868i, var_0.b), vec3<bool>(false, true, false), 1u, global0[_wgslsmith_index_u32(global2.x, 8u)]), -2147483647i).b, vec3<bool>(true, false, true), abs(7913u), Struct_2(-22700i, Struct_1(1u, var_0.b.a))), ~(0i | u_input.d)).e.a, u_input.d)).e;
    return vec2<f32>(530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1327f)) + -1094f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(51009u, 1u, countOneBits(u_input.a.x)), vec3<u32>(~4294967295u, ~1u, ~global2.x)) ^ u_input.a.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), vec2<f32>(1000f, -199f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_div_f32(427f, 1342f))))));
    var var_2 = func_2(Struct_5(vec3<u32>(max(97006u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, global2.x), vec2<u32>(global2.x, u_input.b))), 1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, global2.x), 4294967295u)), Struct_4(func_2(Struct_5(vec3<u32>(u_input.a.x, 38781u, global2.x), Struct_4(Struct_1(u_input.b, 75195u), Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<bool>(true, false, false), 8576u, Struct_2(-2147483647i, Struct_1(var_0.a, global2.x))), vec3<u32>(0u, 0u, 23995u)), vec3<bool>(false, true, false), var_1.x), vec3<bool>(true, true, true), Struct_3(vec3<f32>(var_1.x, 108f, var_1.x), Struct_2(u_input.c, Struct_1(var_0.a, global2.x)), vec3<bool>(false, true, false), global2.x, global0[_wgslsmith_index_u32(5466u, 8u)]), u_input.d).e.b, func_2(Struct_5(vec3<u32>(var_0.b, 35905u, 4294967295u), Struct_4(Struct_1(4294967295u, 1u), Struct_3(vec3<f32>(942f, var_1.x, -597f), Struct_2(u_input.c, Struct_1(1u, 0u)), vec3<bool>(false, true, false), global2.x, Struct_2(-30179i, Struct_1(0u, u_input.b))), vec3<u32>(35208u, var_0.b, var_0.b)), vec3<bool>(false, true, true), -283f), func_2(Struct_5(vec3<u32>(4294967295u, u_input.b, global2.x), Struct_4(Struct_1(var_0.a, var_0.b), Struct_3(vec3<f32>(var_1.x, -455f, 180f), global1[_wgslsmith_index_u32(var_0.a, 6u)], vec3<bool>(false, false, false), var_0.a, global1[_wgslsmith_index_u32(0u, 6u)]), vec3<u32>(1450u, 62983u, var_0.b)), vec3<bool>(false, true, false), var_1.x), vec3<bool>(false, true, false), Struct_3(vec3<f32>(var_1.x, 1177f, var_1.x), global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(false, false, true), 4294967295u, Struct_2(34237i, Struct_1(global2.x, 11686u))), u_input.d).c, Struct_3(vec3<f32>(-1165f, var_1.x, var_1.x), Struct_2(2147483647i, Struct_1(u_input.a.x, 1u)), vec3<bool>(true, true, false), 45661u, global1[_wgslsmith_index_u32(global2.x, 6u)]), -29500i), select(vec3<u32>(var_0.a, var_0.a, 89835u) | vec3<u32>(0u, 4294967295u, var_0.b), vec3<u32>(u_input.b, global2.x, 1u) << (vec3<u32>(20709u, 32462u, u_input.a.x) % vec3<u32>(32u)), true)), select(select(func_2(Struct_5(vec3<u32>(global2.x, 76180u, 67203u), Struct_4(Struct_1(54684u, global2.x), Struct_3(vec3<f32>(324f, var_1.x, var_1.x), global1[_wgslsmith_index_u32(global2.x, 6u)], vec3<bool>(true, true, true), 0u, Struct_2(25902i, Struct_1(global2.x, global2.x))), vec3<u32>(4294967295u, global2.x, global2.x)), vec3<bool>(false, false, true), 2268f), vec3<bool>(false, true, true), Struct_3(vec3<f32>(101f, var_1.x, var_1.x), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(false, false, false), var_0.a, global0[_wgslsmith_index_u32(19490u, 8u)]), 2147483647i).c, vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), 163f), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, true), func_2(Struct_5(~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, global2.x)), Struct_4(Struct_1(36780u, u_input.b), func_2(Struct_5(vec3<u32>(global2.x, 88434u, u_input.b), Struct_4(Struct_1(0u, var_0.b), Struct_3(vec3<f32>(var_1.x, 322f, -805f), global0[_wgslsmith_index_u32(30120u, 8u)], vec3<bool>(true, false, false), 42065u, global0[_wgslsmith_index_u32(global2.x, 8u)]), vec3<u32>(28725u, global2.x, global2.x)), vec3<bool>(true, false, false), var_1.x), vec3<bool>(true, true, true), Struct_3(vec3<f32>(var_1.x, var_1.x, -2059f), global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(false, false, false), 1u, global1[_wgslsmith_index_u32(45162u, 6u)]), -6136i), ~vec3<u32>(54118u, 54821u, global2.x)), vec3<bool>(true, true, any(vec3<bool>(false, false, true))), var_1.x), func_2(Struct_5(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global2.x, 0u), vec3<u32>(4294967295u, 1u, u_input.b)), Struct_4(Struct_1(26280u, u_input.a.x), Struct_3(vec3<f32>(-1000f, -455f, var_1.x), global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(false, true, false), 13545u, global0[_wgslsmith_index_u32(32396u, 8u)]), vec3<u32>(u_input.a.x, u_input.b, var_0.a)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), _wgslsmith_f_op_f32(select(305f, var_1.x, false))), vec3<bool>(false, false, any(vec3<bool>(false, true, true))), Struct_3(vec3<f32>(var_1.x, -380f, 1691f), func_2(Struct_5(vec3<u32>(u_input.b, 47888u, global2.x), Struct_4(Struct_1(u_input.a.x, global2.x), Struct_3(vec3<f32>(-597f, -341f, 1726f), global0[_wgslsmith_index_u32(3141u, 8u)], vec3<bool>(true, true, false), var_0.a, Struct_2(-2147483647i, Struct_1(global2.x, 55173u))), vec3<u32>(4294967295u, 4294967295u, global2.x)), vec3<bool>(false, false, true), 226f), vec3<bool>(true, true, false), Struct_3(vec3<f32>(122f, var_1.x, -1470f), global1[_wgslsmith_index_u32(global2.x, 6u)], vec3<bool>(false, true, true), u_input.a.x, Struct_2(2819i, Struct_1(u_input.a.x, u_input.b))), 2147483647i).b, func_2(Struct_5(vec3<u32>(var_0.b, var_0.b, var_0.a), Struct_4(Struct_1(global2.x, 19281u), Struct_3(vec3<f32>(-206f, -213f, var_1.x), global0[_wgslsmith_index_u32(10556u, 8u)], vec3<bool>(true, true, true), 41511u, global1[_wgslsmith_index_u32(global2.x, 6u)]), vec3<u32>(1u, global2.x, 4294967295u)), vec3<bool>(true, false, true), -1000f), vec3<bool>(false, false, false), Struct_3(vec3<f32>(-1679f, var_1.x, 329f), global0[_wgslsmith_index_u32(1u, 8u)], vec3<bool>(false, true, true), var_0.b, Struct_2(u_input.c, Struct_1(u_input.a.x, 78725u))), u_input.d).c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 43000u), global2.xy), func_2(Struct_5(vec3<u32>(77001u, 4294967295u, 18852u), Struct_4(Struct_1(var_0.b, 1u), Struct_3(vec3<f32>(var_1.x, -454f, -858f), global1[_wgslsmith_index_u32(22907u, 6u)], vec3<bool>(true, true, false), u_input.b, global0[_wgslsmith_index_u32(global2.x, 8u)]), vec3<u32>(u_input.a.x, 4294967295u, global2.x)), vec3<bool>(false, true, false), 934f), vec3<bool>(true, false, true), Struct_3(vec3<f32>(-1613f, var_1.x, var_1.x), global0[_wgslsmith_index_u32(28288u, 8u)], vec3<bool>(false, false, true), 65501u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.c).e), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d, u_input.d), vec3<i32>(-2147483647i, 2147483647i, 0i)) & u_input.c).c, func_2(Struct_5(vec3<u32>(var_0.a, 6957u, 0u) | vec3<u32>(var_0.b, 37836u, var_0.b), Struct_4(Struct_1(var_0.b, global2.x), Struct_3(vec3<f32>(var_1.x, var_1.x, -179f), global0[_wgslsmith_index_u32(1u, 8u)], vec3<bool>(false, true, true), 21852u, global0[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(u_input.a.x, 23885u, global2.x)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_1.x)), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(global2.x, 39959u, 4294967295u), Struct_4(Struct_1(u_input.b, 0u), Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_2(-22964i, Struct_1(7674u, 33767u)), vec3<bool>(false, false, false), 17985u, Struct_2(u_input.c, Struct_1(u_input.b, 27888u))), vec3<u32>(u_input.b, var_0.a, var_0.a)), vec3<bool>(false, false, true), -866f), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(27655u, 11081u, 4294967295u), Struct_4(Struct_1(global2.x, u_input.a.x), Struct_3(vec3<f32>(var_1.x, 1317f, -119f), global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(false, false, false), u_input.a.x, global0[_wgslsmith_index_u32(global2.x, 8u)]), vec3<u32>(var_0.b, 525u, 0u)), vec3<bool>(true, false, false), 421f), vec3<bool>(false, false, true), Struct_3(vec3<f32>(var_1.x, var_1.x, 365f), global1[_wgslsmith_index_u32(var_0.a, 6u)], vec3<bool>(true, false, true), 63037u, Struct_2(37359i, Struct_1(9528u, u_input.a.x))), -29812i), 1983i), u_input.d), u_input.c), 2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(global2.x, 27817u)), u_input.b), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(24823u, 43239u, 4294967295u), vec3<u32>(17457u, 1u, 1558u)), vec3<u32>(u_input.a.x, global2.x, global2.x))) % 32u)).b.b;
    let var_3 = u_input.d;
    var var_4 = func_2(Struct_5(vec3<u32>(countOneBits(1u), 57457u, ~_wgslsmith_clamp_u32(4294967295u, 6100u, var_2.a)), Struct_4(Struct_1(var_2.b, _wgslsmith_sub_u32(var_0.a, 0u)), func_2(Struct_5(vec3<u32>(4294967295u, global2.x, global2.x), Struct_4(Struct_1(0u, var_2.a), Struct_3(vec3<f32>(var_1.x, var_1.x, 499f), global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(false, false, true), 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<u32>(var_0.b, var_0.b, 45184u)), vec3<bool>(false, false, false), 714f), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), Struct_3(vec3<f32>(1436f, 1459f, var_1.x), global1[_wgslsmith_index_u32(global2.x, 6u)], vec3<bool>(true, false, true), 1u, Struct_2(0i, Struct_1(var_0.a, u_input.a.x))), _wgslsmith_mult_i32(-37227i, var_3)), ~abs(vec3<u32>(1u, u_input.b, u_input.a.x))), func_2(Struct_5(~vec3<u32>(22215u, 0u, u_input.a.x), Struct_4(Struct_1(var_2.b, 61896u), Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_2(var_3, Struct_1(var_2.a, 59879u)), vec3<bool>(false, false, false), var_2.a, Struct_2(u_input.d, Struct_1(var_2.b, 0u))), vec3<u32>(u_input.a.x, global2.x, 1u)), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(ceil(var_1.x))), vec3<bool>(all(vec2<bool>(true, false)), true, true), func_2(Struct_5(vec3<u32>(1u, 1u, 1u), Struct_4(Struct_1(var_0.b, 28143u), Struct_3(vec3<f32>(-2088f, -1521f, -874f), global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(true, true, false), u_input.a.x, Struct_2(u_input.d, Struct_1(53941u, 12182u))), vec3<u32>(global2.x, 20101u, 93902u)), vec3<bool>(true, true, false), var_1.x), vec3<bool>(true, true, true), Struct_3(vec3<f32>(var_1.x, -812f, -440f), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(false, false, true), 4294967295u, Struct_2(u_input.d, Struct_1(var_0.b, 32794u))), -u_input.d), -reverseBits(var_3)).c, 869f), !select(vec3<bool>(true, func_2(Struct_5(vec3<u32>(var_0.b, u_input.b, var_2.a), Struct_4(Struct_1(1u, var_0.b), Struct_3(vec3<f32>(var_1.x, -1413f, var_1.x), Struct_2(u_input.d, Struct_1(var_2.a, 1u)), vec3<bool>(true, false, false), u_input.a.x, Struct_2(-1i, Struct_1(95562u, global2.x))), vec3<u32>(global2.x, 35250u, var_2.a)), vec3<bool>(false, false, false), 2060f), vec3<bool>(true, true, false), Struct_3(vec3<f32>(var_1.x, var_1.x, 330f), Struct_2(var_3, Struct_1(0u, u_input.a.x)), vec3<bool>(true, false, true), var_0.b, global1[_wgslsmith_index_u32(var_0.a, 6u)]), var_3).c.x, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, 1036f, var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, 1176f), vec3<f32>(var_1.x, var_1.x, 486f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -411f, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x)))), true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.yy | firstLeadingBit(vec2<u32>(1u, u_input.a.x)), vec2<u32>(33362u, 1u) >> (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(global2.x, 66267u)) % vec2<u32>(32u))), 6u)], func_2(Struct_5(~vec3<u32>(4294967295u, 0u, global2.x), Struct_4(Struct_1(global2.x, global2.x), Struct_3(vec3<f32>(-366f, 1541f, -150f), global1[_wgslsmith_index_u32(1u, 6u)], vec3<bool>(false, true, false), 1u, Struct_2(var_3, Struct_1(u_input.b, var_0.b))), vec3<u32>(var_0.b, var_2.b, 4294967295u)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), _wgslsmith_div_f32(var_1.x, -1118f)), vec3<bool>(false, true, true), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_2(10150i, Struct_1(u_input.a.x, 1630u)), vec3<bool>(false, true, true), ~0u, func_2(Struct_5(vec3<u32>(28504u, 0u, 10903u), Struct_4(Struct_1(19890u, 11787u), Struct_3(vec3<f32>(128f, var_1.x, var_1.x), global0[_wgslsmith_index_u32(1u, 8u)], vec3<bool>(true, true, false), var_2.b, global0[_wgslsmith_index_u32(1483u, 8u)]), vec3<u32>(3500u, global2.x, var_0.b)), vec3<bool>(false, true, false), 1841f), vec3<bool>(false, true, false), Struct_3(vec3<f32>(-1267f, var_1.x, -563f), global1[_wgslsmith_index_u32(var_0.a, 6u)], vec3<bool>(false, false, false), 1u, global0[_wgslsmith_index_u32(global2.x, 8u)]), 11491i).b), var_3).c, u_input.a.x, func_2(Struct_5(vec3<u32>(u_input.b, u_input.b, var_2.a) >> (vec3<u32>(67844u, var_2.b, u_input.a.x) % vec3<u32>(32u)), Struct_4(Struct_1(4294967295u, 48316u), Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_2(u_input.d, Struct_1(131456u, var_2.b)), vec3<bool>(false, false, false), 6967u, global1[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<u32>(1285u, var_0.a, 1u)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(f32(-1f) * -177f)), vec3<bool>(true, true, true), func_2(Struct_5(vec3<u32>(u_input.b, global2.x, 24105u), Struct_4(Struct_1(var_2.b, 0u), Struct_3(vec3<f32>(802f, -364f, -1940f), global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(false, false, true), 25165u, global1[_wgslsmith_index_u32(global2.x, 6u)]), vec3<u32>(44294u, u_input.b, var_2.a)), vec3<bool>(false, true, true), var_1.x), vec3<bool>(false, false, true), Struct_3(vec3<f32>(1331f, var_1.x, 889f), global0[_wgslsmith_index_u32(global2.x, 8u)], vec3<bool>(false, true, true), global2.x, Struct_2(-42954i, Struct_1(37899u, 1u))), 0i), 1i).e), var_3).c;
    let var_5 = firstLeadingBit(~reverseBits(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(10793u, global2.x, u_input.b, 4294967295u)), ~vec4<u32>(var_0.a, u_input.a.x, var_0.b, 0u))));
    var_0 = func_2(Struct_5(vec3<u32>(1u, reverseBits(var_0.b), _wgslsmith_sub_u32(func_2(Struct_5(var_5.yww, Struct_4(Struct_1(var_5.x, 0u), Struct_3(vec3<f32>(-1112f, var_1.x, var_1.x), Struct_2(16087i, Struct_1(var_0.a, var_2.a)), vec3<bool>(false, true, true), 1u, Struct_2(u_input.d, Struct_1(var_5.x, var_2.a))), var_5.xww), vec3<bool>(var_4.x, true, var_4.x), -1846f), vec3<bool>(var_4.x, true, var_4.x), Struct_3(vec3<f32>(768f, 637f, 122f), Struct_2(u_input.d, Struct_1(u_input.a.x, global2.x)), vec3<bool>(false, var_4.x, var_4.x), 31719u, global1[_wgslsmith_index_u32(global2.x, 6u)]), u_input.d).b.b.a, var_5.x)), Struct_4(func_2(Struct_5(var_5.yzy, Struct_4(Struct_1(25412u, 3666u), Struct_3(vec3<f32>(-103f, -1089f, var_1.x), global1[_wgslsmith_index_u32(54954u, 6u)], vec3<bool>(false, var_4.x, var_4.x), 1u, Struct_2(var_3, Struct_1(1u, 0u))), vec3<u32>(0u, var_0.a, var_2.b)), vec3<bool>(false, true, true), var_1.x), func_2(Struct_5(var_5.wxw, Struct_4(Struct_1(33784u, 4294967295u), Struct_3(vec3<f32>(var_1.x, 1173f, 2551f), Struct_2(0i, Struct_1(4294967295u, u_input.b)), vec3<bool>(true, var_4.x, false), 1u, global1[_wgslsmith_index_u32(var_5.x, 6u)]), var_5.wyy), vec3<bool>(var_4.x, var_4.x, var_4.x), var_1.x), vec3<bool>(false, var_4.x, var_4.x), Struct_3(vec3<f32>(1294f, var_1.x, 525f), global0[_wgslsmith_index_u32(global2.x, 8u)], vec3<bool>(var_4.x, false, false), var_5.x, global1[_wgslsmith_index_u32(50063u, 6u)]), -22811i).c, Struct_3(vec3<f32>(-2251f, var_1.x, var_1.x), Struct_2(-1i, Struct_1(1u, var_5.x)), vec3<bool>(var_4.x, var_4.x, var_4.x), 68584u, global1[_wgslsmith_index_u32(var_2.b, 6u)]), -41374i).e.b, func_2(Struct_5(var_5.xzw, Struct_4(Struct_1(622u, var_0.b), Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_2(u_input.c, Struct_1(4294967295u, u_input.b)), vec3<bool>(var_4.x, false, var_4.x), global2.x, global1[_wgslsmith_index_u32(var_0.b, 6u)]), vec3<u32>(var_2.a, var_2.b, u_input.a.x)), vec3<bool>(false, false, var_4.x), 281f), select(vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(var_4.x, false, var_4.x), false), func_2(Struct_5(var_5.xxz, Struct_4(Struct_1(59457u, u_input.b), Struct_3(vec3<f32>(var_1.x, var_1.x, 348f), Struct_2(0i, Struct_1(7844u, 0u)), vec3<bool>(false, var_4.x, var_4.x), 92420u, global0[_wgslsmith_index_u32(17168u, 8u)]), var_5.zxx), vec3<bool>(var_4.x, var_4.x, false), var_1.x), vec3<bool>(true, false, true), Struct_3(vec3<f32>(1522f, var_1.x, var_1.x), Struct_2(var_3, Struct_1(1u, 14394u)), vec3<bool>(var_4.x, var_4.x, true), 78115u, global0[_wgslsmith_index_u32(var_2.a, 8u)]), 7485i), ~(-1i)), var_5.xzw), func_2(Struct_5(var_5.xxy, Struct_4(Struct_1(global2.x, 22546u), Struct_3(vec3<f32>(var_1.x, -189f, -573f), Struct_2(0i, Struct_1(var_5.x, var_5.x)), vec3<bool>(true, true, var_4.x), u_input.a.x, global1[_wgslsmith_index_u32(6963u, 6u)]), vec3<u32>(global2.x, 0u, 74060u)), func_2(Struct_5(vec3<u32>(58566u, 1u, 4294967295u), Struct_4(Struct_1(var_2.a, 1624u), Struct_3(vec3<f32>(1664f, var_1.x, -1804f), global0[_wgslsmith_index_u32(var_5.x, 8u)], vec3<bool>(false, false, var_4.x), 56585u, global0[_wgslsmith_index_u32(u_input.b, 8u)]), var_5.wyx), vec3<bool>(true, var_4.x, false), 1000f), vec3<bool>(var_4.x, var_4.x, var_4.x), Struct_3(vec3<f32>(1973f, var_1.x, 756f), global0[_wgslsmith_index_u32(var_0.a, 8u)], vec3<bool>(var_4.x, true, true), 3891u, global0[_wgslsmith_index_u32(var_0.a, 8u)]), -2147483647i).c, _wgslsmith_div_f32(1751f, var_1.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(var_4.x, var_4.x, false), true), select(vec3<bool>(var_4.x, var_4.x, true), vec3<bool>(var_4.x, var_4.x, true), vec3<bool>(var_4.x, true, true)), any(vec3<bool>(false, false, false))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1238f, -2200f, -711f)), Struct_2(0i, Struct_1(77087u, global2.x)), !vec3<bool>(var_4.x, var_4.x, var_4.x), 25069u, Struct_2(-1i, Struct_1(var_0.a, 61272u))), 1653i).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(1469f - var_1.x)))), vec3<bool>(var_4.x, !(~u_input.c < -u_input.d), any(select(vec4<bool>(var_4.x, false, true, false), !vec4<bool>(true, var_4.x, var_4.x, var_4.x), var_4.x | var_4.x))), func_2(Struct_5(abs(max(var_5.zxy, vec3<u32>(var_2.a, 17844u, var_5.x))), Struct_4(func_2(Struct_5(var_5.wzz, Struct_4(Struct_1(1u, global2.x), Struct_3(vec3<f32>(-345f, 829f, var_1.x), global1[_wgslsmith_index_u32(0u, 6u)], vec3<bool>(var_4.x, var_4.x, true), global2.x, global1[_wgslsmith_index_u32(var_5.x, 6u)]), var_5.xxz), vec3<bool>(false, true, var_4.x), var_1.x), vec3<bool>(var_4.x, true, var_4.x), Struct_3(vec3<f32>(var_1.x, -2560f, -522f), Struct_2(1i, Struct_1(45934u, global2.x)), vec3<bool>(true, false, var_4.x), 4294967295u, Struct_2(var_3, Struct_1(var_5.x, var_2.b))), -27630i).e.b, func_2(Struct_5(var_5.zwz, Struct_4(Struct_1(1u, var_0.b), Struct_3(vec3<f32>(var_1.x, -1079f, var_1.x), Struct_2(var_3, Struct_1(0u, 0u)), vec3<bool>(var_4.x, var_4.x, var_4.x), 60546u, global0[_wgslsmith_index_u32(global2.x, 8u)]), var_5.www), vec3<bool>(var_4.x, true, false), -1020f), vec3<bool>(false, var_4.x, var_4.x), Struct_3(vec3<f32>(-262f, -353f, var_1.x), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(false, true, var_4.x), global2.x, global0[_wgslsmith_index_u32(7086u, 8u)]), 24139i), ~var_5.zxy), !func_2(Struct_5(vec3<u32>(u_input.b, var_0.b, u_input.a.x), Struct_4(Struct_1(33679u, 0u), Struct_3(vec3<f32>(var_1.x, 935f, 1417f), Struct_2(-2147483647i, Struct_1(global2.x, 56518u)), vec3<bool>(true, var_4.x, false), 9561u, Struct_2(var_3, Struct_1(87677u, global2.x))), vec3<u32>(4294967295u, 45853u, 21942u)), vec3<bool>(var_4.x, var_4.x, var_4.x), var_1.x), vec3<bool>(var_4.x, var_4.x, true), Struct_3(vec3<f32>(610f, 428f, -606f), global1[_wgslsmith_index_u32(var_0.b, 6u)], vec3<bool>(false, var_4.x, var_4.x), var_5.x, global0[_wgslsmith_index_u32(16034u, 8u)]), var_3).c, _wgslsmith_f_op_f32(var_1.x + var_1.x)), vec3<bool>(0i >= u_input.d, 1f >= _wgslsmith_f_op_f32(-var_1.x), true), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), -868f, var_1.x), global0[_wgslsmith_index_u32(~(~u_input.b), 8u)], vec3<bool>(var_4.x, var_4.x, var_4.x), u_input.a.x, func_2(Struct_5(var_5.xxx, Struct_4(Struct_1(global2.x, 7834u), Struct_3(vec3<f32>(var_1.x, 789f, var_1.x), global0[_wgslsmith_index_u32(var_2.a, 8u)], vec3<bool>(false, false, var_4.x), var_2.a, Struct_2(0i, Struct_1(5033u, 0u))), var_5.xzy), vec3<bool>(false, true, var_4.x), 437f), select(vec3<bool>(var_4.x, true, false), vec3<bool>(var_4.x, var_4.x, true), true), Struct_3(vec3<f32>(var_1.x, -611f, var_1.x), Struct_2(1i, Struct_1(1u, 5077u)), vec3<bool>(var_4.x, false, var_4.x), var_2.b, global1[_wgslsmith_index_u32(u_input.b, 6u)]), ~(-21940i)).e), 1i), _wgslsmith_add_i32(-9684i, _wgslsmith_div_i32(55094i, -10684i))).e.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(-2147483647i << ((_wgslsmith_sub_u32(4294967295u, 36920u) ^ _wgslsmith_add_u32(var_0.b, var_5.x)) % 32u)), ~(~vec2<u32>(~var_2.b, _wgslsmith_sub_u32(65334u, var_0.a))));
}

