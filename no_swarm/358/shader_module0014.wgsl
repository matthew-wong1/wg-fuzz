struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = -41294i;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5) -> u32 {
    var var_0 = ~4294967295u;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1000f, 600f, -1000f) * vec4<f32>(global0.x, arg_2.a.c, 689f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, arg_2.a.b, 571f, arg_2.b.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(314f, 2149f, -1000f, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 100f, global0.x, 1448f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(896f, arg_2.a.b, arg_2.b.c.x)), -627f)) * _wgslsmith_f_op_f32(floor(arg_2.a.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1505f - global0.x), _wgslsmith_f_op_f32(-arg_2.b.a)), 1133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a.c)) * -1000f))));
    var var_1 = arg_2.a;
    var var_2 = arg_2.b.b.x & max(_wgslsmith_dot_vec4_u32(~var_1.d, arg_2.a.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.d.x, arg_2.a.d.x), select(firstLeadingBit(vec3<u32>(83576u, 1u, arg_0)), _wgslsmith_div_vec3_u32(var_1.d.yyw, u_input.a), all(vec4<bool>(false, false, true, arg_2.b.c.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -973f, 842f, var_1.b), vec4<f32>(689f, global0.x, -265f, 1066f), arg_2.b.c)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-613f, var_1.b, arg_2.b.c.x)), _wgslsmith_f_op_f32(round(arg_2.b.a)), -734f, _wgslsmith_f_op_f32(arg_2.b.a + -1000f))))));
    return _wgslsmith_dot_vec3_u32(u_input.a | u_input.a, vec3<u32>(u_input.b, ~var_1.d.x, ~firstLeadingBit(2527u ^ arg_0)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_2(vec4<i32>(u_input.c, 2147483647i, ~(-(~(-2147483647i))), 25682i), 328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(910f))) * _wgslsmith_f_op_f32(761f * _wgslsmith_f_op_f32(global0.x + 512f)))), vec4<u32>(min(func_3(u_input.b >> (4294967295u % 32u), reverseBits(-4617i), Struct_5(Struct_2(vec4<i32>(u_input.c, u_input.d.x, -2147483647i, u_input.d.x), 1246f, global0.x, vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.e)), Struct_1(arg_0, u_input.a, vec4<bool>(arg_1.x, arg_1.x, false, false)))), ~(~4294967295u)), u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, u_input.e), 1u), func_3(18307u, u_input.c, Struct_5(Struct_2(vec4<i32>(5980i, u_input.d.x, u_input.c, u_input.c), -1440f, arg_0, vec4<u32>(30312u, 379u, u_input.b, u_input.e)), Struct_1(arg_0, vec3<u32>(u_input.e, u_input.b, 4294967295u), vec4<bool>(false, arg_1.x, true, true))))));
    var var_1 = Struct_3(Struct_1(-990f, select(vec3<u32>(~57893u, u_input.a.x, var_0.d.x), u_input.a, select(select(vec3<bool>(arg_1.x, false, false), arg_1, arg_1), select(arg_1, vec3<bool>(arg_1.x, true, false), arg_1), vec3<bool>(arg_1.x, true, false))), !select(select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(arg_1.x, false, false, arg_1.x), true), select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(arg_0 * var_0.c)) + _wgslsmith_f_op_f32(max(var_0.c, 875f))) >= _wgslsmith_f_op_f32(-global0.x), Struct_1(_wgslsmith_f_op_f32(min(arg_0, global0.x)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(41562u, var_0.d.x), ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, var_0.d.ywy)), var_0.d.x >> (var_0.d.x % 32u), ~func_3(102737u, -2147483647i, Struct_5(Struct_2(var_0.a, global0.x, -1103f, vec4<u32>(4294967295u, 1u, u_input.b, var_0.d.x)), Struct_1(arg_0, vec3<u32>(var_0.d.x, 64277u, u_input.e), vec4<bool>(arg_1.x, true, arg_1.x, true))))), select(vec4<bool>(false, true, true, any(vec4<bool>(arg_1.x, true, false, arg_1.x))), select(vec4<bool>(false, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(true, arg_1.x, true, arg_1.x)), arg_1.x & arg_1.x), vec4<bool>(!arg_1.x, !arg_1.x, !arg_1.x, !arg_1.x))));
    var var_2 = var_1.a.a;
    var_0 = Struct_2(vec4<i32>(-1i) * -abs(vec4<i32>(-18070i, var_0.a.x, u_input.c, u_input.d.x)), _wgslsmith_f_op_f32(sign(-132f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))), var_0.d);
    var var_3 = var_1.b;
    return var_1.a.c;
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = Struct_2(-select(-reverseBits(vec4<i32>(u_input.c, u_input.d.x, -59477i, arg_0.b)), select(-vec4<i32>(0i, arg_0.b, -1i, -2147483647i), ~vec4<i32>(arg_0.b, u_input.d.x, 0i, u_input.c), all(vec2<bool>(false, false))), func_2(-2662f, vec3<bool>(true, arg_0.a.a.c.x, false))), -1196f, 261f, firstTrailingBit(vec4<u32>(u_input.e >> (abs(4294967295u) % 32u), 4294967295u >> (~arg_0.a.c.b.x % 32u), ~(~u_input.a.x), ~4294967295u ^ arg_0.a.a.b.x)));
    let var_1 = _wgslsmith_mult_vec4_i32(select(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(u_input.d.x, -1699i, 18726i, 23836i), var_0.a), vec4<i32>(u_input.c, -25663i, u_input.c, 11721i)), ~var_0.a, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-371f)), 468f), arg_0.a.a.c.xxx).x), vec4<i32>(~20223i, -2147483647i, (1705i | var_0.a.x) & arg_0.b, _wgslsmith_div_i32(arg_0.b, min(var_0.a.x >> (u_input.e % 32u), _wgslsmith_div_i32(u_input.d.x, arg_0.b)))));
    var var_2 = var_0.b;
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.b), 0u)), 28371u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 1u, var_0.d.x), firstLeadingBit(vec3<u32>(64761u, var_0.d.x, arg_0.a.a.b.x))) % 32u)), u_input.a.x, var_0.d.x, firstLeadingBit(max(abs(arg_0.a.c.b.x), reverseBits(select(96566u, var_0.d.x, arg_0.a.b)))));
    let var_4 = Struct_4(Struct_3(arg_0.a.c, any(arg_0.a.c.c.yy), arg_0.a.a), -2147483647i << (~(~_wgslsmith_div_u32(var_3.x, 7703u)) % 32u));
    return select(!select(!func_2(global0.x, vec3<bool>(true, arg_0.a.b, false)), vec4<bool>(false | arg_0.a.c.c.x, true, var_4.a.c.c.x | var_4.a.b, -1444f <= arg_0.a.c.a), !func_2(var_4.a.c.a, vec3<bool>(arg_0.a.b, false, true))), select(arg_0.a.c.c, vec4<bool>(all(vec3<bool>(false, true, arg_0.a.b)), u_input.e < var_0.d.x, true, !(!var_4.a.b)), vec4<bool>(any(!var_4.a.a.c.xxy), any(select(arg_0.a.a.c.xx, vec2<bool>(var_4.a.b, arg_0.a.c.c.x), arg_0.a.c.c.yw)), true, func_2(_wgslsmith_f_op_f32(round(-436f)), select(var_4.a.c.c.wxw, vec3<bool>(arg_0.a.b, false, true), arg_0.a.a.c.yzw)).x)), arg_0.a.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-290f - global0.x) + global0.x), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), global0.x)))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2031f))));
    let var_0 = select(_wgslsmith_sub_vec3_i32(-reverseBits(u_input.d), abs(~vec3<i32>(1i, 10341i, -4568i)) & abs(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(-27295i, 38586i, 0i)))), vec3<i32>(-46538i, min(u_input.d.x | 0i, 1i), abs(~(-51211i))) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 1u), u_input.a), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), u_input.b, u_input.b)) % vec3<u32>(32u)), !vec3<bool>(false, (u_input.d.x >> (4294967295u % 32u)) == 0i, min(-21779i, u_input.d.x) != -47867i));
    var var_1 = abs(select(~vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.b, 6443u), ~0u, u_input.e), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~1u, max(32181u, 1u), ~u_input.a.x), vec4<u32>(u_input.e, u_input.b, u_input.e << (58827u % 32u), u_input.b)), select(func_1(Struct_4(Struct_3(Struct_1(global0.x, u_input.a, vec4<bool>(false, false, true, false)), true, Struct_1(global0.x, u_input.a, vec4<bool>(true, true, true, true))), -43516i)), select(vec4<bool>(true, true, true, true), func_1(Struct_4(Struct_3(Struct_1(global0.x, u_input.a, vec4<bool>(false, true, true, false)), true, Struct_1(global0.x, vec3<u32>(u_input.a.x, u_input.e, 797u), vec4<bool>(false, true, true, false))), 55292i)), vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)), vec3<bool>(true, false, func_1(Struct_4(Struct_3(Struct_1(237f, u_input.a, vec4<bool>(true, false, true, false)), false, Struct_1(302f, var_1.xxz, vec4<bool>(true, true, true, true))), -u_input.d.x)).x));
    let var_3 = abs(~var_0.x);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(377f - -142f))))) - _wgslsmith_f_op_f32(-global0.x)), vec3<u32>(var_1.x, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, 0u, 42744u)) | u_input.e, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 0u), firstLeadingBit(vec2<u32>(var_1.x, 4294967295u)))), !(!(!select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(var_2.x, true, true, var_2.x), var_2.x))));
    global1 = -2147483647i;
    var_4 = Struct_1(1f, vec3<u32>(var_1.x, func_3(_wgslsmith_dot_vec3_u32(u_input.a << (u_input.a % vec3<u32>(32u)), vec3<u32>(var_4.b.x, u_input.b, var_4.b.x) | vec3<u32>(u_input.b, var_1.x, 1u)), -1i, Struct_5(Struct_2(vec4<i32>(var_0.x, 2147483647i, u_input.c, var_3), -541f, 613f, vec4<u32>(u_input.e, 21268u, var_4.b.x, var_1.x)), Struct_1(473f, vec3<u32>(72655u, var_1.x, 4294967295u), var_4.c))), u_input.e >> (~_wgslsmith_clamp_u32(4294967295u, var_1.x, 4294967295u) % 32u)), !select(!func_1(Struct_4(Struct_3(Struct_1(global0.x, vec3<u32>(0u, var_1.x, 1u), var_4.c), false, Struct_1(var_4.a, vec3<u32>(1u, var_4.b.x, 6052u), var_4.c)), u_input.d.x)), var_4.c, false));
    var_2 = !func_2(-635f, func_1(Struct_4(Struct_3(Struct_1(global0.x, vec3<u32>(var_4.b.x, var_1.x, 58728u), vec4<bool>(true, false, true, var_2.x)), var_2.x, Struct_1(1261f, u_input.a, vec4<bool>(true, var_2.x, true, true))), -u_input.c)).wxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, 1055f, global0.x, -781f)))));
}

