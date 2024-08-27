struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(33063i, 0i, -38996i, -1i, 14142i, -1i, -73122i, -1996i, 36766i, -42757i, i32(-2147483648), 2147483647i, -10728i, 0i, -4675i, 2147483647i, 1i, 31117i);

var<private> global1: u32 = 47627u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    global0 = array<i32, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(198f, 1398f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 677f), vec2<f32>(-1000f, -648f), false)))))) * vec2<f32>(1f, 1f));
    let var_1 = true;
    global0 = array<i32, 18>();
    var var_2 = u_input.a.x;
    return var_0.x;
}

fn func_3() -> bool {
    var var_0 = ~4294967295u;
    let var_1 = select(-abs(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(2384u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 1i, 2147483647i)), vec4<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), vec4<u32>(4294967295u, 1u, 92535u, u_input.a.x)), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), 18u)], 2147483647i, -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(79557u, 18u)], u_input.b.x)), true);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, 273f) + vec2<f32>(-930f, -317f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(2147483647i, 11824i, 29718i, u_input.e), 56503i)), _wgslsmith_f_op_f32(119f + -132f))))));
    let var_4 = ~(-1i | global0[_wgslsmith_index_u32(~57953u, 18u)]);
    return -25208i == reverseBits(var_4);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = !func_3() || func_3();
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-517f, 909f, 896f, -1010f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-194f, 723f, 249f, -1000f), vec4<f32>(-1261f, -1205f, -455f, -1478f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(836f, 740f, -691f, -128f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, 1162f, 781f, 530f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1323f)) + _wgslsmith_f_op_f32(-549f - 1666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f - 484f) * _wgslsmith_f_op_f32(-884f - 382f)), _wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(904f - -299f))));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 0i) ^ u_input.b), firstTrailingBit(select(u_input.b, -vec2<i32>(-2147483647i, 2147483647i), select(vec2<bool>(true, false), vec2<bool>(true, true), var_0)))), arg_0);
    var_2 = vec2<i32>(26243i, _wgslsmith_add_i32(~(~(29049i ^ u_input.e)), arg_0));
    var var_3 = countOneBits(u_input.a.zww << (vec3<u32>(_wgslsmith_clamp_u32(4294967295u, abs(1u), ~89330u), firstLeadingBit(0u << (u_input.d % 32u)), abs(u_input.a.x) ^ 0u) % vec3<u32>(32u)));
    return vec4<i32>(9478i, _wgslsmith_div_i32(-arg_0, -abs(-u_input.c)), arg_0, i32(-1i) * -1i);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = 22086i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1234f, _wgslsmith_f_op_f32(floor(841f)), -499f, -112f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(237f, 1000f, 2190f, -535f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, 162f, arg_0.x) - vec4<f32>(-1080f, arg_0.x, arg_0.x, arg_0.x)))))));
    let var_2 = var_1;
    global0 = array<i32, 18>();
    let var_3 = var_1;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-230f, 729f))), -223f, _wgslsmith_div_f32(1130f, 3188f), _wgslsmith_f_op_f32(func_1(~vec4<i32>(global0[_wgslsmith_index_u32(365u, 18u)], global0[_wgslsmith_index_u32(u_input.d, 18u)], 0i, u_input.c), 0i)))));
    global1 = u_input.a.x;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.zx, vec2<f32>(415f, -203f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a.yz))))), ~func_2(global0[_wgslsmith_index_u32(4294967295u, 18u)]));
    global1 = firstTrailingBit(_wgslsmith_dot_vec4_u32(countOneBits(~u_input.a), _wgslsmith_div_vec4_u32(u_input.a, ~(~u_input.a))));
    let var_2 = vec3<u32>(u_input.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.xxz), firstTrailingBit(u_input.a.x)), ~15611u), u_input.a.x) & ((max(select(u_input.a.wzw, u_input.a.zzz, false), ~u_input.a.wwz) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(25973u, u_input.d, u_input.d), reverseBits(u_input.a.xyw), u_input.a.zwz) % vec3<u32>(32u))) & select(firstTrailingBit(vec3<u32>(u_input.d, u_input.d, u_input.d)), u_input.a.xzx, !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 18u)] | global0[_wgslsmith_index_u32(~var_2.x, 18u)], max(-1i, 41921i), global0[_wgslsmith_index_u32(47020u, 18u)]), -u_input.e);
}

