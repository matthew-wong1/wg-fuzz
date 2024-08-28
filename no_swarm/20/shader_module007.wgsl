struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_1(~(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(48587u, 43751u), vec2<u32>(24077u, 12855u))) ^ vec2<u32>(1u, 1u)), _wgslsmith_mult_i32(i32(-1i) * -(~(-2147483647i)), min(max(arg_0 & arg_0, abs(-43362i)), ~(~arg_0))), -1390f, false);
    var var_1 = Struct_5(vec2<i32>(~(~_wgslsmith_div_i32(-67792i, 1i)), 1i), _wgslsmith_dot_vec3_i32(-(u_input.a.yww << (vec3<u32>(96861u, 5907u, var_0.a.x) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_0.a.x, var_0.a.x), ~vec3<u32>(var_0.a.x, var_0.a.x, 6072u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, 0i, var_0.b)), vec3<i32>(i32(-1i) * -47970i, -u_input.a.x, _wgslsmith_clamp_i32(34255i, 2147483647i, 2147483647i)))), ~select(vec3<u32>(~var_0.a.x, ~var_0.a.x, ~var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u), false), Struct_4(vec4<bool>(!(!var_0.d), !var_0.d && true, true, true), var_0, ~select(31767u & var_0.a.x, _wgslsmith_sub_u32(0u, var_0.a.x), var_0.d)), Struct_4(select(!vec4<bool>(var_0.d, true, var_0.d, true), select(select(vec4<bool>(false, true, var_0.d, false), vec4<bool>(true, var_0.d, true, false), vec4<bool>(false, var_0.d, false, true)), !vec4<bool>(true, var_0.d, var_0.d, false), select(vec4<bool>(true, var_0.d, true, var_0.d), vec4<bool>(var_0.d, false, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d))), select(true, false, true)), var_0, max(firstTrailingBit(var_0.a.x | var_0.a.x), firstLeadingBit(~var_0.a.x))));
    var var_2 = min(vec2<i32>(arg_0, -1i), max(max(select(var_1.a, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 11913i), u_input.a.zw), false), u_input.a.yx), var_1.a));
    var var_3 = vec2<bool>(any(!(!var_1.d.a.xy)), true);
    let var_4 = var_1.b;
    return ~abs((-var_1.a.x >> (_wgslsmith_clamp_u32(36838u, var_1.e.b.a.x, 4294967295u) % 32u)) << (1u % 32u));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = -423f;
    var var_1 = vec3<bool>(false, select(firstTrailingBit(select(u_input.a.x, 2147483647i, false)) != func_3(u_input.a.x), true, any(vec3<bool>(true, true, true))), !all(vec3<bool>(false, true, true)) && (all(vec2<bool>(false, false)) | !any(vec4<bool>(false, false, true, false))));
    var_1 = select(select(select(select(vec3<bool>(var_1.x, true, false), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false)), select(vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), false), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), true)), true), select(select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, true), var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), !vec3<bool>(var_1.x, var_1.x, false)), !(!vec3<bool>(false, true, var_1.x)), var_1.x), select(var_1.x, all(!vec4<bool>(false, true, true, var_1.x)), var_1.x)), vec3<bool>(any(!vec4<bool>(false, true, true, var_1.x)), true, var_1.x), select(vec3<bool>(var_1.x, any(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, var_1.x, true, false), var_1.x)), arg_0 >= ~arg_0), !select(!vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), true), var_1.x && (u_input.a.x <= (i32(-1i) * -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(196f, 1497f, 1000f, -544f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(706f, -385f, 1061f, -2075f), vec4<f32>(-125f, 1736f, 337f, -207f), vec4<bool>(var_1.x, false, true, var_1.x))))))));
    var var_3 = var_2.x;
    return Struct_2(Struct_1((abs(vec2<u32>(arg_0, arg_0)) & select(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, 27232u), var_1.x)) | ~vec2<u32>(1u, arg_0), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), select(!(!var_1.x), var_1.x, false)), u_input.a.wxw, Struct_1(vec2<u32>(abs(select(arg_0, 9317u, var_1.x)), min(1u, ~arg_0)), firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(exp2(var_2.x)), all(select(vec2<bool>(var_1.x, false), !var_1.zy, true))), Struct_1(~(~(~vec2<u32>(1u, arg_0))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), false), Struct_1(vec2<u32>(56953u, ~(30948u >> (arg_0 % 32u))), -7827i, var_2.x, var_1.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(min(1i, 1i), Struct_2(func_2(46531u).d, ~(~vec3<i32>(2147483647i, -57063i, 41782i) & _wgslsmith_mod_vec3_i32(u_input.a.wwy, vec3<i32>(-1i, arg_0.d.b, arg_0.a.b))), Struct_1(arg_0.c.a | countOneBits(vec2<u32>(96216u, arg_0.a.a.x)), -arg_0.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.c, -833f))), arg_0.a.d), Struct_1(firstLeadingBit(vec2<u32>(arg_0.c.a.x, arg_0.e.a.x) | vec2<u32>(arg_0.e.a.x, arg_0.d.a.x)), 54572i, -1870f, !func_2(arg_0.a.a.x).e.d), func_2(~0u).e));
    var_0 = Struct_3(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), 40190i), arg_0);
    var var_1 = Struct_3(1i, func_2(1u));
    var_1 = Struct_3(-_wgslsmith_dot_vec2_i32(-var_0.b.b.zy, vec2<i32>(-36512i, ~(-43552i))), func_2(22469u));
    var var_2 = var_1.b.a.b;
    return func_2(var_1.b.e.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_3(arg_0.x, func_4(func_2(~countOneBits(0u))));
    var_0 = Struct_3(_wgslsmith_div_i32(~_wgslsmith_mod_i32(~15900i, _wgslsmith_clamp_i32(var_0.a, -1i, -27415i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(arg_0.x), 11147i), -arg_0.x)), Struct_2(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.c.a, var_0.b.d.a), firstLeadingBit(var_0.b.e.a)), -1i, 1f, var_0.b.a.d || all(vec2<bool>(var_0.b.d.d, var_0.b.c.d))), u_input.a.wwx, var_0.b.c, func_2(select(_wgslsmith_sub_u32(var_0.b.c.a.x, 1u), func_4(var_0.b).e.a.x, !var_0.b.c.d)).a, func_4(func_4(Struct_2(Struct_1(var_0.b.c.a, -14862i, -1538f, var_0.b.c.d), vec3<i32>(-1i, var_0.b.b.x, arg_0.x), Struct_1(var_0.b.d.a, 1i, 255f, true), Struct_1(vec2<u32>(var_0.b.a.a.x, 4294967295u), var_0.b.c.b, 431f, true), var_0.b.c))).d));
    var var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b.e.a.x, _wgslsmith_add_u32(var_0.b.e.a.x >> (19364u % 32u), min(var_0.b.d.a.x, 76533u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.c.a.x, var_0.b.c.a.x), vec2<u32>(1210u, var_0.b.a.a.x))), ~(vec3<u32>(_wgslsmith_div_u32(103758u, 15896u), 1u, firstLeadingBit(12692u)) ^ vec3<u32>(~var_0.b.d.a.x, 1u, 23495u | var_0.b.d.a.x)));
    let var_2 = Struct_5(vec2<i32>(0i, func_3(u_input.a.x)), -14964i, vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(69183u, var_0.b.a.a.x), var_0.b.c.a.x)), var_1.x, ~(~var_0.b.e.a.x)), Struct_4(vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(1u, var_1.x) ^ func_4(var_0.b).e.a, arg_0.x, 1287f, true || var_0.b.a.d), ~(var_1.x | var_1.x)), Struct_4(!(!(!vec4<bool>(var_0.b.d.d, true, var_0.b.a.d, true))), Struct_1(var_1.zx, var_0.b.d.b ^ -2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2403f, var_0.b.c.c)), -793f)), func_2(var_0.b.a.a.x).a.d), var_1.x | var_1.x));
    let var_3 = false;
    return var_2.d;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(-u_input.a.x, Struct_2(arg_3.e, firstLeadingBit(select(max(vec3<i32>(arg_0.b.b, -13859i, -2147483647i), vec3<i32>(u_input.a.x, 5705i, 0i)), u_input.a.wwz & vec3<i32>(arg_3.e.b, 1i, u_input.a.x), vec3<bool>(false, true, arg_0.a.x))), arg_1.b, func_2(1u).e, Struct_1(vec2<u32>(4294967295u, 1u), (arg_1.b.b | arg_0.b.b) >> (arg_3.a.a.x % 32u), arg_2.x, true)));
    var var_1 = arg_1.b;
    var_1 = arg_3.c;
    var_1 = Struct_1(~max(~vec2<u32>(0u, arg_0.c) << (firstTrailingBit(vec2<u32>(4294967295u, arg_0.c)) % vec2<u32>(32u)), countOneBits(vec2<u32>(1u, 6089u))), 22972i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2128f)))), false);
    var_1 = arg_3.c;
    return 40814i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(~18881u, 1u), -_wgslsmith_div_i32(-u_input.a.x >> (select(105822u, 36441u, true) % 32u), func_5(func_1(u_input.a.xzy), func_1(vec3<i32>(u_input.a.x, -41950i, 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -1459f, 377f)), Struct_2(Struct_1(vec2<u32>(10183u, 55838u), -2147483647i, 1324f, true), vec3<i32>(2147483647i, 2147483647i, -33262i), Struct_1(vec2<u32>(27486u, 4294967295u), u_input.a.x, -1567f, true), Struct_1(vec2<u32>(98365u, 9700u), 0i, 1811f, true), Struct_1(vec2<u32>(0u, 28719u), -1i, 688f, false)))), _wgslsmith_f_op_f32(-func_4(func_4(func_4(Struct_2(Struct_1(vec2<u32>(13878u, 4294967295u), 1i, -1110f, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<u32>(1u, 15199u), 0i, 272f, true), Struct_1(vec2<u32>(12603u, 1u), 47849i, 422f, true), Struct_1(vec2<u32>(61565u, 0u), u_input.a.x, 1303f, false))))).c.c), any(select(vec4<bool>(true, true, func_1(vec3<i32>(13404i, u_input.a.x, u_input.a.x)).a.x, all(vec2<bool>(false, false))), vec4<bool>(true, true, any(vec2<bool>(false, true)), true), select(true, false, true) | (u_input.a.x != u_input.a.x))));
    let var_1 = select(vec3<bool>(true, all(vec2<bool>(var_0.c >= 169f, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, var_0.a.x, 50051u), vec3<u32>(var_0.a.x, 8482u, var_0.a.x)) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 1u, 1u, 1u), vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, var_0.a.x))), vec3<bool>(all(select(!vec3<bool>(var_0.d, true, false), func_1(u_input.a.yxy).a.yxw, vec3<bool>(true, true, true))), var_0.d, var_0.d != true), !(!vec3<bool>(var_0.d | var_0.d, all(vec2<bool>(var_0.d, var_0.d)), true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -222f), -2189f)), var_0.c);
    let var_3 = vec2<bool>(func_2(~abs(max(4294967295u, var_0.a.x))).c.d, false);
    var var_4 = countOneBits(u_input.a.x);
    var var_5 = var_0.d;
    var var_6 = var_0.c;
    var_5 = 332f >= var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -162f, -332f, var_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 283f, -1000f, 694f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, var_0.c, var_0.c, -514f)))))), vec2<f32>(func_2(var_0.a.x).c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2428f))))), u_input.a & ~(~_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, var_0.b, -71213i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(func_4(Struct_2(var_0, u_input.a.wxw, var_0, Struct_1(vec2<u32>(var_0.a.x, 87643u), -37343i, -495f, false), Struct_1(vec2<u32>(4747u, var_0.a.x), 0i, -140f, var_1.x)))).d.c, _wgslsmith_f_op_f32(-var_0.c))), vec4<i32>(-2147483647i, func_3(var_0.b), i32(-1i) * -7854i, u_input.a.x));
}

