struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, true, false, false, true, false, false, false);

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(any(select(select(global1.zzx, select(vec3<bool>(arg_1.c, true, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false, global1.x), global1.x), global1.yww), global1.xxw, !vec3<bool>(arg_1.c, arg_1.c, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(-422f, -335f))))));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(select(abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c.x), u_input.c), !var_0.a), _wgslsmith_dot_vec2_u32(~u_input.c.xx, ~u_input.c.zy), select(arg_0.a, _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(40168u, 40066u)), !arg_1.c)), ~firstTrailingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, arg_0.a, 22399u), u_input.c), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(4294967295u, arg_0.a, arg_0.a)), !global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), ~u_input.c);
    let var_2 = Struct_4(arg_0.a);
    return select(!select(vec3<bool>(global0[_wgslsmith_index_u32(59596u, 10u)], true, all(global1.wx)), global1.zwx, true), vec3<bool>(all(select(!vec3<bool>(arg_1.c, true, arg_1.c), global1.zwx, select(global1.yxz, global1.xxy, vec3<bool>(arg_1.c, false, true)))), !select(any(global1.zx), true, any(vec3<bool>(var_0.a, global1.x, true))), all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(84722u, 10u)], false, true), select(vec4<bool>(true, true, false, global1.x), vec4<bool>(true, arg_1.c, global1.x, true), false), global0[_wgslsmith_index_u32(var_1.x, 10u)] | false))), false);
}

