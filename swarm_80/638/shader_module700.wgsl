struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(1521f, -245f, -521f)), 4294967295u, false);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec3<f32>(-1903f, -563f, -169f)), 1218u, true), Struct_2(Struct_1(vec3<f32>(432f, -227f, -754f)), 38036u, false), Struct_2(Struct_1(vec3<f32>(-934f, 692f, 195f)), 4294967295u, true), Struct_2(Struct_1(vec3<f32>(-979f, 471f, -993f)), 1u, false), Struct_2(Struct_1(vec3<f32>(1764f, 476f, 270f)), 0u, false), Struct_2(Struct_1(vec3<f32>(-1008f, 126f, -2085f)), 1707u, true), Struct_2(Struct_1(vec3<f32>(1093f, 1000f, 1409f)), 14397u, false), Struct_2(Struct_1(vec3<f32>(-644f, 339f, 691f)), 6347u, false), Struct_2(Struct_1(vec3<f32>(437f, -859f, 2628f)), 4294967295u, false), Struct_2(Struct_1(vec3<f32>(1584f, 1326f, -1385f)), 4294967295u, false), Struct_2(Struct_1(vec3<f32>(955f, 283f, -982f)), 0u, false), Struct_2(Struct_1(vec3<f32>(-2430f, 241f, -1000f)), 1u, false), Struct_2(Struct_1(vec3<f32>(1000f, -1805f, 991f)), 0u, false), Struct_2(Struct_1(vec3<f32>(-180f, -143f, 402f)), 0u, true), Struct_2(Struct_1(vec3<f32>(-624f, 1124f, 2251f)), 89589u, true), Struct_2(Struct_1(vec3<f32>(289f, -812f, 484f)), 17608u, true), Struct_2(Struct_1(vec3<f32>(425f, 347f, -591f)), 54010u, true), Struct_2(Struct_1(vec3<f32>(872f, 366f, 1000f)), 1216u, true), Struct_2(Struct_1(vec3<f32>(125f, 533f, -1626f)), 37339u, false), Struct_2(Struct_1(vec3<f32>(1677f, 118f, -2178f)), 0u, true), Struct_2(Struct_1(vec3<f32>(-1000f, 847f, 1000f)), 33493u, true), Struct_2(Struct_1(vec3<f32>(630f, 478f, -336f)), 4294967295u, false), Struct_2(Struct_1(vec3<f32>(-2266f, 481f, 1472f)), 61386u, false), Struct_2(Struct_1(vec3<f32>(401f, -252f, 267f)), 0u, true), Struct_2(Struct_1(vec3<f32>(-1000f, -1000f, -1550f)), 1u, true), Struct_2(Struct_1(vec3<f32>(-2159f, 204f, 1138f)), 42876u, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = Struct_2(global0.a, ~(~reverseBits(global0.b)), true);
    global0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), global0.a.a.x, -1923f)), reverseBits(countOneBits(~_wgslsmith_sub_u32(u_input.d, 549u))), all(select(!vec4<bool>(global0.c, global0.c, global0.c, false), vec4<bool>(global0.c, true, global0.c, global0.c), true)) || false);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))))) + global0.a.a.x);
    var var_1 = var_0;
    global0 = global1[_wgslsmith_index_u32(global0.b, 26u)];
    return Struct_3(vec2<u32>(~firstLeadingBit(1341u) << (global0.b % 32u), _wgslsmith_sub_u32(~(~global0.b), u_input.c)), Struct_1(global0.a.a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> f32 {
    global0 = Struct_2(Struct_1(arg_1), _wgslsmith_sub_u32(u_input.d, 0u), !select((global0.c | true) & all(vec2<bool>(global0.c, global0.c)), _wgslsmith_f_op_f32(-arg_1.x) <= -1000f, (u_input.a.x < -2429i) || (global0.c != global0.c)));
    global0 = Struct_2(global0.a, ~firstTrailingBit(1u), global0.c);
    let var_0 = func_2(u_input.b.x);
    var var_1 = firstTrailingBit(~_wgslsmith_add_u32(~5472u, ~(u_input.c & 46782u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(1352f * global0.a.a.x))) * _wgslsmith_div_f32(-1648f, arg_2)) != arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) - -1700f))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_2(~u_input.a.x | (u_input.a.x | (u_input.b.x >> (~global0.b % 32u))));
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(-(u_input.b.xwz ^ u_input.b.yyx), ~u_input.b.yzw << (~vec3<u32>(u_input.c, u_input.c, 63456u) % vec3<u32>(32u)))) >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.a.x, 4558u, u_input.d), ~vec3<u32>(14432u, 1u, arg_0.a.x)), ~(~vec3<u32>(4294967295u, 28654u, 4294967295u)))) % 32u);
    var var_2 = func_2(abs(_wgslsmith_sub_i32(u_input.b.x, -u_input.b.x)));
    var var_3 = vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + _wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x - 852f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(global0.a.a.x, -1053f, -230f, 871f), vec3<f32>(arg_1, 616f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1199f), ~u_input.c)) + -986f)), _wgslsmith_f_op_f32(-280f * _wgslsmith_f_op_f32(-1000f - global0.a.a.x)), -471f);
    global1 = array<Struct_2, 26>();
    return ~2563u;
}

