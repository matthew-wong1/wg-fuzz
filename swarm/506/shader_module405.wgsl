struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-15528i, Struct_1(vec3<bool>(true, false, true), 4294967295u, vec4<u32>(36426u, 4294967295u, 53578u, 31025u), -1000f, vec2<u32>(3355u, 4294967295u)), vec2<u32>(122u, 43418u), vec3<i32>(12436i, -25159i, -63154i), vec4<f32>(132f, 1002f, 1407f, -756f)), Struct_2(0i, Struct_1(vec3<bool>(true, true, false), 0u, vec4<u32>(1u, 21680u, 1u, 1u), -981f, vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 19080u), vec3<i32>(1i, 1i, -15774i), vec4<f32>(1333f, -1352f, 272f, -206f)), Struct_2(1i, Struct_1(vec3<bool>(false, false, false), 29311u, vec4<u32>(0u, 4294967295u, 4294967295u, 7869u), -644f, vec2<u32>(0u, 4294967295u)), vec2<u32>(76909u, 4294967295u), vec3<i32>(2147483647i, -62050i, 596i), vec4<f32>(-774f, 606f, 869f, -126f)), Struct_2(-19537i, Struct_1(vec3<bool>(false, true, true), 0u, vec4<u32>(1u, 0u, 0u, 8516u), 1936f, vec2<u32>(0u, 1u)), vec2<u32>(6614u, 1u), vec3<i32>(-22975i, -83927i, -1i), vec4<f32>(1000f, -129f, 182f, 1335f)), Struct_2(-44189i, Struct_1(vec3<bool>(false, true, true), 1u, vec4<u32>(8798u, 0u, 0u, 27512u), -118f, vec2<u32>(35297u, 4294967295u)), vec2<u32>(19555u, 1u), vec3<i32>(2147483647i, -1i, -1i), vec4<f32>(624f, 742f, -1000f, 1000f)), Struct_2(1i, Struct_1(vec3<bool>(true, true, false), 4294967295u, vec4<u32>(1u, 1u, 30993u, 0u), -1562f, vec2<u32>(0u, 57190u)), vec2<u32>(30405u, 33150u), vec3<i32>(18039i, 10878i, 2147483647i), vec4<f32>(-1943f, 128f, -710f, 1410f)), Struct_2(0i, Struct_1(vec3<bool>(false, false, true), 10737u, vec4<u32>(4294967295u, 1u, 29543u, 63372u), -152f, vec2<u32>(78045u, 63927u)), vec2<u32>(1u, 0u), vec3<i32>(27910i, -31482i, 2147483647i), vec4<f32>(-1541f, 961f, 1967f, 507f)), Struct_2(2147483647i, Struct_1(vec3<bool>(true, false, false), 12790u, vec4<u32>(68918u, 0u, 15210u, 38123u), 1000f, vec2<u32>(3945u, 4294967295u)), vec2<u32>(0u, 0u), vec3<i32>(1i, -10025i, -3204i), vec4<f32>(-492f, 1357f, 422f, 1025f)), Struct_2(15710i, Struct_1(vec3<bool>(true, false, true), 13582u, vec4<u32>(8401u, 1u, 61303u, 21241u), 734f, vec2<u32>(31087u, 9260u)), vec2<u32>(136529u, 36160u), vec3<i32>(2147483647i, 35566i, 2147483647i), vec4<f32>(-651f, -1153f, 1249f, 279f)), Struct_2(-56051i, Struct_1(vec3<bool>(true, true, true), 83654u, vec4<u32>(32967u, 0u, 4850u, 4603u), 993f, vec2<u32>(1u, 33728u)), vec2<u32>(40966u, 4294967295u), vec3<i32>(i32(-2147483648), -50946i, -72993i), vec4<f32>(172f, 1226f, -795f, -1264f)), Struct_2(-59674i, Struct_1(vec3<bool>(false, true, false), 1u, vec4<u32>(0u, 0u, 10401u, 1u), -1200f, vec2<u32>(0u, 0u)), vec2<u32>(1430u, 93834u), vec3<i32>(41899i, 32853i, 116354i), vec4<f32>(-767f, -1000f, -541f, -210f)), Struct_2(48456i, Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<u32>(33859u, 13464u, 11833u, 45471u), -1511f, vec2<u32>(84825u, 84042u)), vec2<u32>(4294967295u, 6559u), vec3<i32>(1i, 101743i, -1i), vec4<f32>(582f, -1009f, 204f, 172f)), Struct_2(69069i, Struct_1(vec3<bool>(false, false, false), 1u, vec4<u32>(21692u, 38246u, 24891u, 44599u), 1142f, vec2<u32>(4294967295u, 7701u)), vec2<u32>(1u, 51406u), vec3<i32>(26330i, -14927i, 31678i), vec4<f32>(-440f, -1274f, -176f, -1794f)), Struct_2(2147483647i, Struct_1(vec3<bool>(true, false, true), 1u, vec4<u32>(3616u, 54669u, 4294967295u, 28057u), 1333f, vec2<u32>(25587u, 4294967295u)), vec2<u32>(16925u, 23927u), vec3<i32>(-54813i, 38511i, -15762i), vec4<f32>(-423f, 261f, 959f, -280f)));

