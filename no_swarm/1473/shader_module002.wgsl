struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-607f, _wgslsmith_f_op_f32(arg_0.c - arg_0.e.b.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.b.b.yy + vec2<f32>(-1351f, 609f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.e.b.x, arg_0.a.b.x))))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.e.b.x)), arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.e.b.x, -147f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.b.x, -544f)) * vec2<f32>(arg_0.c, -2178f)))))));
    var var_1 = Struct_3(-reverseBits(u_input.a.x));
    let var_2 = _wgslsmith_sub_i32(5189i & -(~var_1.a ^ _wgslsmith_clamp_i32(-1i, 5495i, var_1.a)), var_1.a);
    var_1 = Struct_3(-var_1.a);
    var var_3 = _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 6590u), vec4<u32>(arg_0.a.a.x, 4294967295u, 22887u, u_input.b.x))))), ~(((vec4<u32>(0u, u_input.b.x, u_input.c, 1u) | vec4<u32>(58996u, 0u, 4294967295u, arg_0.e.a.x)) << (reverseBits(vec4<u32>(u_input.c, u_input.c, 32880u, u_input.b.x)) % vec4<u32>(32u))) >> (~(~vec4<u32>(33885u, 15934u, 25893u, 0u)) % vec4<u32>(32u))));
    return 41719u;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(u_input.b.yx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1587f - -804f), 665f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(240f, -1742f, 272f))))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)));
    var var_1 = any(vec4<bool>(var_0.d, (var_0.c.x | var_0.c.x) || true, true, !(-1853f < _wgslsmith_f_op_f32(-var_0.b.x))));
    var_1 = true & !(var_0.c.x & !(!var_0.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xx) * var_0.b.zx));
    var_0 = Struct_1(vec2<u32>(u_input.c, 4294967295u >> (func_3(Struct_2(Struct_1(var_0.a, vec3<f32>(977f, var_0.b.x, -1074f), vec3<bool>(true, true, var_0.c.x), true), Struct_1(vec2<u32>(u_input.c, 1u), var_0.b, var_0.c, false), var_0.b.x, Struct_1(var_0.a, vec3<f32>(-503f, var_0.b.x, 487f), vec3<bool>(var_0.c.x, var_0.d, var_0.c.x), var_0.c.x), Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), vec3<f32>(263f, 1383f, 586f), vec3<bool>(true, var_0.d, true), var_0.d)), select(var_0.c.xz, var_0.c.xy, var_0.c.yz)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(1051f, var_2.x, var_0.b.x), vec3<bool>(var_0.d, false, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(-697f, -680f, var_0.b.x))))), vec3<bool>(!var_0.d | var_0.c.x, true, all(!var_0.c.zz) & all(select(vec3<bool>(false, var_0.c.x, true), var_0.c, var_0.c))), false);
    return Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~(~var_0.a), vec2<u32>(6893u | var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(63729u, var_0.a.x, var_0.a.x), u_input.b))), var_0.b, !vec3<bool>(var_0.c.x, arg_0 > u_input.a.x, false), true), Struct_1(abs(abs(vec2<u32>(u_input.c, u_input.c)) << ((u_input.b.yy ^ vec2<u32>(var_0.a.x, 1u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(select(var_2.x, -1000f, true)), -1975f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1957f, -1000f, var_2.x)))), select(vec3<bool>(true, 34579i <= u_input.a.x, var_0.d), vec3<bool>(true, any(vec2<bool>(var_0.d, true)), false), all(vec4<bool>(var_0.d, var_0.d, true, var_0.c.x))), false), -856f, Struct_1(var_0.a ^ max(u_input.b.yy, vec2<u32>(u_input.c, 89325u) & var_0.a), var_0.b, select(var_0.c, var_0.c, var_0.c), var_0.c.x), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, 380f, 458f)), var_0.b, vec3<bool>(select(false, true, var_0.d), true, false))), !var_0.c, select(var_0.d, true, _wgslsmith_mod_i32(u_input.a.x, -5615i) <= -u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = func_2(-22553i);
    var_0 = Struct_2(func_2(u_input.a.x).b, func_2(u_input.a.x).a, 769f, var_0.a, Struct_1(~(~(~vec2<u32>(4155u, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(var_0.d.b + arg_1.b), select(select(func_2(u_input.a.x).e.c, arg_1.c, arg_1.c), !func_2(u_input.a.x).b.c, !vec3<bool>(false, var_0.e.c.x, var_0.b.c.x)), !var_0.b.c.x));
    var_0 = func_2(firstTrailingBit(u_input.a.x));
    let var_1 = func_2(1i);
    var var_2 = func_2(-u_input.a.x);
    return Struct_3(49036i);
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = func_2(firstTrailingBit(2147483647i >> (1u % 32u))).e.c;
    var var_1 = func_2(u_input.a.x).a;
    var_1 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-arg_0.a), select(arg_0.a, 0i, var_1.d == var_1.c.x), -1i, ~_wgslsmith_dot_vec3_i32(u_input.a.wzw, vec3<i32>(u_input.a.x, 1i, arg_0.a))), vec4<i32>(_wgslsmith_sub_i32(arg_0.a, abs(-10523i)), _wgslsmith_mod_i32(u_input.a.x, 1i), countOneBits(-48013i), arg_0.a ^ -15662i))).b;
    let var_2 = var_0.x;
    var var_3 = all(var_1.c);
    return -_wgslsmith_sub_i32(-firstLeadingBit(_wgslsmith_add_i32(arg_0.a, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -26122i), vec4<i32>(min(43450i, 14308i), arg_0.a, arg_0.a, -1i & u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(-2147483647i, -1i);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(-u_input.a), u_input.a), func_4(func_1(u_input.b.x, Struct_1(min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(643f, 463f, 1000f), vec3<f32>(609f, -619f, -455f))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), 83374u < u_input.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2388f, 1965f)), _wgslsmith_div_vec3_f32(vec3<f32>(1183f, 1148f, 1758f), vec3<f32>(1559f, 198f, 427f))))), (u_input.a.x | (_wgslsmith_add_i32(1i, 68562i) << (0u % 32u))) << (abs(~0u) % 32u));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(reverseBits(u_input.b.yy), abs(vec2<u32>(17681u, 29639u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-695f, -124f, 431f)))), func_2(~10620i & firstLeadingBit(var_0.x)).e.c, true), func_2(-select(countOneBits(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, 1i, 63724i), vec4<i32>(-7369i, 2147483647i, u_input.a.x, u_input.a.x)), all(vec3<bool>(true, false, true)))).a, _wgslsmith_div_f32(-999f, -1210f), func_2(-2147483647i).e, func_2(var_1.x).a);
    var_2 = func_2(41674i);
    var var_3 = var_1.xz;
    var_3 = var_1.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_3.x, var_3.x), vec3<i32>(24480i, -2147483647i, 21875i) & u_input.a.xzz), i32(-1i) * -13149i), var_1.x, var_3.x, 0i), -min(-2147483647i, u_input.a.x), _wgslsmith_div_u32(~countOneBits(u_input.b.x), max(4294967295u, u_input.c)));
}

