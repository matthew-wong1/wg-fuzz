struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(502f, 171f), vec2<f32>(-887f, -1464f), vec2<f32>(-1882f, 1164f), vec2<f32>(-262f, 1135f), vec2<f32>(-1314f, -353f), vec2<f32>(-259f, 540f), vec2<f32>(691f, 2340f), vec2<f32>(-711f, 2106f), vec2<f32>(-1723f, -2021f));

var<private> global1: array<Struct_5, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, ~(~u_input.a), u_input.a, u_input.a), abs(~abs(~vec4<i32>(u_input.a, u_input.a, 16469i, 2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(813f - arg_1)));
    global0 = array<vec2<f32>, 9>();
    let var_2 = ~vec4<i32>(var_0.x, -u_input.a, 13974i, 1i);
    var var_3 = var_2.www;
    return ~1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~(~87334u), ~max(7923u, 1u)), vec2<u32>(firstTrailingBit(min(4294967295u, 22151u)), max(abs(1u), _wgslsmith_mult_u32(60126u, 17966u)))) % 32u);
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = firstLeadingBit(abs(~_wgslsmith_mult_u32(~39136u, func_3(Struct_3(Struct_2(arg_0.a.a.x), vec3<f32>(-901f, 518f, 2204f), Struct_2(arg_0.c.a.x), vec4<f32>(824f, -874f, 1263f, 940f), arg_0.a.a), -346f))));
    global1 = array<Struct_5, 27>();
    let var_1 = Struct_3(Struct_2(any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-509f * 437f), _wgslsmith_div_f32(1783f, _wgslsmith_f_op_f32(f32(-1f) * -1402f)), _wgslsmith_f_op_f32(step(-1204f, _wgslsmith_f_op_f32(abs(148f)))))), Struct_2(arg_0.a.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(407f, 427f, -792f, 1000f), vec4<f32>(436f, 1594f, -545f, -1201f), arg_0.a.b))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2195f, -1673f, 866f, 1556f), vec4<f32>(661f, -832f, 514f, 549f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1055f, 177f, 185f, 325f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1335f, _wgslsmith_f_op_f32(floor(-1898f)), 891f, _wgslsmith_f_op_f32(-1413f - 842f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 606f, 416f, 1125f)), vec4<f32>(803f, -746f, 1503f, -1092f)))), !arg_0.a.a);
    var var_2 = max(~_wgslsmith_mod_vec3_u32(arg_0.b.yzw, vec3<u32>(arg_0.b.x, _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x), arg_0.b.x)), select(vec3<u32>(4294967295u, (4294967295u & arg_0.b.x) ^ arg_0.b.x, arg_0.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(arg_0.b.x), ~arg_0.b.x, arg_0.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, 0u), arg_0.b.wyz)), vec3<bool>(reverseBits(41097u) != max(20507u, arg_0.b.x), var_1.a.a, arg_0.c.b)));
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -371f) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(abs(-283f)), arg_0.a.b)), -1292f, all(vec2<bool>(false, var_1.a.a)))), true);
    return var_1.e;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 9>();
    global1 = array<Struct_5, 27>();
    var var_0 = arg_1;
    var_0 = Struct_3(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(floor(-302f)), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f * -1029f) - var_0.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2, arg_1.d.x))))))), var_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_1.d * vec4<f32>(652f, arg_1.b.x, 1000f, arg_2)))))), var_0.d)), vec2<bool>(true, arg_1.a.a));
    var var_1 = Struct_5(Struct_1(vec2<bool>(any(vec2<bool>(false, arg_1.c.a)), var_0.a.a), all(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.c.a, var_0.e.x, true), vec3<bool>(false, arg_0, false), vec3<bool>(false, false, true)), true))));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(func_4(any(func_2(Struct_4(Struct_1(vec2<bool>(true, false), true), vec4<u32>(1u, 30842u, 0u, 0u), Struct_1(vec2<bool>(false, false), false)))), Struct_3(Struct_2(true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(444f, -587f, 215f))), Struct_2(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 147f, -190f, -1307f)), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-538f, -430f)))));
    let var_1 = Struct_2(var_0.a.a.x);
    global0 = array<vec2<f32>, 9>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-258f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) - _wgslsmith_f_op_f32(min(410f, 887f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(104f)), -2246f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(f32(-1f) * -1502f)))), -377f, 422f));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(25184u, ~97591u), ~1u), ~1u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-108f, -175f, 497f, -1000f), vec4<f32>(-1208f, -684f, 452f, 1686f), true)))))));
    var var_1 = func_1();
    var var_2 = Struct_3(Struct_2(var_1.a.x), _wgslsmith_f_op_vec3_f32(abs(var_0.yyy)), Struct_2(true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_div_vec4_f32(vec4<f32>(386f, -528f, 1253f, var_0.x), _wgslsmith_div_vec4_f32(var_0, vec4<f32>(var_0.x, -549f, 2166f, 784f)))))), vec2<bool>(any(select(vec3<bool>(false, var_1.a.x, false), !vec3<bool>(true, false, var_1.a.x), var_1.b)), !(!var_1.a.x)));
    var_2 = Struct_3(Struct_2(false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.d.xxy, var_2.d.wyy)))), Struct_2(var_2.e.x), var_2.d, vec2<bool>(true, func_1().b));
    var var_3 = reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u << (0u % 32u), ~29154u, ~16758u, _wgslsmith_mult_u32(1u, 0u)), select(select(vec4<u32>(4294967295u, 0u, 23387u, 4294967295u), vec4<u32>(1682u, 22777u, 68747u, 4294967295u), vec4<bool>(var_2.e.x, false, var_2.a.a, false)) >> (select(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 33146u, 4294967295u, 17778u), vec4<bool>(false, false, false, var_2.c.a)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u), select(select(vec4<bool>(var_1.b, true, var_1.a.x, var_1.b), vec4<bool>(var_1.a.x, var_1.b, var_1.a.x, var_1.a.x), true), select(vec4<bool>(true, false, false, var_1.a.x), vec4<bool>(false, var_1.a.x, false, var_1.a.x), vec4<bool>(false, true, false, var_1.b)), !vec4<bool>(var_2.c.a, var_2.c.a, var_2.e.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer((~vec4<u32>(16638u, 53858u, 49120u, 0u) >> (vec4<u32>(33461u, 4294967295u, _wgslsmith_mult_u32(41837u, 0u), func_3(Struct_3(var_2.c, vec3<f32>(var_2.b.x, var_0.x, var_2.d.x), Struct_2(var_2.a.a), vec4<f32>(365f, -280f, -956f, 1321f), vec2<bool>(var_2.e.x, true)), -681f)) % vec4<u32>(32u))) << (firstTrailingBit(~vec4<u32>(0u, 38944u, 22180u, 1u) ^ select(vec4<u32>(93932u, 63243u, 4294967295u, 66739u), vec4<u32>(1u, 20496u, 111229u, 1u), vec4<bool>(var_1.a.x, false, false, true))) % vec4<u32>(32u)));
}