var<private> global1: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(65779u, 0u), vec2<u32>(8350u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 88320u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> vec4<u32> {
    global2 = !arg_1;
    let var_0 = 1i;
    var var_1 = u_input.a.x;
    var var_2 = !all(select(select(select(vec3<bool>(global2.x, arg_1.x, false), vec3<bool>(arg_1.x, false, global2.x), vec3<bool>(false, false, arg_1.x)), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(arg_1.x, false, global2.x), vec3<bool>(false, global2.x, false)), false), select(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(global2.x, arg_1.x, global2.x)), select(vec3<bool>(false, arg_1.x, global2.x), vec3<bool>(false, true, true), vec3<bool>(true, true, arg_1.x)), all(vec3<bool>(arg_1.x, global2.x, false))), select(vec3<bool>(global2.x, false, false), !vec3<bool>(true, true, arg_1.x), vec3<bool>(true, global2.x, global2.x))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(arg_2 + -1000f))) - 1857f);
    return vec4<u32>(~(~(~33585u | u_input.a.x)), u_input.a.x, ~(~0u), countOneBits(~u_input.a.x) ^ u_input.a.x);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(select(arg_0.xwz, vec3<bool>(all(vec3<bool>(true, arg_0.x, arg_0.x)), false, true), arg_0.zzz), 0u, ~_wgslsmith_div_vec4_u32(func_3(2556i, arg_0.zw, 1168f), ~vec4<u32>(1u, 1u, 52835u, 82101u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-145f)))), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(19606u, 6u)], firstTrailingBit(vec2<u32>(1u, u_input.a.x) | vec2<u32>(4294967295u, 4294967295u)))), Struct_1(select(arg_0.xxx, !(!vec3<bool>(global2.x, false, false)), select(!arg_0.zww, select(arg_0.wyx, vec3<bool>(false, arg_0.x, global2.x), arg_0.x), global2.x)), ~abs(u_input.a.x & u_input.a.x), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39547u, 59903u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 16304u, 63428u)), ~vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)) >> (min(func_3(u_input.c.x, vec2<bool>(global2.x, false), -2363f), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 33868u, 4294967295u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u))) % vec4<u32>(32u)), 421f, reverseBits(~vec2<u32>(1u, 4294967295u))), vec2<i32>(0i, u_input.b.x));
    global1 = array<vec2<u32>, 6>();
    let var_1 = !(!vec4<bool>(all(vec2<bool>(true, var_0.a.a.x)), global2.x | true, false, !global2.x));
    let var_2 = vec4<i32>(~_wgslsmith_dot_vec4_i32(min(u_input.c, -vec4<i32>(var_0.c.x, u_input.b.x, u_input.b.x, -22509i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, -23371i), u_input.c))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, var_0.c.x), -1416i), -(~0i), var_0.c.x);
    var var_3 = select(!select(vec4<bool>(true, true, var_1.x, global2.x & true), arg_0, !arg_0), vec4<bool>(false, true, _wgslsmith_div_i32(2147483647i & var_0.c.x, 9650i) == var_2.x, var_1.x), !(!all(select(var_1.zz, arg_0.yy, global2.x))));
    return Struct_3(Struct_1(var_1.yyz, _wgslsmith_mult_u32(var_0.a.e.x, ~firstTrailingBit(0u)), var_0.a.c, _wgslsmith_f_op_f32(sign(var_0.a.d)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~var_0.b.c.xw, var_0.b.e, vec2<u32>(1u, 1u)), ~_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(1u, 0u)))), var_0.a, _wgslsmith_add_vec2_i32(~(vec2<i32>(41505i, 2147483647i) & select(u_input.c.xw, vec2<i32>(-2147483647i, var_2.x), vec2<bool>(true, var_0.b.a.x))), var_2.xy));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = 10810i;
    global2 = !arg_0.xz;
    let var_1 = func_2(vec4<bool>(!arg_1.c || (_wgslsmith_f_op_f32(1476f + arg_3) >= 362f), !(!arg_1.c) & any(vec2<bool>(true, true)), any(vec3<bool>(true, arg_1.b, true)) || true, !any(!vec4<bool>(arg_0.x, global2.x, global2.x, true))));
    var var_2 = Struct_1(arg_1.a.a, ~var_1.a.e.x, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.c.x, var_1.a.c.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2.x, u_input.a.x) | arg_1.a.c.xwz, u_input.a)), arg_1.a.c.x, 10807u, 28238u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))))), ~_wgslsmith_add_vec2_u32(~u_input.a.zz, var_1.a.c.yx));
    let var_3 = 1123f;
    return Struct_2(u_input.c.x, func_2(!vec4<bool>(false, select(false, true, var_2.a.x), var_2.d < 234f, true)).a, vec2<u32>(var_2.b, 1u), u_input.c.yzy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(105f, arg_1.e.x, arg_3, arg_1.e.x), vec4<f32>(-519f, arg_1.a.d, arg_3, var_2.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1802f, var_3, var_3, arg_1.e.x)))))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = 57177u;
    global1 = array<vec2<u32>, 6>();
    var var_1 = _wgslsmith_sub_u32(1u, 0u);
    var var_2 = vec4<i32>(0i, arg_0.b << (firstLeadingBit(arg_0.c.x) % 32u), _wgslsmith_mod_i32(~(-countOneBits(u_input.c.x)), -(~abs(arg_0.a.a))), -select(-2062i, ~1i, true));
    var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(u_input.c, min(-u_input.c, vec4<i32>(u_input.c.x, arg_0.b, 1i, var_2.x)), all(vec2<bool>(true, arg_0.a.b.a.x))), -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, 20934i, arg_0.a.a, -1i), vec4<i32>(0i, var_2.x, 0i, 28195i), u_input.c), vec4<i32>(arg_0.a.a, var_2.x, u_input.b.x, 60201i) | u_input.c), ~(~(u_input.c ^ vec4<i32>(76107i, u_input.b.x, 1i, -14772i)))), firstLeadingBit(u_input.c));
    return Struct_3(arg_0.a.b, func_2(select(select(!vec4<bool>(false, global2.x, arg_0.d.x, global2.x), !vec4<bool>(global2.x, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.a.b.a.x, true, false), false)), !vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(select(false, false, false), any(arg_0.d.zx), any(vec3<bool>(arg_0.a.b.a.x, true, arg_0.a.b.a.x)), arg_0.a.a != arg_0.a.d.x))).b, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, u_input.c.x, arg_0.b), _wgslsmith_div_vec3_i32(vec3<i32>(-9048i, 2147483647i, u_input.c.x), var_2.zzz)), firstLeadingBit(0i)));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = arg_1.b.c >> (arg_1.a.c % vec4<u32>(32u));
    global2 = !select(select(!(!arg_2.b.a.xx), arg_2.a.a.zz, arg_3.zy), func_2(!select(vec4<bool>(true, false, arg_2.b.a.x, arg_1.b.a.x), vec4<bool>(false, arg_2.a.a.x, arg_1.b.a.x, arg_2.a.a.x), arg_2.b.a.x)).b.a.xy, arg_3.x);
    global2 = vec2<bool>(true, global2.x);
    let var_1 = u_input.c >> (arg_2.a.c % vec4<u32>(32u));
    var var_2 = Struct_5(arg_2.b, !global2.x, true, arg_1.b.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -249f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.d - 1522f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 371f) - _wgslsmith_f_op_f32(-func_2(vec4<bool>(arg_3.x, true, global2.x, arg_1.a.a.x)).a.d))));
    return global0[_wgslsmith_index_u32(1u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    var var_1 = func_5(-326f, func_4(Struct_4(func_1(vec3<bool>(global2.x, global2.x, false), Struct_5(Struct_1(vec3<bool>(false, true, global2.x), u_input.a.x, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), -528f, vec2<u32>(0u, 0u)), true, global2.x, -1491f, vec3<f32>(-701f, 702f, -750f)), u_input.a, 1413f), -1i, (vec4<u32>(83132u, 1454u, 3225u, u_input.a.x) ^ vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 24108u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(true, all(vec3<bool>(global2.x, true, false)), func_2(vec4<bool>(true, global2.x, false, true)).a.a.x))), func_2(vec4<bool>(true, any(func_1(vec3<bool>(global2.x, global2.x, false), Struct_5(Struct_1(vec3<bool>(global2.x, global2.x, global2.x), u_input.a.x, vec4<u32>(0u, u_input.a.x, 0u, 0u), 464f, vec2<u32>(11842u, 46097u)), false, global2.x, 804f, vec3<f32>(105f, -697f, -624f)), u_input.a, 1014f).b.a), global2.x & true, select(true, global2.x, true))), !(!(!vec3<bool>(true, false, global2.x))));
    let var_2 = func_5(var_1.e.x, func_4(Struct_4(global0[_wgslsmith_index_u32(var_1.b.e.x, 14u)], _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, -66333i), 1i), ~vec4<u32>(1594u, var_1.c.x, 19683u, u_input.a.x), var_1.b.a)), func_4(Struct_4(func_5(_wgslsmith_f_op_f32(var_1.b.d + -1531f), Struct_3(var_1.b, Struct_1(vec3<bool>(var_1.b.a.x, global2.x, false), var_1.c.x, vec4<u32>(var_1.b.b, 38760u, var_1.c.x, 85543u), var_1.e.x, vec2<u32>(41808u, u_input.a.x)), u_input.c.wx), func_4(Struct_4(Struct_2(19211i, Struct_1(vec3<bool>(var_1.b.a.x, false, false), var_1.b.e.x, vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), var_1.e.x, vec2<u32>(0u, 69181u)), vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(var_1.a, var_1.d.x, 3014i), vec4<f32>(var_1.b.d, -1074f, -776f, var_1.b.d)), 7865i, vec4<u32>(10075u, 58283u, var_1.c.x, 69679u), vec3<bool>(false, var_1.b.a.x, true))), !vec3<bool>(global2.x, false, true)), -var_1.a, vec4<u32>(1u, u_input.a.x, 91889u | var_1.b.c.x, 81986u), var_1.b.a)), func_2(select(select(!vec4<bool>(var_1.b.a.x, global2.x, var_1.b.a.x, false), vec4<bool>(true, global2.x, true, var_1.b.a.x), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, true, false, var_1.b.a.x)))).b.a).c.x;
    var var_3 = Struct_4(func_1(!(!select(vec3<bool>(global2.x, var_1.b.a.x, global2.x), var_1.b.a, true)), Struct_5(var_1.b, (31254i | var_1.d.x) >= _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), false, -1263f, var_1.e.yyy), ~var_1.b.c.xwz ^ func_3(-27867i, func_1(var_1.b.a, Struct_5(Struct_1(vec3<bool>(true, true, var_1.b.a.x), 4294967295u, var_1.b.c, var_1.e.x, u_input.a.yx), false, global2.x, var_1.e.x, var_1.e.zwz), u_input.a, 828f).b.a.zx, _wgslsmith_f_op_f32(trunc(var_1.e.x))).wwy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f * 290f))))), ~var_1.a, ~vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, firstLeadingBit(~51019u), reverseBits(~u_input.a.x)), vec3<bool>(var_1.b.a.x, any(vec3<bool>(all(vec2<bool>(true, global2.x)), func_5(442f, Struct_3(Struct_1(var_1.b.a, var_2, var_1.b.c, 222f, global1[_wgslsmith_index_u32(1u, 6u)]), Struct_1(var_1.b.a, var_2, vec4<u32>(var_2, var_2, u_input.a.x, 4294967295u), var_1.e.x, vec2<u32>(66172u, var_1.c.x)), vec2<i32>(-7522i, u_input.b.x)), Struct_3(Struct_1(vec3<bool>(false, var_1.b.a.x, global2.x), u_input.a.x, var_1.b.c, -932f, vec2<u32>(74546u, 1u)), Struct_1(var_1.b.a, 20467u, vec4<u32>(var_1.c.x, 46672u, 42007u, 4294967295u), 675f, vec2<u32>(59669u, u_input.a.x)), vec2<i32>(53829i, u_input.c.x)), vec3<bool>(false, var_1.b.a.x, true)).b.a.x, func_5(var_1.e.x, Struct_3(Struct_1(var_1.b.a, var_2, var_1.b.c, 1816f, vec2<u32>(51556u, 1u)), Struct_1(vec3<bool>(var_1.b.a.x, false, true), u_input.a.x, vec4<u32>(5859u, 1u, 47365u, var_1.b.c.x), 1259f, var_1.c), u_input.b), Struct_3(Struct_1(var_1.b.a, 0u, vec4<u32>(var_2, 4294967295u, 0u, 1u), var_1.e.x, vec2<u32>(var_1.c.x, 11865u)), var_1.b, var_1.d.xy), var_1.b.a).b.a.x)), false));
    var var_4 = func_4(Struct_4(Struct_2(78255i, Struct_1(!var_1.b.a, 96448u, firstLeadingBit(vec4<u32>(0u, var_3.a.b.c.x, var_1.c.x, var_3.c.x)), func_4(Struct_4(Struct_2(u_input.c.x, var_1.b, vec2<u32>(38138u, 20785u), var_1.d, vec4<f32>(170f, var_1.e.x, var_3.a.e.x, var_1.b.d)), 0i, var_1.b.c, var_3.a.b.a)).b.d, ~vec2<u32>(var_2, var_2)), _wgslsmith_mod_vec2_u32(vec2<u32>(3679u, var_1.b.b), func_2(vec4<bool>(true, true, global2.x, false)).a.c.xy), var_3.a.d >> (vec3<u32>(41865u, var_2, u_input.a.x) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.e.x), _wgslsmith_div_f32(-1522f, 2989f), var_1.e.x, _wgslsmith_f_op_f32(-var_3.a.b.d))), 2147483647i, firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(var_3.c, vec4<u32>(4294967295u, 66363u, 4294967295u, var_1.b.b)))), !vec3<bool>(func_2(vec4<bool>(var_3.d.x, global2.x, true, var_1.b.a.x)).b.a.x, any(vec2<bool>(false, false)), true)));
    var var_5 = var_3.b;
    var_0 = true;
    var var_6 = true;
    let var_7 = Struct_4(Struct_2(u_input.b.x, Struct_1(var_3.a.b.a, 4294967295u, var_1.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.b.d))), select(~vec2<u32>(var_1.c.x, var_2), var_4.b.e & vec2<u32>(3014u, 4294967295u), any(vec3<bool>(true, true, var_1.b.a.x)))), func_3(abs(select(2147483647i, var_3.a.a, false)), var_1.b.a.zy, 1000f).yz, vec3<i32>(-3315i, min(_wgslsmith_mod_i32(7636i, 15216i), firstTrailingBit(var_4.c.x)), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_3.a.e * vec4<f32>(-536f, var_4.a.d, -1417f, -1214f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.e.x, -1000f, -547f, var_3.a.b.d), vec4<f32>(var_3.a.e.x, var_4.b.d, var_1.b.d, var_3.a.e.x)))))), -_wgslsmith_mult_i32(-22371i, u_input.b.x), vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x, var_1.b.e.x), ~func_2(vec4<bool>(true, true, true, true)).b.e.x, ~(~1u), func_4(Struct_4(Struct_2(u_input.b.x, var_3.a.b, vec2<u32>(0u, var_4.a.b), u_input.c.wxz, var_3.a.e), max(u_input.c.x, 34909i), var_3.c, func_1(vec3<bool>(true, var_1.b.a.x, false), Struct_5(var_3.a.b, var_1.b.a.x, global2.x, var_1.e.x, var_3.a.e.zzw), vec3<u32>(var_2, 4294967295u, var_3.c.x), var_4.a.d).b.a)).b.c.x), !var_1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, 2431u), vec2<u32>(var_3.a.c.x, 0u)), ~vec2<u32>(85070u, var_7.c.x) >> (max(vec2<u32>(24804u, 7798u), var_3.a.c) % vec2<u32>(32u))), (var_3.c.yy ^ vec2<u32>(var_4.a.b, var_4.a.c.x)) << (~(~vec2<u32>(17501u, var_1.c.x)) % vec2<u32>(32u)), select(vec2<bool>(true, any(vec4<bool>(var_3.a.b.a.x, true, false, false))), func_1(var_3.d, Struct_5(Struct_1(var_4.b.a, var_3.a.c.x, var_4.b.c, var_7.a.e.x, vec2<u32>(var_3.c.x, var_1.b.b)), var_4.b.a.x, true, var_1.b.d, var_3.a.e.yyy), vec3<u32>(94166u, 654u, 25785u), func_1(var_7.a.b.a, Struct_5(Struct_1(vec3<bool>(var_3.a.b.a.x, false, var_7.a.b.a.x), var_3.a.b.c.x, vec4<u32>(4294967295u, var_2, var_4.a.e.x, 37469u), 169f, vec2<u32>(var_1.c.x, var_3.a.b.b)), true, var_4.b.a.x, var_4.a.d, var_3.a.e.wzy), u_input.a, var_1.b.d).b.d).b.a.yx, !var_3.d.yz)), var_3.a.d.x, _wgslsmith_mult_i32(abs(var_1.a & var_3.a.d.x) >> (var_1.c.x % 32u), ~func_4(Struct_4(Struct_2(var_3.b, var_3.a.b, var_7.c.yz, var_7.a.d, vec4<f32>(-1000f, -923f, -1011f, var_4.b.d)), var_4.c.x, var_4.b.c, vec3<bool>(var_3.d.x, var_1.b.a.x, true))).c.x), _wgslsmith_div_vec2_f32(var_3.a.e.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.a.d, 607f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.d, 581f))))), func_2(vec4<bool>(func_5(-1679f, func_4(Struct_4(Struct_2(var_4.c.x, var_1.b, var_1.c, vec3<i32>(var_3.a.d.x, var_3.a.d.x, var_7.b), var_3.a.e), -2147483647i, vec4<u32>(var_3.a.c.x, var_1.b.c.x, 0u, var_7.c.x), vec3<bool>(var_1.b.a.x, global2.x, false))), func_4(Struct_4(Struct_2(var_1.d.x, Struct_1(vec3<bool>(false, var_7.d.x, true), var_4.b.b, vec4<u32>(4294967295u, var_7.a.c.x, 4294967295u, var_3.c.x), -1474f, vec2<u32>(5521u, var_4.a.e.x)), vec2<u32>(31714u, var_2), var_1.d, var_1.e), var_7.b, var_7.c, var_3.d)), var_4.a.a).b.a.x, _wgslsmith_f_op_f32(trunc(-328f)) < var_3.a.e.x, true, func_1(!var_1.b.a, Struct_5(var_3.a.b, true, false, 1000f, var_3.a.e.wwx), firstTrailingBit(vec3<u32>(var_7.a.b.c.x, var_7.a.c.x, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -847f)).b.a.x)).b.e.x);
}

