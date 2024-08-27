struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
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

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(440f, -398f, 517f), vec3<f32>(1031f, 166f, -636f), vec3<f32>(-421f, -324f, -1000f), vec3<f32>(-527f, 780f, -1000f), vec3<f32>(522f, -758f, 584f), vec3<f32>(-354f, 152f, 415f), vec3<f32>(-294f, -1000f, -717f), vec3<f32>(1414f, -1199f, 1422f), vec3<f32>(-1152f, 652f, 152f), vec3<f32>(1200f, -400f, -1278f), vec3<f32>(-396f, 732f, -1110f), vec3<f32>(-355f, -789f, 813f), vec3<f32>(-769f, -1409f, -794f), vec3<f32>(206f, 619f, 667f), vec3<f32>(-1000f, -1152f, 163f), vec3<f32>(-970f, 1000f, 2542f), vec3<f32>(1628f, -1348f, -1329f), vec3<f32>(2223f, -1991f, -304f), vec3<f32>(-2100f, 913f, -305f), vec3<f32>(-600f, -1210f, -454f), vec3<f32>(766f, 452f, 793f), vec3<f32>(713f, -1000f, -241f), vec3<f32>(-1019f, 1060f, 160f), vec3<f32>(-845f, -814f, 838f), vec3<f32>(-935f, -1000f, -750f));

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(1u, 20603u, 1u), vec3<u32>(53588u, 20369u, 1u), vec3<u32>(0u, 563u, 4294967295u), vec3<u32>(117238u, 1u, 4294967295u), vec3<u32>(41788u, 1u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(69018u, 20036u, 0u), vec3<u32>(4294967295u, 24661u, 34367u), vec3<u32>(27740u, 0u, 4294967295u), vec3<u32>(20213u, 4294967295u, 43632u), vec3<u32>(4294967295u, 4294967295u, 26467u), vec3<u32>(58398u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(5735u, 4294967295u, 4111u), vec3<u32>(1u, 50746u, 29894u), vec3<u32>(61208u, 65892u, 21661u));

var<private> global2: Struct_5 = Struct_5(vec2<u32>(0u, 4294967295u), Struct_2(vec2<u32>(4482u, 21797u)));

var<private> global3: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec4<u32>(0u, 15698u, 0u, 12081u), vec3<f32>(-2285f, -539f, 497f), -7404i, vec3<bool>(false, true, false)), Struct_4(vec4<u32>(0u, 4294967295u, 44346u, 30566u), vec3<f32>(298f, -419f, 1225f), 17934i, vec3<bool>(false, true, false)), Struct_4(vec4<u32>(33977u, 1439u, 30246u, 1u), vec3<f32>(643f, -1073f, -1304f), 0i, vec3<bool>(true, true, false)), Struct_4(vec4<u32>(0u, 4294967295u, 42346u, 28074u), vec3<f32>(-1988f, -2057f, -864f), -28965i, vec3<bool>(true, false, false)), Struct_4(vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<f32>(839f, 530f, -529f), -15380i, vec3<bool>(true, true, true)), Struct_4(vec4<u32>(4294967295u, 24106u, 4294967295u, 24461u), vec3<f32>(-571f, 1000f, 571f), i32(-2147483648), vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<i32> {
    return _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(~(vec2<i32>(-16577i, arg_1.x) & arg_1.xy), select(~arg_1.xz, arg_1.zy, all(arg_0.zy))), arg_1.zz >> (vec2<u32>(~(~global2.b.a.x), ~_wgslsmith_sub_u32(global2.a.x, global2.a.x)) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> i32 {
    global1 = array<vec3<u32>, 17>();
    let var_0 = global2.b;
    global1 = array<vec3<u32>, 17>();
    global3 = array<Struct_4, 6>();
    let var_1 = ~1u;
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(abs(vec2<i32>(arg_2.x, u_input.a)))), select(-(~arg_2), arg_2, vec2<bool>(_wgslsmith_div_u32(var_0.a.x, var_1) == (0u >> (0u % 32u)), select(true, true, arg_0))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(11222u, global2.b.a.x, 1u, global2.a.x), vec4<u32>(35866u, global2.a.x, 33067u, 46327u)) <= ~global2.b.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-170f, arg_1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_1.x)), func_3(vec3<bool>(false, true, false), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(0i, u_input.a, u_input.a))) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(48778u, 63219u), firstTrailingBit(global2.b.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(firstLeadingBit(vec4<i32>(-30339i, 11753i, u_input.a, -1i))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) >> (vec4<u32>(4294967295u, 0u, 1u, 28792u) % vec4<u32>(32u)))), vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global2.b.a.x, global2.a.x), global2.a), ~global2.a), global2.b.a.x), 26152u, global2.b.a.x));
}

fn func_1() -> vec3<i32> {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(1417f + -1803f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1329f)), _wgslsmith_f_op_f32(f32(-1f) * -143f), false)), -1209f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(768f, 319f, -1421f, -153f), vec4<f32>(-1000f, 1000f, 786f, 2201f), true)) - vec4<f32>(130f, -1098f, -468f, 525f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1400f, -2017f, 1308f, -1000f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-977f, -546f, -1223f, -709f)))))));
    global2 = Struct_5(global2.b.a, Struct_2(~global2.a));
    var var_1 = Struct_1(-2147483647i, -1000f);
    var var_2 = u_input.a;
    let var_3 = Struct_3(_wgslsmith_mod_i32(var_1.a, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] - global0[_wgslsmith_index_u32(0u, 25u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_1.b, var_1.b) - vec3<f32>(-500f, -1000f, var_1.b))), vec4<f32>(-820f, 1463f, var_1.b, -651f)).b.x), var_0.b, vec4<u32>(~15830u, _wgslsmith_clamp_u32(~(~var_0.c.x), func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-869f, var_1.b, -233f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 117f, 432f, var_1.b)))).c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, global2.b.a.x), global2.a)), ~(var_0.c.x >> (_wgslsmith_mult_u32(var_0.c.x, var_0.c.x) % 32u)), _wgslsmith_div_u32(~(~4294967295u), firstLeadingBit(~global2.b.a.x))));
    return func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1509f, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(228f, var_1.b) + _wgslsmith_div_f32(349f, 1000f))) * _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.c.zxw, vec3<u32>(var_0.c.x, var_3.c.x, 78045u)), 25u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(var_1.b)), var_1.b, _wgslsmith_f_op_f32(var_1.b + 580f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1000f, -774f, var_1.b) * vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b))))))).b.zyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec3_i32(func_1(), abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))) >> (global2.a.x % 32u);
    var var_1 = ~(-u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-502f, -110f))), 1f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-759f, -1459f)))));
    let var_4 = all(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), true), vec3<bool>(true, true, any(vec4<bool>(true, false, true, true))), true));
    let var_5 = vec2<bool>(!(all(vec3<bool>(true, false, false)) | var_4), any(!vec3<bool>(var_4, var_4, true)));
    global3 = array<Struct_4, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(933f);
}

