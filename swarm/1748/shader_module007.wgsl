struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    global0 = select(firstLeadingBit(arg_0 >> ((u_input.a & u_input.a) % 32u)) > ~_wgslsmith_mult_i32(-14553i, ~arg_0), any(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), arg_0 == select(6963i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, -15895i), vec3<i32>(0i, arg_0, -10433i)) ^ (arg_0 & arg_0), all(vec4<bool>(true, false, false, true))));
    return vec3<bool>(true, false, !all(vec4<bool>(all(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, false, false)), true, false)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = all(vec3<bool>(arg_1.d.x, false, true));
    var var_1 = func_3(_wgslsmith_clamp_i32(1i, arg_0.c.x, -15773i), -204f);
    let var_2 = countOneBits(_wgslsmith_div_i32(~(-2752i), -1i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), 1163f, arg_0.a, _wgslsmith_f_op_f32(trunc(arg_1.c.a)));
    var var_4 = Struct_2(arg_0, arg_0, arg_1.b, !vec2<bool>(!var_1.x, arg_1.d.x));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))))));
    var var_1 = 1f;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_mod_u32(38090u, _wgslsmith_add_u32(reverseBits(~arg_1.b.b), 10215u)), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-65781i, arg_1.b.c.x, 102249i), vec3<i32>(-21605i, 1i, 16543i) << (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))), arg_0.c.x & 13229i, firstTrailingBit(arg_1.b.c.x) & -48698i));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_1.a.a)))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = arg_0.d.x;
    global0 = !(all(select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), !vec3<bool>(arg_0.d.x, arg_0.d.x, false), arg_0.d.x)) & any(select(select(vec4<bool>(arg_0.d.x, true, false, true), vec4<bool>(arg_0.d.x, false, false, false), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, true)), select(vec4<bool>(true, true, arg_0.d.x, true), vec4<bool>(false, arg_0.d.x, false, arg_0.d.x), vec4<bool>(false, true, true, false)), true)));
    let var_0 = 1284f;
    global0 = all(select(vec3<bool>(all(vec3<bool>(false, false, false)), !(!arg_0.d.x), all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.d.x, true, false), vec3<bool>(arg_0.d.x, false, arg_0.d.x)))), !select(vec3<bool>(arg_0.d.x, true, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d.x), select(vec3<bool>(1000f < var_0, arg_0.a.a <= arg_0.b.a, arg_0.d.x), vec3<bool>(u_input.a >= arg_0.b.b, all(vec4<bool>(false, false, true, true)), arg_0.d.x), select(!vec3<bool>(arg_0.d.x, arg_0.d.x, false), !vec3<bool>(arg_0.d.x, arg_0.d.x, true), true))));
    let var_1 = arg_0.a.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.a, 2519f)) * -1488f) + _wgslsmith_f_op_f32(func_4(Struct_1(var_0, 4294967295u, vec3<i32>(-31316i, 57559i, 19136i)), func_2(Struct_1(736f, arg_0.b.b, var_1), Struct_2(arg_0.b, arg_0.a, arg_0.c, arg_0.d)), -1243f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_f32(trunc(-1056f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) - _wgslsmith_f_op_f32(1197f + 918f)) - _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(313f, u_input.a, vec3<i32>(-23017i, -43768i, -23959i)), Struct_1(-1809f, 0u, vec3<i32>(-2147483647i, 0i, 2147483647i)), Struct_1(-859f, u_input.a, vec3<i32>(43886i, -2147483647i, -91712i)), vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f - 1438f) + _wgslsmith_f_op_f32(-210f + -835f)) * -234f)));
    var var_1 = false;
    var var_2 = select(select(vec4<bool>(true, var_0.x < var_0.x, true, any(vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), false), vec4<bool>(4294967295u < (_wgslsmith_div_u32(u_input.a, u_input.a) << (5681u % 32u)), any(vec2<bool>(true, true)), true, true), !(((-250f <= var_0.x) == true) && true));
    let var_3 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(var_0.x - 1833f), 41763u, ~vec3<i32>(-35993i, 2147483647i, -2147483647i)), Struct_2(func_2(Struct_1(var_0.x, 10608u, vec3<i32>(8613i, 0i, 2147483647i)), Struct_2(Struct_1(1261f, 1u, vec3<i32>(2147483647i, -56405i, -38714i)), Struct_1(288f, u_input.a, vec3<i32>(-34215i, 0i, 50232i)), Struct_1(1201f, 25812u, vec3<i32>(-11566i, -8280i, -45567i)), vec2<bool>(true, var_2.x))).a, func_2(Struct_1(var_0.x, 114630u, vec3<i32>(-2147483647i, -1i, 22301i)), Struct_2(Struct_1(var_0.x, 0u, vec3<i32>(1i, -1i, 0i)), Struct_1(var_0.x, u_input.a, vec3<i32>(0i, -34704i, 1i)), Struct_1(var_0.x, u_input.a, vec3<i32>(-2147483647i, -2147483647i, 38877i)), vec2<bool>(var_2.x, false))).b, func_2(Struct_1(-1000f, u_input.a, vec3<i32>(64939i, -1079i, -1i)), Struct_2(Struct_1(1000f, 3477u, vec3<i32>(1i, -1i, 0i)), Struct_1(var_0.x, u_input.a, vec3<i32>(1i, -23721i, -16966i)), Struct_1(-259f, u_input.a, vec3<i32>(27522i, 2147483647i, -1i)), vec2<bool>(var_2.x, true))).b, var_2.yx)).b, func_2(func_2(func_2(Struct_1(var_0.x, 4294967295u, vec3<i32>(-31785i, 32713i, 0i)), Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(-2147483647i, 8447i, -1i)), Struct_1(-456f, 0u, vec3<i32>(2139i, -4529i, 1i)), Struct_1(1000f, 36439u, vec3<i32>(2147483647i, 35326i, 52668i)), var_2.wy)).b, Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(24778i, -11221i, 0i)), Struct_1(var_0.x, u_input.a, vec3<i32>(0i, 4694i, -1i)), Struct_1(-1000f, u_input.a, vec3<i32>(-1i, -1i, 23926i)), var_2.xz)).c, Struct_2(func_2(Struct_1(var_0.x, 1u, vec3<i32>(2147483647i, -49679i, -1i)), Struct_2(Struct_1(var_0.x, 1u, vec3<i32>(-96256i, 1i, -7029i)), Struct_1(-506f, 0u, vec3<i32>(-44366i, -16620i, 0i)), Struct_1(var_0.x, 0u, vec3<i32>(-36520i, -14348i, 9873i)), vec2<bool>(var_2.x, false))).a, Struct_1(var_0.x, u_input.a, vec3<i32>(1i, -26912i, -1i)), func_2(Struct_1(1230f, 24717u, vec3<i32>(-2122i, -63658i, -1i)), Struct_2(Struct_1(-1167f, u_input.a, vec3<i32>(-4438i, 0i, 1i)), Struct_1(var_0.x, 4294967295u, vec3<i32>(-50095i, -20063i, 51232i)), Struct_1(-1055f, u_input.a, vec3<i32>(-1i, 24223i, -12913i)), var_2.zz)).c, vec2<bool>(true, var_2.x)))).a, Struct_2(Struct_1(281f, ~1u, max(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, 1i), vec3<i32>(2147483647i, -16468i, 0i)), vec3<i32>(1i, 1i, 1i))), func_2(func_2(func_2(Struct_1(var_0.x, u_input.a, vec3<i32>(-2147483647i, -1i, 32702i)), Struct_2(Struct_1(2902f, u_input.a, vec3<i32>(-1i, -2147483647i, 1i)), Struct_1(364f, u_input.a, vec3<i32>(-19963i, -1i, -2147483647i)), Struct_1(-555f, 0u, vec3<i32>(35095i, 1i, 45264i)), var_2.xz)).b, func_2(Struct_1(332f, 4294967295u, vec3<i32>(3673i, 1i, 10662i)), Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(-22792i, 1i, -36549i)), Struct_1(1333f, 58962u, vec3<i32>(1i, 0i, -1i)), Struct_1(var_0.x, u_input.a, vec3<i32>(6991i, 2147483647i, 1i)), var_2.zz))).c, Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(35893i, 0i, -2147483647i)), Struct_1(487f, 78860u, vec3<i32>(51084i, 0i, 23410i)), func_2(Struct_1(var_0.x, u_input.a, vec3<i32>(-1i, 5661i, 0i)), Struct_2(Struct_1(var_0.x, 4294967295u, vec3<i32>(28193i, 54821i, -60637i)), Struct_1(var_0.x, u_input.a, vec3<i32>(-2147483647i, -1i, 2147483647i)), Struct_1(-211f, u_input.a, vec3<i32>(8183i, 27552i, -7109i)), vec2<bool>(var_2.x, var_2.x))).c, !var_2.wx)).c, func_2(func_2(Struct_1(-109f, u_input.a, vec3<i32>(1i, -2147483647i, -1i)), Struct_2(Struct_1(-680f, 1u, vec3<i32>(-44783i, -1i, -1i)), Struct_1(-449f, u_input.a, vec3<i32>(59686i, -3031i, 0i)), Struct_1(var_0.x, u_input.a, vec3<i32>(13977i, 9712i, -2147483647i)), var_2.xz)).a, Struct_2(func_2(Struct_1(var_0.x, 10135u, vec3<i32>(-4936i, 1i, 1i)), Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(-8883i, -1i, -26521i)), Struct_1(-2887f, u_input.a, vec3<i32>(-29640i, -2147483647i, -2970i)), Struct_1(var_0.x, u_input.a, vec3<i32>(15795i, 2670i, 49639i)), vec2<bool>(var_2.x, false))).b, func_2(Struct_1(var_0.x, 87960u, vec3<i32>(3328i, 19i, 1i)), Struct_2(Struct_1(-395f, u_input.a, vec3<i32>(-25990i, 2147483647i, -35914i)), Struct_1(var_0.x, 1u, vec3<i32>(42662i, -44203i, 32178i)), Struct_1(var_0.x, u_input.a, vec3<i32>(1i, 0i, 989i)), var_2.wz)).b, Struct_1(var_0.x, u_input.a, vec3<i32>(0i, -1i, -25229i)), func_2(Struct_1(var_0.x, 25304u, vec3<i32>(1i, -7817i, -24658i)), Struct_2(Struct_1(var_0.x, u_input.a, vec3<i32>(1i, 1i, 33456i)), Struct_1(-1119f, u_input.a, vec3<i32>(24646i, 62141i, -16298i)), Struct_1(var_0.x, 29592u, vec3<i32>(0i, 2147483647i, -1i)), var_2.zw)).d)).c, var_2.xz));
    let var_4 = countOneBits(firstLeadingBit(1u));
    let var_5 = vec4<bool>(true, true, any(func_3(abs(2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -769f))) & false, var_2.x);
    var var_6 = ~vec4<i32>(1i, max(var_3.a.c.x, var_3.b.c.x), max(var_3.c.c.x, 30587i), 21188i) & _wgslsmith_div_vec4_i32(min(abs(vec4<i32>(var_3.b.c.x, var_3.b.c.x, -1i, -6125i)), -select(vec4<i32>(var_3.c.c.x, var_3.c.c.x, -1i, var_3.b.c.x), vec4<i32>(var_3.b.c.x, var_3.c.c.x, var_3.a.c.x, var_3.a.c.x), var_2.x)), abs(max(select(vec4<i32>(7659i, var_3.b.c.x, var_3.c.c.x, 1i), vec4<i32>(var_3.a.c.x, var_3.a.c.x, var_3.c.c.x, var_3.a.c.x), true), -vec4<i32>(27507i, var_3.a.c.x, 49i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(trunc(var_0.yz))), vec2<u32>(firstLeadingBit(~1u), var_3.a.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, var_3.a.c.x, -11349i, var_3.b.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.a.c.x, 22273i, -1i, 7256i), vec4<i32>(var_3.b.c.x, 8475i, 1i, -2147483647i))), _wgslsmith_div_vec4_i32(~vec4<i32>(var_3.c.c.x, 1i, -12010i, 23499i), ~vec4<i32>(20900i, var_6.x, var_6.x, var_6.x))) << (min(var_3.a.b, ~abs(0u)) % 32u), 1i);
}

