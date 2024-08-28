struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 3>;

var<private> global3: Struct_1 = Struct_1(38890u, vec3<u32>(1u, 52779u, 34620u), false, vec2<u32>(0u, 4294967295u), vec4<bool>(false, true, true, false));

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool) -> u32 {
    global3 = Struct_1(global1.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global3.d.x ^ u_input.d.x, 4294967295u), 4294967295u, 0u), u_input.d, ~_wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.d), vec3<u32>(global1.x, global1.x, global1.x) & global4.www)), true, vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.b.x, global4.x, 2426u), countOneBits(vec4<u32>(106360u, u_input.d.x, 100529u, 57284u)))), 9231u | _wgslsmith_mult_u32(global3.a & 32079u, select(28162u, 0u, global3.c))), !select(select(global3.e, select(global3.e, global3.e, vec4<bool>(global3.e.x, false, global3.e.x, true)), true), global3.e, vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(38545u, 20435u)), 3u)], !global3.e.x, !global2[_wgslsmith_index_u32(u_input.d.x, 3u)], !global3.c)));
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~u_input.d.x), ~_wgslsmith_mod_u32(110861u, 4294967295u), global4.x << (0u % 32u)) | ~0u, 28u)];
    global3 = var_0.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-316f))) + -193f)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 28u)];
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    global4 = arg_1;
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(101631u, 1u, 4406u), vec3<u32>(arg_0.a, 9615u, global4.x)), _wgslsmith_mod_u32(global3.d.x, global4.x), _wgslsmith_div_u32(4294967295u, u_input.d.x)), abs(firstTrailingBit(_wgslsmith_div_vec3_u32(global4.wzw, vec3<u32>(699u, global4.x, 4294967295u))))), ~(~vec3<u32>(116402u, global4.x, global4.x)) >> (((select(vec3<u32>(45234u, global3.d.x, 61522u), arg_1.xwz, true) | vec3<u32>(arg_1.x, 23754u, global3.a)) ^ vec3<u32>(arg_0.a | 22754u, ~arg_1.x, global4.x)) % vec3<u32>(32u)));
    return _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(func_2(true) | global4.x), _wgslsmith_sub_u32(~func_2(global2[_wgslsmith_index_u32(global4.x, 3u)]), ~_wgslsmith_mult_u32(arg_1.x, 0u)), 61654u, 4294967295u), max(~arg_1, vec4<u32>(4294967295u, global4.x & global4.x, 4294967295u, reverseBits(arg_1.x) | (arg_1.x << (1u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    global3 = Struct_1(1u, vec3<u32>(~min(_wgslsmith_mod_u32(1u, 1u), ~global4.x), _wgslsmith_add_u32(u_input.d.x, global3.d.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d.x, 22746u, 1u, u_input.d.x)), vec4<u32>(1u, ~global3.b.x, global1.x, global4.x))), false, ~global3.b.yz, !vec4<bool>(!global3.e.x, global3.c, false, (u_input.c > 25349i) | !global3.c));
    var var_0 = ~(~45124u);
    let var_1 = vec4<u32>(~select(_wgslsmith_clamp_u32(~25592u, 41022u, global3.d.x), 15414u, any(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)]))), 55047u, 42351u, _wgslsmith_div_u32(firstTrailingBit(min(0u, u_input.d.x)) ^ ~(~0u), 8797u));
    let var_2 = max(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-5732i, u_input.e.x, u_input.c, 1i) >> (var_1 % vec4<u32>(32u)), u_input.e) >> (func_1(Struct_1(global4.x, vec3<u32>(1u, 6282u, global3.b.x), true, vec2<u32>(24395u, global1.x), global3.e), vec4<u32>(54486u, global4.x, global3.b.x, 0u)) % vec4<u32>(32u)), ~reverseBits(vec4<i32>(u_input.a.x, u_input.c, 2147483647i, u_input.e.x) & vec4<i32>(u_input.e.x, u_input.e.x, 17281i, u_input.a.x))), ~min(_wgslsmith_sub_vec4_i32(min(u_input.e, vec4<i32>(u_input.b.x, -43661i, u_input.b.x, u_input.a.x)), vec4<i32>(u_input.e.x, u_input.a.x, -2147483647i, u_input.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(54983i, u_input.b.x, u_input.b.x, u_input.a.x) | u_input.e, -u_input.e)));
    global0 = array<Struct_2, 28>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(-1267f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-149f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(943f, 456f))))));
    var var_4 = false;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, -620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1229f, -385f)), _wgslsmith_f_op_f32(-2305f * -1661f)))))));
}

