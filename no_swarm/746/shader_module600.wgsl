struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(0u, false, vec4<u32>(4294967295u, 54035u, 0u, 4294967295u), true, -29207i), Struct_2(16868u, false, vec4<u32>(5100u, 21814u, 4294967295u, 0u), false, -1i), Struct_2(100385u, false, vec4<u32>(289u, 28547u, 19079u, 23431u), true, -1i), Struct_2(19480u, true, vec4<u32>(5356u, 4294967295u, 23453u, 4294967295u), false, 26568i), Struct_2(4294967295u, true, vec4<u32>(27654u, 0u, 0u, 1u), false, 18567i), Struct_2(45236u, true, vec4<u32>(75705u, 15445u, 15867u, 1u), true, -1i), Struct_2(112761u, true, vec4<u32>(1783u, 0u, 0u, 51111u), false, -16297i), Struct_2(60731u, true, vec4<u32>(0u, 0u, 1u, 0u), false, -11416i), Struct_2(30880u, false, vec4<u32>(15817u, 19067u, 4294967295u, 0u), true, 0i));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(43528u, true, vec4<u32>(41568u, 1u, 4294967295u, 34615u), false, 2147483647i), Struct_2(114643u, false, vec4<u32>(24955u, 0u, 1u, 2210u), false, -1i), Struct_2(58594u, true, vec4<u32>(0u, 2607u, 57162u, 24782u), true, i32(-2147483648)), Struct_2(15212u, true, vec4<u32>(4563u, 4294967295u, 0u, 31484u), false, 34376i), Struct_2(1u, true, vec4<u32>(1u, 63725u, 1u, 37435u), true, 54515i), Struct_2(57877u, false, vec4<u32>(4294967295u, 1u, 23161u, 4294967295u), true, i32(-2147483648)), Struct_2(95559u, true, vec4<u32>(27149u, 2003u, 4294967295u, 14252u), false, i32(-2147483648)), Struct_2(107127u, false, vec4<u32>(9232u, 0u, 11543u, 1881u), false, 0i), Struct_2(4294967295u, false, vec4<u32>(0u, 1u, 1u, 38081u), true, -7292i), Struct_2(14788u, true, vec4<u32>(44114u, 27021u, 4294967295u, 1u), false, 17876i), Struct_2(45598u, false, vec4<u32>(65380u, 1u, 1u, 4294967295u), false, 17552i), Struct_2(0u, false, vec4<u32>(23795u, 0u, 4294967295u, 66932u), true, -1i), Struct_2(21722u, true, vec4<u32>(0u, 32875u, 34472u, 4294967295u), true, 2147483647i), Struct_2(17396u, false, vec4<u32>(369u, 0u, 67686u, 1u), false, -1i), Struct_2(1u, false, vec4<u32>(11605u, 4294967295u, 31309u, 1u), false, -4697i), Struct_2(49438u, false, vec4<u32>(0u, 23590u, 1232u, 1720u), false, 24862i), Struct_2(0u, false, vec4<u32>(0u, 14550u, 1u, 957u), false, 1i), Struct_2(11050u, false, vec4<u32>(34520u, 0u, 4294967295u, 48999u), true, -6894i), Struct_2(4294967295u, true, vec4<u32>(60480u, 10854u, 4294967295u, 69904u), true, 2147483647i), Struct_2(19819u, true, vec4<u32>(89899u, 9611u, 62653u, 20049u), false, -1i));

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<u32, 10> = array<u32, 10>(20024u, 4294967295u, 0u, 60750u, 78496u, 63712u, 0u, 1u, 4294967295u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    global1 = array<Struct_2, 20>();
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(32194u, global4[_wgslsmith_index_u32(global2.x, 10u)]), global2.xz), vec2<u32>(4294967295u, 0u)), 0u), global4[_wgslsmith_index_u32(1u, 10u)], max(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(6503u, 11048u), 10u)], 1u) << (global2.x % 32u), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global2.x, 10u)], ~u_input.d.x, ~_wgslsmith_mod_u32(global2.x, u_input.c)));
    var var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 40148u, global4[_wgslsmith_index_u32(124744u, 10u)]) ^ firstLeadingBit(vec3<u32>(u_input.e, 1u, global2.x)), firstLeadingBit(firstLeadingBit(var_0.wxy)))), 20u)];
    var_1 = Struct_2(firstLeadingBit(abs(22369u)), any(select(select(vec4<bool>(var_1.d, var_1.d, true, false), vec4<bool>(true, true, var_1.b, var_1.d), false), select(vec4<bool>(var_1.b, var_1.b, true, var_1.b), vec4<bool>(var_1.b, false, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.b, var_1.d, false, true), false))) != true, vec4<u32>(66194u, select(4294967295u, _wgslsmith_clamp_u32(~global2.x, 0u, u_input.a), true), ~65960u, abs(1u)), !(true == all(!vec2<bool>(var_1.d, var_1.d))), var_1.e);
    let var_2 = Struct_1(select(30497u, ~min(u_input.c, var_1.a), true), vec3<f32>(1195f, _wgslsmith_f_op_f32(min(-244f, -1951f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(233f)), _wgslsmith_f_op_f32(182f * 149f))))), u_input.b.x, arg_0);
    return var_2.d;
}

