struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.xyy)) + arg_0.xwx);
    let var_1 = Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, firstTrailingBit(0u)), arg_1.a), 517f, ~(~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.a.x, arg_1.a.x)), arg_1.a.xx)), arg_1.a.xz);
    let var_2 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1415f, _wgslsmith_f_op_f32(abs(var_0.x)))))), -531f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.xxw))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b)))), _wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_2(~var_1.a, abs(-arg_1.b)), vec4<bool>(!all(select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), var_2)), true, var_2, false), Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(49538u, var_1.a.x, var_1.d.x), vec3<u32>(firstLeadingBit(40728u), 103465u, _wgslsmith_mod_u32(0u, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_sub_vec2_u32(var_1.a.yx ^ min(vec2<u32>(var_1.a.x, var_1.d.x), vec2<u32>(7506u, arg_1.a.x)), ~arg_1.a.yz), vec2<u32>(arg_1.a.x, firstLeadingBit(80946u))), Struct_3(var_1, vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(171f, var_0.x)))));
    return countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(abs(20910u), ~abs(var_3.e.a.c.x)), abs(_wgslsmith_mod_vec2_u32(var_1.c, _wgslsmith_sub_vec2_u32(var_1.c, var_1.d)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.wzy);
    let var_1 = Struct_3(Struct_1(~(~(~vec3<u32>(18636u, 17393u, 1u))), 1495f, func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(1841f, 909f, 1341f, 431f)), arg_1)), Struct_2(max(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(9494u, 25455u, 0u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-34753i, u_input.a)))), vec2<u32>(1u, 1u)), var_0.zz);
    var var_2 = vec4<u32>(~var_1.a.a.x, max(var_1.a.d.x, var_1.a.c.x | ~var_1.a.c.x) >> (var_1.a.a.x % 32u), ~(~(~(~var_1.a.c.x))), var_1.a.c.x);
    var var_3 = ~(~vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(var_1.a.a.xz, vec2<u32>(var_1.a.d.x, 1u))), ~(var_2.x | var_1.a.c.x), _wgslsmith_mod_u32(var_1.a.d.x, 35680u), var_2.x));
    let var_4 = i32(-1i) * -1i;
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-285f, var_1.b.x, false))) + arg_1.x), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(-2019f - 191f))))), Struct_2(~var_1.a.a, min(vec2<i32>(var_4, 0i), firstLeadingBit(vec2<i32>(-1i, -38981i)))), vec4<bool>(!arg_0.x, any(select(select(vec4<bool>(arg_0.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_0.x, arg_0.x, arg_2.x, false), vec4<bool>(arg_0.x, arg_2.x, arg_0.x, false)), vec4<bool>(arg_0.x, arg_2.x, arg_0.x, true), true)), true, true == all(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_0.x), vec4<bool>(true, true, false, false), arg_2.x))), Struct_1(var_2.yww, -1196f, var_2.wy, firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_2.zx, var_3.yz, var_3.wx) | vec2<u32>(4294967295u, 3119u))), Struct_3(var_1.a, var_0.xx));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(arg_0.b.a.x, arg_0.e.a.c.x, ~119385u) >> (7944u % 32u), _wgslsmith_mod_u32(firstLeadingBit(0u), 1u) << (~abs(arg_1.b.a.x) % 32u), ~3474u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(767f)) * _wgslsmith_f_op_f32(step(-1734f, arg_1.e.b.x)))) + -949f), abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.d.d, arg_0.d.d) | ~vec2<u32>(1u, arg_1.b.a.x), vec2<u32>(abs(arg_0.d.c.x), arg_0.d.d.x ^ arg_1.e.a.d.x), ~(~arg_0.e.a.c))), ~arg_1.b.a.xy >> (~min(arg_0.e.a.c, firstTrailingBit(vec2<u32>(1u, 54756u))) % vec2<u32>(32u)));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_3 = -1i;
    let var_4 = Struct_3(arg_1.d, arg_0.e.b);
    return arg_1.d;
}

