struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 0u, 1u, 1u, 1u, 53743u, 1u, 132939u);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-1488f, -182f, 1004f)), Struct_1(vec3<f32>(1537f, -289f, 1345f)), Struct_1(vec3<f32>(599f, -1551f, -301f)), Struct_1(vec3<f32>(-317f, -1735f, -384f)), Struct_1(vec3<f32>(594f, 207f, -1000f)), Struct_1(vec3<f32>(-1398f, 865f, -1000f)), Struct_1(vec3<f32>(1821f, -667f, -100f)), Struct_1(vec3<f32>(-1929f, -198f, -639f)));

var<private> global2: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 63146u, 48396u), vec3<u32>(74465u, 12057u, 25679u), vec3<u32>(34524u, 4294967295u, 24240u), vec3<u32>(1u, 16553u, 1u), vec3<u32>(34213u, 21446u, 4294967295u), vec3<u32>(4294967295u, 88022u, 15313u), vec3<u32>(5082u, 1u, 1u), vec3<u32>(13698u, 0u, 0u), vec3<u32>(6418u, 0u, 0u), vec3<u32>(58061u, 1160u, 3364u), vec3<u32>(61406u, 1u, 11719u), vec3<u32>(0u, 0u, 45066u), vec3<u32>(1u, 4294967295u, 26157u), vec3<u32>(1u, 4294967295u, 25619u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(571u, 4294967295u, 11925u), vec3<u32>(0u, 36690u, 1u), vec3<u32>(0u, 2871u, 0u), vec3<u32>(4294967295u, 1u, 48204u), vec3<u32>(0u, 44747u, 33062u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 27151u), vec3<u32>(1u, 4294967295u, 60757u));

var<private> global3: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<Struct_1, 8>();
    var var_0 = arg_0;
    let var_1 = ~global0[_wgslsmith_index_u32(1u, 8u)];
    global2 = array<vec3<u32>, 25>();
    var var_2 = !vec2<bool>(true, (_wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.xz) | 27315i) < ((-1i | u_input.d.x) >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)));
    return u_input.d.x;
}

fn func_3(arg_0: i32) -> bool {
    global1 = array<Struct_1, 8>();
    var var_0 = i32(-1i) * -1i;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-652f))) - -241f))));
    global3 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(u_input.a, u_input.a)), u_input.a) != 0u;
    global2 = array<vec3<u32>, 25>();
    return !(!any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)) | true);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = Struct_2(all(vec4<bool>(true, false && (arg_0.x | true), true, true)), global1[_wgslsmith_index_u32(~u_input.c, 8u)], (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 30099u, u_input.c), arg_2) == 10431u) | true, func_3(countOneBits(func_2(Struct_1(vec3<f32>(860f, 915f, 1089f)), global1[_wgslsmith_index_u32(28631u, 8u)], Struct_1(vec3<f32>(1096f, -256f, 541f)), true) >> (4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), -416f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(328f, -1474f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1502f, -434f)) - vec2<f32>(192f, 969f)))));
    global1 = array<Struct_1, 8>();
    var var_1 = func_2(Struct_1(var_0.b.a), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(arg_2.x & arg_2.x), firstTrailingBit(arg_2.x)) << (countOneBits(arg_2.x) % 32u), 8u)], var_0.b, arg_0.x);
    var var_2 = var_0.b;
    var var_3 = select(select(!select(!vec3<bool>(var_0.c, arg_0.x, var_0.c), !vec3<bool>(arg_0.x, true, arg_0.x), select(arg_0.x, var_0.a, false)), !(!select(vec3<bool>(arg_0.x, arg_0.x, var_0.a), vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(arg_0.x, arg_0.x, true))), select(!(!vec3<bool>(var_0.a, true, arg_0.x)), vec3<bool>(true, false, !arg_0.x), vec3<bool>(!var_0.d, arg_2.x > u_input.c, true))), select(vec3<bool>(!arg_0.x, true | (var_0.c || true), false), !(!vec3<bool>(arg_0.x, true, arg_0.x)), false), select(!(!select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, false, true), vec3<bool>(var_0.c, var_0.c, var_0.d))), !select(!vec3<bool>(var_0.d, var_0.d, var_0.c), vec3<bool>(true, var_0.c, false), true), true));
    return ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26143u, 0u, arg_1), ~arg_2), 87560u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(20959u, u_input.b)), 8u)], ~firstLeadingBit(28619u)));
}

