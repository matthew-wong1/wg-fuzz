struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> bool {
    let var_0 = Struct_2(arg_3.a.a, ~_wgslsmith_div_u32(arg_3.a.a.x, arg_3.a.a.x));
    var var_1 = ~_wgslsmith_dot_vec3_u32(var_0.a.wzz, _wgslsmith_div_vec3_u32(~var_0.a.wyw, var_0.a.yww));
    let var_2 = var_0;
    var_1 = ~abs(0u);
    var var_3 = arg_2;
    return select(true, false, true);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec4<u32>(1u, 4294967295u, _wgslsmith_mult_u32(~4294967295u, ~max(1u, 0u)), max(1u, ~101088u)), select(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), vec2<bool>(true, !func_3(u_input.c.x, u_input.c.x, 119f, Struct_4(Struct_1(vec4<u32>(29904u, 0u, 15855u, 55866u), vec2<bool>(false, false), -369f)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)), -829f);
    var_0 = Struct_1(vec4<u32>(~var_0.a.x, var_0.a.x, var_0.a.x, 16113u) ^ vec4<u32>(firstTrailingBit(var_0.a.x << (var_0.a.x % 32u)), var_0.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(20753u, 88898u, 51171u), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), ~(var_0.a.x | 38351u)), !var_0.b, var_0.c);
    var var_1 = vec2<bool>(false, any(!vec3<bool>(var_0.b.x, var_0.a.x > var_0.a.x, !var_0.b.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -331f);
    var var_3 = Struct_2(~var_0.a >> (abs(~var_0.a) % vec4<u32>(32u)), var_0.a.x);
    return _wgslsmith_f_op_f32(var_0.c - -1077f);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(~vec4<u32>(4294967295u, arg_3.x, arg_2.a.x, 1u), ~countOneBits(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1203f), Struct_2(reverseBits(firstTrailingBit(arg_2.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_3.xyz, vec3<u32>(arg_3.x, arg_3.x, 1u)), arg_2.a.x) ^ _wgslsmith_dot_vec3_u32(min(arg_2.a.yyw, arg_3.zxz), arg_3.yyx)));
    var_0 = Struct_3(Struct_2(abs(_wgslsmith_mod_vec4_u32(var_0.c.a, arg_2.a) ^ ~vec4<u32>(arg_2.a.x, arg_2.a.x, var_0.a.a.x, 4294967295u)), 42284u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.b)), 1078f)), Struct_2(vec4<u32>(1u, 1u, ~0u, arg_2.a.x) ^ ~(~arg_3), min(~0u, firstTrailingBit(arg_2.a.x)) >> (1u % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xwy) - arg_1.zwy)));
    let var_2 = -(vec4<i32>(-(~u_input.c.x), -2147483647i, -37322i, -50681i) | vec4<i32>(-(~2147483647i), max(-14769i >> (1u % 32u), _wgslsmith_div_i32(u_input.d.x, -1i)), ~(0i | u_input.b.x), -3161i));
    var var_3 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, countOneBits(arg_3.x))), arg_2.a.xx);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4) -> u32 {
    var var_0 = -1688f;
    let var_1 = vec4<u32>(4294967295u, 3042u, arg_0.a.x, _wgslsmith_div_u32(abs(arg_1.x | min(1u, arg_0.a.x)), arg_0.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(637f)))), -2389f, 570f)));
    var var_3 = select(select(!select(select(vec3<bool>(arg_0.b.x, true, false), vec3<bool>(true, arg_2.a.b.x, arg_2.a.b.x), true), select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(arg_2.a.b.x, arg_0.b.x, arg_0.b.x), false), !vec3<bool>(arg_0.b.x, arg_0.b.x, false)), select(select(!vec3<bool>(false, false, arg_2.a.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_2.a.b.x), select(vec3<bool>(arg_2.a.b.x, arg_0.b.x, arg_2.a.b.x), vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, false), arg_0.b.x)), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_2.a.b.x, true, arg_0.b.x), false), select(vec3<bool>(arg_2.a.b.x, false, arg_0.b.x), vec3<bool>(true, arg_2.a.b.x, arg_0.b.x), vec3<bool>(false, arg_2.a.b.x, true)), true), vec3<bool>(arg_0.c > -605f, arg_0.b.x, true)), !(!(!vec3<bool>(arg_0.b.x, arg_2.a.b.x, arg_0.b.x)))), vec3<bool>(select(!(!arg_0.b.x), !(!arg_2.a.b.x), true), true, firstLeadingBit(-u_input.a.x) >= firstLeadingBit(_wgslsmith_div_i32(-22456i, 3682i))), all(select(select(arg_0.b, !arg_0.b, !arg_2.a.b), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.a.b.x), vec2<bool>(true, arg_2.a.b.x), arg_2.a.b), vec2<bool>(true, arg_0.b.x)), arg_0.b)));
    let var_4 = Struct_4(func_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, arg_2.a.c, arg_2.a.c, arg_2.a.c)), vec4<f32>(arg_2.a.c, arg_0.c, 1165f, -1234f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-185f, arg_0.c, -1034f, -916f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2047f, arg_2.a.c, arg_0.c, arg_0.c)))), func_1(!var_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.a.c, 504f, arg_0.c, arg_2.a.c), vec4<f32>(arg_2.a.c, 1000f, -1348f, var_2.x)))), arg_2.a, var_1), vec4<u32>(arg_0.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a.a.x, var_1.x), var_1.ww), _wgslsmith_mod_u32(arg_0.a.x & var_1.x, arg_2.a.a.x << (19029u % 32u)), ~4294967295u)));
    return arg_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~(~16282u), func_4(func_1(false, vec4<f32>(-1369f, 380f, 882f, 157f), Struct_1(vec4<u32>(1u, 0u, 16175u, 12846u), vec2<bool>(false, false), -1580f), vec4<u32>(9300u, 7070u, 179u, 1u)), ~vec4<u32>(0u, 1u, 22175u, 27015u), Struct_4(Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<bool>(false, true), 365f))), 17577u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(8380u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 14116u, 0u)), firstLeadingBit(vec4<u32>(45354u, 1u, 64049u, 40493u))) & vec4<u32>(33375u, 73371u, func_4(Struct_1(vec4<u32>(0u, 1u, 0u, 1u), vec2<bool>(true, true), 137f), vec4<u32>(4294967295u, 84527u, 77305u, 1u), Struct_4(Struct_1(vec4<u32>(0u, 13960u, 57550u, 0u), vec2<bool>(false, true), 1772f))), 1u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, -1796f, true))))));
    var var_1 = Struct_3(Struct_2(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~var_0.a.xyz, func_1(var_0.b.x, vec4<f32>(var_0.c, 1220f, var_0.c, var_0.c), Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, 974f), vec4<u32>(11185u, 4294967295u, 26275u, 1u)).a.yyx), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 2649u), ~var_0.a), _wgslsmith_clamp_u32(~1u, _wgslsmith_mod_u32(60045u, var_0.a.x), _wgslsmith_add_u32(var_0.a.x, var_0.a.x))), var_0.a.x), _wgslsmith_f_op_f32(floor(263f)), Struct_2(~(select(var_0.a, var_0.a, var_0.b.x) << (vec4<u32>(var_0.a.x, var_0.a.x, 4940u, var_0.a.x) % vec4<u32>(32u))), 48921u));
    var var_2 = vec4<bool>(false, select(var_0.b.x, true, !any(vec4<bool>(false, var_0.b.x, true, var_0.b.x))), any(var_0.b), true | var_0.b.x);
    var_2 = select(select(vec4<bool>(!(!var_2.x), var_0.b.x, any(vec4<bool>(true, var_0.b.x, true, true)), var_0.c > func_1(var_2.x, vec4<f32>(370f, var_1.b, 782f, 565f), Struct_1(var_1.c.a, var_0.b, var_0.c), vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x)).c), select(!(!vec4<bool>(true, false, var_0.b.x, var_2.x)), !select(vec4<bool>(var_0.b.x, true, false, var_2.x), vec4<bool>(false, var_0.b.x, false, false), vec4<bool>(true, true, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.b.x, true, false, true)), !var_0.b.x), vec4<bool>(false, !all(var_2.xyy), var_0.b.x, !var_0.b.x), !all(vec4<bool>(var_0.b.x, var_2.x, false, true)));
    let var_3 = Struct_4(func_1(true, vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1679f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-556f, 1398f)), _wgslsmith_f_op_f32(f32(-1f) * -1188f), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1265f, -749f)), var_0.c, any(vec2<bool>(false, var_2.x))))), func_1(!(var_0.b.x && var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -1000f, -1646f)), func_1(true, vec4<f32>(var_0.c, 717f, -399f, 216f), func_1(var_0.b.x, vec4<f32>(var_1.b, var_1.b, var_0.c, var_1.b), var_0, var_1.a.a), ~var_0.a), var_1.c.a), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.a.zzx >> (vec3<u32>(1u, var_0.a.x, 1u) % vec3<u32>(32u)), vec3<u32>(var_0.a.x, 0u, 4294967295u)), var_1.c.a.x, 13662u, _wgslsmith_div_u32(func_1(false, vec4<f32>(-1071f, var_0.c, var_1.b, 376f), Struct_1(var_1.c.a, var_0.b, -941f), vec4<u32>(12623u, 2437u, 41434u, 4294967295u)).a.x, _wgslsmith_div_u32(var_0.a.x, 2261u)))));
    let var_4 = var_1.c;
    let var_5 = !select(!(!var_2.wyy), select(select(!vec3<bool>(var_0.b.x, var_3.a.b.x, true), var_2.wxz, var_2.wyy), var_2.wyw, false), !(!select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, true), vec3<bool>(var_2.x, false, var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(i32(-1i) * -6515i), ~2147483647i), max(~firstTrailingBit(u_input.d), u_input.a.ww), _wgslsmith_sub_vec2_i32(~(abs(u_input.c.wx) | u_input.b.xx), firstTrailingBit(-vec2<i32>(-24833i, u_input.d.x)) << (vec2<u32>(~1u, _wgslsmith_add_u32(var_4.b, 70146u)) % vec2<u32>(32u))));
}

