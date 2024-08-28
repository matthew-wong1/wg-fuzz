struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, i32(-2147483648), 22712i), vec3<f32>(-1370f, -676f, -428f), vec3<i32>(36833i, -1i, i32(-2147483648)));

var<private> global1: array<i32, 19>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>) -> i32 {
    global0 = Struct_1(global0.d.yy, global0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(851f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_vec3_f32(-global0.c), select(arg_1, select(!vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(false, true, arg_1.x), arg_1.x)), vec3<bool>(true, any(arg_1), true)))), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(-10033i, 23451i, global0.d.x) ^ vec3<i32>(arg_0.x, -2147483647i, -16853i), vec3<i32>(-1i, 2147483647i, -2147483647i))));
    var var_0 = firstLeadingBit(global0.b.zy);
    let var_1 = u_input.a.xx;
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(2461i, 1i) | arg_0, vec2<i32>(firstTrailingBit(global0.b.x) >> (max(u_input.a.x, 12325u) % 32u), 8241i)), ~(-(~(global0.b >> (vec4<u32>(1u, var_1.x, u_input.a.x, var_1.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.x, global0.c.x, global0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, -1000f, -193f)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -279f, global0.c.x), _wgslsmith_f_op_vec3_f32(-global0.c))))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), global0.d) & vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(81873u, 19u)], global0.d.x)) << (~vec3<u32>(1u, u_input.a.x, ~4294967295u) % vec3<u32>(32u)));
    var_0 = global0.d.yy;
    return ~global0.d.x;
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(646f, global0.c.x)), _wgslsmith_f_op_f32(-1685f * global0.c.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.x - global0.c.x)))) + global0.c.x)));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, u_input.a) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(abs(12961u), 2017u, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_clamp_u32(19186u, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 46024u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 20063u, 41224u, u_input.a.x)))));
    global0 = Struct_1(global0.b.zx, vec4<i32>(~func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_1, 19u)], 38147i), vec2<i32>(arg_0, arg_0)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), ~global1[_wgslsmith_index_u32(abs(u_input.a.x << (4294967295u % 32u)), 19u)], ~(-1i), 20940i), global0.c, select(global0.d, _wgslsmith_mod_vec3_i32(~vec3<i32>(-79103i, -2147483647i, 1i) ^ abs(vec3<i32>(-40325i, 2147483647i, global0.b.x)), global0.d), vec3<bool>(true | (var_1 != 4294967295u), false, all(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_f_op_f32(-1000f - 1141f);
    let var_2 = vec4<bool>(true, true, select(false, true, true), any(vec4<bool>(true, true, true, true)) && !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))));
    return min(vec2<i32>(~arg_0, _wgslsmith_mod_i32(0i, -abs(arg_0))), ~_wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(2147483647i, 65294i)), vec2<i32>(-arg_0, -2147483647i)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_1;
    let var_0 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(vec2<i32>(-2147483647i, 0i), select(~countOneBits(max(arg_2.b, global0.b)), arg_2.b, vec4<bool>(any(vec4<bool>(var_0.x, true, var_0.x, true)), var_0.x, !var_0.x, select(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x, true))), _wgslsmith_f_op_vec3_f32(max(arg_1.c, _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1525f, arg_1.c.x, 1000f) - _wgslsmith_f_op_vec3_f32(abs(arg_2.c)))))), ~countOneBits((arg_2.d << (vec3<u32>(34304u, 37812u, u_input.a.x) % vec3<u32>(32u))) >> (reverseBits(u_input.a) % vec3<u32>(32u))));
    var var_2 = 30099u;
    let var_3 = vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-781f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -445f)))) + 1866f));
    return arg_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, _wgslsmith_f_op_f32(global0.c.x - global0.c.x)))));
    let var_1 = func_4(_wgslsmith_f_op_f32(abs(-1882f)), func_4(func_4(_wgslsmith_f_op_f32(109f - _wgslsmith_f_op_f32(832f - arg_1.c.x)), func_4(_wgslsmith_f_op_f32(max(1158f, var_0.x)), arg_1, arg_1), Struct_1(arg_1.d.xz, vec4<i32>(global1[_wgslsmith_index_u32(70346u, 19u)], 5136i, arg_0.x, 20275i), vec3<f32>(global0.c.x, arg_1.c.x, arg_1.c.x), vec3<i32>(global0.b.x, arg_1.b.x, 71236i))).c.x, arg_1, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(529f)) - _wgslsmith_f_op_f32(sign(2121f))), arg_1, arg_1)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~5392u, 19u)], 2147483647i), min(-2147483647i, 1i)), vec4<i32>(-arg_0.x, global1[_wgslsmith_index_u32(min(u_input.a.x, 61178u), 19u)], _wgslsmith_div_i32(abs(global1[_wgslsmith_index_u32(0u, 19u)]), 16099i), -global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.c)) - _wgslsmith_f_op_vec3_f32(global0.c - global0.c)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -132f)), false || all(vec3<bool>(true, true, true)))), -vec3<i32>(arg_1.a.x, arg_1.a.x ^ -7107i, global1[_wgslsmith_index_u32(~u_input.a.x, 19u)])));
    global1 = array<i32, 19>();
    global0 = Struct_1(global0.a, select(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -2536i)), 57437i, func_2(i32(-1i) * -1i).x, func_3(min(global0.b.xy, vec2<i32>(-2147483647i, 12753i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), -vec4<i32>(countOneBits(-1i), abs(global0.b.x), firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, global1[_wgslsmith_index_u32(40503u, 19u)]), vec4<i32>(arg_1.b.x, 15517i, -38428i, 0i))), true), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.c.x, 207f)), 763f, true))), _wgslsmith_div_f32(-278f, _wgslsmith_div_f32(707f, 878f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-9128i, -(~(-1i)), 35528i), ~global0.b.zxz, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_1.a.x, 0i), -36049i, arg_0.x), var_1.d)));
    let var_2 = u_input.a.x;
    return Struct_1(-vec2<i32>(-select(var_1.a.x, arg_0.x, true), func_2(33068i >> (u_input.a.x % 32u)).x), -select(vec4<i32>(global0.b.x, 1i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 0i), vec2<i32>(global0.d.x, 29487i))), arg_0, select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(745f, global0.c.x, false)) - _wgslsmith_f_op_f32(-var_1.c.x)) * 424f), arg_1.c.x), _wgslsmith_clamp_vec3_i32(~global0.d, arg_0.zxz, -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, var_1.a.x, global1[_wgslsmith_index_u32(124750u, 19u)]), firstLeadingBit(global0.b.xyz))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_5(global0.b, func_4(1634f, Struct_1(func_2(firstLeadingBit(global1[_wgslsmith_index_u32(20432u, 19u)])), ~global0.b | arg_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-216f, global0.c.x, global0.c.x))), _wgslsmith_div_vec3_f32(vec3<f32>(2012f, global0.c.x, global0.c.x), global0.c), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), vec3<i32>(~(-5455i), global0.d.x, global0.b.x)), Struct_1(max(-global0.a, vec2<i32>(global0.b.x, -1i) & arg_0.xz), -arg_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(151f, 127f, global0.c.x) - global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-505f, global0.c.x, global0.c.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -33687i), arg_0.yxw) | global0.b.zwz)));
    global1 = array<i32, 19>();
    var var_1 = Struct_1(vec2<i32>(24791i, arg_0.x), arg_0, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.c.x, 358f, 876f))), var_0.b.xyz);
    var var_2 = func_4(-546f, Struct_1(vec2<i32>(~global1[_wgslsmith_index_u32(21341u & u_input.a.x, 19u)], _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.x, var_0.b.x), ~(-2147483647i))), vec4<i32>(firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(-55496i, ~(-2492i)), -var_0.b.x, func_4(_wgslsmith_div_f32(-806f, global0.c.x), func_4(1002f, Struct_1(arg_0.wy, global0.b, vec3<f32>(var_0.c.x, var_0.c.x, global0.c.x), var_1.b.zzw), var_0), func_4(var_1.c.x, Struct_1(var_1.a, vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -1i, -17204i, global0.a.x), vec3<f32>(846f, global0.c.x, global0.c.x), vec3<i32>(var_1.a.x, 11436i, arg_0.x)), var_0)).d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(520f, 2308f, -187f))))), _wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.x, var_1.c.x, 283f), vec3<f32>(var_1.c.x, var_0.c.x, global0.c.x))))), ~vec3<i32>(1i, -10129i, ~66244i)), Struct_1(~vec2<i32>(~arg_0.x, _wgslsmith_mult_i32(-1747i, var_0.d.x)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 19u)], var_1.a.x, -2147483647i, 11550i) & vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_0.x, var_0.b.x, arg_0.x), var_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -47214i, global0.d.x, var_0.a.x), var_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) * var_1.c), vec3<i32>(-_wgslsmith_sub_i32(-2147483647i, global0.a.x), (global1[_wgslsmith_index_u32(u_input.a.x, 19u)] >> (u_input.a.x % 32u)) | 0i, ~(var_1.d.x >> (11525u % 32u)))));
    let var_3 = var_0;
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(max(var_1.c.x, -1000f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(725f - -356f)))), func_5(~_wgslsmith_mod_vec4_i32(var_1.b, global0.b), Struct_1(-vec2<i32>(-10386i, arg_0.x), select(arg_0 << (vec4<u32>(u_input.a.x, 10368u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), var_3.b, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c, var_2.c)), _wgslsmith_mod_vec3_i32(firstLeadingBit(arg_0.wxx), vec3<i32>(var_0.a.x, var_0.a.x, var_1.a.x)))), Struct_1(firstLeadingBit(var_3.d.xx), var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(vec4<i32>(arg_0.x, -1i, var_1.b.x, var_1.d.x), var_0).c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(568f, -309f, 653f))))), global0.b.xxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-_wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(u_input.a.x, 19u)] | 0i, 55744i), -_wgslsmith_mod_i32(global0.b.x, -47484i), -24479i);
    global0 = func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 69771u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 75640u, 1u, u_input.a.x)), 19u)]), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global0.d.xy, vec2<i32>(6754i, 1i)), -2123i), _wgslsmith_clamp_i32(0i, min(-2147483647i, -1611i), global0.b.x), 17751i), ~global0.b));
    let var_1 = _wgslsmith_sub_vec3_u32(u_input.a, firstTrailingBit(~(~u_input.a)));
    let var_2 = 1u;
    var var_3 = abs(~(-_wgslsmith_sub_i32(var_0.x, global0.a.x)));
    var_0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global0.b << (vec4<u32>(935u, 4294967295u, var_2, var_2) % vec4<u32>(32u)), vec4<i32>(-2147483647i, global0.b.x, 2147483647i, global1[_wgslsmith_index_u32(1u, 19u)])), global0.b), -(~45662i) & (~(-2147483647i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(98937u, 78129u, var_1.x, 1u), vec4<u32>(116647u, 4294967295u, 4294967295u, 61579u)) % 32u)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global0.c.xy, vec2<f32>(global0.c.x, func_4(global0.c.x, func_5(global0.b, Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(147660u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec4<i32>(-14370i, global0.a.x, -486i, 1i), vec3<f32>(-917f, global0.c.x, 236f), global0.d)), func_5(vec4<i32>(global0.d.x, global1[_wgslsmith_index_u32(73646u, 19u)], 2147483647i, global1[_wgslsmith_index_u32(84532u, 19u)]), Struct_1(var_0.zy, global0.b, vec3<f32>(3051f, -1060f, global0.c.x), global0.b.yxx))).c.x), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_5(~vec4<i32>(16622i, global0.a.x, var_0.x, global0.a.x), Struct_1(global0.b.yz, global0.b, vec3<f32>(234f, 793f, global0.c.x), vec3<i32>(global0.a.x, global0.a.x, global0.a.x))).c.x), _wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_add_u32(20464u >> (0u % 32u), var_2) < _wgslsmith_dot_vec2_u32(vec2<u32>(67692u, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.a.zy, var_1.yx, vec2<u32>(u_input.a.x, 1u))))), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(47845i, var_0.x, 0i), global0.b.zyz << (vec3<u32>(34624u, u_input.a.x, 18797u) % vec3<u32>(32u))), firstLeadingBit(-20317i))), global0.b.wzx, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-707f)) + global0.c.x), func_5(_wgslsmith_clamp_vec4_i32(global0.b, vec4<i32>(2147483647i, global0.a.x, -991i, global1[_wgslsmith_index_u32(var_2, 19u)]), global0.b), func_5(vec4<i32>(global0.d.x, -65442i, global1[_wgslsmith_index_u32(var_2, 19u)], -2147483647i), Struct_1(var_0.xx, global0.b, global0.c, global0.d))).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2044f, 115f, false))), _wgslsmith_div_f32(global0.c.x, -651f)));
}

