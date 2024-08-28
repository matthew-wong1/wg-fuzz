struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(1u, 0u, 15750u), false, 1i, vec3<u32>(37768u, 20302u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), false, 4743i, vec3<u32>(0u, 32603u, 1u)), Struct_1(vec3<u32>(4294967295u, 102007u, 29302u), false, -17921i, vec3<u32>(1u, 1u, 1u)), Struct_1(vec3<u32>(1154u, 4294967295u, 1u), false, i32(-2147483648), vec3<u32>(4294967295u, 41405u, 1u)), Struct_1(vec3<u32>(923u, 0u, 4294967295u), false, i32(-2147483648), vec3<u32>(47242u, 88535u, 23253u)), Struct_1(vec3<u32>(7852u, 61929u, 4909u), false, 16179i, vec3<u32>(1u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 107355u, 39394u), true, 24043i, vec3<u32>(4294967295u, 1u, 10221u)), Struct_1(vec3<u32>(1u, 1u, 0u), true, -1i, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(5973u, 4294967295u, 0u), false, 2147483647i, vec3<u32>(40965u, 31529u, 68421u)), Struct_1(vec3<u32>(1u, 662u, 0u), true, 1i, vec3<u32>(0u, 82863u, 0u)), Struct_1(vec3<u32>(13902u, 1u, 1u), true, 31049i, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 27778u), true, 14927i, vec3<u32>(0u, 882u, 4294967295u)), Struct_1(vec3<u32>(1u, 59597u, 12514u), false, 1i, vec3<u32>(38190u, 6600u, 0u)), Struct_1(vec3<u32>(43642u, 1u, 1u), true, -5613i, vec3<u32>(35413u, 14649u, 0u)), Struct_1(vec3<u32>(39665u, 23915u, 82300u), true, -39430i, vec3<u32>(75867u, 1u, 49892u)), Struct_1(vec3<u32>(1u, 50900u, 11862u), false, 14141i, vec3<u32>(51113u, 53609u, 1u)), Struct_1(vec3<u32>(9036u, 4294967295u, 1u), false, 32577i, vec3<u32>(5386u, 80494u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 1u), false, -12379i, vec3<u32>(22166u, 48297u, 19178u)), Struct_1(vec3<u32>(2793u, 4294967295u, 0u), false, -11677i, vec3<u32>(30016u, 118255u, 2473u)), Struct_1(vec3<u32>(1u, 4294967295u, 22558u), true, -5089i, vec3<u32>(0u, 1u, 38709u)), Struct_1(vec3<u32>(4294967295u, 1u, 21809u), true, 0i, vec3<u32>(1u, 1u, 40593u)), Struct_1(vec3<u32>(87453u, 114578u, 49548u), false, -31191i, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(26620u, 1u, 23666u), true, 16851i, vec3<u32>(0u, 9773u, 0u)), Struct_1(vec3<u32>(53411u, 76200u, 4294967295u), true, 1i, vec3<u32>(1u, 98939u, 1u)), Struct_1(vec3<u32>(1u, 48677u, 19823u), false, -1i, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(7847u, 0u, 109280u), false, -30958i, vec3<u32>(0u, 7363u, 0u)), Struct_1(vec3<u32>(44130u, 16061u, 0u), true, 28232i, vec3<u32>(51718u, 96473u, 1u)), Struct_1(vec3<u32>(0u, 27815u, 1u), false, -29550i, vec3<u32>(1u, 83261u, 1u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> i32 {
    let var_0 = vec2<i32>(u_input.d.x, i32(-1i) * -2147483647i);
    global0 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-233f)) - -824f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -452f), -1575f)));
    global0 = array<Struct_1, 28>();
    let var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(~(~u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 14112u)))), 28u)];
    return ~0i;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1563f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-124f, -2053f, false)), _wgslsmith_f_op_f32(-841f * 183f), all(vec4<bool>(false, false, true, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2716f - 1000f)))), u_input.c == -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), vec2<i32>(0i, 40934i)))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_add_i32(-23727i, _wgslsmith_div_i32(u_input.c, u_input.d.x >> (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u)));
    let var_3 = Struct_3(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), u_input.c != -287i), select(vec3<bool>(true, true, var_1 < var_1), vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, false)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), true);
    let var_4 = vec4<i32>(max(reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, -1i), vec4<i32>(u_input.d.x, 50195i, u_input.c, u_input.d.x)))), -1i), i32(-1i) * -2147483647i, -select(i32(-1i) * -87572i, select(49362i, -8754i, false), var_3.a.x), func_2() & 16098i);
    return 0i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.x, arg_0.x >> (u_input.b % 32u), max(u_input.d.x, 25891i)), u_input.d), select(vec3<i32>(_wgslsmith_sub_i32(func_2(), min(2147483647i, 15013i)), ~abs(-2147483647i), 2147483647i), vec3<i32>(func_3(), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2019i, arg_0.x, arg_0.x, u_input.d.x), -vec4<i32>(arg_0.x, 40072i, u_input.c, -25179i))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), 67726u > u_input.a.x, true), true)));
    global0 = array<Struct_1, 28>();
    var var_1 = false;
    return Struct_2(_wgslsmith_dot_vec2_i32(reverseBits(abs(vec2<i32>(arg_0.x, 1i))), arg_0) ^ _wgslsmith_add_i32(-arg_0.x, 48938i), Struct_1(u_input.a, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false)), u_input.d.x, u_input.a), global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 28u)], !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.c < u_input.c), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_0.c.d.x, min(19444u, 4294967295u) << (u_input.b % 32u)), arg_0.b.d.x);
    let var_1 = -655f;
    var_0 = ~(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.c.d.x), vec2<u32>(var_0.x, 46921u))));
    var_0 = _wgslsmith_mult_vec2_u32(arg_0.c.a.yx, arg_0.c.a.zx);
    let var_2 = arg_2.a.xy;
    return ~u_input.a;
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_1(firstTrailingBit(vec2<i32>(~9002i, -2147483647i) << (func_1(select(u_input.d.xx, vec2<i32>(-367i, arg_0.c), vec2<bool>(arg_0.b, arg_0.b))).c.d.xy % vec2<u32>(32u)))).b.b;
    let var_1 = u_input.b | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, ~reverseBits(1u), ~_wgslsmith_mod_u32(4294967295u, arg_0.a.x), _wgslsmith_clamp_u32(u_input.a.x, 0u, abs(96391u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 48027u, 48080u) >> (arg_0.a % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, 4294967295u)), ~_wgslsmith_clamp_u32(arg_0.d.x, 31042u, arg_0.a.x), ~0u, max(min(1u, arg_0.a.x), arg_0.d.x)));
    var var_2 = func_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, -arg_0.c), u_input.d.x), abs(1i))).c.b;
    var_2 = func_1(_wgslsmith_div_vec2_i32(u_input.d.yx, -firstTrailingBit(~vec2<i32>(u_input.d.x, 9334i)))).c.b;
    let var_3 = false;
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(26117i, -2147483647i, arg_0.c, 1i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_0.c, -2147483647i, arg_0.c, arg_0.c)), -vec4<i32>(arg_0.c, arg_0.c, -2147483647i, 1i), vec4<i32>(u_input.c, arg_0.c, -23591i, 2147483647i))), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(-14194i, -23155i, 2147483647i, 2147483647i)), vec4<i32>(arg_0.c, -1i, 2147483647i, u_input.c)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-19558i, -2147483647i, -6001i, -2364i), vec4<i32>(arg_0.c, -49557i, arg_0.c, 0i), -vec4<i32>(-10340i, u_input.d.x, arg_0.c, 36724i)), ~vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, arg_0.c))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(33396u, u_input.a.x >> (35301u % 32u), 71597u), vec3<u32>(var_1, var_1, var_1)), max(~1u, func_4(func_1(vec2<i32>(arg_0.c, 1i)), true, Struct_3(vec3<bool>(true, var_3, var_3), true), vec2<i32>(-2147483647i, -1i)).x), _wgslsmith_sub_u32(927u, 1u), ~arg_0.a.x) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(~u_input.b, 0u >> (u_input.b % 32u), u_input.b)), -u_input.d.x < u_input.d.x, -u_input.d.x, ~func_4(func_1(u_input.d.xy), true, Struct_3(vec3<bool>(false, true, true), true), vec2<i32>(11110i, u_input.d.x))));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(func_1(vec2<i32>(u_input.d.x, -1i)).c.a.x, ~u_input.a.x), u_input.b, ~_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, false, true)), u_input.a), 10294u));
}