fn func_4(arg_0: vec3<bool>) -> vec4<f32> {
    global1 = select(select(select(!select(vec4<bool>(global1.x, arg_0.x, true, global1.x), vec4<bool>(true, false, global1.x, false), vec4<bool>(false, arg_0.x, false, true)), vec4<bool>(select(true, false, global0[_wgslsmith_index_u32(0u, 10u)]), all(global1.yz), global1.x, true), func_3(Struct_4(u_input.b), Struct_2(vec4<i32>(-8754i, -1i, 15047i, u_input.a), 1i, arg_0.x, vec2<i32>(1i, -2147483647i))).x), vec4<bool>(arg_0.x, any(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(43561u, 10u)])), all(!arg_0), false), select(select(select(vec4<bool>(global1.x, true, true, arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global1.x, true), vec4<bool>(false, false, arg_0.x, true)), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true)), select(vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(1u, 10u)], global1.x), vec4<bool>(false, false, false, false), vec4<bool>(true, global1.x, false, false))), !(!vec4<bool>(true, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 10u)])), !(!vec4<bool>(false, arg_0.x, global1.x, global0[_wgslsmith_index_u32(u_input.b, 10u)])))), vec4<bool>(global1.x, all(arg_0.zx), true, func_3(Struct_4(1u), Struct_2(select(vec4<i32>(-28809i, -13213i, u_input.a, 1i), vec4<i32>(7937i, 0i, u_input.a, 2147483647i), vec4<bool>(true, true, true, true)), u_input.a, all(vec4<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global1.x, global0[_wgslsmith_index_u32(0u, 10u)])), ~vec2<i32>(2147483647i, u_input.a))).x), vec4<bool>((u_input.a >> (u_input.b % 32u)) >= firstTrailingBit(u_input.a), any(arg_0.yz) & true, true, arg_0.x));
    global0 = array<bool, 10>();
    var var_0 = vec2<bool>(arg_0.x, u_input.b >= 0u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(2485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1462f - _wgslsmith_div_f32(768f, 114f))), -226f, _wgslsmith_f_op_f32(sign(-1279f))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = func_3(Struct_4(u_input.c.x), Struct_2(_wgslsmith_div_vec4_i32(abs(arg_1) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, arg_1.x, u_input.a, u_input.a), -vec4<i32>(u_input.a, arg_1.x, 0i, -28871i))), arg_1.x, any(select(select(global1.wzy, vec3<bool>(true, true, false), global1.wyx), global1.wwx, all(vec4<bool>(global1.x, false, true, true)))), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-24938i, arg_1.x), vec2<i32>(1i, arg_1.x)), -arg_1.wx, arg_1.xy) & -(~vec2<i32>(0i, -1i)))).x;
    global1 = vec4<bool>(!((arg_1.x < (arg_1.x ^ -2147483647i)) && true), _wgslsmith_clamp_i32(-1i, u_input.a, ~u_input.a) >= _wgslsmith_add_i32(max(_wgslsmith_div_i32(-2147483647i, 2147483647i), arg_1.x << (u_input.b % 32u)), arg_1.x), !global0[_wgslsmith_index_u32(u_input.c.x, 10u)], var_0);
    global1 = vec4<bool>(any(!select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), !vec4<bool>(false, var_0, var_0, false), all(vec4<bool>(false, false, global1.x, false)))), false, !var_0, true);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(select(global1.zwy, select(select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 10u)]), global1.zwx, false), vec3<bool>(true, false, var_0), global1.wyx), global1.zwy, false), all(!global1.yxx)))).x;
    return firstLeadingBit(_wgslsmith_div_i32(-u_input.a ^ u_input.a, arg_1.x & -38287i) ^ _wgslsmith_dot_vec2_i32(countOneBits(min(vec2<i32>(-1i, arg_1.x), vec2<i32>(-9771i, arg_1.x))), vec2<i32>(arg_1.x, 2147483647i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_2(arg_3, -min(_wgslsmith_clamp_i32(abs(37443i), -41704i, _wgslsmith_dot_vec2_i32(arg_0, arg_0)), ~(arg_2.x >> (4294967295u % 32u))), select((arg_1.x && any(global1.zyy)) || true, arg_1.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(~32772u, u_input.b, true), 0u), 10u)]), -(~(~_wgslsmith_mult_vec2_i32(arg_3.ww, vec2<i32>(-21050i, -1i)))));
    let var_2 = arg_0.x | func_5(_wgslsmith_f_op_vec4_f32(func_4(!func_3(Struct_4(6627u), Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, arg_3.x), var_1.a.x, arg_1.x, vec2<i32>(u_input.a, arg_0.x))))), vec4<i32>(2147483647i, -27659i, 2147483647i, 2666i));
    let var_3 = select(vec2<u32>(select(u_input.b, u_input.c.x, arg_1.x), 27170u), ~(~u_input.c.xx) ^ ~(~vec2<u32>(36028u, 0u)), !(!vec2<bool>(all(vec4<bool>(arg_1.x, true, global1.x, var_1.c)), false)));
    let var_4 = vec3<bool>(false, !global0[_wgslsmith_index_u32(var_3.x, 10u)], all(select(select(arg_1.zy, vec2<bool>(arg_1.x, false), func_3(Struct_4(u_input.b), Struct_2(arg_3, 1417i, var_1.c, var_1.a.xw)).xz), func_3(Struct_4(u_input.c.x), Struct_2(arg_3, u_input.a, arg_1.x, vec2<i32>(arg_3.x, u_input.a))).zy, all(vec3<bool>(true, true, true)) == global0[_wgslsmith_index_u32(u_input.c.x, 10u)])));
    return 1071f;
}

