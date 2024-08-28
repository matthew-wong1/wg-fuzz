struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u), Struct_1(vec2<i32>(-19495i, -41804i), 22420u), Struct_1(vec2<i32>(10753i, -59327i), 263u), Struct_1(vec2<i32>(2147483647i, -1i), 11245u), Struct_1(vec2<i32>(915i, 51673i), 0u), Struct_1(vec2<i32>(11656i, i32(-2147483648)), 1998u), Struct_1(vec2<i32>(1i, 29944i), 0u), Struct_1(vec2<i32>(2147483647i, -56441i), 0u), Struct_1(vec2<i32>(-1i, -1i), 0u), Struct_1(vec2<i32>(16606i, 2048i), 0u), Struct_1(vec2<i32>(0i, -25927i), 8953u), Struct_1(vec2<i32>(-42151i, i32(-2147483648)), 0u));

var<private> global1: vec4<u32> = vec4<u32>(38822u, 1u, 0u, 4294967295u);

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(47976u, 1u), vec2<u32>(50202u, 4294967295u), vec2<u32>(30996u, 4488u), vec2<u32>(0u, 1u), vec2<u32>(46425u, 29400u), vec2<u32>(0u, 54660u), vec2<u32>(39141u, 4294967295u), vec2<u32>(41909u, 40065u), vec2<u32>(83159u, 49187u), vec2<u32>(1u, 28757u), vec2<u32>(1u, 13680u));