fn func_1(arg_0: i32) -> u32 {
    global0 = global1[_wgslsmith_index_u32(~func_4(func_2(1i), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, -685f, global0.a.a.x, -614f)), _wgslsmith_f_op_vec3_f32(global0.a.a - global0.a.a), _wgslsmith_f_op_f32(-311f - global0.a.a.x), u_input.d)), firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, 0i) | u_input.b.zwz)) << (u_input.c % 32u), 26u)];
    global1 = array<Struct_2, 26>();
    let var_0 = vec4<u32>(func_2(36665i).a.x, ~(~_wgslsmith_sub_u32(34234u, global0.b | u_input.d)), 54654u, global0.b);
    let var_1 = Struct_2(func_2(1i).b, firstTrailingBit(~var_0.x), false);
    let var_2 = func_2(-20206i);
    return _wgslsmith_add_u32(67566u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_0.x, 0u, 24897u, var_0.x)), var_0 << (var_0 % vec4<u32>(32u))), firstTrailingBit(global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(43089u, 20568u, global0.b), vec3<u32>(u_input.c, u_input.c, global0.b)), ~select(vec3<u32>(global0.b, 18710u, 39395u), vec3<u32>(4294967295u, 9046u, 5224u), vec3<bool>(global0.c, true, global0.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(78803u, global0.b, u_input.d), ~vec3<u32>(u_input.d, 22294u, 4294967295u)), abs(vec3<u32>(42903u, 37021u, 1u) >> (vec3<u32>(79805u, u_input.c, u_input.c) % vec3<u32>(32u)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a)) * _wgslsmith_f_op_vec3_f32(floor(global0.a.a)))), 70369u, ((global0.b ^ (u_input.d >> (4294967295u % 32u))) & abs(4233u ^ u_input.d)) >= global0.b);
    let var_2 = func_1(u_input.a.x);
    global0 = global1[_wgslsmith_index_u32(var_0.x, 26u)];
    var_1 = Struct_2(var_1.a, global0.b, global0.c);
    let var_3 = var_1.a.a.x;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a.a - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.a.x, -238f, -306f), global0.a.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-586f, global0.a.a.x, var_1.a.a.x) - vec3<f32>(1562f, var_1.a.a.x, global0.a.a.x))))), reverseBits(~(~_wgslsmith_clamp_u32(4294967295u, 0u, var_2))), !var_1.c);
    var_1 = global1[_wgslsmith_index_u32(var_1.b, 26u)];
    var var_5 = vec2<i32>(_wgslsmith_div_i32(-34463i, ~u_input.a.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, -vec3<i32>(select(_wgslsmith_clamp_i32(0i, var_5.x, u_input.a.x), var_5.x, any(vec4<bool>(var_4.c, true, global0.c, true))), u_input.a.x, var_5.x), _wgslsmith_clamp_vec3_u32(~(~firstTrailingBit(vec3<u32>(var_2, 17710u, var_2))), var_0, ~var_0), vec2<i32>(_wgslsmith_mod_i32(var_5.x, firstTrailingBit(-u_input.b.x)), 5428i), _wgslsmith_add_u32(~9185u, _wgslsmith_div_u32(var_4.b, ~var_0.x) >> (4294967295u % 32u)));
}

