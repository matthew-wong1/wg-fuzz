struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: array<u32, 18> = array<u32, 18>(62728u, 0u, 86777u, 46646u, 0u, 56138u, 1u, 11640u, 2435u, 4294967295u, 1u, 1731u, 2031u, 1u, 0u, 4559u, 4294967295u, 0u);

var<private> global2: array<bool, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45021u, 18u)], 18u)], global1[_wgslsmith_index_u32(48302u, 18u)], 2511u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 22356u, 36199u)), firstLeadingBit(vec3<u32>(0u, 0u, global1[_wgslsmith_index_u32(4294967295u, 18u)]) | vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])), _wgslsmith_sub_vec3_u32(select(vec3<u32>(18091u, global1[_wgslsmith_index_u32(4294967295u, 18u)], 52180u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 40788u, 1u), false), vec3<u32>(global1[_wgslsmith_index_u32(52280u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 0u))), ~select(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54335u, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], global1[_wgslsmith_index_u32(42559u, 18u)]), true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(4294967295u, 4294967295u) & vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u)), abs(max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 4294967295u), vec2<u32>(64257u, 6408u))))), 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(26839u, 52269u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17908u, 18u)], 18u)], 18u)], 77181u), vec4<u32>(17481u, 0u, 20148u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29425u, 18u)], 18u)], 18u)], 18u)])), ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(33130u, 18u)], 19414u, 47879u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)]), vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)])), vec2<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(42789u, 18u)])), 17590u), ~(~(vec4<u32>(20342u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34653u, 18u)], 18u)], 18u)], 4062u, 1u) >> (vec4<u32>(28488u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 14388u) % vec4<u32>(32u))))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80850u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 1u, 4294967295u))), ~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36392u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 41852u, 5343u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29186u, 18u)], 18u)]) ^ vec4<u32>(1u, global1[_wgslsmith_index_u32(14593u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], 19549u))), countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)]), global1[_wgslsmith_index_u32(1u, 18u)]), 18u)], 18u)])));
    var var_1 = !(!vec3<bool>(countOneBits(u_input.b) != ~u_input.b, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 43337u), 12u)], true));
    let var_2 = Struct_1(max(_wgslsmith_mod_u32(24220u, global1[_wgslsmith_index_u32(var_0.x, 18u)]), ~(_wgslsmith_dot_vec3_u32(var_0.yzx, var_0.wzx) << (~82627u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2950f, 260f))) + vec2<f32>(-1284f, _wgslsmith_div_f32(542f, 893f))));
    global2 = array<bool, 12>();
    let var_3 = vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.b.x * -397f), _wgslsmith_f_op_f32(select(-810f, var_2.b.x, true)), true)))), var_2.b.x);
    return -468f;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    var var_0 = -8769i;
    let var_1 = Struct_2(Struct_1(arg_0.a.a, arg_0.a.b), any(vec2<bool>(true, true)), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.x > 1558f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-871f, -1388f, false)))))));
    var var_2 = ~_wgslsmith_sub_u32(~abs(var_1.c.a), ~countOneBits(firstLeadingBit(arg_0.c.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.zz);
    var var_4 = _wgslsmith_add_u32(~(~35983u), 21321u);
    return arg_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-2147483647i), arg_1.b.x | 0i) ^ (firstLeadingBit(u_input.a) ^ vec2<i32>(-15946i, 48820i)), u_input.a), arg_1.b);
    var var_1 = arg_2.a.a;
    return ~min(45938u, 43309u);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<u32, 18>();
    var var_0 = Struct_3(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-4354i, arg_2.a.x), ~vec2<i32>(2147483647i, u_input.a.x) & u_input.a, u_input.a), firstTrailingBit(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-44652i, -2147483647i, u_input.a.x, arg_2.b.x), vec4<i32>(-1i, arg_2.b.x, 0i, arg_2.b.x) >> (vec4<u32>(33022u, 4294967295u, 21587u, arg_1) % vec4<u32>(32u))))));
    var var_1 = arg_2.b.x;
    let var_2 = -765f;
    let var_3 = vec4<i32>(arg_2.a.x, -2147483647i, abs(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 2147483647i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, 4590i), vec3<i32>(u_input.b, 51933i, 2147483647i)))), -11955i);
    return Struct_1(_wgslsmith_dot_vec3_u32(~(abs(vec3<u32>(arg_1, global1[_wgslsmith_index_u32(arg_1, 18u)], arg_1)) ^ abs(vec3<u32>(29871u, 0u, arg_1))), vec3<u32>(15459u, global1[_wgslsmith_index_u32(0u, 18u)] ^ arg_1, ~arg_1) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(arg_1, arg_1, 16106u), ~vec3<u32>(global1[_wgslsmith_index_u32(6340u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -313f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1810f, -662f))))) * vec2<f32>(var_2, _wgslsmith_f_op_f32(ceil(var_2)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(~global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24056u, 18u)], 18u)], 18u)]), 18u)] >= func_4(!func_2(Struct_2(Struct_1(42442u, vec2<f32>(556f, -1046f)), true, Struct_1(8740u, vec2<f32>(663f, -611f)), 1287f), vec3<f32>(-563f, -235f, 1338f)), Struct_3(select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 12u)]), select(u_input.a, vec2<i32>(u_input.b, -1i), vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25u, 18u)], 12u)]))), Struct_2(Struct_1(38193u, vec2<f32>(152f, 903f)), true | global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5915u, 18u)], 12u)], Struct_1(0u, vec2<f32>(1202f, -189f)), _wgslsmith_f_op_f32(f32(-1f) * -346f))), ~10902u, Struct_3(abs(vec2<i32>(u_input.b, ~u_input.a.x)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, 6546i)), select(select(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 12u)])), !select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 12u)], false), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(84882u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2718u, 18u)], 18u)], 18u)], 18u)], 18u)]) >> ((global1[_wgslsmith_index_u32(0u, 18u)] | global1[_wgslsmith_index_u32(81990u, 18u)]) % 32u), 12u)]), vec2<bool>(true, select(true, global2[_wgslsmith_index_u32(1u, 12u)], func_2(Struct_2(Struct_1(1u, vec2<f32>(1442f, 306f)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 12u)], Struct_1(1u, vec2<f32>(-1388f, -790f)), 540f), vec3<f32>(1068f, -193f, 394f)))), true));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 33309u)), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], var_0.a) >> (select(vec2<u32>(22596u, var_0.a), vec2<u32>(global1[_wgslsmith_index_u32(48118u, 18u)], 0u), true) % vec2<u32>(32u))), 57508u | (var_0.a ^ 1u)) & vec2<u32>(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(abs(4294967295u), 18u)], 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(33249u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)]), vec2<u32>(35090u, 4294967295u)) ^ 1u, 18u)]), 1u);
    var_1 = _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_sub_u32(var_1.x, firstTrailingBit(var_1.x)), global1[_wgslsmith_index_u32(func_5(true, _wgslsmith_dot_vec3_u32(vec3<u32>(29390u, var_0.a, 9682u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], 1u, var_1.x)), Struct_3(vec2<i32>(u_input.b, 0i), u_input.a), vec2<bool>(false, false)).a, 18u)])), vec2<u32>(~33689u, global1[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -715f) <= _wgslsmith_f_op_f32(select(-1436f, var_0.b.x, false)), min(4294967295u, var_0.a), Struct_3(-u_input.a, u_input.a), !select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(var_1.x, 12u)]), false)).a, 18u)]), ~select(vec2<u32>(func_5(global2[_wgslsmith_index_u32(4294967295u, 12u)], 1u, Struct_3(u_input.a, vec2<i32>(u_input.a.x, 2147483647i)), vec2<bool>(true, true)).a, var_0.a), vec2<u32>(var_0.a, var_0.a << (1u % 32u)), select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 12u)], global2[_wgslsmith_index_u32(var_0.a, 12u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(42622u, 12u)], true)))));
    var var_2 = true;
    return func_5(-(-19037i << ((22387u >> (global1[_wgslsmith_index_u32(24195u, 18u)] % 32u)) % 32u)) == (~(~u_input.a.x) << (~abs(35959u) % 32u)), 39208u << (_wgslsmith_add_u32(~13270u, _wgslsmith_mult_u32(var_1.x, 38933u)) % 32u), Struct_3(u_input.a, vec2<i32>(u_input.a.x, ~(u_input.a.x ^ -1i))), vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    let var_0 = true;
    global0 = array<vec4<bool>, 8>();
    var var_1 = Struct_2(func_1(), any(!(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 12u)]), true))), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1071f)))));
    global1 = array<u32, 18>();
    var var_2 = Struct_1(~43481u, _wgslsmith_f_op_vec2_f32(var_1.c.b + var_1.c.b));
    global1 = array<u32, 18>();
    let var_3 = -144f;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(~u_input.b, abs(-2147483647i), u_input.b | u_input.b, u_input.b) | vec4<i32>(-u_input.a.x, 2147483647i, 1i, reverseBits(1i))) & -min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -29313i), vec4<i32>(1i, 1050i, -37861i, u_input.a.x)), select(vec4<i32>(1i, 34710i, 2147483647i, u_input.b), vec4<i32>(u_input.b, -9853i, u_input.a.x, 45234i), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a, 18u)], 12u)])));
}

