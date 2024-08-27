struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(4211i, 21642i, -45715i, i32(-2147483648), 2160i);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1u, 4294967295u, 1466f), Struct_1(1u, 0u, 546f), Struct_1(4294967295u, 58952u, 273f), Struct_1(1u, 64574u, -1163f), Struct_1(19110u, 1u, 730f), Struct_1(4294967295u, 33058u, 219f), Struct_1(29936u, 0u, 1315f), Struct_1(4294967295u, 11015u, 2224f), Struct_1(24500u, 71649u, 605f), Struct_1(6364u, 55466u, 1237f), Struct_1(27425u, 1u, 540f), Struct_1(10179u, 57579u, -692f), Struct_1(4294967295u, 1177u, 1232f), Struct_1(22059u, 2812u, 454f), Struct_1(17597u, 20168u, 1132f), Struct_1(4294967295u, 1u, 434f), Struct_1(4294967295u, 0u, -1516f), Struct_1(63286u, 118883u, 1241f));

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    var var_1 = arg_1;
    return 1u;
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(4294967295u, ~(~_wgslsmith_mult_u32(u_input.a.x, 4294967295u << (arg_0.b % 32u))), -202f);
    var var_1 = !(!vec2<bool>(_wgslsmith_f_op_f32(floor(arg_0.c)) >= _wgslsmith_f_op_f32(105f - var_0.c), firstLeadingBit(2147483647i) >= _wgslsmith_dot_vec3_i32(u_input.b.wxy, u_input.b.wxw)));
    let var_2 = firstLeadingBit(~_wgslsmith_clamp_vec3_u32(abs(u_input.a), u_input.a, max(vec3<u32>(arg_0.a, 4294967295u, u_input.a.x), ~u_input.a)));
    global1 = array<Struct_1, 18>();
    return _wgslsmith_mult_vec4_u32(max(~(~(~vec4<u32>(31121u, 47400u, var_2.x, 35877u))), firstLeadingBit(vec4<u32>(0u, ~var_0.a, ~var_2.x, var_0.a))), ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(15482u, arg_0.b, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 6034u, u_input.a.x)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = select(_wgslsmith_clamp_vec4_u32(select(func_3(global2[_wgslsmith_index_u32(5307u, 7u)]), max(~vec4<u32>(1u, arg_2, 108260u, arg_2), vec4<u32>(u_input.a.x, arg_3.a, arg_3.b, 8945u)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global3.a, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.b), u_input.a.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.b), vec2<u32>(58691u, 1u)), 6541u), firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, 59024u, arg_3.a, u_input.a.x)))), abs(vec4<u32>(23208u << (arg_2 % 32u), u_input.a.x, 111237u, 5688u))), vec4<u32>(arg_3.b, arg_3.b, 1u, _wgslsmith_dot_vec3_u32(~u_input.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.b, 12296u, global3.a), vec3<u32>(1u, 4294967295u, 39194u)))), true);
    let var_1 = -min(vec2<i32>(global0[_wgslsmith_index_u32(1u | global3.a, 5u)], _wgslsmith_clamp_i32(-47187i, global0[_wgslsmith_index_u32(53047u, 5u)], 1i)), ~vec2<i32>(19037i, arg_0) | -vec2<i32>(u_input.b.x, 2147483647i)) >> (vec2<u32>(func_1(global3.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 4294967295u, arg_2, arg_2), var_0) >> (1u % 32u), global1[_wgslsmith_index_u32(~arg_2 ^ ~4294967295u, 18u)]), _wgslsmith_sub_u32(~21174u, _wgslsmith_mod_u32(reverseBits(0u), min(66970u, 1u)))) % vec2<u32>(32u));
    let var_2 = func_3(arg_3).wx;
    global0 = array<i32, 5>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-654f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c * global3.c), global3.c, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.c))));
    return StorageBuffer(_wgslsmith_sub_i32(~var_1.x, arg_0), vec4<i32>(_wgslsmith_mod_i32(abs(-41758i), firstLeadingBit(var_1.x)), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.zyx), vec3<i32>(-2147483647i, var_1.x, 29871i) | u_input.b.zzy), abs(var_1.x), _wgslsmith_mod_i32(-var_1.x, -1i)) << (var_0 % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global3.a, 18u)];
    let var_1 = ~_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(4294967295u, 5u)], abs(~_wgslsmith_clamp_i32(-31065i, global0[_wgslsmith_index_u32(global3.a, 5u)], 45921i)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c))));
    let x = u_input.a;
    s_output = func_2(11957i, _wgslsmith_sub_vec2_i32(u_input.b.yz, -(~vec2<i32>(var_1, global0[_wgslsmith_index_u32(global3.b, 5u)])) ^ ~(-vec2<i32>(global0[_wgslsmith_index_u32(var_0.a, 5u)], u_input.b.x))), ~var_0.a << ((6124u >> ((func_1(global3.c, 0u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]) << (global3.a % 32u)) % 32u)) % 32u), Struct_1(var_0.a, ~_wgslsmith_div_u32(var_0.a, 43805u) >> (47821u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -454f)));
}

