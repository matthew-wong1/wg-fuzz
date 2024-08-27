struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(57266u, 4294967295u, 13336u, 0u, 42770u, 12989u, 4294967295u, 1u, 4294967295u, 0u, 35319u, 1u, 0u, 81555u, 2548u, 15432u, 4294967295u, 1u, 53600u, 0u, 0u, 0u, 0u, 23944u, 19586u, 4294967295u, 0u, 1u, 4943u, 5788u);

var<private> global1: i32;

var<private> global2: vec4<i32> = vec4<i32>(-1i, 1i, -1i, 2147483647i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    return -arg_0.c;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<u32, 30>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f * 956f), 1000f);
    let var_1 = Struct_1(~(~vec3<u32>(~1u, 0u, 39986u)), vec4<bool>(_wgslsmith_div_f32(var_0.x, var_0.x) <= var_0.x, true, false, false && (~44225u >= select(arg_1.a.x, 0u, arg_1.d))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 63957u, arg_0, arg_0), ~vec4<u32>(arg_0, arg_1.a.x, u_input.c.x, arg_0))), arg_1.b.x);
    let var_2 = max(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-1i, global2.x | global2.x, u_input.a.x) >> (1u % 32u), firstLeadingBit(~firstLeadingBit(u_input.d.x)), -2147483647i), (~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global2.x, u_input.b.x, -2355i), vec4<i32>(u_input.a.x, -2147483647i, global2.x, u_input.a.x)) | max(reverseBits(vec4<i32>(-1i, global2.x, global2.x, -2147483647i)), vec4<i32>(-39795i, 17924i, u_input.d.x, u_input.a.x))) ^ vec4<i32>(1i, ~global2.x, -20104i, abs(u_input.a.x | global2.x)));
    var var_3 = select(vec4<bool>(arg_1.d, false, true, all(select(vec3<bool>(arg_1.d, var_1.b.x, var_1.b.x), arg_1.b.zxz, arg_1.b.x))), arg_1.b, vec4<bool>(true & !var_1.b.x, (min(u_input.b.x, 0i) < _wgslsmith_sub_i32(u_input.d.x, global2.x)) & (arg_1.d && var_1.b.x), !var_1.d, all(select(var_1.b.yzw, !vec3<bool>(false, var_1.b.x, arg_1.d), !arg_1.b.x))));
    return global2.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    global2 = vec4<i32>(u_input.d.x, ~(-2147483647i), 98015i, countOneBits(_wgslsmith_add_i32(func_3(4294967295u, Struct_1(u_input.c, vec4<bool>(arg_0, arg_0, true, false), vec4<u32>(u_input.c.x, 1421u, 30374u, u_input.c.x), arg_0)), 0i)));
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], 5685u)), vec3<u32>(_wgslsmith_clamp_u32(reverseBits(29341u), u_input.c.x, ~global0[_wgslsmith_index_u32(34131u, 30u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])), 30u)], global0[_wgslsmith_index_u32(~u_input.c.x, 30u)])), !select(!(!vec4<bool>(arg_0, arg_0, false, arg_0)), select(!vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, true), false), vec4<bool>(false, arg_0, arg_0, true)), u_input.c.x < _wgslsmith_sub_u32(27538u, 1u)), vec4<u32>(65166u, ~25169u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, select(~u_input.c.x, global0[_wgslsmith_index_u32(46387u, 30u)], true)), 30u)], u_input.c.x), true);
    global0 = array<u32, 30>();
    var_0 = Struct_1(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.x, u_input.c.x), ~global0[_wgslsmith_index_u32(var_0.c.x, 30u)])), u_input.c.x, ~_wgslsmith_div_u32(39890u, 1u)), var_0.b, var_0.c, !arg_0);
    global1 = -2147483647i;
    return Struct_2(vec4<i32>(64975i, ~0i | _wgslsmith_clamp_i32(func_1(Struct_2(vec4<i32>(-1i, -6952i, global2.x, 2147483647i), vec3<i32>(0i, 9928i, arg_1), u_input.a), Struct_1(u_input.c, vec4<bool>(true, false, false, true), vec4<u32>(u_input.c.x, 0u, var_0.a.x, u_input.c.x), arg_0), 25302u, Struct_1(u_input.c, vec4<bool>(arg_0, var_0.b.x, true, true), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 30u)], 30u)], 82834u, var_0.a.x, var_0.a.x), arg_0)).x, arg_1, u_input.b.x), firstTrailingBit(-1i ^ _wgslsmith_mult_i32(global2.x, -43601i)), func_1(Struct_2(vec4<i32>(1i, global2.x, -2147483647i, arg_1), firstLeadingBit(u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -22755i), global2.zwz)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 1u, var_0.a.x), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13275u, 30u)], 30u)], 4056u)), !vec4<bool>(false, arg_0, var_0.d, var_0.d), ~vec4<u32>(var_0.a.x, u_input.c.x, 1u, u_input.c.x), -48799i == u_input.d.x), u_input.c.x, Struct_1(u_input.c | vec3<u32>(var_0.a.x, var_0.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), var_0.b, max(var_0.c, vec4<u32>(u_input.c.x, 0u, 1u, 4294967295u)), true)).x), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global2.x, u_input.b.x, u_input.d.x), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, 1i, 25297i), u_input.b), u_input.b), !vec3<bool>(var_0.d, true, true)), vec3<i32>(~(~39460i), _wgslsmith_dot_vec2_i32(global2.wz ^ u_input.b.yx, vec2<i32>(arg_1, 77918i)), firstLeadingBit(-1i))), ~(~(-_wgslsmith_mult_vec3_i32(global2.xwy, u_input.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(u_input.c, !(!select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(false, true, arg_1, true), true)), vec4<u32>(4294967295u, u_input.c.x & max(~12608u, ~1u), 1u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(36814u, ~(~u_input.c.x)), 30u)]), arg_1);
    var var_1 = func_2(arg_1, ~(i32(-1i) * -30215i));
    let var_2 = firstLeadingBit(vec3<u32>(~_wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, 1u), _wgslsmith_mult_u32(var_0.a.x & u_input.c.x, max(_wgslsmith_sub_u32(15120u, 0u), 1u)), reverseBits(countOneBits(21514u >> (u_input.c.x % 32u)))));
    global0 = array<u32, 30>();
    let var_3 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(var_1.c.yz, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, global2.x)), vec2<i32>(1i, -1i)))), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_2, u_input.b.x), global2.xx), firstLeadingBit(vec2<i32>(-1i, u_input.a.x) & u_input.a.zz))));
    return Struct_1(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~var_0.a, var_2), abs(var_0.c.xwz) << (vec3<u32>(0u, global0[_wgslsmith_index_u32(var_0.c.x, 30u)], 74636u) % vec3<u32>(32u)), ~var_0.a)), !vec4<bool>(all(vec4<bool>(true, arg_1, var_0.b.x, true)), var_0.d, false, true), vec4<u32>(87077u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(min(1u, 4294967295u), 30u)], 0u), var_0.c.x, u_input.c.x), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = arg_1.b.ww;
    var var_1 = !(!arg_2.b.wxx);
    global1 = u_input.a.x;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, 535f, 807f, 1644f) + vec4<f32>(-554f, 568f, 892f, -1241f))))), vec4<f32>(_wgslsmith_f_op_f32(select(-671f, -277f, all(vec2<bool>(true, arg_2.b.x)))), 140f, _wgslsmith_f_op_f32(f32(-1f) * -1275f), -229f))), true, 0i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1708f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(959f)))));
    return func_2(false, select(func_2(arg_2.d, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(32792i, u_input.d.x, global2.x), u_input.b), vec3<i32>(-1i, 0i, -66641i))).b.x, -2147483647i, !arg_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_1 = func_5(Struct_2(~vec4<i32>(_wgslsmith_div_i32(global2.x, -2147483647i), -67615i, 0i, ~37419i), ~func_1(Struct_2(vec4<i32>(1i, global2.x, 0i, global2.x), vec3<i32>(global2.x, global2.x, u_input.a.x), vec3<i32>(32334i, 2147483647i, global2.x)), Struct_1(u_input.c, vec4<bool>(true, false, false, var_0), vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 30u)], u_input.c.x), var_0), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)] ^ 0u, Struct_1(u_input.c, vec4<bool>(var_0, false, false, true), vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 1u, 101051u, u_input.c.x), true)), -global2.wyw), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(105f, 950f, -806f, 277f) + vec4<f32>(762f, 683f, -1739f, 142f))))), true & all(vec3<bool>(false, true, var_0)), func_1(func_2(!var_0, -1i), Struct_1(u_input.c, select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0)), max(vec4<u32>(28972u, 4294967295u, 36856u, 1u), vec4<u32>(1u, 92015u, 13202u, u_input.c.x)), true), 0u, Struct_1(u_input.c, vec4<bool>(var_0, var_0, true, var_0), abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 30u)], u_input.c.x, u_input.c.x, u_input.c.x)), true)).x), Struct_1(firstTrailingBit(~select(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec3<u32>(u_input.c.x, 0u, global0[_wgslsmith_index_u32(0u, 30u)]), var_0)), !func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2272f, -459f, 448f, -342f))), true, global2.x).b, vec4<u32>(u_input.c.x, ~u_input.c.x, ~global0[_wgslsmith_index_u32(u_input.c.x, 30u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u)) << (~vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]) % vec4<u32>(32u)), true & all(vec2<bool>(var_0, var_0))), _wgslsmith_mult_vec4_u32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1702f, -119f, 1308f, 382f) - vec4<f32>(929f, -511f, -505f, -1241f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(937f, -802f, -126f, -123f))), !var_0)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1359f, -1315f, -1667f, 616f)), var_0, global2.x).d, ~_wgslsmith_sub_i32(19605i, global2.x)).c, select(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20176u, 0u, 1u, u_input.c.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 56299u, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 22874u)), select(vec4<u32>(u_input.c.x, 40042u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<u32>(1u, 23006u, 0u, 4294967295u), vec4<bool>(var_0, false, var_0, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(23714u, 22252u, 4294967295u, 44482u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], 14399u)), vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(var_0, var_0)), var_0, select(false, false, true)))));
    let var_2 = ~(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(61794u, u_input.c.x), 30u)] & (0u << (global0[_wgslsmith_index_u32(~u_input.c.x >> (countOneBits(24145u) % 32u), 30u)] % 32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f * 1021f));
    global0 = array<u32, 30>();
    let var_4 = vec2<u32>(~max(32583u, ~(~3879u)), ~_wgslsmith_mod_u32(firstLeadingBit(22854u), ~max(var_2, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b & ~(~(-vec3<i32>(-24561i, 1i, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(616f, 2052f, var_3), vec3<f32>(-1000f, var_3, var_3)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-924f, var_3, 1304f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -962f, var_3)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, var_3), vec2<f32>(var_3, var_3))), vec2<f32>(1000f, -1027f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1231f, -1162f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3, -1000f))))))), global0[_wgslsmith_index_u32(~var_4.x, 30u)], var_4);
}

