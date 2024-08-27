struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: Struct_4 = Struct_4(vec2<f32>(934f, 1181f), Struct_3(Struct_2(Struct_1(1443f, vec2<f32>(543f, 213f), true, vec2<u32>(1u, 0u)), 313f, 31614u, vec2<f32>(-562f, 1000f), 94981u)), 0u, vec3<u32>(35004u, 0u, 69712u), vec3<u32>(11406u, 1u, 4294967295u));

var<private> global3: array<Struct_2, 14>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global0 = u_input.d;
    return ~(~((global2.d ^ vec3<u32>(1u, global2.b.a.e, 0u)) << (global2.e % vec3<u32>(32u)))) << (((~firstTrailingBit(vec3<u32>(u_input.c, u_input.a.x, u_input.a.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.e, 74845u, 11024u) & global2.e, vec3<u32>(4294967295u, arg_0.a.c, 0u)) % vec3<u32>(32u))) >> (global2.d % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = !(!select(vec4<bool>(!global2.b.a.a.c, !global2.b.a.a.c, !arg_0.c, true), !vec4<bool>(true, arg_0.c, arg_0.c, global2.b.a.a.c), global2.b.a.a.c));
    global1 = u_input.c;
    let var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(106f, arg_0.b.x)) + vec2<f32>(arg_0.b.x, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), global2.b, ~(arg_0.d.x ^ global2.e.x), firstTrailingBit(func_3(global2.b)), global2.e);
    let var_2 = 2147483647i;
    let var_3 = u_input.b.yxw;
    return _wgslsmith_f_op_f32(max(-457f, _wgslsmith_f_op_f32(abs(-864f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.b.a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -454f))))));
    let var_1 = global2.b.a;
    global1 = ~4294967295u;
    var var_2 = u_input.d;
    var var_3 = global2.b;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_1.d.x)), vec2<f32>(var_3.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -951f)), global2.b.a.a.c == (false != any(vec2<bool>(var_3.a.a.c, true))), global2.d.xx | ~u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.d.x, 1882f)))), _wgslsmith_f_op_f32(-1f)), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(26618u, global2.e.x, u_input.a.x), vec3<u32>(47660u, 0u, 49703u))) >> (~global2.c % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.d.x, global2.a.x))))), ~_wgslsmith_add_u32(var_1.a.d.x, max(0u, 80370u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(u_input.b.ww, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1096f, global2.a.x))))));
    var var_1 = select(!vec2<bool>(false, all(!vec3<bool>(true, var_0.a.a.c, false))), select(select(select(select(vec2<bool>(var_0.a.a.c, var_0.a.a.c), vec2<bool>(global2.b.a.a.c, true), false), vec2<bool>(global2.b.a.a.c, global2.b.a.a.c), !vec2<bool>(global2.b.a.a.c, false)), !(!vec2<bool>(var_0.a.a.c, false)), any(vec4<bool>(false, global2.b.a.a.c, global2.b.a.a.c, true))), !select(select(vec2<bool>(var_0.a.a.c, global2.b.a.a.c), vec2<bool>(global2.b.a.a.c, false), vec2<bool>(global2.b.a.a.c, var_0.a.a.c)), !vec2<bool>(global2.b.a.a.c, true), !vec2<bool>(false, var_0.a.a.c)), var_0.a.a.c), !(!(firstLeadingBit(1i) >= (u_input.d >> (var_0.a.c % 32u)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.a.d)), global2.b, _wgslsmith_mod_u32(abs(var_0.a.c), ~_wgslsmith_sub_u32(abs(18411u), 1u)), select(global2.d, _wgslsmith_mod_vec3_u32(select(func_3(Struct_3(global2.b.a)), ~global2.e, !var_0.a.a.c), ~global2.e), !vec3<bool>(true, any(vec2<bool>(global2.b.a.a.c, true)), 54411u >= u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.a.c, reverseBits(~36828u), min(1u, ~4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a.d.x, global2.e.x, 4522u), (global2.d << (vec3<u32>(49124u, var_0.a.c, 0u) % vec3<u32>(32u))) ^ vec3<u32>(global2.c, 22627u, global2.e.x))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(196f, -779f))))) * global2.a.x), -1000f));
    var_0 = Struct_3(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2221f + 489f) * _wgslsmith_f_op_f32(max(247f, 880f))))), ~abs(_wgslsmith_div_u32(4294967295u, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.a.a.b) - vec2<f32>(_wgslsmith_f_op_f32(-global2.b.a.d.x), -871f)), 25562u));
    global0 = ~(~u_input.d);
    let var_4 = _wgslsmith_div_vec3_u32(global2.e, var_2.e);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(var_2.d, vec3<u32>(var_0.a.c, 14654u, var_2.c))), firstTrailingBit(50340u), 0u), select(4294967295u, ~abs(62481u), all(vec2<bool>(true, var_1.x))), _wgslsmith_f_op_f32(ceil(-380f)));
}

