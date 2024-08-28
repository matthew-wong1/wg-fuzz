struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: f32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<u32, 18> = array<u32, 18>(1u, 0u, 24100u, 43689u, 42032u, 0u, 4294967295u, 4294967295u, 41897u, 4294967295u, 46020u, 1u, 36482u, 1u, 1u, 68142u, 87494u, 9258u);

var<private> global2: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false));

var<private> global3: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(1000f, 1000f, -2062f), vec3<f32>(-760f, 1238f, -1000f), vec3<f32>(-634f, -323f, -240f), vec3<f32>(283f, -2141f, 943f), vec3<f32>(-1000f, -118f, -2240f), vec3<f32>(276f, 554f, 1000f), vec3<f32>(362f, -396f, 387f), vec3<f32>(-429f, -523f, 2051f), vec3<f32>(303f, -2156f, -570f), vec3<f32>(517f, -1304f, 593f), vec3<f32>(414f, -880f, -1413f), vec3<f32>(715f, 583f, 1317f), vec3<f32>(-1892f, 100f, -441f), vec3<f32>(-1348f, 234f, -234f), vec3<f32>(597f, 466f, 1468f), vec3<f32>(809f, -500f, -184f), vec3<f32>(533f, 1000f, -875f), vec3<f32>(2209f, -1020f, 671f), vec3<f32>(-2380f, 581f, 1000f), vec3<f32>(977f, 895f, -1748f), vec3<f32>(708f, 1585f, -169f), vec3<f32>(-344f, 176f, 334f), vec3<f32>(-298f, 317f, -780f), vec3<f32>(-125f, -286f, -284f), vec3<f32>(1354f, -504f, -488f), vec3<f32>(629f, -763f, 1000f), vec3<f32>(1120f, -333f, -1285f), vec3<f32>(2409f, 473f, 335f), vec3<f32>(-1386f, 498f, -675f), vec3<f32>(341f, -1054f, 207f), vec3<f32>(1220f, -239f, -1224f), vec3<f32>(1051f, 2286f, 1609f));

var<private> global4: array<u32, 17> = array<u32, 17>(0u, 4294967295u, 1u, 0u, 12870u, 22602u, 0u, 1u, 45603u, 82420u, 2795u, 38042u, 47034u, 0u, 36504u, 1271u, 2558u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(max(arg_1, u_input.a.x), -1i) ^ u_input.b), u_input.a, u_input.c.wz);
    global1 = array<u32, 18>();
    var_0 = -u_input.b;
    let var_1 = u_input.b;
    global3 = array<vec3<f32>, 32>();
    return -485f;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_3(~(u_input.c.yx & u_input.c.xy), !arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(967f * -399f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(385f, 325f)) * _wgslsmith_f_op_f32(sign(468f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-1075f, -642f), -44159i)))));
    let var_1 = true;
    var var_2 = Struct_2(select(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(50029u, 17u)], 52358u, 1u), vec3<u32>(global4[_wgslsmith_index_u32(0u, 17u)], global4[_wgslsmith_index_u32(u_input.d, 17u)], 18455u))), _wgslsmith_sub_u32(31096u, 1u), ~global1[_wgslsmith_index_u32(127523u, 18u)], ~(~4294967295u)), max(firstTrailingBit(~vec4<u32>(global4[_wgslsmith_index_u32(1u, 17u)], 1u, 1u, global1[_wgslsmith_index_u32(20031u, 18u)])), ~(~vec4<u32>(global1[_wgslsmith_index_u32(31478u, 18u)], u_input.d, 1u, 31211u))), !(!(!global2[_wgslsmith_index_u32(0u, 5u)]))), Struct_1(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(28528u, 17u)]), 18u)], 17u)]), Struct_1(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 17u)], 33197u), vec3<u32>(70019u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 18u)], 18u)], u_input.d)), 19927u), 17u)], 17u)] >> (8410u % 32u)));
    let var_3 = 112f;
    var var_4 = 1000f;
    return var_2.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = vec2<u32>(~func_2(arg_1.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.d.c, u_input.d), vec3<u32>(~100401u, 4294967295u, 45286u | global4[_wgslsmith_index_u32(41959u, 17u)])) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 18u)], 1u), vec2<u32>(u_input.d, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.c, 18u)], 17u)])), ~0u, 1u), firstLeadingBit(countOneBits(vec4<u32>(61691u, arg_0.b.c, u_input.d, 1u)))), 18u)]);
    let var_1 = Struct_1(reverseBits(~func_2(global1[_wgslsmith_index_u32(14323u, 18u)] > arg_0.e.a)));
    global0 = array<Struct_3, 16>();
    global3 = array<vec3<f32>, 32>();
    global3 = array<vec3<f32>, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(580f)), _wgslsmith_f_op_f32(f32(-1f) * -660f), arg_1.x))))));
}

