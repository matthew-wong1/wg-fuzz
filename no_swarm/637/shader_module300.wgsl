struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<u32, 7> = array<u32, 7>(35045u, 46155u, 54688u, 0u, 4294967295u, 59307u, 1u);

var<private> global3: array<u32, 2>;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u & countOneBits(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 7u)]), 2u)], 7u)], countOneBits(global2[_wgslsmith_index_u32(4294967295u, 7u)])));
    let var_1 = global1[_wgslsmith_index_u32(0u, 7u)];
    global1 = array<Struct_1, 7>();
    let var_2 = arg_1.x;
    var var_3 = true;
    return firstLeadingBit(u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<u32, 7>();
    global4 = ~_wgslsmith_div_u32(abs(~countOneBits(global2[_wgslsmith_index_u32(1u, 7u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(87054u, 2u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43095u, 2u)], 7u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12544u, 7u)], 7u)], 7u)], 2u)], 7u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36235u, 7u)], 2u)], 7u)], 7u)], global3[_wgslsmith_index_u32(46405u, 2u)], 56726u))) << (_wgslsmith_add_u32(~1u, global3[_wgslsmith_index_u32(21086u, 2u)] << (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32954u, 2u)], 7u)], 2u)], 7u)], 2u)], 7u)], 2u)] % 32u)) % 32u), 2u)]);
    let var_0 = 58476i;
    global3 = array<u32, 2>();
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(31095i, var_0, arg_1.a), arg_3.c.zyx, arg_1.c.yyx), u_input.a.zxy)), firstTrailingBit(arg_3.c.wzy & vec3<i32>(arg_3.a, var_0, arg_1.b))), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -50850i), -8175i, -(~(~(-22611i)))));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~func_4(Struct_1(u_input.a.x, i32(-1i) * -31020i, func_3(Struct_1(u_input.a.x, arg_2.a, vec4<i32>(17359i, 33175i, -2147483647i, u_input.a.x)), arg_3.zz, Struct_1(35384i, arg_2.a, u_input.a))), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1308f, arg_3.x, -1000f, arg_3.x), vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 818f), false))), global0[_wgslsmith_index_u32(~2810u, 1u)]), 7u)], 66250u, _wgslsmith_clamp_u32(7215u, ~(global3[_wgslsmith_index_u32(1u, 2u)] ^ 1u), ~(~(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 7u)] ^ 1u))));
    let var_1 = vec3<bool>(false, !arg_0, true);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(1u, min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18171u, 7u)], 7u)], global3[_wgslsmith_index_u32(9480u, 2u)])) | reverseBits(44152u)), 2u)], 0u & global2[_wgslsmith_index_u32(0u, 7u)]), 7u)];
    global0 = array<Struct_1, 1>();
    let var_3 = -arg_2.a;
    return global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(52175u, global2[_wgslsmith_index_u32(1226u, 7u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(12281u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 2u)], 2u)], 0u)), vec3<u32>(global3[_wgslsmith_index_u32(21818u, 2u)], 67960u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41313u, 7u)], 7u)], 2u)], 7u)], 2u)])), reverseBits(vec3<u32>(40449u, global3[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(109811u, 7u)], 7u)]) << (vec3<u32>(1u, 4294967295u, 65176u) % vec3<u32>(32u))))), 2u)], 7u)];
}

