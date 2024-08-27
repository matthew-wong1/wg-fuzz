struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(194f, -1000f);

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 19> = array<i32, 19>(11369i, 58951i, 6434i, 1i, 24475i, i32(-2147483648), i32(-2147483648), 50362i, 2147483647i, 13814i, -22378i, 21155i, 1i, 7864i, -35362i, 94322i, 6545i, -15849i, 3937i);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = 43200u;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1130f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + 1838f), -477f)))));
    var var_1 = u_input.a.x;
    var_0 = u_input.b;
    let var_2 = vec4<u32>(global0.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(~global0.a, 0u) << (0u % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, ~0u), min(74623u, global0.a))), u_input.b, 17805u);
    return _wgslsmith_f_op_f32(1099f + _wgslsmith_f_op_f32(-1000f * -2103f));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mod_u32(arg_3.x, global0.b), 16303u);
    var var_0 = Struct_2(~0u, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.a, countOneBits(vec2<i32>(-162i, 36819i))), u_input.a.x), vec3<i32>(~_wgslsmith_clamp_i32(0i, 22463i, -30175i), -max(u_input.a.x, u_input.a.x), u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - global1.x))))), _wgslsmith_f_op_f32(func_3(select(!arg_1, arg_1, vec3<bool>(true, global2.x, false))))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -894f)));
    let var_1 = select(vec2<bool>(!global2.x, !global2.x), vec2<bool>(274f > _wgslsmith_div_f32(1000f, global1.x), !(!global2.x)), !select(arg_1.xx, !(!vec2<bool>(arg_1.x, global2.x)), select(global2.yx, global2.zx, vec2<bool>(global2.x, false))));
    var var_2 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(min(max(85338u, arg_3.x), _wgslsmith_sub_u32(4294967295u, 4294967295u)), select(115218u, 0u, !global2.x), 0u), vec3<u32>(49227u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, global0.b, var_0.a, arg_2.x), vec4<u32>(60912u, u_input.b, global0.b, 4294967295u)), select(79116u, _wgslsmith_dot_vec4_u32(arg_2, arg_2), false)))), 19u)];
    var var_3 = countOneBits(4294967295u);
    return Struct_1(~(arg_3.x << (0u % 32u)), 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<i32> {
    global3 = array<i32, 19>();
    let var_0 = _wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_2.x, -2147483647i, -2147483647i) & vec3<i32>(arg_2.x, arg_0, 1i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(22187i, u_input.a.x, arg_0), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(26291u, 19u)], 44769i)))), -vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.b, u_input.b), 19u)], ~(-10213i), arg_2.x) & -_wgslsmith_mult_vec3_i32(max(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], 14852i, global3[_wgslsmith_index_u32(29133u, 19u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], u_input.a.x, -56090i)), -vec3<i32>(arg_2.x, -19502i, 59469i)));
    global0 = arg_1;
    var var_1 = vec3<u32>(global0.b, global0.b, global0.b);
    let var_2 = firstTrailingBit(var_1.x);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-(arg_0 | arg_0), var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(-arg_0, _wgslsmith_div_i32(2534i, global3[_wgslsmith_index_u32(u_input.b, 19u)]), 1i >= arg_2.x), _wgslsmith_div_i32(_wgslsmith_add_i32(-28339i, arg_2.x), u_input.a.x)), select(_wgslsmith_sub_vec2_i32(reverseBits(var_0.zx), _wgslsmith_mod_vec2_i32(var_0.yy, vec2<i32>(u_input.a.x, u_input.a.x))), var_0.zy, ~u_input.b != u_input.b)), -3018i, global3[_wgslsmith_index_u32(reverseBits(~(~20207u)), 19u)]);
}

