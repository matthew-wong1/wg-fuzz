struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<bool, 9>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    global0 = _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~arg_0.c), ~(~arg_0.c), ~arg_0.c | 1u), _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c, 69852u, arg_0.c), vec3<u32>(41462u, arg_0.c, 62930u)) | countOneBits(vec3<u32>(arg_0.c, arg_0.c, arg_0.c)), vec3<u32>(_wgslsmith_mult_u32(0u, 0u), 1u, arg_0.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(24536u, arg_0.c, arg_0.c), vec3<u32>(34764u, 5956u, 0u)) ^ (53123u >> (0u % 32u)), ~51092u, ~firstLeadingBit(4294967295u))));
    var var_0 = _wgslsmith_f_op_f32(-arg_0.d.x);
    var_0 = _wgslsmith_f_op_f32(-638f * _wgslsmith_f_op_f32(1804f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) * arg_0.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))))));
    global1 = array<bool, 9>();
    var_0 = arg_0.d.x;
    return -select(1i, abs(arg_0.e), !(_wgslsmith_f_op_f32(f32(-1f) * -1595f) < arg_0.d.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec4<u32> {
    return ~vec4<u32>(10478u, ~(~reverseBits(0u)), firstTrailingBit(4294967295u), ~(~(~36087u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = -1i;
    let var_1 = _wgslsmith_div_i32(~max(arg_2.e, i32(-1i) * -arg_0), _wgslsmith_mult_i32(arg_2.e, -16153i));
    let var_2 = _wgslsmith_clamp_vec4_u32(func_4(vec4<bool>(func_3(arg_2, arg_1, -849f) != 0i, !global1[_wgslsmith_index_u32(45832u, 9u)] != true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(10724u, 90908u >> (arg_2.c % 32u)), 9u)], !(458f == arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1114f))) + arg_2.d.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(15508u, 59453u, arg_3, 4294967295u), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3, arg_3, 45494u, 119572u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, arg_3, 50150u, 4294967295u), vec4<u32>(4294967295u, arg_2.c, arg_2.c, 4294967295u))), abs(~vec4<u32>(arg_2.c, arg_2.c, arg_2.c, 0u)), !all(vec2<bool>(global1[_wgslsmith_index_u32(arg_3, 9u)], global1[_wgslsmith_index_u32(arg_3, 9u)])))), abs(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(4294967295u, arg_2.c, arg_3, 24705u), vec4<u32>(1u, arg_2.c, arg_3, 1u), 9186i < arg_0), vec4<u32>(arg_2.c, ~25629u, abs(67462u), arg_2.c))));
    global1 = array<bool, 9>();
    global0 = ~var_2.x;
    return ~select(arg_3, arg_3, global1[_wgslsmith_index_u32(var_2.x, 9u)]);
}

fn func_1() -> Struct_2 {
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    global0 = 29726u;
    var var_0 = ~(~firstLeadingBit(_wgslsmith_div_u32(abs(18271u), func_2(-2147483647i, -763f, Struct_1(vec4<i32>(66517i, 1i, u_input.a.x, u_input.a.x), u_input.a.x, 48529u, vec2<f32>(-630f, -681f), 7722i), 0u))));
    global0 = 1u;
    return Struct_2(Struct_1(vec4<i32>(1i, ~firstTrailingBit(2147483647i), u_input.a.x, (u_input.a.x & u_input.a.x) | 2147483647i), select(~(-u_input.a.x), ~(-4205i), global1[_wgslsmith_index_u32(~(~1u), 9u)]), ~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f - 473f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    global1 = array<bool, 9>();
    global0 = var_1.a.c;
    let var_2 = vec4<bool>(all(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.c, 9u)], true)))), all(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.c, 9u)], false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(4294967295u, 9u)]))), true, false || any(vec4<bool>(true, true, true, true)));
    let var_3 = true;
    let var_4 = !vec2<bool>(false, 898f >= _wgslsmith_div_f32(-1122f, _wgslsmith_f_op_f32(-108f - var_0.a.d.x)));
    let var_5 = reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, 1i, -771i), var_1.a.a & vec4<i32>(-1599i, 1154i, 48341i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(32993i, 2147483647i, var_0.a.e, -21525i), var_0.a.a) & _wgslsmith_mod_vec4_i32(var_1.a.a, vec4<i32>(u_input.a.x, var_1.a.e, var_0.a.e, 74950i)), vec4<i32>(-1i, u_input.a.x, _wgslsmith_mult_i32(var_0.a.b, -37574i), 2147483647i))) & vec4<i32>(min(_wgslsmith_sub_i32(-12320i, var_0.a.b), 1i) & var_1.a.e, _wgslsmith_clamp_i32(firstLeadingBit(2048i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-7531i, 4234i), vec2<i32>(-93215i, var_0.a.a.x)), var_0.a.a.x), select(-1i, 12669i, var_3)), -43174i, -40782i);
    let var_6 = _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.e, ~(~(var_0.a.b & var_5.x)), -_wgslsmith_add_i32(var_5.x, ~u_input.a.x), countOneBits(firstLeadingBit(u_input.a.x << (0u % 32u)))), vec4<i32>(var_1.a.e >> (4294967295u % 32u), var_5.x, ~_wgslsmith_sub_i32(func_3(var_1.a, 1000f, var_0.a.d.x), 1i), reverseBits(countOneBits(max(16664i, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(~vec3<u32>(11488u, var_1.a.c, var_0.a.c))) ^ ~(vec3<u32>(14375u, 1u, 23977u) ^ vec3<u32>(63419u, var_0.a.c, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f + var_0.a.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) + 1837f)));
}

