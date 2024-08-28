struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(2502i, vec3<bool>(true, true, false), vec3<u32>(20177u, 4294967295u, 15678u), vec3<f32>(-725f, -690f, -491f)), Struct_1(25505i, vec3<bool>(true, false, true), vec3<u32>(0u, 4294967295u, 86974u), vec3<f32>(1062f, 804f, -1019f)), Struct_1(-22549i, vec3<bool>(false, true, true), vec3<u32>(1u, 84551u, 4294967295u), vec3<f32>(-1095f, -206f, 1453f)), Struct_1(0i, vec3<bool>(true, true, true), vec3<u32>(24951u, 11226u, 16880u), vec3<f32>(673f, -979f, -314f)), Struct_1(i32(-2147483648), vec3<bool>(false, false, false), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(-1445f, -311f, -518f)), Struct_1(1i, vec3<bool>(false, true, true), vec3<u32>(1u, 4294967295u, 11265u), vec3<f32>(-1467f, -1746f, -1250f)), Struct_1(2828i, vec3<bool>(true, true, true), vec3<u32>(1u, 25442u, 9756u), vec3<f32>(195f, -531f, 1149f)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false), vec3<u32>(25917u, 0u, 2455u), vec3<f32>(685f, 767f, -933f)), Struct_1(39529i, vec3<bool>(false, true, true), vec3<u32>(1u, 1u, 4294967295u), vec3<f32>(419f, -1103f, 623f)), Struct_1(-1i, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 4294967295u, 81659u), vec3<f32>(1390f, 521f, -671f)));

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-375f)))), -1000f)));
    let var_1 = global3[_wgslsmith_index_u32(48480u, 15u)];
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.zy), _wgslsmith_f_op_vec2_f32(sign(var_1.d.xy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, _wgslsmith_f_op_f32(140f + 155f)) * _wgslsmith_f_op_vec2_f32(var_1.d.yz * _wgslsmith_div_vec2_f32(var_1.d.yx, vec2<f32>(-168f, var_0.x))))));
    var var_2 = 15857i;
    var var_3 = !vec2<bool>(false, all(var_1.b.zz));
    return 43432u;
}

fn func_2() -> f32 {
    global4 = array<vec4<bool>, 22>();
    global0 = array<Struct_1, 10>();
    let var_0 = vec4<u32>(firstLeadingBit(u_input.c), 0u, func_3(firstLeadingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(21639u, u_input.c, u_input.c)), ~vec3<u32>(u_input.d, 4294967295u, u_input.c), true))), u_input.c);
    global3 = array<Struct_1, 15>();
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1034f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-553f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f + 898f)), _wgslsmith_f_op_f32(f32(-1f) * -299f) <= _wgslsmith_f_op_f32(select(948f, -1572f, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f)))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -2164f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) + 449f)))));
    global1 = var_0;
    let var_1 = Struct_3(global4[_wgslsmith_index_u32(u_input.d, 22u)], select(vec3<bool>(arg_1.x, false, true), select(vec3<bool>(false, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x), !arg_1, vec3<bool>(all(arg_1.yy), var_0 != var_0, arg_1.x)), ~u_input.b.x <= ~(~u_input.a.x)), Struct_1(-(~(arg_0 & u_input.a.x)), !arg_1, (vec3<u32>(u_input.d, u_input.d, 0u) ^ (vec3<u32>(1u, 95017u, u_input.d) << (vec3<u32>(0u, u_input.c, u_input.c) % vec3<u32>(32u)))) << (~reverseBits(vec3<u32>(u_input.d, u_input.d, u_input.d)) % vec3<u32>(32u)), vec3<f32>(1f, 198f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-506f * -1316f))))));
    let var_2 = vec4<u32>(1u, ~10587u, ~0u, _wgslsmith_dot_vec3_u32(~abs(var_1.c.c), firstLeadingBit(var_1.c.c))) >> (~(~abs(vec4<u32>(var_1.c.c.x, u_input.d, 0u, 10532u) ^ vec4<u32>(var_1.c.c.x, 4294967295u, u_input.d, 33054u))) % vec4<u32>(32u));
    global3 = array<Struct_1, 15>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -417f;
    let var_1 = _wgslsmith_add_i32(func_1(_wgslsmith_div_i32(u_input.b.x, -2832i), vec3<bool>(true, true, true)), 21696i) & abs(u_input.a.x);
    global4 = array<vec4<bool>, 22>();
    global3 = array<Struct_1, 15>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(199f * 1335f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-804f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(611f - 1106f))))));
    var var_3 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(8480u | u_input.c, u_input.d, u_input.d, u_input.c), vec4<u32>(0u, 24301u, u_input.d ^ 68034u, _wgslsmith_div_u32(u_input.c, u_input.c))), vec4<u32>(~(~u_input.d), 66095u, 1u, 1u)) & ~_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.d, u_input.d, u_input.c, 46225u) & vec4<u32>(u_input.c, 13298u, 4294967295u, u_input.d)), ~vec4<u32>(1u, u_input.c, 96049u, u_input.c) & ~vec4<u32>(1u, 69140u, 0u, 0u));
    var var_4 = Struct_3(select(vec4<bool>(select(true, true, any(vec4<bool>(false, false, false, true))), false, any(vec3<bool>(true, true, true)) || all(vec4<bool>(false, false, false, true)), -372f >= var_2.x), !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 1u, 42395u, 1u), ~vec4<u32>(u_input.c, 9094u, u_input.c, u_input.d)), 22u)], all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))) || false), !vec3<bool>(false, all(global4[_wgslsmith_index_u32(44551u, 22u)]), !(-7970i <= var_1)), global3[_wgslsmith_index_u32(var_3.x, 15u)]);
    var_0 = var_4.c.d.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4.c.a, var_4.c.a, 24304i));
}

