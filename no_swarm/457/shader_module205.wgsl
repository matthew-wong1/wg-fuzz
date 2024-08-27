struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> vec2<f32> {
    var var_0 = Struct_4(arg_1.e);
    var var_1 = var_0.a.e;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(arg_1.e.d.d.xzy)))))));
    var var_3 = abs(~vec4<u32>(abs(u_input.c.x), ~(~92014u), ~arg_1.e.c, u_input.d));
    var var_4 = var_0.a.d;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2165f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_4.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f + arg_1.d)))), 1080f);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f * _wgslsmith_div_f32(304f, _wgslsmith_f_op_f32(735f + arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(4294967295u, Struct_3(u_input.e, vec2<i32>(u_input.a, arg_2), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 455f, 345f, 2613f), vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(round(arg_0)), Struct_2(vec3<bool>(arg_3, arg_3, arg_3), Struct_1(166f, vec2<f32>(arg_0, 1518f), -222f, vec4<f32>(arg_0, -294f, -457f, -786f), 1i), 60933u, Struct_1(1267f, vec2<f32>(arg_0, -1144f), arg_0, vec4<f32>(arg_0, -884f, arg_0, 904f), u_input.a), vec4<i32>(arg_2, 29090i, 4505i, arg_2))), !(u_input.c.x == 51947u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1441f), _wgslsmith_f_op_f32(max(arg_0, arg_0))), -1135f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-902f))))), vec4<f32>(_wgslsmith_f_op_f32(-647f - arg_0), arg_0, 189f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - 815f)))), _wgslsmith_mod_i32(~(_wgslsmith_add_i32(u_input.b.x, 1i) ^ (63826i & u_input.a)), 0i));
    var var_1 = abs(-vec2<i32>(countOneBits(1i), _wgslsmith_clamp_i32(-12416i, ~(-1i), arg_2 ^ var_0.e)));
    var var_2 = _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, ~arg_1));
    var var_3 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 1u, 33021u), vec3<u32>(0u, 12505u, arg_1)), vec3<u32>(69823u, 4294967295u, arg_1) >> (vec3<u32>(4294967295u, var_2.x, 27694u) % vec3<u32>(32u))), vec3<u32>(arg_1, var_2.x, u_input.d));
    var var_4 = arg_1;
    return 14558u;
}

fn func_1() -> Struct_3 {
    let var_0 = ~vec3<u32>(abs(0u), func_2(-1784f, 4294967295u, -16753i, true), _wgslsmith_sub_u32(~1u, u_input.c.x)) | vec3<u32>(u_input.c.x, ~_wgslsmith_mult_u32(~31966u, u_input.d), u_input.c.x);
    let var_1 = Struct_2(vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))) | any(vec2<bool>(false, true)), false, all(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(abs(-191f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1122f)), -498f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(248f, -492f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(650f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f * 457f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(u_input.d, Struct_3(12495i, vec2<i32>(2147483647i, 6639i), vec4<f32>(135f, 305f, 1583f, 540f), 445f, Struct_2(vec3<bool>(false, true, true), Struct_1(353f, vec2<f32>(-1000f, -1047f), 1045f, vec4<f32>(103f, 130f, 1000f, -2003f), u_input.a), 4294967295u, Struct_1(1087f, vec2<f32>(1065f, 504f), -1454f, vec4<f32>(1000f, -1000f, -1713f, -1506f), u_input.a), vec4<i32>(u_input.e, u_input.b.x, u_input.b.x, u_input.a))), true)).x, _wgslsmith_div_f32(-657f, 1221f), _wgslsmith_f_op_f32(f32(-1f) * -585f), -931f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1127f, 618f, 1003f) * vec4<f32>(2575f, -320f, 1112f, 484f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 562f, -666f, -506f), vec4<f32>(-1000f, -1000f, 627f, 673f)))), -9845i >> (~(5398u >> (u_input.c.x % 32u)) % 32u)), ~u_input.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(608f - -266f), _wgslsmith_f_op_f32(max(1333f, 1020f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + 1773f))), _wgslsmith_f_op_f32(f32(-1f) * -170f)), _wgslsmith_f_op_f32(max(-1181f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) * _wgslsmith_f_op_f32(1636f + 455f)))), vec4<f32>(_wgslsmith_f_op_f32(161f - -499f), _wgslsmith_f_op_vec2_f32(func_3(select(4294967295u, u_input.d, true), Struct_3(2147483647i, u_input.b, vec4<f32>(1380f, 400f, 117f, 969f), 417f, Struct_2(vec3<bool>(false, false, false), Struct_1(1000f, vec2<f32>(170f, 1230f), -308f, vec4<f32>(1246f, -1241f, -574f, -1533f), u_input.a), 1u, Struct_1(1772f, vec2<f32>(1000f, 341f), -1296f, vec4<f32>(1557f, 1077f, -538f, 1030f), -2147483647i), vec4<i32>(199i, -56417i, -61798i, 0i))), true)).x, _wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(255f, -384f) + 253f)), firstTrailingBit(-29138i)), firstTrailingBit(~max(abs(vec4<i32>(35992i, -330i, u_input.b.x, u_input.a)), firstLeadingBit(vec4<i32>(u_input.a, -20360i, -1684i, 0i)))));
    let var_2 = u_input.c.x;
    return Struct_3(_wgslsmith_mod_i32(var_1.e.x, 0i), var_1.e.zw, _wgslsmith_f_op_vec4_f32(max(var_1.b.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.c, var_1.b.b.x, 1768f, 1505f), var_1.d.d)), var_1.b.d, vec4<bool>(var_1.a.x, var_1.a.x, false, false))), var_1.b.d, var_1.a.x && all(vec4<bool>(true, var_1.a.x, false, var_1.a.x)))))), var_1.d.b.x, Struct_2(select(vec3<bool>(true, true, true), var_1.a, vec3<bool>(var_1.a.x && var_1.a.x, var_1.a.x && var_1.a.x, true)), var_1.b, var_1.c, Struct_1(_wgslsmith_f_op_f32(-var_1.d.d.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-786f, var_1.d.c)))), _wgslsmith_f_op_f32(-1196f * _wgslsmith_f_op_f32(ceil(-506f))), var_1.d.d, max(_wgslsmith_div_i32(25648i, 2147483647i), _wgslsmith_mod_i32(var_1.b.e, var_1.d.e))), ~var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = func_1().e;
    let var_3 = var_1.e.b;
    let var_4 = vec3<f32>(788f, var_3.b.x, var_3.d.x);
    let var_5 = var_0.e.b.e;
    var var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f)), _wgslsmith_f_op_f32(f32(-1f) * -178f), -131f));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(u_input.d, 18879u), false), ~vec2<u32>(32536u, 1u))), var_6.x, reverseBits(abs(vec4<i32>(var_2.d.e << (54920u % 32u), -2147483647i, ~var_2.b.e, var_1.e.e.x))));
}

