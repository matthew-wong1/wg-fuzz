struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 4> = array<f32, 4>(-948f, -1000f, -1005f, -592f);

var<private> global2: f32 = 467f;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a)))))));
    var_0 = Struct_2(14932u);
    let var_2 = Struct_2(arg_3.a);
    var_0 = Struct_2(_wgslsmith_mult_u32(~abs(4294967295u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, var_2.a), u_input.b), vec2<u32>(u_input.c.x, ~31912u))));
    return countOneBits(~u_input.c >> (u_input.c % vec3<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(148f * global1[_wgslsmith_index_u32(59239u, 4u)]), _wgslsmith_f_op_f32(-1393f - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(23619u, 4u)])))))), _wgslsmith_f_op_f32(trunc(-236f)));
    global1 = array<f32, 4>();
    let var_1 = select(func_3(Struct_2(_wgslsmith_mult_u32(23554u, arg_0) | ~u_input.b.x), _wgslsmith_f_op_f32(-1507f * global0.a), Struct_2(~(~0u)), Struct_2(26006u)), max(func_3(Struct_2(~arg_0), _wgslsmith_div_f32(-823f, global1[_wgslsmith_index_u32(max(39777u, 1u), 4u)]), Struct_2(u_input.c.x), Struct_2(abs(arg_0))), vec3<u32>(abs(arg_0), _wgslsmith_dot_vec2_u32(u_input.b, reverseBits(u_input.b)), firstTrailingBit(arg_0))), vec3<bool>(arg_1.x, arg_2 | all(!arg_1.xyx), !(!arg_1.x)));
    var var_2 = vec3<u32>(max(abs(~arg_0), 53585u), abs(var_1.x), ~(~firstTrailingBit(11501u) | reverseBits(countOneBits(4294967295u))));
    global1 = array<f32, 4>();
    return Struct_2(arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(0u, u_input.a.x, arg_1.a))), vec3<u32>(arg_0.a, arg_0.a, arg_0.a) ^ vec3<u32>(reverseBits(u_input.a.x), 84486u, countOneBits(arg_0.a))));
    var var_1 = vec3<bool>(!global0.b, global0.b, false);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.wxy) + _wgslsmith_f_op_vec3_f32(arg_2.yxw - vec3<f32>(328f, -1217f, -105f))), arg_2.xzx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 4u)]), 103f))), arg_2.zxy);
    let var_3 = var_0;
    var var_4 = (~arg_0.a << (_wgslsmith_sub_u32(~abs(0u), var_0.a) % 32u)) & (select(var_0.a, u_input.b.x, any(vec3<bool>(global0.b, false, true))) << (~49768u % 32u));
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !var_1.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(1239f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, arg_0)), true, all(vec2<bool>(any(vec4<bool>(arg_1.b, global0.b, false, global0.b)), func_4(Struct_2(u_input.b.x), Struct_2(arg_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], arg_0, -459f, arg_1.a) - vec4<f32>(arg_0, -1221f, arg_0, global1[_wgslsmith_index_u32(arg_2.a, 4u)]))).b)));
    var var_1 = max(~abs(-abs(vec2<i32>(u_input.d, u_input.d))), firstTrailingBit(max(-vec2<i32>(2147483647i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(u_input.d, u_input.d)))) << ((min(u_input.b, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 5324u), u_input.a.yz)) | _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a, u_input.b.x) & vec2<u32>(26381u, 1u), vec2<u32>(arg_2.a, arg_2.a))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * global0.a));
    var var_3 = ~vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-13026i), _wgslsmith_mult_i32(u_input.d, var_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_1.x, -32461i, var_1.x), _wgslsmith_clamp_i32(var_1.x, var_1.x, 2147483647i), u_input.d), countOneBits(max(vec3<i32>(-1i, 15406i, 0i), vec3<i32>(39282i, u_input.d, u_input.d)))), ~28836i, firstLeadingBit(~1i));
    var var_4 = _wgslsmith_f_op_f32(step(1356f, _wgslsmith_f_op_f32(-global0.a)));
    return func_4(func_2(u_input.b.x, select(vec4<bool>(global0.a < 470f, true, global0.b & true, 4294967295u >= u_input.c.x), vec4<bool>(global0.b, arg_1.b, global0.b, arg_1.b), global0.b), false, -29953i << (0u % 32u)), Struct_2(8522u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -592f)), _wgslsmith_div_f32(global0.a, -1124f), -663f)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = Struct_2(4294967295u);
    global1 = array<f32, 4>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1268f), arg_2.a)));
    var var_2 = select(select(select(vec3<bool>(var_0.b, false, func_5(-1530f, Struct_1(arg_3.x, false), Struct_2(u_input.b.x)).b), vec3<bool>(u_input.d <= -2147483647i, arg_2.b || false, all(vec2<bool>(false, global0.b))), vec3<bool>(any(vec3<bool>(false, arg_1.b, var_0.b)), true, u_input.d < u_input.d)), !vec3<bool>(var_0.b, any(vec3<bool>(global0.b, var_0.b, arg_2.b)), true), vec3<bool>(global0.b, select(global0.a <= global0.a, any(vec4<bool>(true, arg_2.b, arg_1.b, global0.b)), var_0.b), true)), select(select(!(!vec3<bool>(true, var_0.b, var_0.b)), !(!vec3<bool>(arg_2.b, true, var_0.b)), arg_1.b || true), !(!(!vec3<bool>(arg_2.b, arg_2.b, arg_2.b))), select(!select(vec3<bool>(false, false, false), vec3<bool>(global0.b, false, false), vec3<bool>(false, global0.b, var_0.b)), select(!vec3<bool>(false, false, var_0.b), !vec3<bool>(false, var_0.b, false), select(true, false, false)), !all(vec2<bool>(arg_2.b, global0.b)))), vec3<bool>(arg_2.b, global1[_wgslsmith_index_u32(firstLeadingBit(~arg_0), 4u)] >= var_0.a, true));
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(416f, true);
    var var_1 = func_2(~arg_1.a, select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, var_0.b, arg_2, false), select(vec4<bool>(false, var_0.b, var_0.b, true), vec4<bool>(arg_0.b, arg_0.b, false, var_0.b), vec4<bool>(true, global0.b, arg_0.b, true)), func_4(arg_1, Struct_2(1u), vec4<f32>(175f, 1000f, global1[_wgslsmith_index_u32(0u, 4u)], -1261f)).b), select(!vec4<bool>(global0.b, true, var_0.b, false), vec4<bool>(var_0.b, global0.b, false, global0.b), var_0.b), false), vec4<bool>(!(u_input.a.x <= 26702u), any(vec2<bool>(false, false)), arg_3 > 0i, !(arg_0.b && true))), arg_2, _wgslsmith_mod_i32(arg_3, firstLeadingBit(-(~(-2147483647i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1407f))))));
    global0 = Struct_1(-581f, 0i > _wgslsmith_dot_vec4_i32(vec4<i32>(~(-13217i), u_input.d, 7594i, _wgslsmith_mult_i32(u_input.d, arg_3)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-37701i, arg_3, 8964i, arg_3) >> (vec4<u32>(1u, 15773u, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, u_input.d, 0i, arg_3), vec4<i32>(-31273i, arg_3, -19327i, arg_3)), vec4<i32>(-2147483647i, 53265i, u_input.d, 1i))));
    let var_3 = select(!(!vec4<bool>(var_0.b, arg_0.b, true, true)), vec4<bool>(!arg_2, !(firstLeadingBit(var_1.a) >= _wgslsmith_dot_vec4_u32(vec4<u32>(34880u, 0u, 69123u, arg_1.a), vec4<u32>(50917u, 20723u, var_1.a, var_1.a))), func_5(_wgslsmith_div_f32(arg_0.a, 1000f), func_5(_wgslsmith_f_op_f32(-793f + global1[_wgslsmith_index_u32(var_1.a, 4u)]), func_4(arg_1, Struct_2(u_input.a.x), vec4<f32>(1224f, 499f, global0.a, global0.a)), Struct_2(var_1.a)), func_2(_wgslsmith_mod_u32(u_input.b.x, arg_1.a), vec4<bool>(false, true, true, arg_2), true, -32688i)).b, -abs(arg_3) == 0i), arg_0.b);
    return func_5(_wgslsmith_f_op_f32(1077f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a))), func_6(u_input.c.x, Struct_1(1f, false), Struct_1(_wgslsmith_f_op_f32(abs(475f)), false | any(vec2<bool>(false, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(12609u, 4u)], var_0.a, -650f, global1[_wgslsmith_index_u32(3116u, 4u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, 1158f, var_2.x, 267f) + vec4<f32>(arg_0.a, 178f, var_2.x, -1318f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, 1508f, -751f, global0.a) - vec4<f32>(var_2.x, 618f, var_2.x, var_0.a)), !var_3)))), func_2((~16213u >> ((arg_1.a ^ 4294967295u) % 32u)) & _wgslsmith_div_u32(arg_1.a, ~79008u), !(!var_3), true, _wgslsmith_sub_i32(-36228i, -14686i)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-10781i, u_input.d, u_input.d)) | ~vec3<i32>(1i, u_input.d, u_input.d), (vec3<i32>(u_input.d, u_input.d, 27371i) >> (vec3<u32>(1u, 4294967295u, u_input.a.x) % vec3<u32>(32u))) << (~u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, 45887i), vec3<i32>(35732i, u_input.d, 0i))), -_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.d, 1i, 22267i), vec3<i32>(-1484i, -12296i, u_input.d), false), vec3<i32>(57247i, u_input.d, u_input.d))), abs(-2147483647i), ~countOneBits(u_input.d));
    global0 = func_7(func_6(0u, func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)], global0.a), _wgslsmith_f_op_f32(f32(-1f) * -612f)), func_4(func_2(0u, vec4<bool>(global0.b, global0.b, true, false), global0.b, 47806i), func_2(46113u, vec4<bool>(global0.b, false, false, global0.b), false, u_input.d), vec4<f32>(global0.a, global0.a, global1[_wgslsmith_index_u32(0u, 4u)], 781f)), func_2(4347u, vec4<bool>(true, true, global0.b, true), all(vec2<bool>(global0.b, true)), _wgslsmith_sub_i32(-1i, 1i))), Struct_1(-209f, global0.b & global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -2248f, global0.a) * vec4<f32>(-149f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -619f, global1[_wgslsmith_index_u32(48371u, 4u)])), vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], 236f, 627f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))))), func_2(1u, !select(!vec4<bool>(false, global0.b, global0.b, global0.b), !vec4<bool>(global0.b, false, false, true), select(vec4<bool>(true, true, global0.b, true), vec4<bool>(false, true, true, global0.b), vec4<bool>(true, global0.b, global0.b, global0.b))), true, ~(i32(-1i) * -7121i)), all(!select(!vec4<bool>(true, global0.b, false, true), vec4<bool>(global0.b, false, global0.b, global0.b), global0.b)), 2147483647i);
    var var_1 = Struct_2(countOneBits(32551u));
    let var_2 = vec4<bool>(any(!vec4<bool>(true, global0.b & false, false, -1i != var_0.x)), !select(!func_7(Struct_1(global0.a, false), Struct_2(1u), false, u_input.d).b, true, false && global0.b), true, 0u != u_input.b.x);
    var var_3 = func_2(14825u, vec4<bool>((_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a, 4u)]) != _wgslsmith_f_op_f32(ceil(-362f))) && global0.b, false, !any(select(vec3<bool>(global0.b, true, true), vec3<bool>(false, var_2.x, true), false)), (1u << (countOneBits(16366u) % 32u)) < u_input.b.x), false, var_0.x | -(i32(-1i) * -936i));
    return Struct_1(_wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1339f + -259f)), 597f))), !(any(var_2) && !(true & global0.b)));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_0;
    let var_0 = arg_0.b;
    let var_1 = func_2(func_3(Struct_2(0u), global0.a, func_2(func_2(arg_1.a, select(vec4<bool>(global0.b, true, arg_0.b, var_0), vec4<bool>(true, true, arg_0.b, true), vec4<bool>(var_0, true, arg_0.b, false)), true, _wgslsmith_mult_i32(2147483647i, u_input.d)).a, vec4<bool>(var_0, arg_0.b, !arg_0.b, func_4(arg_1, Struct_2(arg_1.a), vec4<f32>(arg_0.a, 1762f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global0.a)).b), !all(vec2<bool>(false, true)), -2147483647i), Struct_2(~func_2(1u, vec4<bool>(arg_0.b, false, false, false), false, u_input.d).a)).x, vec4<bool>(true, false, global0.b, false), !arg_0.b, i32(-1i) * -30327i);
    global2 = -591f;
    var var_2 = Struct_1(1000f, all(vec4<bool>(any(!vec2<bool>(global0.b, false)), false, func_1().b, true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(func_1(), func_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 0u)), firstTrailingBit(~u_input.a.zx)), vec4<bool>(true, !global0.b, global1[_wgslsmith_index_u32(u_input.c.x, 4u)] < _wgslsmith_f_op_f32(-global0.a), func_1().b), false, firstLeadingBit(u_input.d)));
    let var_0 = u_input.c.x;
    var var_1 = vec4<u32>(0u, 43536u, var_0, firstLeadingBit(u_input.c.x));
    global2 = -817f;
    var var_2 = Struct_2(0u);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(global0.a, func_7(Struct_1(-1245f, global0.b), Struct_2(12591u), global0.b, u_input.d), Struct_2(u_input.b.x)).a)));
    global0 = func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, ~1u), ~_wgslsmith_div_u32(var_0, var_0)), var_1.yz), func_1(), Struct_1(global0.a, global0.b || false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1259f, 2043f, 372f, global0.a) + vec4<f32>(1692f, global1[_wgslsmith_index_u32(16220u, 4u)], 936f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 462f, 709f, 1685f) + vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 4u)], global1[_wgslsmith_index_u32(var_2.a, 4u)], -1000f, global0.a)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(505f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(45267u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-453f, -311f, 1000f, _wgslsmith_f_op_f32(global0.a - global0.a))))), -firstTrailingBit(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -32356i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)))));
}

