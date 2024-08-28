struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 10> = array<f32, 10>(1000f, -252f, -643f, 736f, -703f, 499f, -733f, 790f, 2797f, 1032f);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(1u, 71273u), vec3<f32>(-278f, -241f, -1000f), 1u, false), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(0u, 0u), vec3<f32>(-1090f, 847f, 1704f), 42612u, true), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 0u), vec3<f32>(-1491f, 939f, 462f), 227u, true), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(65145u, 4294967295u), vec3<f32>(556f, -923f, -697f), 48023u, true), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 0u), vec3<f32>(571f, 1000f, -840f), 69169u, true), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u), vec3<f32>(2143f, 751f, -408f), 43686u, false));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(77091u, 2914u), vec3<f32>(-923f, -446f, -323f), 0u, false), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(72681u, 1u), vec3<f32>(1657f, -717f, 824f), 24924u, true), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 1u), vec3<f32>(545f, 296f, -400f), 4294967295u, false), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(12010u, 64409u), vec3<f32>(-659f, 926f, -1304f), 14908u, false), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 63427u), vec3<f32>(-954f, -1710f, -1254f), 31937u, true), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(91484u, 1086u), vec3<f32>(-509f, 822f, -1756f), 0u, true), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(86787u, 1u), vec3<f32>(708f, 1085f, -170f), 4294967295u, false), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 5306u), vec3<f32>(1039f, -503f, -314f), 4294967295u, true), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(37024u, 15540u), vec3<f32>(865f, -148f, -1220f), 4294967295u, true), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(0u, 1u), vec3<f32>(1155f, 618f, 642f), 36162u, true), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 73551u), vec3<f32>(-185f, -1514f, -735f), 0u, false), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(54086u, 0u), vec3<f32>(-1000f, 758f, -780f), 26782u, false), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(64617u, 1u), vec3<f32>(-640f, -560f, -1407f), 27747u, true), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(874f, 439f, -989f), 16504u, true), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(1u, 24242u), vec3<f32>(-573f, -221f, -1069f), 4294967295u, true), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(43462u, 1u), vec3<f32>(1016f, 3074f, -1221f), 52788u, false), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(0u, 4294967295u), vec3<f32>(727f, 951f, 819f), 6363u, false), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 27324u), vec3<f32>(-514f, 634f, 298f), 89456u, false), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 22144u), vec3<f32>(428f, -2047f, 363f), 134186u, false), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4696u, 88348u), vec3<f32>(-655f, 454f, 951f), 10330u, true), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 40898u), vec3<f32>(1230f, -1100f, -1660f), 0u, true), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(14405u, 0u), vec3<f32>(184f, -535f, 304f), 23889u, true), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(81748u, 1u), vec3<f32>(193f, 102f, -233f), 0u, false), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(50887u, 3u), vec3<f32>(1414f, -574f, -649f), 38602u, true), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(19012u, 0u), vec3<f32>(337f, 410f, -416f), 1u, true), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(0u, 59751u), vec3<f32>(575f, -1000f, -624f), 0u, true), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(55943u, 34573u), vec3<f32>(801f, 794f, -861f), 0u, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<u32> {
    global2 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(u_input.c), ~((global3.x ^ 4294967295u) >> (~114061u % 32u)) ^ (u_input.a << ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38813u, 0u), vec3<u32>(global3.x, 58256u, global3.x)) << (~4294967295u % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(48614u, 4294967295u, global3.x, 23544u), vec4<u32>(u_input.a, 4294967295u, global3.x, global3.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(37946u, global3.x, u_input.c, 4294967295u), ~vec4<u32>(global3.x, global3.x, u_input.a, 1u))) >> (10762u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-554f, global1[_wgslsmith_index_u32(global3.x, 10u)], global0.x)))), _wgslsmith_f_op_f32(abs(1582f)), 434f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1200f, global0.x)) - global1[_wgslsmith_index_u32(~global3.x, 10u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]))))), 1f, 551f), global0.x));
    return ~reverseBits(select(vec4<u32>(4294967295u, u_input.c, global3.x, global3.x) << (vec4<u32>(global3.x, 15184u, 1u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(2203u, u_input.c, u_input.c, 0u)), true)) ^ ~(~vec4<u32>(4294967295u, u_input.c, ~u_input.c, u_input.a));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    var var_0 = arg_0.zy;
    global3 = abs(arg_0.ww);
    let var_1 = vec3<bool>(false, global0.x, any(vec2<bool>(global0.x, false)));
    var var_2 = 2147483647i;
    let var_3 = -14003i;
    return false;
}

