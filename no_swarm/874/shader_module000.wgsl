struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(8932u, 0u);

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(1u, 19939u), vec2<u32>(4294967295u, 75126u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 44132u), vec2<u32>(0u, 53728u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 50530u), vec2<u32>(7996u, 4294967295u), vec2<u32>(20665u, 1u), vec2<u32>(36101u, 4294967295u), vec2<u32>(9595u, 4294967295u), vec2<u32>(1122u, 4294967295u), vec2<u32>(71255u, 94667u), vec2<u32>(34673u, 4294967295u), vec2<u32>(4294967295u, 57463u), vec2<u32>(53976u, 0u), vec2<u32>(12974u, 1u), vec2<u32>(41615u, 5483u), vec2<u32>(71650u, 68945u), vec2<u32>(2084u, 68001u), vec2<u32>(10857u, 1u), vec2<u32>(0u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = vec4<bool>(true, !arg_0, max(-(arg_1 & -2147483647i), arg_1) == 1i, arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-520f, -520f, -523f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, -207f, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1494f, 699f, -249f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -504f, -1432f) * vec3<f32>(810f, -1108f, 170f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1631f, 1000f, -621f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(207f, -513f, -1040f)))))));
    let var_2 = var_1.x;
    let var_3 = vec2<bool>(var_0.x && any(var_0), !all(vec4<bool>(false, global0.x > 40185u, all(vec3<bool>(false, arg_0, var_0.x)), true)));
    var var_4 = global0.x;
    return -u_input.a & 46361i;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_2(true, reverseBits(func_3(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), ~_wgslsmith_mult_i32(9619i, 15556i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1552f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1858f * 1997f) + _wgslsmith_f_op_f32(f32(-1f) * -503f))))), (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 27340u), _wgslsmith_sub_vec2_u32(arg_0, global1[_wgslsmith_index_u32(global0.x, 22u)])) ^ ~vec2<u32>(21863u, 1u)) & vec2<u32>(countOneBits(4294967295u) >> ((global0.x & global0.x) % 32u), _wgslsmith_div_u32(~arg_0.x, arg_0.x)), !(-521f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-460f))))));
    let var_1 = ~(1u >> (_wgslsmith_mod_u32(firstLeadingBit(var_0.d.x), 30964u) % 32u));
    return !any(select(vec2<bool>(var_0.e, var_0.e), vec2<bool>(all(vec2<bool>(var_0.a, false)), !var_0.e), select(select(vec2<bool>(var_0.e, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false)), vec2<bool>(true, true), true)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_1(185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -401f) + 899f), vec2<f32>(-886f, 2605f), !arg_0, _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(global0.x, global0.x, 108224u, global0.x)), countOneBits(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.x, 16431u, 4294967295u, global0.x)), abs(vec4<u32>(42421u, global0.x, global0.x, 20849u))))));
    let var_1 = Struct_2(arg_0, min(min(-18341i, u_input.a), ~2147483647i), _wgslsmith_f_op_f32(-var_0.c.x), vec2<u32>(~var_0.e.x, 43616u), all(!vec2<bool>(true, any(vec2<bool>(true, false)))));
    let var_2 = vec2<i32>(u_input.a, var_1.b);
    global0 = abs(select(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.e.yyx, ~var_0.e.yyz), 22u)], ~firstTrailingBit(vec2<u32>(var_1.d.x, var_1.d.x)), vec2<bool>(var_0.d, true)));
    var var_3 = false && (var_2.x == firstTrailingBit(abs(arg_1.x ^ -32141i)));
    return var_1.e;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    global1 = array<vec2<u32>, 22>();
    var var_0 = Struct_4(_wgslsmith_div_i32(u_input.a, u_input.a), vec4<bool>(false, false, func_4(func_2(abs(global1[_wgslsmith_index_u32(global0.x, 22u)])), firstTrailingBit(countOneBits(vec2<i32>(u_input.a, -1i)))), arg_1), !arg_1, 23231i);
    let var_1 = firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec4_u32(min(vec4<u32>(global0.x, global0.x, global0.x, 10488u), vec4<u32>(global0.x, global0.x, 1u, global0.x)), vec4<u32>(global0.x, 78241u, 1799u, global0.x)) ^ vec4<u32>(4294967295u, global0.x << (global0.x % 32u), ~global0.x, global0.x)));
    global1 = array<vec2<u32>, 22>();
    global1 = array<vec2<u32>, 22>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.yz + arg_0.yy))), false, ~abs(var_1) | max(var_1, abs(~var_1)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec2<u32>, 22>();
    global0 = vec2<u32>(select(abs(~arg_1.e.x), ~global0.x, true & select(arg_1.d, true, arg_0.x)), 20428u) >> (vec2<u32>(_wgslsmith_div_u32(~(~4294967295u), 89698u), min(arg_1.e.x, ~global0.x)) % vec2<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var var_1 = arg_1.d;
    var var_2 = Struct_2(func_4(all(select(select(arg_0.wx, vec2<bool>(arg_1.d, arg_1.d), arg_0.ww), vec2<bool>(arg_1.d, arg_1.d), arg_0.zy)), vec2<i32>(~u_input.a, -u_input.a)), -1i, _wgslsmith_div_f32(897f, _wgslsmith_f_op_f32(-arg_1.a)), ~select(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(global0.x, 22u)], vec2<u32>(global0.x, arg_1.e.x)), vec2<u32>(arg_1.e.x, 69960u), true) << (global1[_wgslsmith_index_u32(0u, 22u)] % vec2<u32>(32u)), true);
    return Struct_3(Struct_1(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-arg_1.a))), !var_2.a, vec4<u32>(13938u, firstLeadingBit(23879u), firstTrailingBit(0u) | 0u, _wgslsmith_sub_u32(~arg_1.e.x, ~40857u))), arg_1);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> u32 {
    global0 = vec2<u32>(~reverseBits(53595u), ~abs(~countOneBits(arg_3.d.x)));
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, arg_2, arg_2))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1864f, arg_3.c, arg_2) * vec3<f32>(arg_3.c, arg_0.b.c.x, 721f)), vec3<f32>(arg_0.a.c.x, arg_0.a.c.x, 156f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, arg_3.c, -585f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-arg_2)))) >= -1666f);
    let var_1 = select(vec3<bool>(false, !arg_3.e, all(select(vec4<bool>(true, false, arg_0.a.d, false), !vec4<bool>(arg_3.a, var_0.d, false, arg_3.e), vec4<bool>(arg_3.e, false, arg_3.e, false)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!vec3<bool>(arg_0.b.d, true, false), select(vec3<bool>(false, true, false), vec3<bool>(var_0.d, arg_3.e, arg_3.a), vec3<bool>(true, false, var_0.d)), var_0.d && true)), arg_0.a.d || !arg_3.a);
    return firstLeadingBit(~(~3937u & ((arg_1 & 69005u) << (~arg_0.a.e.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 10859u >> ((global0.x ^ func_6(func_5(vec4<bool>(true, true, true, true), func_1(vec3<f32>(-815f, -580f, 947f), true)), 32618u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(ceil(-2175f)))), Struct_2(false, _wgslsmith_div_i32(u_input.a, 13413i), _wgslsmith_f_op_f32(ceil(359f)), global1[_wgslsmith_index_u32(0u, 22u)] | global1[_wgslsmith_index_u32(global0.x, 22u)], true))) % 32u);
    let var_1 = -2147483647i;
    var var_2 = 862f;
    var var_3 = func_5(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, func_2(global1[_wgslsmith_index_u32(global0.x, 22u)]), func_4(true, vec2<i32>(u_input.a, var_1)), var_1 < 0i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1923f, _wgslsmith_f_op_f32(f32(-1f) * -1078f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(432f, -244f, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -778f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1045f, 615f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(448f, -551f) + vec2<f32>(1000f, 1118f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-874f, 631f), vec2<f32>(-384f, 924f))))), func_2(firstLeadingBit(vec2<u32>(var_0, 71440u))), vec4<u32>(global0.x, 1u, _wgslsmith_clamp_u32(4294967295u, global0.x, 6055u ^ var_0), min(_wgslsmith_mod_u32(0u, 1u), 46320u))));
    var var_4 = Struct_2(var_3.b.d, ~(~reverseBits(-21172i)), var_3.b.a, _wgslsmith_mult_vec2_u32(~var_3.a.e.wy, vec2<u32>(_wgslsmith_div_u32(var_0, 4294967295u), var_3.b.e.x)) | ~_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, var_3.b.e.x), global1[_wgslsmith_index_u32(func_6(Struct_3(Struct_1(117f, -991f, vec2<f32>(var_3.b.b, 588f), var_3.b.d, vec4<u32>(global0.x, 3230u, global0.x, 4294967295u)), Struct_1(var_3.a.b, 1487f, vec2<f32>(-769f, var_3.a.a), var_3.a.d, var_3.b.e)), var_3.b.e.x, -1207f, Struct_2(false, 23477i, -328f, var_3.a.e.yx, var_3.b.d)), 22u)]), false == var_3.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.e.zx, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -48394i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_4.b, 35095i, 1i), vec3<i32>(34606i, -1i, var_1), vec3<i32>(var_1, 15289i, 48914i))) >> (vec3<u32>(_wgslsmith_mod_u32(0u, var_0), 73029u, min(var_3.b.e.x, 27202u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, var_4.c, var_4.c)) * vec3<f32>(-459f, var_3.a.a, var_3.b.c.x))))));
}