var<private> global3: u32 = 0u;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(vec2<i32>(22593i, i32(-1i) * -38778i), 69963u);
    global3 = _wgslsmith_clamp_u32(~16845u, abs(~var_0.b), firstTrailingBit(global4.b));
    var var_1 = vec2<i32>(-1i, abs(var_0.a.x));
    var_1 = vec2<i32>(var_0.a.x, 15907i);
    global0 = array<Struct_1, 12>();
    return -firstLeadingBit(u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<i32> {
    global1 = vec4<u32>(global4.b, abs(4294967295u), 11553u, global4.b << (_wgslsmith_clamp_u32(5289u, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_clamp_u32(7602u, global4.b, global1.x)), ~(~global1.x)) % 32u));
    global2 = array<vec2<u32>, 11>();
    global3 = min(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(global1.wyz, u_input.e.wwy), max(vec3<u32>(1u, arg_2.b, 53697u), vec3<u32>(15660u, 44262u, 26043u))), global4.b), u_input.e.x), ~_wgslsmith_sub_u32(1u, u_input.e.x));
    global4 = Struct_1(~arg_0.a, _wgslsmith_mult_u32(1u, ~select(_wgslsmith_mod_u32(arg_0.b, arg_2.b), global1.x, select(false, true, false))));
    global3 = min(~u_input.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(16414u, arg_0.b, arg_0.b, u_input.c.x), u_input.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(arg_0.b, 4294967295u, arg_1.b))) % 32u), abs(abs(~1u)));
    return abs(~vec4<i32>(-global4.a.x, _wgslsmith_mult_i32(-2147483647i, arg_0.a.x), arg_0.a.x, -1i | arg_0.a.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, ~9293u, 4294967295u), global4.b), 12u)];
    let var_1 = i32(-1i) * -27372i;
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    global0 = array<Struct_1, 12>();
    global2 = array<vec2<u32>, 11>();
    return 4294967295u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(arg_1.a, -vec2<i32>(-54436i, 2147483647i));
    global4 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a, global4.a), vec2<i32>(arg_1.a.x << (u_input.c.x % 32u), global4.a.x))), func_5(vec2<f32>(1f, -581f), func_4(Struct_1(func_3(), ~arg_1.b), arg_1, arg_1, _wgslsmith_add_vec4_i32(vec4<i32>(49345i, var_0.x, global4.a.x, 1i), ~vec4<i32>(-1i, 41933i, arg_1.a.x, global4.a.x)))));
    var var_1 = !(_wgslsmith_f_op_f32(max(-1775f, _wgslsmith_f_op_f32(f32(-1f) * -373f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-175f)), _wgslsmith_f_op_f32(select(1000f, -819f, true)), true)))));
    let var_2 = Struct_1(var_0, _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(31638u | ~u_input.e.x, ~34950u)));
    global1 = ~abs(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global1.x, 51464u, arg_1.b), vec4<u32>(global4.b, 76701u, 1u, global1.x)), ~select(vec4<u32>(72935u, global4.b, arg_1.b, 4294967295u), vec4<u32>(var_2.b, 1u, var_2.b, global1.x), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec4<bool>(false, true, false, false)), true, 1u <= global4.b, false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(-340f + -1234f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1478f - _wgslsmith_f_op_f32(func_2(vec3<i32>(21726i, 2147483647i, 33696i), Struct_1(global4.a, 4294967295u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(109f))))))));
    global1 = u_input.e | ~firstTrailingBit(u_input.e);
    global3 = ~global1.x;
    global3 = ~32787u;
    let var_1 = Struct_1(u_input.b, ~(~(~abs(global4.b))));
    return all(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -434f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-210f, -1352f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(858f, -1546f))))));
    var var_1 = vec3<i32>(~(-2147483647i), -abs(-global4.a.x), u_input.a);
    var var_2 = !select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, func_1(Struct_1(global4.a, 4294967295u), vec4<i32>(global4.a.x, 16042i, global4.a.x, var_1.x), global0[_wgslsmith_index_u32(global1.x, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), func_1(Struct_1(global4.a, 4980u), vec4<i32>(var_1.x, 22268i, -87443i, var_1.x), Struct_1(u_input.b, 1u), global0[_wgslsmith_index_u32(global4.b, 12u)])), !all(vec3<bool>(false, false, true))), vec4<bool>(any(vec3<bool>(true, true, true)), false, u_input.e.x <= abs(global4.b), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_1(Struct_1(vec2<i32>(var_1.x, 28635i), global1.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, var_1.x), Struct_1(vec2<i32>(u_input.b.x, -6593i), 15005u), global0[_wgslsmith_index_u32(1u, 12u)]), true), vec4<bool>(u_input.a == -2389i, select(false, false, true), any(vec3<bool>(false, false, false)), func_1(global0[_wgslsmith_index_u32(global4.b, 12u)], vec4<i32>(var_1.x, 2147483647i, global4.a.x, -9546i), Struct_1(vec2<i32>(428i, u_input.a), 1u), Struct_1(vec2<i32>(16957i, -32751i), u_input.d)))));
    global3 = ~(~(_wgslsmith_clamp_u32(countOneBits(u_input.d), _wgslsmith_sub_u32(u_input.e.x, 0u), _wgslsmith_mod_u32(global4.b, 0u)) & ~(~4294967295u)));
    global3 = ~countOneBits(1u);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1517u, _wgslsmith_div_u32(_wgslsmith_mult_u32(93335u, 18209u), global1.x & 19345u)), global4.b ^ 50223u), 94418u), 12u)];
    let var_4 = global0[_wgslsmith_index_u32(51950u, 12u)];
    global1 = _wgslsmith_add_vec4_u32(~u_input.e, countOneBits(vec4<u32>(_wgslsmith_div_u32(37207u, var_4.b), 45049u, ~var_3.b, _wgslsmith_sub_u32(10803u, u_input.c.x))) >> (max(firstLeadingBit(u_input.e), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(10406u, u_input.c.x, 6277u, var_4.b)), firstLeadingBit(vec4<u32>(0u, 4294967295u, global4.b, 17144u)), ~vec4<u32>(1u, 4294967295u, 0u, 63635u))) % vec4<u32>(32u)));
    var var_5 = global0[_wgslsmith_index_u32(1u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1000f)), _wgslsmith_f_op_f32(func_2(vec3<i32>(-36872i, -72i, var_1.x), Struct_1(u_input.b, global4.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))), -930f);
}

