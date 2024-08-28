struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(973f, -2784f, 197f), -1043f, 1i, false, vec3<i32>(1i, -5985i, -1i))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(983f, 1791f, 1679f), 1370f, i32(-2147483648), true, vec3<i32>(1i, 10929i, 9865i))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(169f, -435f, -353f), -570f, -24025i, false, vec3<i32>(-16460i, -13551i, 1i))), Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(829f, -585f, -269f), -1452f, -2742i, false, vec3<i32>(i32(-2147483648), 16697i, 69912i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(774f, 380f, -470f), -467f, -25126i, false, vec3<i32>(2147483647i, 32219i, 0i))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(448f, 137f, 486f), -1393f, 1i, true, vec3<i32>(2147483647i, 13335i, -49627i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(1000f, 735f, -2185f), -1000f, 2147483647i, false, vec3<i32>(i32(-2147483648), 27053i, i32(-2147483648)))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(946f, -501f, 169f), -1062f, 0i, true, vec3<i32>(1i, 62386i, 1i))), Struct_5(vec3<bool>(false, true, true), Struct_1(vec3<f32>(-670f, -199f, 1947f), -1347f, -3633i, true, vec3<i32>(-18054i, -1i, 40942i))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1113f, -621f, 1271f), 1000f, 1i, false, vec3<i32>(6757i, 7859i, 1i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(942f, -865f, 1111f), -531f, i32(-2147483648), true, vec3<i32>(10078i, -11464i, -1i))));

var<private> global2: u32;

var<private> global3: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(154f, 1000f, -748f), -829f, 52194i, false, vec3<i32>(-1i, -14719i, 0i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(257f, 1676f, 662f), -1347f, 11885i, false, vec3<i32>(-52691i, 2147483647i, -15366i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1067f, 1000f, 357f), 605f, 0i, true, vec3<i32>(116871i, -21138i, -56273i))), Struct_5(vec3<bool>(true, true, false), Struct_1(vec3<f32>(-1088f, -1000f, 1106f), 279f, i32(-2147483648), true, vec3<i32>(-1i, -35853i, 0i))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(883f, 2036f, 195f), -1530f, 3280i, false, vec3<i32>(-1i, -156975i, 21342i))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-1167f, 525f, 1746f), 510f, -1i, true, vec3<i32>(0i, 12978i, i32(-2147483648)))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(619f, -373f, -994f), -1000f, i32(-2147483648), false, vec3<i32>(2147483647i, 28100i, 2147483647i))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-762f, -452f, -808f), 391f, -45060i, false, vec3<i32>(-54510i, 0i, -1i))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(773f, 616f, -458f), 349f, 13591i, false, vec3<i32>(3617i, -1i, i32(-2147483648)))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-1195f, -1113f, 1056f), 1088f, -7764i, true, vec3<i32>(13362i, 1i, i32(-2147483648)))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-1112f, -857f, -512f), 724f, 33236i, false, vec3<i32>(31278i, 25100i, i32(-2147483648)))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(301f, -245f, -203f), -1350f, 14851i, true, vec3<i32>(0i, 0i, 0i))), Struct_5(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-518f, -1014f, -1041f), 100f, -1i, false, vec3<i32>(706i, -1i, 2147483647i))), Struct_5(vec3<bool>(true, false, false), Struct_1(vec3<f32>(520f, -568f, 1009f), 1219f, i32(-2147483648), false, vec3<i32>(i32(-2147483648), -12365i, 2147483647i))), Struct_5(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-2878f, 412f, 349f), -311f, i32(-2147483648), false, vec3<i32>(-13377i, 61290i, 1i))), Struct_5(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-925f, 659f, 470f), -247f, -4092i, false, vec3<i32>(-21935i, 2147483647i, -10646i))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1000f, 298f, 164f), -1000f, -1i, false, vec3<i32>(2147483647i, 19192i, -1i))), Struct_5(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1534f, 454f, 639f), 551f, -44387i, true, vec3<i32>(-616i, 10280i, i32(-2147483648)))), Struct_5(vec3<bool>(false, false, true), Struct_1(vec3<f32>(286f, 617f, 979f), 1108f, 18511i, false, vec3<i32>(24855i, 2147483647i, -183i))));