fn func_5(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.x & countOneBits(~23770u), 7u)];
    var var_1 = Struct_1(-2147483647i, ~u_input.a.x, -min(~vec4<i32>(-5250i, var_0.b, var_0.b, -32541i), vec4<i32>(-10185i, -29290i, _wgslsmith_clamp_i32(var_0.b, 0i, 0i), -55831i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(934f, 445f) * _wgslsmith_f_op_f32(825f + -907f))))));
    var var_3 = Struct_1(~(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.c.wzw, vec3<i32>(47210i, var_1.b, -28739i)), u_input.a.wyx)), -u_input.a.x, vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(-var_1.c), -vec4<i32>(var_0.c.x, 26057i, 49418i, u_input.a.x) ^ -var_1.c), _wgslsmith_dot_vec2_i32(var_1.c.wz, ~vec2<i32>(44441i, -7775i)), var_1.a, ~var_1.c.x));
    let var_4 = Struct_1(1i, (0i >> (_wgslsmith_div_u32(abs(arg_0.x), 1u) % 32u)) | max(var_0.c.x, countOneBits(_wgslsmith_div_i32(-2147483647i, -2147483647i))), vec4<i32>(_wgslsmith_add_i32(var_0.a, ~(u_input.a.x << (4294967295u % 32u))), _wgslsmith_sub_i32(-18207i, -2147483647i), _wgslsmith_mult_i32(i32(-1i) * -1i, var_0.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.c.xw, vec2<i32>(-73119i, var_1.c.x)), reverseBits(0i))));
    return u_input.a;
}

