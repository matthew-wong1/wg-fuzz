struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(1000f, 29454u, vec4<u32>(0u, 34941u, 38155u, 4294967295u), -1i, 1u), Struct_2(1798f, 4294967295u, vec4<u32>(0u, 26134u, 36126u, 4294967295u), -58081i, 1u), Struct_2(-308f, 14778u, vec4<u32>(23767u, 42994u, 41383u, 59357u), 19054i, 4294967295u), Struct_2(-1013f, 4294967295u, vec4<u32>(7611u, 1u, 4294967295u, 4294967295u), 17446i, 0u), Struct_2(-1733f, 25665u, vec4<u32>(55928u, 23972u, 4294967295u, 20239u), 15968i, 65353u), Struct_2(-833f, 5748u, vec4<u32>(4294967295u, 4294967295u, 0u, 32785u), -1i, 1u), Struct_2(-520f, 34613u, vec4<u32>(1u, 4294967295u, 32421u, 3241u), -1i, 0u), Struct_2(1871f, 4294967295u, vec4<u32>(1u, 4294967295u, 1u, 1u), -43226i, 0u), Struct_2(-1048f, 4294967295u, vec4<u32>(24357u, 18413u, 45635u, 0u), -12424i, 48669u), Struct_2(-833f, 63817u, vec4<u32>(42431u, 0u, 92244u, 1u), -266i, 4294967295u), Struct_2(-1467f, 80171u, vec4<u32>(1u, 4294967295u, 0u, 76287u), -5413i, 35705u), Struct_2(551f, 74395u, vec4<u32>(19176u, 5681u, 4294967295u, 4294967295u), -1i, 1u), Struct_2(-480f, 4294967295u, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), -43091i, 4294967295u), Struct_2(-244f, 81228u, vec4<u32>(1u, 1u, 27400u, 90605u), -33014i, 62625u), Struct_2(320f, 0u, vec4<u32>(1u, 4294967295u, 43308u, 4294967295u), -25968i, 4294967295u), Struct_2(341f, 44033u, vec4<u32>(3094u, 2405u, 4294967295u, 1u), 10314i, 1u), Struct_2(-1000f, 4294967295u, vec4<u32>(1u, 1u, 1u, 38716u), 47461i, 3078u), Struct_2(-671f, 0u, vec4<u32>(0u, 1u, 18272u, 1u), i32(-2147483648), 4294967295u), Struct_2(-1025f, 29579u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2788u), 1i, 13668u), Struct_2(-209f, 97429u, vec4<u32>(1u, 4294967295u, 4294967295u, 20108u), -1i, 1u), Struct_2(-1208f, 0u, vec4<u32>(0u, 90656u, 13493u, 4294967295u), -18389i, 38374u), Struct_2(632f, 4294967295u, vec4<u32>(36910u, 0u, 1u, 50551u), 1i, 1u), Struct_2(1149f, 44495u, vec4<u32>(0u, 55192u, 4294967295u, 4294967295u), -33017i, 73210u), Struct_2(639f, 14355u, vec4<u32>(52940u, 33013u, 1u, 21864u), 3890i, 27892u), Struct_2(2099f, 1u, vec4<u32>(1u, 0u, 26654u, 1u), 41167i, 0u), Struct_2(1030f, 4294967295u, vec4<u32>(3895u, 27119u, 19345u, 9481u), -1i, 4294967295u));

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(149f, 900f, 1000f), vec3<f32>(-192f, -2531f, -218f), vec3<f32>(-997f, 1000f, -464f), vec3<f32>(1000f, -190f, -493f), vec3<f32>(1845f, -622f, 524f));

var<private> global2: array<i32, 30> = array<i32, 30>(-28782i, i32(-2147483648), 0i, 0i, -20135i, -1587i, i32(-2147483648), -26346i, 45354i, 1i, 22925i, -9016i, 2147483647i, 11963i, 1i, -1i, 25736i, -31278i, 1i, 37455i, 64390i, 0i, -28264i, -35809i, 0i, 2147483647i, 1i, 2147483647i, 3620i, 2147483647i);

