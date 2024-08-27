struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 3>;

var<private> global2: array<bool, 24>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_add_vec2_u32(select(global0.a.xz, vec2<u32>(1u, global0.a.x), true), global0.a.yz)), global0.a.x);
    var var_1 = ~((firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x) ^ vec4<i32>(global3.x, global3.x, 21357i, global0.b)) >> (vec4<u32>(~global0.a.x, global0.a.x, var_0.x, var_0.x | 30126u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.a.x, -40768i, -91603i, global3.x), select(vec4<i32>(global0.b, u_input.a.x, u_input.a.x, 12970i), vec4<i32>(-29858i, global0.b, 1i, global3.x), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 24u)], false))), firstLeadingBit(~vec4<i32>(11609i, global0.b, u_input.a.x, -2147483647i))));
    var var_2 = -(min(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(18430i, -2147483647i)), vec2<i32>(u_input.a.x, -2147483647i)) & vec2<i32>(0i, u_input.a.x & 2147483647i)) << (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))))), _wgslsmith_sub_vec3_u32(select(~global0.a, global0.a, !vec3<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 24u)], global2[_wgslsmith_index_u32(12054u, 24u)])), abs(global0.a)), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 24u)], true, global2[_wgslsmith_index_u32(52779u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x, 24u)], global2[_wgslsmith_index_u32(10684u, 24u)], global2[_wgslsmith_index_u32(global0.a.x, 24u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(7309u, 24u)], false, true, global2[_wgslsmith_index_u32(var_0.x, 24u)])), vec4<bool>(true & global2[_wgslsmith_index_u32(var_0.x, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13410u, global0.a.x, var_0.x), 24u)], global2[_wgslsmith_index_u32(0u, 24u)] || false, global2[_wgslsmith_index_u32(26981u, 24u)]), vec4<bool>(select(true, true, true), select(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(3184u, 24u)], global2[_wgslsmith_index_u32(81157u, 24u)]), true, all(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 24u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 796f) * 510f) * _wgslsmith_f_op_f32(exp2(global0.c))), abs(_wgslsmith_dot_vec3_u32(global0.a | global0.a, vec3<u32>(0u, global0.a.x, global0.a.x) | global0.a))));
    let var_4 = global0.d;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.zwy), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_4.zww)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = countOneBits(~28912i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.d) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.e + global0.d) * _wgslsmith_f_op_vec4_f32(arg_1.a.e + vec4<f32>(arg_1.a.c, global0.c, -1908f, 1221f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, 426f) + -1000f), _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(_wgslsmith_div_f32(arg_1.c.x, -869f), _wgslsmith_f_op_f32(f32(-1f) * -139f)))).x, arg_0.d, -737f));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> vec3<u32> {
    var var_0 = Struct_1(global0.a, _wgslsmith_mult_i32(arg_2 << (max(reverseBits(global0.a.x), ~48544u) % 32u), ~global3.x), _wgslsmith_f_op_f32(step(arg_1, 1838f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_f_op_f32(arg_1 + -1204f), global0.a, select(vec4<bool>(arg_0.x, true, arg_0.x, global2[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, arg_0.x, arg_0.x, true)), -1211f, 66713u), Struct_4(Struct_1(vec3<u32>(44206u, global0.a.x, 0u), global3.x, global0.c, global0.e, vec4<f32>(714f, 1699f, -538f, -463f)), select(vec4<bool>(arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(48795u, 24u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 24u)], false, false), arg_0.x), _wgslsmith_f_op_vec3_f32(func_3(global0.d.wz)), Struct_2(-774f, global0.a, vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(22337u, 24u)], arg_0.x, arg_0.x), arg_1, 4542u)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(401f, -254f, 2188f, arg_1))), global0.d, global2[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.e)), _wgslsmith_f_op_vec4_f32(-global0.e)));
    var var_1 = select(!(!arg_0), vec3<bool>(global2[_wgslsmith_index_u32(~global0.a.x, 24u)], global0.a.x == _wgslsmith_clamp_u32(46711u, global0.a.x & global0.a.x, abs(4294967295u)), !(!(var_0.e.x != 666f))), true);
    var_1 = vec3<bool>(!var_1.x, arg_0.x, var_1.x | all(!vec3<bool>(arg_0.x, false, true)));
    var var_2 = 4294967295u;
    global0 = Struct_1(select(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a, var_0.a), ~(~45398u), _wgslsmith_clamp_u32(~var_0.a.x, global0.a.x, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(807u, 1u, global0.a.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, global0.a.x), var_0.a) % vec3<u32>(32u)), ~reverseBits(global0.a)), (any(vec4<bool>(true, false, var_1.x, false)) & (var_0.d.x > 217f)) || (_wgslsmith_f_op_f32(exp2(var_0.e.x)) >= _wgslsmith_f_op_f32(arg_1 - 635f))), reverseBits(firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_i32(global3.ywx, vec3<i32>(global0.b, 2147483647i, global3.x))))), -1000f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), global0.d.x), _wgslsmith_f_op_f32(round(-606f)), _wgslsmith_f_op_f32(-global0.e.x), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_div_f32(-1182f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(436f, -547f)) * arg_1), -1537f)));
    return vec3<u32>(var_0.a.x, firstLeadingBit(~(~(~1u))), ~select(13367u, 42360u, true && !var_1.x));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(func_2(vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 24u)], true)), global2[_wgslsmith_index_u32(~15495u, 24u)], !(global2[_wgslsmith_index_u32(1u, 24u)] | global2[_wgslsmith_index_u32(global0.a.x, 24u)])), -676f, ~((37906i | global0.b) << (~0u % 32u))), -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global3.x, 0i)), ~(~vec2<i32>(41779i, u_input.a.x))), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1293f, 713f, 683f, 1000f))), global0.e)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(292f, _wgslsmith_div_f32(global0.c, 1117f), _wgslsmith_f_op_f32(global0.d.x - 636f), 541f)))), global0.e);
    var var_1 = global0.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.e - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, global0.e.x, var_0.e.x, -540f))), global0.d)))));
    var var_3 = Struct_4(var_0, vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 24u)], false, ~firstLeadingBit(1u) >= (_wgslsmith_mult_u32(global0.a.x, global0.a.x) & _wgslsmith_mult_u32(8300u, global0.a.x)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yyx), vec3<f32>(289f, _wgslsmith_f_op_f32(127f + 362f), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(160f, global0.a, vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], false), -682f, 0u), Struct_4(var_0, vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(0u, 24u)]), var_2.zzz, Struct_2(global0.d.x, var_0.a, vec4<bool>(true, true, global2[_wgslsmith_index_u32(5793u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), 1000f, 5242u)))).x)), Struct_2(339f, _wgslsmith_sub_vec3_u32(~var_0.a ^ max(var_0.a, var_0.a), vec3<u32>(0u, global0.a.x | var_0.a.x, ~4294967295u)), !vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x & 48047u, 24u)], any(vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 24u)], global2[_wgslsmith_index_u32(41237u, 24u)], global2[_wgslsmith_index_u32(global0.a.x, 24u)])), global2[_wgslsmith_index_u32(global0.a.x | 1038u, 24u)], any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false, global2[_wgslsmith_index_u32(62321u, 24u)]))), _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(var_2.x, var_2.x))).x, 1u));
    let var_4 = Struct_4(var_3.a, !vec4<bool>(true, global2[_wgslsmith_index_u32(var_3.a.a.x, 24u)], any(!vec3<bool>(global2[_wgslsmith_index_u32(global0.a.x, 24u)], global2[_wgslsmith_index_u32(var_3.d.e, 24u)], var_3.b.x)), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f - 1000f) - _wgslsmith_f_op_f32(select(-272f, var_3.a.c, var_3.b.x))), -250f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(548f, 529f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.wyx + global0.e.zwy)))), select(!vec3<bool>(true, false, var_3.d.c.x), !vec3<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 24u)], true), false))), var_3.d);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(step(-696f, 2832f)), vec3<u32>(~89258u, 40125u, ~_wgslsmith_mod_u32(var_0.a.x, 4294967295u)), select(!(!vec4<bool>(var_3.d.c.x, global2[_wgslsmith_index_u32(1u, 24u)], var_4.b.x, var_4.b.x)), vec4<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.a.x, 24u)], true)), true, true, true), var_3.d.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, global0.e.x)) - -461f), ~func_2(!var_3.d.c.xzx, _wgslsmith_f_op_f32(select(var_4.c.x, var_1.x, false)), select(5826i, global0.b, var_4.b.x)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(980f - 776f) - _wgslsmith_f_op_f32(-754f + global0.d.x))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - global0.d.x) + _wgslsmith_f_op_f32(trunc(549f)));
    let var_2 = select(!(!var_0.a.c.x), !(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(10841u, var_0.a.b.x, 40096u, var_0.a.e), vec4<u32>(var_0.a.b.x, global0.a.x, 101764u, 0u)), vec4<u32>(global0.a.x, var_0.a.b.x, 39183u, 50814u)), 24u)] || true), global2[_wgslsmith_index_u32(20463u, 24u)]);
    var var_3 = func_1(var_0.a.a).a;
    var_3 = var_0.a;
    var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1272f + var_0.a.d), _wgslsmith_f_op_f32(global0.e.x + global0.d.x))) - 1000f), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a.b, ~(~vec3<u32>(var_0.a.b.x, global0.a.x, 1u))), min(vec3<u32>(var_0.a.e, global0.a.x, 1u) >> (vec3<u32>(var_0.a.e, global0.a.x, var_3.b.x) % vec3<u32>(32u)), global0.a) & _wgslsmith_mult_vec3_u32(var_3.b, vec3<u32>(var_3.b.x, var_0.a.e, var_0.a.b.x))), vec4<bool>(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(1117f - var_0.a.d)), global2[_wgslsmith_index_u32(0u, 24u)] && false, any(var_3.c.wx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1225f, var_3.a) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_3.d, var_3.a, true)))))), 2565u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d + var_3.a)), _wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(-var_0.a.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, -1635f, -900f, global0.e.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, var_0.a.d, -741f, global0.d.x) * global0.e))));
}