fn func_1() -> vec2<bool> {
    global4 = global3[_wgslsmith_index_u32(0u, 2u)] ^ (~(global3[_wgslsmith_index_u32(4294967295u, 2u)] | 4294967295u) >> (global2[_wgslsmith_index_u32(1u, 7u)] % 32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-865f))) <= 1495f;
    var var_1 = Struct_1(reverseBits(u_input.a.x), -(u_input.a.x >> ((countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 2u)], 2u)]) ^ _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 2u)], 7u)], 16764u)) % 32u)), _wgslsmith_div_vec4_i32(func_5(vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(14108u, 2u)], 30542u), 2u)], 0u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1u, 2u)], 33012u), func_2(var_0, vec4<bool>(var_0, var_0, var_0, var_0), Struct_1(u_input.a.x, u_input.a.x, vec4<i32>(u_input.a.x, 0i, 4179i, u_input.a.x)), vec3<f32>(-722f, 1000f, 610f)))), u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(8341u, 2u)], 380u, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(53747u, 7u)]), reverseBits(vec4<u32>(0u, global2[_wgslsmith_index_u32(75356u, 7u)], 80274u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 2u)])), vec4<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 4565u, 4294967295u, 0u)) % vec4<u32>(32u))));
    let var_2 = !(!vec4<bool>(_wgslsmith_mult_i32(-1i, var_1.b) < -24581i, var_0, !select(var_0, true, var_0), ~var_1.a >= ~52905i));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(34041u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45269u, 2u)], 2u)]), 7u)], 2u)], 2u)], _wgslsmith_clamp_u32(11759u, ~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45431u, 2u)], 7u)], 50386u), 19989u), vec3<u32>(func_4(global1[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(2147483647i, var_1.b, var_1.c), vec4<f32>(-731f, -378f, -1020f, 187f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(26069u, 30296u, global3[_wgslsmith_index_u32(72132u, 2u)]), 1u)]), 14110u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~24118u, _wgslsmith_mult_u32(65658u, global3[_wgslsmith_index_u32(17744u, 2u)])), 7u)], 7u)]), vec3<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)], ~(~54967u), 1u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(min(43193u, 1u), 2u)], 32202u, 0u | global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 2u)]), vec3<u32>(max(global2[_wgslsmith_index_u32(1u, 7u)], 64464u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(39398u, 2u)], global2[_wgslsmith_index_u32(87582u, 7u)]), ~58802u), min(vec3<u32>(6393u, 32418u, global3[_wgslsmith_index_u32(59933u, 2u)]) ^ vec3<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(24099u, 2u)]), select(vec3<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47492u, 2u)], 7u)], 64273u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 2u)], 2u)], 7u)], 2u)], 7u)]), vec3<u32>(global2[_wgslsmith_index_u32(24800u, 7u)], global2[_wgslsmith_index_u32(23553u, 7u)], 2521u), var_2.x))))), 1u)];
    return var_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 2>();
    let var_0 = -516f;
    let var_1 = false || (u_input.a.x < -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), _wgslsmith_div_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, u_input.a.x))));
    var var_2 = func_1();
    var var_3 = Struct_1(0i, -16186i, _wgslsmith_sub_vec4_i32(select(~u_input.a, ~(u_input.a >> (vec4<u32>(108683u, 30727u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20869u, 7u)], 7u)]) % vec4<u32>(32u))), !select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_2.x, var_1, var_1, true))), select(-u_input.a << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 38262u, 1u, global2[_wgslsmith_index_u32(41111u, 7u)]), vec4<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 2u)], 2u)], 7u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49916u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], 12374u)) % vec4<u32>(32u)), u_input.a, any(!vec3<bool>(var_2.x, true, var_2.x)))));
    var var_4 = !var_2.x;
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(14644u, 2u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33963u, 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 7u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3069u, 7u)], 2u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 2u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5168u, 7u)], 2u)], 48043u), ~vec4<u32>(22114u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4327u, 2u)], 7u)], 1u, 4294967295u))), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(global2[_wgslsmith_index_u32(61748u, 7u)], 4294967295u, 155381u, 4294967295u)), vec4<u32>(func_2(true, vec4<bool>(false, var_2.x, var_1, var_2.x), global0[_wgslsmith_index_u32(1u, 1u)], vec3<f32>(var_0, var_0, 2535f)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(56953u, 7u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 2u)], 7u)], 36537u), vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43588u, 7u)], 2u)], global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53880u, 7u)], 2u)], 7u)])), 2u)], 7u)], _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(15895u, 7u)], global3[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 2u)], 2u)]))))) << (min(select(global2[_wgslsmith_index_u32(~1u, 7u)], _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12776u, 2u)], 7u)], 2u)], 7u)], 2u)], 7u)], 24188u)), vec2<u32>(global3[_wgslsmith_index_u32(1u, 2u)], 0u)), true), global2[_wgslsmith_index_u32(0u, 7u)]) % 32u), 7u)];
    global2 = array<u32, 7>();
    var var_6 = Struct_1(var_5.b, func_3(global1[_wgslsmith_index_u32(select(~56105u, 0u, var_1), 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(-1000f)))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(~6052u), 2u)] >> (global3[_wgslsmith_index_u32(1u, 2u)] % 32u), 7u)]).x, func_3(Struct_1(var_3.a, _wgslsmith_mult_i32(-5458i, var_3.b), countOneBits(vec4<i32>(-8346i, 1i, 43926i, var_5.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, -171f)))), global0[_wgslsmith_index_u32(7233u, 1u)]) ^ var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 7u)], 2u)], global3[_wgslsmith_index_u32(1u, 2u)], 5686u) >> (vec4<u32>(4294967295u, 0u, 1u, global3[_wgslsmith_index_u32(88353u, 2u)]) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61569u, 2u)], 2u)], 7u)], 7u)], 2u)], 2u)], 7u)], 0u, global3[_wgslsmith_index_u32(4538u, 2u)], 1u), vec4<u32>(1u, 13518u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 7u)], 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28471u, 2u)], 2u)]))), vec4<u32>(abs(4294967295u), global3[_wgslsmith_index_u32(0u, 2u)], ~1u, 61583u)), countOneBits(var_3.b), vec3<u32>(12703u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(24270u, 2u)], 65696u), vec2<u32>(2128u, 5308u)), vec2<u32>(56417u, 30183u)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 7u)], 2u)], 2u)], 7u)], 19439u) ^ ~global3[_wgslsmith_index_u32(4294967295u, 2u)], 7u)]), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(func_2(true, !vec4<bool>(var_1, false, false, true), Struct_1(var_5.b, -2147483647i, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1592f, -539f, 1177f) - vec3<f32>(var_0, 1545f, var_0))), 2u)], ~4294967295u)));
}

