struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: i32 = -20235i;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -18307i), Struct_1(true, 1700f, true)), Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(29025i, 46230i), Struct_1(false, 1675f, true)), Struct_2(vec2<i32>(8042i, -1i), vec2<i32>(-1i, 1i), Struct_1(true, 643f, true)), Struct_2(vec2<i32>(23637i, -1i), vec2<i32>(-4294i, -1i), Struct_1(true, -1086f, true)), Struct_2(vec2<i32>(2151i, 0i), vec2<i32>(-14878i, 1i), Struct_1(true, 166f, false)), Struct_2(vec2<i32>(789i, 25146i), vec2<i32>(17645i, i32(-2147483648)), Struct_1(false, 285f, true)), Struct_2(vec2<i32>(2147483647i, 0i), vec2<i32>(42725i, 2147483647i), Struct_1(true, 929f, false)), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 24037i), Struct_1(false, -1669f, false)), Struct_2(vec2<i32>(-42907i, 2147483647i), vec2<i32>(i32(-2147483648), 12805i), Struct_1(false, -129f, true)), Struct_2(vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -1i), Struct_1(true, -160f, true)), Struct_2(vec2<i32>(2147483647i, 14892i), vec2<i32>(0i, -1604i), Struct_1(false, 270f, true)), Struct_2(vec2<i32>(-18424i, -6229i), vec2<i32>(-1i, -49976i), Struct_1(true, -1359f, false)), Struct_2(vec2<i32>(-1i, -33225i), vec2<i32>(18630i, -37977i), Struct_1(true, -249f, false)), Struct_2(vec2<i32>(-1i, -1i), vec2<i32>(23527i, 0i), Struct_1(true, -1028f, true)), Struct_2(vec2<i32>(-22533i, i32(-2147483648)), vec2<i32>(6006i, -21198i), Struct_1(false, 1315f, true)), Struct_2(vec2<i32>(0i, 16301i), vec2<i32>(17359i, i32(-2147483648)), Struct_1(false, 1107f, false)), Struct_2(vec2<i32>(-1i, -48206i), vec2<i32>(2147483647i, -1i), Struct_1(false, -278f, true)), Struct_2(vec2<i32>(0i, -59871i), vec2<i32>(32584i, i32(-2147483648)), Struct_1(true, 2008f, true)), Struct_2(vec2<i32>(1i, -1968i), vec2<i32>(71645i, 40582i), Struct_1(true, 655f, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> bool {
    global1 = arg_3.b.x;
    var var_0 = u_input.a.x;
    global2 = array<Struct_2, 19>();
    var var_1 = select(vec2<bool>(any(!select(vec4<bool>(arg_3.c.c, true, arg_3.c.c, arg_3.c.a), vec4<bool>(false, false, true, false), vec4<bool>(arg_2, false, true, arg_2))), arg_2 & ((arg_3.c.c || arg_3.c.a) && arg_2)), vec2<bool>(all(!select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_3.c.c, arg_3.c.c, arg_3.c.c), false)), arg_2), vec2<bool>(true, false));
    return arg_2 || (arg_3.b.x >= _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.x, 2793i, arg_3.a.x, arg_3.a.x), select(vec4<i32>(arg_3.a.x, arg_3.a.x, -57714i, -1i), vec4<i32>(0i, arg_3.a.x, -9501i, -21396i), false)), vec4<i32>(-arg_3.b.x, 4072i, _wgslsmith_clamp_i32(0i, arg_3.a.x, 1i), -1i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    global1 = countOneBits(-2147483647i);
    global2 = array<Struct_2, 19>();
    var var_0 = arg_0.a.x;
    let var_1 = arg_0.b.x;
    let var_2 = ~max(u_input.a.x, u_input.a.x);
    return _wgslsmith_dot_vec2_i32(~max(~(~arg_0.b), _wgslsmith_mod_vec2_i32(arg_0.a, vec2<i32>(var_1, 2147483647i)) ^ ~arg_0.b), ~arg_0.a);
}

