struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(abs(612f));
    let var_1 = (_wgslsmith_clamp_u32(u_input.a, ~u_input.e, 1u) << (~max(~94956u, 4294967295u) % 32u)) > ~4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-202f * 947f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = -214f;
    return ~vec3<i32>(reverseBits(~min(-61242i, u_input.b)), 13835i, -44488i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(arg_1.a.c.xwz, true, true, var_0.d);
    var var_2 = -arg_1.a.c;
    return select(firstLeadingBit(select(arg_3.a.a, _wgslsmith_div_vec3_i32(func_2(), -arg_1.b.a), !(!arg_0.b))), -min(arg_3.a.a << (vec3<u32>(u_input.c, 5436u, u_input.c) % vec3<u32>(32u)), firstLeadingBit(var_1.a)), true);
}

fn func_1() -> vec3<i32> {
    return reverseBits(func_3(Struct_1(select(vec3<i32>(40392i, -20426i, 50266i), func_2(), true), any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f - -131f))), Struct_3(Struct_2(Struct_1(vec3<i32>(18358i, u_input.b, -1i), true, false, -248f), vec4<bool>(true, true, true, true), -vec4<i32>(0i, u_input.d.x, u_input.b, u_input.b)), Struct_1(firstLeadingBit(vec3<i32>(u_input.d.x, -48800i, 41918i)), 3400i > u_input.b, all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -478f)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(max(-366f, 1f))), Struct_2(Struct_1(vec3<i32>(1i, -22203i, u_input.d.x), u_input.a == u_input.e, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(432f + 294f)), vec4<bool>(true, true, true, true), min(vec4<i32>(u_input.d.x, u_input.b, -4945i, -2147483647i), -vec4<i32>(u_input.d.x, -1i, -1i, u_input.d.x))), Struct_2(Struct_1(vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), true, u_input.d.x >= 0i, -240f), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), -(~vec4<i32>(0i, 53010i, u_input.d.x, u_input.b)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    var_0 = arg_0.b;
    var_0 = arg_0.b;
    let var_1 = arg_0.a.c;
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<i32>(~_wgslsmith_add_i32(firstLeadingBit(func_3(Struct_1(vec3<i32>(u_input.b, 1i, 2147483647i), true, true, arg_0), Struct_3(Struct_2(Struct_1(arg_2.ywz, false, false, arg_1.d), arg_1.a.b, arg_1.a.c), arg_1.b, arg_1.a.b, -1120f), Struct_2(arg_1.b, arg_1.a.b, vec4<i32>(-54084i, 53916i, 0i, -16489i)), Struct_2(Struct_1(vec3<i32>(-6524i, u_input.d.x, 30624i), false, false, 2543f), arg_1.c, arg_1.a.c)).x), abs(-arg_1.a.c.x)), -_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(1551i, min(-40100i, u_input.b))), u_input.b);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_sub_u32(4294967295u, firstLeadingBit(~1u));
    var var_3 = abs(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 34039u, 0u, u_input.e), countOneBits(vec4<u32>(59341u, u_input.a, 4294967295u, 41914u)), ~vec4<u32>(u_input.e, u_input.c, 68215u, u_input.e)), vec4<u32>(63125u, 0u, u_input.c, _wgslsmith_div_u32(50381u, u_input.e)), select(any(vec3<bool>(var_1.c.x, var_1.b.b, var_1.a.b.x)), any(arg_1.c.zw), any(vec4<bool>(true, arg_1.b.c, true, false))))) ^ max(~(~(~vec4<u32>(0u, u_input.e, 32281u, 119378u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.c) ^ (vec4<u32>(4294967295u, u_input.e, u_input.e, 32643u) | vec4<u32>(u_input.c, 50586u, u_input.e, u_input.c)), ~vec4<u32>(33787u, 19801u, 4294967295u, 6000u)));
    let var_4 = arg_1.a.b.yz;
    return func_4(func_4(func_4(Struct_3(arg_1.a, arg_1.a.a, func_4(arg_1, false, vec3<i32>(36328i, 0i, var_0.x), arg_1.a.b.xz).a.b, _wgslsmith_f_op_f32(1000f + arg_1.d)), !var_1.a.b.x, vec3<i32>(firstLeadingBit(-2147483647i), -4246i, var_1.b.a.x >> (4294967295u % 32u)), vec2<bool>(var_1.a.a.b || true, var_1.a.a.d > arg_0)), var_1.a.b.x, _wgslsmith_div_vec3_i32(arg_2.zyz, abs(vec3<i32>(arg_2.x, arg_1.a.a.a.x, 2147483647i))), select(select(vec2<bool>(true, true), !vec2<bool>(false, arg_1.a.b.x), false), !vec2<bool>(false, var_1.c.x), true)), 32698i <= (_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a.a.a.x, 2147483647i, var_1.a.c.x, var_1.b.a.x), arg_1.a.c) | _wgslsmith_clamp_i32(4713i, arg_1.a.a.a.x, -1i)), arg_2.xyw, vec2<bool>(!any(vec4<bool>(false, arg_1.b.b, arg_1.c.x, var_1.b.b)), ~83013u < ~min(var_3.x, var_3.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(904f, func_4(Struct_3(Struct_2(Struct_1(vec3<i32>(-31769i, -1i, u_input.d.x), false, false, 692f), vec4<bool>(true, false, false, true), -vec4<i32>(-2147483647i, -931i, -21550i, 2147483647i)), Struct_1(func_1(), select(false, false, true), true, _wgslsmith_f_op_f32(629f * 845f)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1754f, 1283f)), _wgslsmith_f_op_f32(round(592f)), true))), true, vec3<i32>(u_input.d.x, 1058i, -27968i), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(all(vec4<bool>(true, false, false, true)), true))), select(select(vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, 66068i) ^ ~vec4<i32>(-17124i, 100489i, u_input.d.x, u_input.d.x), firstTrailingBit(~vec4<i32>(u_input.d.x, 31142i, u_input.b, u_input.d.x)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), countOneBits(vec4<i32>(27101i, -1i << (u_input.c % 32u), 6464i, firstTrailingBit(45454i))), true));
    var var_1 = vec4<u32>(~u_input.e, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.e >> (u_input.e % 32u)), vec2<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(u_input.e, 13647u)), firstLeadingBit(u_input.c))), u_input.e, u_input.c);
    var_1 = ~vec4<u32>(~9727u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.e, var_1.x), reverseBits(vec4<u32>(1018u, 4294967295u, var_1.x, u_input.e))) >> (_wgslsmith_div_u32(~27799u, ~108602u) % 32u), _wgslsmith_sub_u32(~1u, ~var_1.x), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, u_input.c), u_input.c));
    let var_2 = reverseBits(~((var_1.wzz & vec3<u32>(0u, 1u, 23705u)) ^ vec3<u32>(u_input.a >> (var_1.x % 32u), firstTrailingBit(76919u), select(u_input.e, 4294967295u, false))));
    var_1 = vec4<u32>(select(min(~u_input.a, var_2.x), ~_wgslsmith_dot_vec2_u32(var_1.wx, vec2<u32>(4294967295u, var_1.x)), any(func_5(_wgslsmith_f_op_f32(-var_0.a.d), func_4(Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.b, var_0.a.a.x, u_input.b), true, var_0.b.x, var_0.a.d), var_0.b, vec4<i32>(0i, u_input.b, u_input.b, 2147483647i)), Struct_1(var_0.a.a, var_0.b.x, true, -1013f), vec4<bool>(true, var_0.a.b, var_0.a.c, false), -2291f), var_0.b.x, var_0.c.zww, vec2<bool>(var_0.a.b, false)), vec4<i32>(var_0.c.x, var_0.a.a.x, -17163i, u_input.d.x)).b)), 1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, ~25593u, _wgslsmith_mod_u32(u_input.a, 1u)), ~vec3<u32>(var_2.x, var_1.x, var_2.x)), ~(~var_1.x)), 46251u);
    var var_3 = func_4(Struct_3(Struct_2(var_0.a, !vec4<bool>(true, var_0.a.c, var_0.b.x, var_0.b.x), var_0.c), var_0.a, func_5(var_0.a.d, Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec3<i32>(var_0.c.x, u_input.b, u_input.b), var_0.a.c, false, 278f), vec4<bool>(var_0.a.b, var_0.a.b, var_0.b.x, false), vec4<i32>(u_input.d.x, -1i, -2147483647i, var_0.a.a.x)), Struct_1(var_0.a.a, false, var_0.b.x, 241f), vec4<bool>(true, true, false, var_0.b.x), var_0.a.d), false, vec3<i32>(35747i, 0i, var_0.c.x), var_0.b.wx).a, func_4(Struct_3(Struct_2(Struct_1(var_0.c.wzy, var_0.b.x, var_0.a.b, 695f), var_0.b, var_0.c), var_0.a, vec4<bool>(var_0.a.c, var_0.b.x, true, var_0.a.b), 100f), true, var_0.a.a, vec2<bool>(false, false)).a.a, vec4<bool>(false, true, true, true), var_0.a.d), select(-var_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.a.x, -1i, -2147483647i, 14387i), var_0.c), var_0.a.b != false)).b, var_0.a.d), var_0.b.x && !select(!var_0.a.b, var_0.b.x, true), vec3<i32>(~func_2().x, func_1().x, (0i >> (_wgslsmith_sub_u32(var_2.x, 41845u) % 32u)) | -19176i), func_5(_wgslsmith_f_op_f32(f32(-1f) * -1398f), Struct_3(func_5(_wgslsmith_div_f32(-1093f, -437f), Struct_3(Struct_2(var_0.a, var_0.b, vec4<i32>(44715i, var_0.c.x, u_input.b, var_0.a.a.x)), var_0.a, var_0.b, -1724f), reverseBits(var_0.c)), func_4(Struct_3(var_0, var_0.a, vec4<bool>(var_0.b.x, var_0.a.c, var_0.a.c, var_0.b.x), -1331f), var_0.b.x & var_0.b.x, vec3<i32>(2147483647i, u_input.d.x, 1i) | var_0.c.zzz, !vec2<bool>(var_0.a.b, true)).a.a, var_0.b, func_4(func_4(Struct_3(Struct_2(var_0.a, var_0.b, var_0.c), Struct_1(var_0.c.yyz, var_0.a.c, var_0.a.c, var_0.a.d), vec4<bool>(false, false, true, false), -103f), false, var_0.c.xzy, vec2<bool>(true, false)), var_0.a.c, -vec3<i32>(var_0.a.a.x, var_0.a.a.x, u_input.b), vec2<bool>(true, true)).b.d), var_0.c).b.yw).a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~vec4<i32>(func_3(var_0.a, Struct_3(var_0, var_3.a, var_0.b, var_0.a.d), Struct_2(Struct_1(var_0.a.a, var_3.b.x, var_0.a.c, var_3.a.d), var_3.b, vec4<i32>(-70298i, var_0.c.x, -33334i, var_0.c.x)), var_0).x, -2147483647i & _wgslsmith_sub_i32(var_3.c.x, 2147483647i), -1i, -12881i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(707f, -426f, 1853f, 1197f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2168f, var_0.a.d, -1100f, var_0.a.d) * vec4<f32>(466f, -1305f, var_0.a.d, var_0.a.d))), _wgslsmith_div_vec4_f32(vec4<f32>(-1099f, -545f, -514f, var_0.a.d), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.d, 716f, 1586f, var_3.a.d), vec4<f32>(1566f, -352f, var_3.a.d, -2302f))))), 4294967295u);
}