var<private> global4: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = ~reverseBits(_wgslsmith_dot_vec4_u32(arg_0, ~abs(arg_0)));
    global1 = array<Struct_5, 11>();
    global2 = ~(~(~(~arg_0.x)) & 64001u);
    global1 = array<Struct_5, 11>();
    let var_1 = Struct_2(any(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], global0[_wgslsmith_index_u32(36948u, 14u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], true, true), global0[_wgslsmith_index_u32(var_0, 14u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(17502u, 14u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(25621u, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(5988u, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return select(select(vec2<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 14u)], var_1.a, global0[_wgslsmith_index_u32(49980u, 14u)])), true), select(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, global0[_wgslsmith_index_u32(var_0, 14u)])), vec2<bool>(true, true), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(var_0, 14u)]), vec2<bool>(false && all(select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, global0[_wgslsmith_index_u32(var_0, 14u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)]))), !all(vec3<bool>(var_1.a, true, true))), false);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_5(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(~(~0u), 14u)]), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) * -1620f), -(~(~2147483647i)), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 14u)], u_input.b | ~vec3<i32>(arg_0, 20952i, arg_0)));
    global0 = array<bool, 14>();
    var var_1 = var_0;
    global0 = array<bool, 14>();
    let var_2 = select(!var_0.a.xy, func_3(vec4<u32>(1u, 1u, 1u, 1u)), var_0.a.yy);
    return true;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1908f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1281f) * vec4<f32>(516f, arg_1.x, 2348f, 485f)), func_2(u_input.b.x, Struct_2(false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 557f, arg_1.x, -445f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -131f, -962f, arg_1.x) * vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))));
    var var_1 = Struct_2((global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(87577u, 34804u, 13664u))), 14u)] || !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27326u, 0u, 20988u), vec3<u32>(7008u, 35819u, 4294967295u)), 14u)]) | false);
    var var_2 = ~vec4<u32>(1u, 18293u, _wgslsmith_clamp_u32(select(80721u, 1u, var_1.a), 1u, firstLeadingBit(1u)), ~(~17009u)) << (firstLeadingBit(abs(~vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0 >> (var_2.x % 32u), 82007i, 52915i, arg_0), (vec4<i32>(-20978i, -5818i, -7002i, arg_0) | abs(vec4<i32>(0i, arg_0, -56534i, u_input.a))) | abs(min(vec4<i32>(-54864i, 2147483647i, 2147483647i, arg_0), vec4<i32>(u_input.b.x, 11448i, arg_0, u_input.a)))), vec4<i32>(firstTrailingBit(-arg_0), ~_wgslsmith_clamp_i32(arg_0, -57440i, u_input.b.x), firstLeadingBit(arg_0), arg_0 & arg_0) << (countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, var_2.x), vec4<u32>(0u, var_2.x, var_2.x, 0u)), vec4<u32>(var_2.x, 50712u, var_2.x, var_2.x))) % vec4<u32>(32u)));
    let var_4 = Struct_3(7527u);
    return Struct_2(var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_4(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(168f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(181f + 1044f), -235f, true)))), false, Struct_3(_wgslsmith_add_u32(~arg_2.x, ~arg_0)));
    global3 = array<Struct_5, 19>();
    let var_1 = var_0.d.a;
    global3 = array<Struct_5, 19>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), var_0.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!func_4(~_wgslsmith_dot_vec3_u32(vec3<u32>(22423u, 6631u, 1u), vec3<u32>(4294967295u, 87788u, 0u)), func_1(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2746f, 556f, -1000f))), ~vec3<u32>(0u, 4294967295u, 0u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(516f, 211f, 816f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-404f, -1000f, -113f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2524f) * _wgslsmith_f_op_f32(f32(-1f) * -2036f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-373f * -1102f)))), _wgslsmith_f_op_f32(trunc(1f))), -2147483647i, any(!vec4<bool>(!var_0.a, global0[_wgslsmith_index_u32(~11080u, 14u)], select(var_0.a, true, true), true)), vec3<i32>(-1i, 1i, -17561i));
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1000f, 1819f));
    let var_4 = Struct_4(1i, var_1.a.x, true, Struct_3(~1u));
    var var_5 = !vec3<bool>(true, any(!vec2<bool>(var_1.d, true)), true);
    global2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_4.d.a), firstTrailingBit(~var_4.d.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.d.a, var_4.d.a, var_4.d.a), vec3<u32>(12782u, var_4.d.a, var_4.d.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(8056u, 22063u, var_4.d.a, var_4.d.a), vec4<u32>(37459u, var_4.d.a, 0u, var_4.d.a)), countOneBits(var_4.d.a)), var_4.d.a), abs(countOneBits(abs(vec4<u32>(var_4.d.a, 0u, 4294967295u, 19929u))))));
    let var_6 = -var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~48341i, _wgslsmith_clamp_i32(9721i, 2147483647i, 2147483647i) ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_6, -55574i, 2147483647i), select(var_6, 2147483647i, true))), vec4<i32>(var_1.e.x, select(-1i, ~(-var_6), true), var_4.a, var_6), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.b))), vec3<i32>(1i, 1i >> (var_4.d.a % 32u), var_4.a));
}