fn func_6(arg_0: bool) -> Struct_4 {
    global0 = array<bool, 10>();
    let var_0 = Struct_2(vec4<i32>(-14628i, 0i << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c.x, 41746u, u_input.b, 10659u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), vec4<u32>(16381u, u_input.b, u_input.b, 4294967295u)) % 32u), func_5(vec4<f32>(1f, 1f, 1f, 1f), -_wgslsmith_add_vec4_i32(vec4<i32>(-27134i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), u_input.a), u_input.a, all(global1.zx), ~vec2<i32>(firstLeadingBit(-1i), ~0i));
    global0 = array<bool, 10>();
    let var_1 = firstLeadingBit(u_input.a);
    global1 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, !any(vec4<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(57176u, 10u)], false)), !(-1i > var_1)), !select(!vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(29951u, 10u)], true), vec4<bool>(global1.x, false, arg_0, false), global1.x && false), false), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global1.x, true), vec4<bool>(true, true, arg_0, global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec4<bool>(false, false, var_0.c, false)), global1.x), vec4<bool>(!global1.x, true, all(vec2<bool>(global1.x, var_0.c)), false), vec4<bool>(arg_0, arg_0, false, true)), select(false, arg_0, global1.x));
    return Struct_4(~u_input.b);
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = 0u;
    let var_1 = u_input.b;
    let var_2 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-1205f, -541f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<i32>(2358i, 8455i), vec3<bool>(arg_0.a, true, global1.x), vec2<i32>(-15076i, u_input.a), vec4<i32>(-18567i, u_input.a, u_input.a, u_input.a)))))) > _wgslsmith_f_op_f32(sign(2194f)));
    global0 = array<bool, 10>();
    let var_3 = true;
    return ~(~((vec4<u32>(var_2.a, 0u, 4294967295u, u_input.b) << (vec4<u32>(1u, var_2.a, var_1, 0u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(39355u, 1u, 1u, var_2.a), vec4<u32>(var_1, 34623u, var_2.a, 29602u)), ~vec4<u32>(33062u, var_1, 25737u, u_input.c.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(4294967295u >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u)), select(0u << (abs(u_input.b) % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(63u, 5238u, u_input.b, 0u)), func_1(Struct_3(true))), true)), ~vec2<u32>(u_input.b, 9612u));
    global0 = array<bool, 10>();
    var var_1 = Struct_2(vec4<i32>(u_input.a, -2147483647i, -18892i, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 10728i, 2147483647i), vec3<i32>(u_input.a, 2147483647i, 1i))), 0i, select(true && global1.x, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(var_0.x), _wgslsmith_clamp_u32(var_0.x, 38297u, var_0.x)), 10u)], true), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(23424i, u_input.a, 22130i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)) | -vec4<i32>(u_input.a, u_input.a, u_input.a, 26212i), countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), abs(u_input.a)));
    global1 = vec4<bool>(true, 1i >= u_input.a, global0[_wgslsmith_index_u32(59226u, 10u)] | (countOneBits(~var_0.x) >= ~(~var_0.x)), (true | (max(-41220i, var_1.d.x) > abs(var_1.d.x))) != true);
    var var_2 = -min(var_1.a, firstTrailingBit(select(var_1.a, var_1.a ^ var_1.a, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], var_1.c, var_1.c))));
    var_1 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, var_1.d.x, u_input.a, -(~69834i)), vec4<i32>(var_1.b, -u_input.a & var_1.d.x, max(49047i, max(-1i, -39026i)), ~var_2.x)), 9469i, global0[_wgslsmith_index_u32(var_0.x, 10u)], ~(~countOneBits(var_2.yw)));
    let var_3 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, u_input.b) >> (u_input.c % vec3<u32>(32u)), ~u_input.c), vec3<u32>(u_input.c.x, abs(var_0.x), u_input.c.x | 49393u), u_input.c), u_input.c);
    var_2 = var_1.a;
    var var_4 = Struct_4(~_wgslsmith_div_u32(~countOneBits(23980u), _wgslsmith_mult_u32(7354u, 3741u) >> (firstLeadingBit(68244u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1639f, -828f)))), -var_2.x, _wgslsmith_mult_vec2_u32(max(vec2<u32>(abs(4294967295u), 46087u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.zx)), var_3.zx), _wgslsmith_dot_vec4_u32(abs(func_1(Struct_3(var_1.c))), select(vec4<u32>(56505u, var_3.x, 1u, 1u), vec4<u32>(var_3.x, 47266u, var_0.x, 0u), !vec4<bool>(global0[_wgslsmith_index_u32(var_4.a, 10u)], var_1.c, false, global0[_wgslsmith_index_u32(u_input.b, 10u)])) | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, var_3.x, 52721u), vec4<u32>(0u, u_input.b, var_0.x, var_3.x)))));
}