fn func_1() -> bool {
    var var_0 = reverseBits(38209i);
    let var_1 = Struct_3(func_4(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, -622f, 2049f, 686f))), vec2<bool>(true, true)), func_2(vec2<bool>(true, all(vec3<bool>(false, true, true))), vec4<f32>(_wgslsmith_f_op_f32(min(1177f, -107f)), -584f, -527f, _wgslsmith_f_op_f32(step(244f, 107f))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1629f, 216f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(262f, -255f) + vec2<f32>(873f, -1190f)))))));
    var var_2 = func_2(vec2<bool>(false, true | select(all(vec4<bool>(false, true, false, true)), -1000f <= var_1.a.b, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.a.b, 1000f, var_1.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(539f, -645f, var_1.a.b, var_1.b.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(291f, var_1.a.b, var_1.b.x, var_1.a.b), vec4<f32>(-1228f, var_1.b.x, var_1.a.b, var_1.a.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, -825f, 277f, -108f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(801f, var_1.a.b, var_1.a.b, -671f) - vec4<f32>(var_1.b.x, -386f, var_1.b.x, var_1.b.x)))))), select(func_2(func_2(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -1149f, 445f, var_1.a.b) + vec4<f32>(422f, -1000f, var_1.b.x, 984f)), vec2<bool>(true, true)).c.xw, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1447f, var_1.a.b, 299f, -261f))), vec2<bool>(true, true)).c.wy, !select(func_2(vec2<bool>(false, false), vec4<f32>(var_1.b.x, -1000f, var_1.a.b, 583f), vec2<bool>(false, true)).c.wz, vec2<bool>(false, false), select(true, false, true)), vec2<bool>(true, any(vec2<bool>(true, true))))).d.b;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-888f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-774f)) - func_4(Struct_4(var_1.a.b, Struct_2(vec3<u32>(1u, var_1.a.a.x, var_1.a.d.x), vec2<i32>(u_input.a, u_input.a)), vec4<bool>(true, true, true, false), var_1.a, Struct_3(Struct_1(var_1.a.a, var_1.a.b, var_1.a.c, vec2<u32>(1u, 1u)), vec2<f32>(-791f, var_1.b.x))), Struct_4(942f, Struct_2(vec3<u32>(1u, 28343u, 1u), vec2<i32>(u_input.a, 0i)), vec4<bool>(true, true, true, false), var_1.a, Struct_3(Struct_1(vec3<u32>(4294967295u, var_1.a.a.x, var_1.a.d.x), -850f, vec2<u32>(var_1.a.a.x, 55933u), vec2<u32>(43871u, 4294967295u)), var_1.b))).b))), Struct_2(var_1.a.a, _wgslsmith_div_vec2_i32((vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)) >> (var_1.a.d % vec2<u32>(32u)), countOneBits(vec2<i32>(-73039i, 22623i)))), select(!vec4<bool>(true, 1i >= u_input.a, true, true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), !func_2(vec2<bool>(false, false), vec4<f32>(var_1.a.b, var_1.b.x, -2349f, 304f), vec2<bool>(false, false)).c, 0i >= _wgslsmith_clamp_i32(66245i, 1i, u_input.a)), false), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, 730f, var_1.a.b, var_1.b.x))))), func_2(vec2<bool>(true, all(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1584f, 1000f, var_1.a.b, var_1.b.x), vec4<f32>(var_1.b.x, var_1.b.x, -1912f, var_1.a.b)))), vec2<bool>(true, true)).c.yz).e.a, func_2(!func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, 828f, -1000f)), vec2<bool>(false, true)).c.yw, vec4<f32>(-200f, 1223f, _wgslsmith_f_op_f32(-func_2(vec2<bool>(false, false), vec4<f32>(214f, 435f, -857f, var_1.a.b), vec2<bool>(true, true)).e.a.b), _wgslsmith_f_op_f32(f32(-1f) * -375f)), vec2<bool>(false, !(var_1.a.c.x > 50371u))).e);
    var_0 = _wgslsmith_dot_vec2_i32(var_3.b.b, -vec2<i32>(u_input.a, -1i));
    return all(select(select(var_3.c, vec4<bool>(select(false, var_3.c.x, false), any(vec3<bool>(var_3.c.x, var_3.c.x, var_3.c.x)), var_1.b.x == -1963f, !var_3.c.x), func_2(select(var_3.c.zx, vec2<bool>(false, var_3.c.x), vec2<bool>(var_3.c.x, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.b, 255f, -1289f, var_3.e.b.x)), func_2(vec2<bool>(var_3.c.x, var_3.c.x), vec4<f32>(1183f, -254f, var_1.a.b, var_1.b.x), var_3.c.wx).c.xy).c), var_3.c, vec4<bool>(true, -344f < _wgslsmith_f_op_f32(floor(-775f)), true, var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (any(vec4<bool>(true, true, true, true)) || (!all(vec3<bool>(true, false, true)) != true)) & func_1();
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(~func_2(vec2<bool>(false, var_0), vec4<f32>(-411f, -234f, 1000f, -1000f), vec2<bool>(true, var_0)).b.a.zy, vec2<u32>(select(52773u, 49128u, var_0), _wgslsmith_mult_u32(13852u, 31973u))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 74768u), min(26200u, 4294967295u))), _wgslsmith_dot_vec3_u32(max(func_2(vec2<bool>(var_0, false), vec4<f32>(1933f, -237f, 1001f, 1545f), vec2<bool>(var_0, var_0)).e.a.a, ~vec3<u32>(5286u, 13131u, 20763u)), ~(~vec3<u32>(4294967295u, 0u, 36651u)))), vec2<i32>(-8927i, u_input.a));
    let var_2 = func_2(select(!(!vec2<bool>(var_0, false)), select(vec2<bool>(-56450i <= u_input.a, true), vec2<bool>(var_0, u_input.a > -31365i), !select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0))), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f - -1509f) + 1062f), -1370f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(429f, 494f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(432f)), 257f))), func_2(func_2(select(vec2<bool>(true, true), !vec2<bool>(true, var_0), false), vec4<f32>(776f, 237f, -1000f, -1982f), vec2<bool>(true, true)).c.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-545f, 502f, -781f, 1000f))))), !(!(!vec2<bool>(var_0, var_0)))).c.yx);
    var var_3 = _wgslsmith_add_u32(var_1.a.x, func_4(func_2(!var_2.c.zw, vec4<f32>(var_2.e.a.b, var_2.d.b, -306f, -136f), !var_2.c.zy), var_2).a.x | var_1.a.x);
    let var_4 = var_2.d.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

