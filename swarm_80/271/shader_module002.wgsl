struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_2.a.x, 0u, 45595u, 0u)), vec4<u32>(1u, arg_2.a.x, 4294967295u, 1u) & ~vec4<u32>(u_input.b, u_input.b, arg_2.a.x, 1u)) | abs(~_wgslsmith_add_u32(u_input.c, 0u)), arg_2.a.x);
    let var_1 = Struct_3(arg_2, 41992u, arg_2.a.x, Struct_2(~select(vec3<u32>(18831u, 1616u, 13542u), vec3<u32>(3335u, var_0.x, 42110u), vec3<bool>(true, true, true))), firstTrailingBit(~(~(vec4<u32>(4391u, 0u, u_input.b, var_0.x) & vec4<u32>(0u, u_input.b, u_input.c, u_input.c)))));
    var var_2 = arg_0.a.x;
    let var_3 = -1000f;
    let var_4 = Struct_1(vec3<i32>(-arg_0.a.x, -1i, -select(2147483647i, ~u_input.a.x, var_3 < -1289f)));
    return min(~(-2147483647i), 51753i);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = false;
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(~(~(vec3<u32>(3801u, 3046u, u_input.b) >> (vec3<u32>(40676u, 14211u, 1u) % vec3<u32>(32u)))), vec3<u32>(~select(71825u, 6338u, false), 1u, ~u_input.b)));
    let var_2 = vec3<i32>(~(~(-arg_1.a.x) | reverseBits(-33794i ^ u_input.a.x)), firstLeadingBit(_wgslsmith_mult_i32((1978i & u_input.a.x) ^ 0i, min(arg_1.a.x, min(32215i, arg_1.a.x)))), 36480i);
    var var_3 = Struct_3(var_1, _wgslsmith_mod_u32(90003u, ~_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(8876u, u_input.b, 6267u, 0u), vec4<u32>(u_input.c, 35988u, var_1.a.x, u_input.b)))), ~1u, var_1, ~vec4<u32>(_wgslsmith_add_u32(var_1.a.x ^ 4294967295u, var_1.a.x), 46068u, ~(~u_input.c), u_input.c));
    var var_4 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-15004i, func_3(arg_1, vec2<i32>(arg_1.a.x, -48074i), Struct_2(vec3<u32>(16833u, var_3.c, 44019u)), vec4<i32>(-2147483647i, arg_1.a.x, var_2.x, arg_1.a.x)), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, 50488i), _wgslsmith_clamp_i32(arg_1.a.x, -1i, -19541i)), -vec4<i32>(arg_1.a.x, var_2.x, -1i, u_input.a.x));
    return !all(!select(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), vec2<bool>(true, var_0)), vec2<bool>(arg_0, true), !vec2<bool>(var_0, false)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(~(~arg_1.e.x), arg_2.a.x, ~17490u)), ((vec3<u32>(arg_2.a.x, 37139u, u_input.b) ^ (vec3<u32>(1u, 1u, 37306u) >> (arg_2.a % vec3<u32>(32u)))) >> (vec3<u32>(~35570u, 10308u, 1u) % vec3<u32>(32u))) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.x, 35701u, arg_2.a.x) << (vec3<u32>(4294967295u, 6103u, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(arg_2.a, vec3<u32>(78077u, 0u, 1u))));
    var var_1 = arg_2;
    var var_2 = arg_1;
    var var_3 = ~vec3<i32>(-(~u_input.a.x) ^ -u_input.a.x, select(0i, 1i, !func_2(true, Struct_1(u_input.a))), firstLeadingBit(u_input.a.x));
    var var_4 = ~33327u;
    return Struct_1(~(~((u_input.a ^ u_input.a) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, -12237i, 38933i), u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<u32>(u_input.c | u_input.b, _wgslsmith_mod_u32(75077u, 1u), 59381u);
    var var_1 = firstLeadingBit(var_0.x);
    var var_2 = -22446i;
    var var_3 = -countOneBits(arg_2);
    var_3 = select(arg_2 >> (1u % 32u), 0i, (5722i << (~_wgslsmith_sub_u32(var_0.x, 1u) % 32u)) <= (-17250i | _wgslsmith_mod_i32(firstTrailingBit(arg_2), -7786i)));
    return Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), 2163u), var_0.zx | ~var_0.zy), firstTrailingBit(_wgslsmith_add_u32(0u, 4294967295u) | _wgslsmith_div_u32(u_input.b, 1u)), 0u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = false;
    var var_1 = !select(vec2<bool>(all(vec2<bool>(arg_2, var_0)), arg_3.x >= u_input.a.x), !vec2<bool>(true, !arg_2), true);
    var_1 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.x), false), !vec2<bool>(false, var_1.x), false)), vec2<bool>(!var_0, false), !var_0);
    var var_2 = Struct_1(u_input.a);
    let var_3 = 313f;
    return !vec3<bool>(!var_1.x, var_1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(false, any(vec2<bool>(true, true)), firstLeadingBit(u_input.c) > ~4294967295u), select(!vec3<bool>(true, true, all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true), ~u_input.c >= u_input.c), false), vec3<bool>(true, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(407f)), _wgslsmith_div_f32(330f, -306f))) == -1392f));
    var_0 = select(select(vec3<bool>(!var_0.x, !var_0.x, all(!var_0.zy)), vec3<bool>(true, var_0.x, all(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), vec3<bool>(true == var_0.x, true, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), func_5(func_4(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -51040i)), func_1(vec4<f32>(668f, 977f, 1046f, 177f), Struct_3(Struct_2(vec3<u32>(4294967295u, u_input.c, 0u)), u_input.b, 1u, Struct_2(vec3<u32>(37590u, 0u, u_input.c)), vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.b)), Struct_2(vec3<u32>(u_input.c, u_input.b, 6346u))), 1i, u_input.a.zz >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), func_4(func_1(vec4<f32>(268f, 853f, 320f, -1150f), Struct_3(Struct_2(vec3<u32>(u_input.b, u_input.c, 15952u)), u_input.b, u_input.b, Struct_2(vec3<u32>(1u, u_input.c, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.b, 78446u)), Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.c))), func_1(vec4<f32>(317f, -1070f, -703f, 197f), Struct_3(Struct_2(vec3<u32>(u_input.b, 23696u, u_input.c)), u_input.c, 53423u, Struct_2(vec3<u32>(u_input.b, u_input.c, u_input.b)), vec4<u32>(15131u, 1u, 61884u, u_input.c)), Struct_2(vec3<u32>(4312u, 41605u, 10983u))), -u_input.a.x, ~u_input.a.yx), true, min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a >> (vec3<u32>(u_input.c, 4294967295u, u_input.b) % vec3<u32>(32u)))), select(select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, true), var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, var_0.x)), var_0.x)), vec3<bool>(true, var_0.x, ~1u != ~(u_input.c >> (u_input.b % 32u))));
    let var_1 = ~60231u;
    var var_2 = vec3<i32>(-16556i, u_input.a.x, u_input.a.x);
    let var_3 = func_4(Struct_1(u_input.a), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(230f + 988f), 1f, _wgslsmith_f_op_f32(sign(699f)), 2016f)), Struct_3(Struct_2(func_4(Struct_1(u_input.a), Struct_1(u_input.a), var_2.x, var_2.xz).a), 0u, 3373u, Struct_2(vec3<u32>(u_input.b, 1u, 25439u)), select(~vec4<u32>(11487u, var_1, var_1, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c) << (vec4<u32>(0u, var_1, 0u, var_1) % vec4<u32>(32u)), select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, false, var_0.x, true)))), func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1460f, 160f, 714f, -1277f) * vec4<f32>(-1000f, 904f, 324f, 1629f)), Struct_3(Struct_2(vec3<u32>(4294967295u, 1u, 16893u)), 47685u, 45064u, Struct_2(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec4<u32>(u_input.c, 0u, u_input.b, u_input.c)), Struct_2(vec3<u32>(4294967295u, 1u, 1u))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, 1000f, -3481f, 1268f)), Struct_3(Struct_2(vec3<u32>(0u, 1u, 46579u)), u_input.c, 4294967295u, Struct_2(vec3<u32>(37425u, var_1, 56749u)), vec4<u32>(33700u, var_1, u_input.b, 4294967295u)), Struct_2(vec3<u32>(var_1, var_1, var_1))), -_wgslsmith_sub_i32(-1i, -2147483647i), reverseBits(var_2.zy) ^ ~u_input.a.xz)), 0i, _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_2.x, u_input.a.x), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, -1695f, -505f, 331f)), Struct_3(Struct_2(vec3<u32>(1u, u_input.c, 39283u)), u_input.c, 54513u, Struct_2(vec3<u32>(u_input.c, 4294967295u, u_input.b)), vec4<u32>(u_input.c, 41984u, u_input.c, var_1)), func_4(Struct_1(vec3<i32>(u_input.a.x, -44792i, var_2.x)), Struct_1(vec3<i32>(var_2.x, var_2.x, u_input.a.x)), u_input.a.x, vec2<i32>(var_2.x, var_2.x))).a.yz, vec2<i32>(2147483647i, func_1(vec4<f32>(1186f, 1409f, 1047f, -356f), Struct_3(Struct_2(vec3<u32>(u_input.c, u_input.b, 0u)), u_input.c, 0u, Struct_2(vec3<u32>(var_1, u_input.b, 0u)), vec4<u32>(58130u, 1u, 34683u, 24783u)), Struct_2(vec3<u32>(var_1, u_input.b, var_1))).a.x)) >> (~vec2<u32>(func_4(Struct_1(u_input.a), Struct_1(u_input.a), 4100i, vec2<i32>(u_input.a.x, u_input.a.x)).a.x, u_input.c ^ 1u) % vec2<u32>(32u)));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zz ^ _wgslsmith_mult_vec2_u32(vec2<u32>(43127u, u_input.b), select(vec2<u32>(var_1, 56472u), var_3.a.xz, var_0.x) & ~var_3.a.xx), -15905i);
}