fn func_4(arg_0: f32, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_3(-(u_input.c.xy & vec2<i32>(-14019i, max(u_input.a.x, u_input.a.x))), all(vec2<bool>(true, true)), 1649f, global3[_wgslsmith_index_u32(67705u, 32u)]);
    var var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_5(_wgslsmith_f_op_vec2_f32(trunc(var_0.d.yz)), Struct_4(var_0.d.x, -1855f, 4294967295u), arg_0, Struct_4(-950f, arg_1, 4294967295u), Struct_1(global1[_wgslsmith_index_u32(0u, 18u)])), vec3<bool>(select(var_0.b, true, var_0.b), !var_0.b, any(global2[_wgslsmith_index_u32(u_input.d, 5u)])), -u_input.b.x, _wgslsmith_f_op_f32(-var_0.c))), 1f), Struct_4(arg_1, -539f, ~30848u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0, arg_0)))))), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f), -809f), var_0.d.x, u_input.d), Struct_1(global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.d), 17u)]));
    global1 = array<u32, 18>();
    var var_2 = min(~0u, _wgslsmith_clamp_u32(0u, func_2(true), abs(_wgslsmith_clamp_u32(var_1.b.c, 98240u, 3130u)))) == _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_1.e.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 93718u, 0u), vec3<u32>(var_1.e.a, 0u, 45843u)) % 32u), ~1u, 1u), _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(var_1.b.c, ~32456u)));
    let var_3 = !var_0.b;
    return ~(~(vec4<u32>(26658u, ~var_1.b.c, abs(4294967295u), _wgslsmith_mod_u32(26926u, global4[_wgslsmith_index_u32(1u, 17u)])) ^ ((vec4<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.e.a, 17u)], 18u)], 4294967295u, global1[_wgslsmith_index_u32(var_1.b.c, 18u)], global1[_wgslsmith_index_u32(var_1.b.c, 18u)]) & vec4<u32>(50202u, 0u, u_input.d, 22041u)) >> (firstTrailingBit(vec4<u32>(29544u, var_1.b.c, u_input.d, global1[_wgslsmith_index_u32(12019u, 18u)])) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 16>();
    var var_0 = vec4<i32>(1i, 2147483647i, _wgslsmith_clamp_i32(-2284i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, 2147483647i), vec4<i32>(1i, u_input.b.x, -4633i, -60343i) | u_input.c), u_input.c.x & (i32(-1i) * -2147483647i)), abs(-u_input.a.x) ^ u_input.a.x);
    var var_1 = _wgslsmith_sub_vec4_u32(reverseBits(~(vec4<u32>(u_input.d, 0u, global1[_wgslsmith_index_u32(65042u, 18u)], u_input.d) & ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], u_input.d, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 17u)], 18u)], 14351u))), abs(vec4<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(59568u, 18u)]), ~58050u, global1[_wgslsmith_index_u32(u_input.d << (20518u % 32u), 18u)], ~36833u)) & func_4(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(vec2<f32>(234f, 1138f), Struct_4(-998f, -1380f, u_input.d), -1000f, Struct_4(1108f, 221f, 4294967295u), Struct_1(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 17u)], 17u)])), vec3<bool>(false, true, false), 1i, 595f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(var_1.yxx, var_1.wyz), 1635u));
}