fn func_2() -> vec3<u32> {
    let var_0 = all(!select(vec3<bool>(all(vec3<bool>(true, global0.x, false)), true, any(vec2<bool>(false, global0.x))), vec3<bool>(!global0.x, global0.x, false), all(vec4<bool>(true, global0.x, false, global0.x))));
    global1 = array<f32, 10>();
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -u_input.b), ~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1i)) | -vec2<i32>(-1i, 2147483647i)) << (abs(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(global3.x, 1u)), max(vec2<u32>(global3.x, 56342u), vec2<u32>(1u, global3.x)), !global0.x)) % vec2<u32>(32u)));
    let var_2 = !vec4<bool>(true, !global0.x, !func_4(func_3()), !all(vec2<bool>(false, false)));
    let var_3 = Struct_1(!vec4<bool>(var_2.x, true, !var_0, var_0), max(~vec2<u32>(global3.x, select(0u, u_input.a, var_0)), ~(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 10u)], -889f, 1065f), vec3<f32>(1078f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)])))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(global3.x, 10u)], global1[_wgslsmith_index_u32(98673u, 10u)], global1[_wgslsmith_index_u32(global3.x, 10u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], 1112f, global1[_wgslsmith_index_u32(u_input.c, 10u)]) + vec3<f32>(global1[_wgslsmith_index_u32(global3.x, 10u)], global1[_wgslsmith_index_u32(4911u, 10u)], -682f))))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-826f * global1[_wgslsmith_index_u32(1u, 10u)])), 841f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 10u)], -1124f)))), global3.x, _wgslsmith_add_i32(abs(-6397i) & _wgslsmith_clamp_i32(u_input.b, u_input.b, 2147483647i), _wgslsmith_dot_vec2_i32(~var_1, vec2<i32>(u_input.b, -2147483647i))) >= 1i);
    return ~(~vec3<u32>(var_3.d, 1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global3.x, u_input.a, 70187u), vec3<u32>(4294967295u, u_input.c, global3.x), vec3<bool>(false, true, false)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.x, global3.x), vec3<u32>(4294967295u, global3.x, var_3.d)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global1 = array<f32, 10>();
    let var_0 = ~vec2<u32>(countOneBits(4627u), _wgslsmith_dot_vec2_u32(~vec2<u32>(6168u, arg_1.b.x), ~vec2<u32>(arg_1.b.x, 9462u) & ~arg_1.b));
    var var_1 = ~firstLeadingBit(func_2());
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, ~(u_input.b | -1i)) << (var_0 % vec2<u32>(32u)), -min(abs(~vec2<i32>(-25343i, u_input.b)), max(min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), abs(vec2<i32>(u_input.b, u_input.b)))));
    var var_3 = !arg_1.a.x;
    return func_4(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global3.x, var_1.x, u_input.a), vec4<u32>(var_1.x, 17775u, arg_1.d, var_1.x)), ~vec4<u32>(1u, 51448u, 88456u, var_1.x)) << (vec4<u32>(arg_1.d, ~max(arg_1.d, 0u), 4294967295u, 0u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1910f);
    var var_1 = !(!(!global0.x));
    let var_2 = ~(~(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, u_input.a), vec2<u32>(global3.x, 0u), vec2<u32>(u_input.a, global3.x)), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 4006u)) | ~(~vec2<u32>(4294967295u, 8536u))));
    let var_3 = abs(reverseBits(firstLeadingBit(select(reverseBits(vec3<u32>(global3.x, 18857u, 4294967295u)), ~vec3<u32>(4294967295u, 0u, u_input.c), func_1(vec4<f32>(1000f, var_0, -1254f, 620f), Struct_1(vec4<bool>(global0.x, false, false, false), var_2, vec3<f32>(1061f, global1[_wgslsmith_index_u32(26687u, 10u)], var_0), 43085u, global0.x))))));
    var var_4 = select(!(!select(global0.yy, select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), true), !global0.zy)), global0.zy, !select(global0.xx, global0.zx, false));
    let var_5 = Struct_1(select(select(vec4<bool>(var_4.x, true, !var_4.x, !var_4.x), vec4<bool>(var_4.x, func_1(vec4<f32>(424f, var_0, -957f, var_0), Struct_1(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec2<u32>(var_3.x, 1u), vec3<f32>(290f, global1[_wgslsmith_index_u32(var_2.x, 10u)], -979f), 1u, global0.x)), true, true), !(!vec4<bool>(global0.x, false, global0.x, var_4.x))), select(!select(vec4<bool>(var_4.x, true, true, false), vec4<bool>(global0.x, var_4.x, false, false), global0.x), !select(vec4<bool>(true, true, var_4.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(false, false, global0.x, global0.x)), vec4<bool>(false, select(false, var_4.x, true), var_4.x & global0.x, global0.x)), min(_wgslsmith_div_i32(36559i, -2147483647i), _wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.b)) >= u_input.b), reverseBits(vec2<u32>(var_3.x, min(select(55098u, global3.x, global0.x), ~21175u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-435f, global1[_wgslsmith_index_u32(global3.x, 10u)], 605f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 10u)], var_0, -1500f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-130f, var_0, global1[_wgslsmith_index_u32(var_2.x, 10u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1759f, global1[_wgslsmith_index_u32(33788u, 10u)]))))))), 0u, true);
    let var_6 = 45972u;
    var var_7 = min(vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(firstTrailingBit(u_input.c), ~var_6)), global3.x), vec2<u32>(var_2.x, 1u));
    global4 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, max(u_input.c, _wgslsmith_dot_vec2_u32(firstLeadingBit(func_2().xz), reverseBits(~vec2<u32>(4294967295u, var_3.x)))), vec4<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.x, var_6, 1u, var_5.d), select(vec4<u32>(var_7.x, var_2.x, 4294967295u, 1u), vec4<u32>(var_5.b.x, 4294967295u, global3.x, 1u), vec4<bool>(var_5.a.x, global0.x, var_5.e, false))), ~(~4294967295u), all(select(vec3<bool>(global0.x, false, var_5.e), var_5.a.xzz, var_5.a.wxx))), ~1u >> ((_wgslsmith_sub_u32(u_input.c, var_3.x) >> (min(var_7.x, 1u) % 32u)) % 32u), _wgslsmith_div_u32(1u >> ((var_6 | var_6) % 32u), ~(~global3.x)), ~(~min(19891u, u_input.c))), 1307f, abs(u_input.b));
}