fn func_1() -> u32 {
    var var_0 = global2.x && global2.x;
    let var_1 = -_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-33320i, global3[_wgslsmith_index_u32(global0.b, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)]), vec3<i32>(global3[_wgslsmith_index_u32(global0.b, 19u)], u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 1i), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, -23468i, -1i, -2147483647i)), func_4(u_input.a.x, func_2(u_input.b, vec3<bool>(global2.x, true, global2.x), vec4<u32>(1u, u_input.b, global0.b, 1u), vec3<u32>(u_input.b, u_input.b, 5998u)), countOneBits(u_input.a))));
    let var_2 = ~(vec4<i32>(-firstTrailingBit(16786i), 29072i, 2147483647i, _wgslsmith_add_i32(-2147483647i, -1i)) << ((firstTrailingBit(min(vec4<u32>(u_input.b, u_input.b, u_input.b, 49307u), vec4<u32>(global0.a, 0u, 44566u, global0.a))) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 43075u, global0.b, global0.a), min(vec4<u32>(global0.a, u_input.b, 33448u, u_input.b), vec4<u32>(46136u, 16705u, 105167u, 1u)))) % vec4<u32>(32u)));
    var var_3 = abs(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global0.a, u_input.b)), vec2<u32>(_wgslsmith_add_u32(global0.a, 4294967295u), ~global0.b))) | reverseBits(vec2<u32>(_wgslsmith_sub_u32(func_2(global0.b, vec3<bool>(true, false, global2.x), vec4<u32>(51893u, 62221u, global0.a, global0.a), vec3<u32>(0u, 4294967295u, u_input.b)).b, u_input.b), ~global0.a));
    global2 = !vec3<bool>(true, true, select(global2.x, false, false || global2.x));
    return 48321u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 19>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1868f, _wgslsmith_f_op_f32(-global1.x)) * vec2<f32>(924f, global1.x)))));
    let var_0 = Struct_1(u_input.b, _wgslsmith_mult_u32(func_1(), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a, _wgslsmith_clamp_u32(4294967295u, 4155u, 4294967295u), max(u_input.b, u_input.b)), _wgslsmith_mult_u32(46104u, min(1u, 1u)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1804f, -682f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -416f)))), vec2<bool>(all(vec3<bool>(true, global2.x, false)), global2.x)))));
    let var_1 = func_2(var_0.b, !select(select(vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(false, global2.x, global2.x), true & global2.x), vec3<bool>(any(vec4<bool>(false, global2.x, true, true)), global2.x && true, false & global2.x), any(select(vec2<bool>(false, false), global2.yz, global2.x))), min(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 1u, var_0.b, 19868u) ^ vec4<u32>(global0.b, global0.a, u_input.b, 8769u), countOneBits(vec4<u32>(0u, var_0.b, 60466u, u_input.b))), vec4<u32>(reverseBits(var_0.a), ~4294967295u, ~global0.b, 4294967295u)), vec4<u32>(~10630u, global0.a, var_0.a, global0.a) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.b, var_0.a, u_input.b), vec4<u32>(26387u, var_0.b, 4294967295u, var_0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, global0.a, 0u, 44354u), vec4<u32>(global0.a, u_input.b, u_input.b, var_0.b)), vec4<u32>(u_input.b, 0u, var_0.a, 59538u) ^ vec4<u32>(global0.b, global0.a, global0.a, 4294967295u))), _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, global0.a), vec3<u32>(1u, 67731u, u_input.b))), ~(~max(vec3<u32>(4294967295u, var_0.b, var_0.a), vec3<u32>(global0.a, global0.a, u_input.b))), select(select(max(vec3<u32>(54010u, 37694u, 1u), vec3<u32>(0u, u_input.b, 14803u)), vec3<u32>(1u, global0.a, 4294967295u), global1.x < -182f), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 12836u, 14579u), _wgslsmith_div_vec3_u32(vec3<u32>(18760u, 0u, 110638u), vec3<u32>(u_input.b, 60226u, 4294967295u))), true)));
    global2 = !vec3<bool>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), any(!(!vec4<bool>(true, false, global2.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec4<i32>(abs(1i), countOneBits(u_input.a.x), global3[_wgslsmith_index_u32(~22905u, 19u)], 1i)));
}