fn func_4(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-847f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f)), -896f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1072f - -1046f) * -1055f), 824f), 1f);
    var var_2 = global1[_wgslsmith_index_u32(~(abs(min(_wgslsmith_add_u32(1u, 26509u), global0[_wgslsmith_index_u32(arg_0.x, 8u)])) << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, u_input.b), vec3<u32>(4294967295u, 34394u, 32191u))) % 32u)), 8u)];
    var var_3 = 0i;
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, arg_0.x)), u_input.e), u_input.c, ~global0[_wgslsmith_index_u32(101805u, 8u)]), select(vec3<u32>(arg_0.x, 12327u, firstLeadingBit(arg_0.x)), vec3<u32>(72830u, 41091u, _wgslsmith_div_u32(41510u, u_input.a.x)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)))), 8u)];
    return vec3<bool>(func_3(_wgslsmith_add_i32(0i, ~(~0i))), select((select(true, true, true) || false) | false, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2078f, -1000f, 233f) + vec3<f32>(-133f, -490f, -1899f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1297f, -1431f, 1000f) * vec3<f32>(-713f, 408f, 1301f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-887f, 415f, 108f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, -1301f, 1830f))))))));
    let var_1 = Struct_2(any(vec3<bool>(true, false, true)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -415f, var_0.a.x) - _wgslsmith_div_vec3_f32(vec3<f32>(1888f, var_0.a.x, -155f), var_0.a))))), any(!func_4(func_1(vec2<bool>(true, true), 4294967295u, vec3<u32>(0u, 1327u, 1u)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xy)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(1018f - -742f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a.x)))))));
    var var_3 = select(~(firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, 48149u, 30109u) << (vec4<u32>(u_input.e, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47517u, 8u)], 8u)], 8279u) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], global0[_wgslsmith_index_u32(46654u, 8u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 8u)], 8u)]))), ~_wgslsmith_add_vec4_u32(abs(select(vec4<u32>(90630u, 28777u, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.b, 24483u, u_input.c), vec4<bool>(false, false, true, true))), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(26554u, 8u)], 57695u, 4294967295u))), select(select(!select(vec4<bool>(true, var_1.a, var_1.c, false), vec4<bool>(var_1.c, true, true, true), vec4<bool>(var_1.c, false, var_1.d, true)), vec4<bool>(var_1.c || var_1.d, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)] <= 76379u, var_1.d != false, var_1.d, var_1.c)), select(vec4<bool>(true, !var_1.a, false, var_1.d || var_1.a), select(!vec4<bool>(false, var_1.c, false, var_1.c), !vec4<bool>(false, var_1.d, false, var_1.d), !vec4<bool>(false, var_1.a, false, var_1.a)), vec4<bool>(false, true, var_1.d, true)), (false || var_1.d) || (var_1.d & var_1.c)));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(firstTrailingBit(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(select(91541u, global0[_wgslsmith_index_u32(0u, 8u)], var_1.d), 8u)], var_3.x))), ~u_input.b), 8u)];
    let var_5 = Struct_2(var_1.a, Struct_1(var_2.a), !(false | !var_1.a), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_4.a.yz))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.x, var_4.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(980f, var_4.a.x, var_5.b.a.x, var_5.e.x), vec4<f32>(var_2.a.x, var_2.a.x, 377f, var_4.a.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, var_2.a.x, var_5.b.a.x, 831f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(min(267f, -1000f)), -1755f, _wgslsmith_f_op_f32(floor(-195f)))))));
}