fn func_2() -> f32 {
    global0 = -23378i ^ func_4(Struct_2(vec2<i32>(1i, 1i) ^ (vec2<i32>(4803i, -2147483647i) << (u_input.a % vec2<u32>(32u))), select(vec2<i32>(-28113i, 6540i), -vec2<i32>(-18900i, 2147483647i), true), Struct_1(func_3(vec2<f32>(-563f, -2154f), vec2<u32>(0u, 1u), false, Struct_2(vec2<i32>(1i, 1i), vec2<i32>(27369i, -2147483647i), Struct_1(true, 1020f, false))), _wgslsmith_f_op_f32(f32(-1f) * -2555f), true)), vec4<u32>(u_input.b, u_input.b, 55673u, 75908u));
    var var_0 = ~(~(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.a.x) & (vec4<u32>(u_input.a.x, 25111u, 8378u, u_input.b) >> (vec4<u32>(u_input.b, 29486u, 0u, u_input.a.x) % vec4<u32>(32u)))) & ~(~vec4<u32>(3201u, 75498u, u_input.a.x, 28140u) << (~vec4<u32>(4294967295u, 1u, 1u, 1u) % vec4<u32>(32u))));
    let var_1 = Struct_3(4276u | _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 44875u, 0u), select(u_input.a.x, var_0.x >> (u_input.b % 32u), any(vec3<bool>(false, true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), -334f, _wgslsmith_f_op_f32(f32(-1f) * -723f), -1000f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1771f * -835f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2039f)))), _wgslsmith_f_op_f32(ceil(923f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(185f)))) + 1426f)), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(vec2<bool>(false, 44988u <= var_0.x)), !select(true, true, true), all(vec3<bool>(true, true, all(vec2<bool>(true, true)))))));
    let var_3 = (i32(-1i) * -2147483647i) >> (var_1.a % 32u);
    return _wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(f32(-1f) * -780f));
}

fn func_1() -> bool {
    global1 = (((i32(-1i) * -1i) ^ (0i << (~u_input.b % 32u))) & countOneBits(_wgslsmith_mod_i32(max(-3769i, 17132i), i32(-1i) * -1i))) << (u_input.a.x % 32u);
    let var_0 = vec3<f32>(_wgslsmith_div_f32(-505f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 1752f)), _wgslsmith_f_op_f32(-1094f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-621f + -1404f), -464f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = _wgslsmith_clamp_i32(-54444i, -_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 42295i, -2147483647i), vec4<i32>(-1i, -2147483647i, 0i, -53690i)), 32305i, _wgslsmith_dot_vec3_i32(~vec3<i32>(22675i, 21971i, -23942i), vec3<i32>(1i, 1i, 1i))), -36555i);
    let var_1 = var_0.x;
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(~((vec2<u32>(u_input.b, 1u) >> (u_input.a % vec2<u32>(32u))) | firstTrailingBit(u_input.a)), u_input.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(true, true, true)), true & func_1()), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true)), select(select(vec2<bool>(func_1(), any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, true)), !vec2<bool>(!func_1(), all(vec3<bool>(true, true, true))));
    global0 = 0i;
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(454f, 253f, false))))), true);
    let var_2 = var_0;
    global2 = array<Struct_2, 19>();
    let var_3 = vec3<bool>(any(select(!select(var_0, var_2, vec2<bool>(false, var_2.x)), vec2<bool>(true, true), var_1.b >= _wgslsmith_f_op_f32(ceil(1356f)))), var_0.x, all(select(select(!vec2<bool>(var_0.x, true), select(vec2<bool>(var_1.a, var_2.x), var_2, var_0), !var_2.x), vec2<bool>(-1000f < var_1.b, true), var_2)));
    global1 = -_wgslsmith_clamp_i32(0i, ~78336i, abs(i32(-1i) * -2147483647i) << ((u_input.a.x | ~u_input.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.a.x);
}