fn func_2() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(0u << (global4[_wgslsmith_index_u32(4294967295u, 10u)] % 32u), 9u)];
    var var_1 = Struct_1(1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(814f + 680f)))), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-269f, -391f)) * _wgslsmith_f_op_f32(abs(-506f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(281f, 819f) + 1f)))), -6601i, func_3(u_input.b.xz));
    var var_2 = max(vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.c.xyz, vec3<u32>(~var_1.a, ~21325u, ~0u)), global2.x, ~(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.a, 10u)], 10u)], 4294967295u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, var_0.c.x, 30495u, 62185u)), ~min(var_0.c, vec4<u32>(var_0.c.x, 49023u, global2.x, 1u)))), var_0.c);
    let var_3 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 10u)], 6u)];
    return Struct_2(firstTrailingBit(abs(global2.x)), !(var_0.d & var_3.d), var_0.c, var_0.b, select(_wgslsmith_div_i32(var_0.e, -2147483647i), i32(-1i) * -min(12724i, 1i), select(all(vec3<bool>(var_0.d, var_0.b, var_0.b)), any(!vec4<bool>(true, true, var_3.d, false)), var_0.d)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = !(all(vec4<bool>(true, true, true, true)) | false) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, -2525f, false)) * _wgslsmith_f_op_f32(arg_0.b.x + 614f))) != -613f);
    var var_1 = all(vec4<bool>(min(_wgslsmith_add_u32(31440u, global4[_wgslsmith_index_u32(0u, 10u)]), global2.x) == 0u, true & !(-304f <= arg_1.b.x), any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true)))), true));
    var var_2 = func_2();
    var var_3 = arg_1.b.x;
    let var_4 = firstTrailingBit(22845i);
    return arg_1.b.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 131f)), _wgslsmith_f_op_f32(round(1389f)), _wgslsmith_f_op_f32(ceil(316f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2026f, 525f, -1122f), vec3<f32>(arg_0, 174f, arg_0), arg_0 >= arg_0)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1120f, 592f, -526f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -224f, -266f)), !vec3<bool>(arg_1.x, arg_1.x, true))))), firstLeadingBit(_wgslsmith_add_i32(func_3(u_input.b.yx).x << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2.x), 10u)], 10u)] % 32u), abs(min(-1i, u_input.b.x)))), firstTrailingBit(select(vec2<i32>(1i, i32(-1i) * -8240i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(arg_2, 20847i)), u_input.b.zy), select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), !vec2<bool>(arg_1.x, true)))));
    let var_1 = ~abs(global2.yx);
    global3 = array<Struct_2, 6>();
    let var_2 = firstTrailingBit(reverseBits(-(abs(20784i) << (firstLeadingBit(4294967295u) % 32u))));
    let var_3 = arg_1.x;
    return global0[_wgslsmith_index_u32(~(~(~(~36918u))) >> (var_1.x % 32u), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-763f, -1191f)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~(~(~global4[_wgslsmith_index_u32(global2.x, 10u)]))), _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(15054u, global2.x, 28955u, global2.x))) | min(vec4<u32>(global2.x, 4294967295u, 1u, 45326u), vec4<u32>(17657u, u_input.e, u_input.a, u_input.d.x) | vec4<u32>(global2.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 0u, 111237u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.e, 15505u, 4294967295u, global2.x)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, global2.x, 4294967295u, global2.x)), vec4<u32>(global2.x, 9583u, global4[_wgslsmith_index_u32(u_input.d.x, 10u)], 1u), ~vec4<u32>(global2.x, global2.x, 15360u, global4[_wgslsmith_index_u32(35887u, 10u)])), ~_wgslsmith_sub_vec4_u32(vec4<u32>(62624u, u_input.d.x, 0u, global2.x), vec4<u32>(25835u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 10u)], 10u)], 10u)], u_input.a, 15249u))))), 20u)];
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, vec3<f32>(1348f, -1893f, 1403f), u_input.b.x, u_input.b.xx), Struct_1(1u, vec3<f32>(-107f, 319f, -1188f), var_1.e, u_input.b.yx))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(ceil(-456f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-589f, -668f)))), select(select(select(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, var_1.d), vec2<bool>(true, var_1.b)), vec2<bool>(false, var_1.b)), select(vec2<bool>(var_1.b, var_1.d), select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, var_1.b)), vec2<bool>(var_1.d, var_1.b)), vec2<bool>(all(vec3<bool>(var_1.d, var_1.b, false)), any(vec4<bool>(var_1.d, true, false, true)))), vec2<bool>(!(global4[_wgslsmith_index_u32(4294967295u, 10u)] != 0u), any(vec3<bool>(var_1.d, var_1.b, true))), true), select(u_input.b.x, var_1.e, true));
    let var_3 = !select(!(!select(vec3<bool>(var_1.b, var_1.b, var_2.b), vec3<bool>(var_1.d, var_1.d, false), true)), select(select(!vec3<bool>(false, var_2.d, false), !vec3<bool>(var_1.d, var_2.b, true), vec3<bool>(false, true, var_1.b)), select(vec3<bool>(false, var_1.b, true), !vec3<bool>(var_2.b, var_1.d, var_2.b), var_2.d), true | var_1.d), !(!vec3<bool>(true, false, var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-256f)), _wgslsmith_mult_vec3_u32(~reverseBits(var_1.c.zyy), var_2.c.wyy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -356f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-300f - 229f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f + 1000f)))), ~firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(1i, 1i), var_1.e)), 1f);
}