var<private> global3: array<u32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> u32 {
    var var_0 = max(firstLeadingBit(~(~u_input.d)), arg_0.a);
    let var_1 = vec3<u32>(~min(global3[_wgslsmith_index_u32(71749u | u_input.d.x, 31u)], _wgslsmith_mult_u32(4294967295u, 0u)), 1u, 1u) & reverseBits(min(max(vec3<u32>(0u, 73757u, 61479u), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62360u, 31u)], 31u)], u_input.c, arg_0.c)), select(~vec3<u32>(arg_0.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49038u, 31u)], 31u)], arg_0.a.x), ~vec3<u32>(4294967295u, 4294967295u, arg_0.a.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))));
    let var_2 = Struct_1(2147483647i, -9708i);
    let var_3 = Struct_4(arg_0.b.zy, vec4<i32>(15094i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(63318i, arg_1), ~global2[_wgslsmith_index_u32(6655u, 30u)]), -_wgslsmith_sub_i32(arg_1, var_2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(0i), u_input.e, i32(-1i) * -1i, ~0i), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i, -1i)), vec4<i32>(-6458i, 1i, 0i, u_input.e))), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(85777u), ~4294967295u), 30u)]), vec2<f32>(1f, 684f), -332f, u_input.e);
    var var_4 = _wgslsmith_f_op_f32(var_3.d - var_3.c.x);
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~abs(var_1.x >> (arg_0.c % 32u)), arg_0.a.x)), 31u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = firstLeadingBit(~max(vec4<u32>(_wgslsmith_sub_u32(78254u, 13401u), _wgslsmith_div_u32(arg_0.e, 49357u), _wgslsmith_sub_u32(arg_0.e, 53197u), _wgslsmith_add_u32(1u, u_input.a)), ~(~vec4<u32>(65446u, 0u, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(arg_3.x, 31u)]))));
    var var_1 = Struct_5(Struct_3(arg_0.c.xy, vec4<bool>(true, true, true, true), ~1u), Struct_3(var_0.yy, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, true, select(true, true, true))), var_0.x));
    global2 = array<i32, 30>();
    let var_2 = Struct_5(var_1.b, Struct_3(select(arg_3.wz & vec2<u32>(68689u, var_0.x), vec2<u32>(~3704u, _wgslsmith_dot_vec4_u32(arg_0.c, arg_0.c)), vec2<bool>(var_1.b.b.x, 44171i > arg_0.d)), !select(var_1.b.b, !vec4<bool>(var_1.a.b.x, true, var_1.b.b.x, true), true), arg_0.e));
    global0 = array<Struct_2, 26>();
    return var_0.zyy;
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(0u >> (~u_input.c % 32u), 31u)], 14557u, u_input.c), firstLeadingBit(vec3<u32>(u_input.c | 17217u, 256u, ~1873u)), arg_0.b.wyy), abs(select(func_4(global0[_wgslsmith_index_u32(func_3(arg_0, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26792u, 31u)], 30u)]), 26u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-885f, 1013f) + vec2<f32>(378f, -108f)), global2[_wgslsmith_index_u32(69503u, 30u)], firstTrailingBit(vec4<u32>(32742u, arg_0.a.x, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 0u, 0u), ~vec3<u32>(0u, 30345u, 46339u), firstLeadingBit(vec3<u32>(arg_0.c, 1959u, 0u))), arg_0.b.xyx)));
    global2 = array<i32, 30>();
    var var_1 = countOneBits(-vec4<i32>(~u_input.e, 1i, ~global2[_wgslsmith_index_u32(var_0.x, 30u)], u_input.e)) ^ ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, -2147483647i, -65532i, global2[_wgslsmith_index_u32(4294967295u, 30u)]) << (vec4<u32>(global3[_wgslsmith_index_u32(0u, 31u)], var_0.x, 33870u, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.e, u_input.e, global2[_wgslsmith_index_u32(5520u, 30u)], -35984i)));
    let var_2 = Struct_4(arg_0.b.wx, vec4<i32>(-1i) * -reverseBits(vec4<i32>(1i, 1i, -5973i, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 198f, _wgslsmith_mult_i32(firstLeadingBit(select(_wgslsmith_mod_i32(-1i, u_input.e), i32(-1i) * -2147483647i, arg_0.b.x)), var_1.x));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~var_2.b, var_2.b) & ~global2[_wgslsmith_index_u32(7949u, 30u)], select(-2147483647i >> (max(4294967295u << (global3[_wgslsmith_index_u32(4506u, 31u)] % 32u), ~global3[_wgslsmith_index_u32(4294967295u, 31u)]) % 32u), ~(~30819i), var_2.a.x));
    return select(_wgslsmith_mult_u32(~var_0.x, select(~1u, 1u, true || any(vec4<bool>(true, var_2.a.x, var_2.a.x, true)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, u_input.b, arg_0.c)) ^ ~vec4<u32>(4294967295u, u_input.a, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 31u)], 31u)]), vec4<u32>(_wgslsmith_clamp_u32(4294967295u << (var_0.x % 32u), ~u_input.a, u_input.a), 7575u, select(_wgslsmith_sub_u32(34680u, u_input.a), abs(var_0.x), true), 37856u)), -(~14902i | (var_2.e >> (arg_0.c % 32u))) != var_1.x);
}

fn func_1() -> f32 {
    var var_0 = u_input.b;
    var_0 = ~(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 31u)]) >> (global3[_wgslsmith_index_u32(u_input.a, 31u)] % 32u), 31u)], 4294967295u));
    let var_1 = global0[_wgslsmith_index_u32(10265u, 26u)];
    var var_2 = ~(_wgslsmith_sub_u32(1u, func_2(Struct_3(var_1.c.yx, vec4<bool>(true, true, true, false), global3[_wgslsmith_index_u32(49678u, 31u)]))) & (~min(553u, 0u) << (func_2(Struct_3(var_1.c.wy, vec4<bool>(true, false, false, true), 27673u)) % 32u)));
    let var_3 = ~1u;
    return _wgslsmith_f_op_f32(1000f + -204f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(2147483647i, -37828i);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(25661u, 5u)]) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 851f, -155f))))))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-115f * var_1.x), _wgslsmith_f_op_f32(func_1()))) + 701f))));
    var var_3 = -((abs(vec3<i32>(12451i, global2[_wgslsmith_index_u32(1u, 30u)], 24724i)) >> (~(~vec3<u32>(u_input.c, u_input.c, global3[_wgslsmith_index_u32(u_input.a, 31u)])) % vec3<u32>(32u))) & ~_wgslsmith_add_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 30u)], u_input.e, global2[_wgslsmith_index_u32(u_input.b, 30u)]), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.e, u_input.e), vec3<i32>(var_0.x, -19174i, 32475i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-158f - var_1.x)))), 401f), var_3.x);
}

