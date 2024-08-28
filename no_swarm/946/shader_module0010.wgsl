struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(1i, 26415i, 44158i, 0i), 0u, Struct_1(vec4<u32>(32440u, 55304u, 32095u, 115529u), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(0u, 72305u, 13937u, 1831u), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 33530u), vec3<bool>(false, true, false)));

var<private> global2: array<f32, 10> = array<f32, 10>(1180f, 1594f, -416f, -399f, -478f, -1000f, 1000f, 622f, -1286f, -505f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    global1 = Struct_2(~vec4<i32>(global1.a.x, abs(-2147483647i), ~(18473i & u_input.e), u_input.c << (_wgslsmith_div_u32(0u, 5364u) % 32u)), ~4294967295u, global1.c, global1.e, global1.e);
    global0 = array<Struct_2, 13>();
    global1 = Struct_2(_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(global1.a.x, global1.a.x), _wgslsmith_div_i32(global1.a.x, -2147483647i), 1i, abs(u_input.a)), vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.e, 6545i))), global1.a.x, 612i, reverseBits(abs(1i)))), ~firstLeadingBit(min(global1.b, _wgslsmith_clamp_u32(43489u, global1.d.a.x, u_input.d.x))), Struct_1(~vec4<u32>(~arg_0, ~global1.e.a.x, 73928u, _wgslsmith_div_u32(global1.c.a.x, 12616u)), global1.e.b), Struct_1(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.b, global1.b, global1.d.a.x), ~u_input.d.x), 7276u, u_input.b, 1u), vec3<bool>(false, select(global1.c.b.x && false, !global1.c.b.x, false), !(!global1.c.b.x))), Struct_1(vec4<u32>(u_input.d.x, 1u, global1.e.a.x, arg_0), !vec3<bool>(true, true, !global1.e.b.x)));
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(select(global1.c.a.xxy, vec3<u32>(reverseBits(u_input.b), global1.b, 1u), select(global1.c.b, vec3<bool>(true, false, global1.e.b.x), global1.c.b)), select(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 28555u)), vec3<u32>(0u, global1.c.a.x, 4294967295u) | global1.d.a.yyz), vec3<u32>(countOneBits(arg_0), ~arg_0, abs(arg_0)), !(false || global1.d.b.x)))), 10u)];
    let var_1 = ~(-vec4<i32>(u_input.c, -2147483647i, global1.a.x, -3360i) & -(~global1.a)) | ~global1.a;
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = true;
    var var_1 = max(reverseBits(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(-52908i, global1.a.x, 18872i, u_input.a)), global1.a)), min(global1.a, global1.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 10u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0)), -424f))))));
    var var_3 = Struct_1(min(vec4<u32>(1u, u_input.b, _wgslsmith_mod_u32(global1.c.a.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.b, 53609u)), ~4294967295u), ~(~(~vec4<u32>(864u, u_input.b, global1.d.a.x, 4294967295u)))), global1.e.b);
    var var_4 = Struct_4(_wgslsmith_mult_u32(global1.d.a.x, _wgslsmith_sub_u32(abs(0u), global1.b)), select(!(!select(vec4<bool>(false, true, global1.c.b.x, false), vec4<bool>(global1.c.b.x, false, false, true), false)), vec4<bool>(~var_1.x <= 23325i, !(!var_0), all(!vec3<bool>(arg_1, false, arg_2.x)), select(true, any(global1.e.b), global1.c.b.x)), !select(!vec4<bool>(arg_2.x, arg_2.x, true, true), select(vec4<bool>(var_0, var_3.b.x, var_3.b.x, true), vec4<bool>(arg_1, false, true, false), vec4<bool>(var_3.b.x, false, false, arg_2.x)), global1.d.a.x > global1.d.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, _wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.x, arg_0, false)))))), ~(~(~(~vec2<u32>(var_3.a.x, var_3.a.x)))));
    return any(vec2<bool>(true, !any(vec4<bool>(var_3.b.x, false, true, false))));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> bool {
    global0 = array<Struct_2, 13>();
    global2 = array<f32, 10>();
    let var_0 = 59973u;
    global0 = array<Struct_2, 13>();
    global1 = global0[_wgslsmith_index_u32(global1.c.a.x, 13u)];
    return true & (!(countOneBits(arg_1.a) < ~27311u) | func_4(_wgslsmith_f_op_f32(f32(-1f) * -108f), arg_1.b.x, vec2<bool>(true, func_3(15u))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = array<Struct_2, 13>();
    var var_0 = all(vec4<bool>(false, func_2(global2[_wgslsmith_index_u32(4294967295u, 10u)] <= arg_0, Struct_4(global1.d.a.x, vec4<bool>(false, global1.d.b.x, global1.c.b.x, true), vec4<f32>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(global1.b, 10u)], 133f), vec2<u32>(u_input.b, 1u))) && true, true & all(!global1.e.b), true));
    var var_1 = !global1.c.b.x;
    let var_2 = 1000f;
    global1 = Struct_2(vec4<i32>(min(_wgslsmith_clamp_i32(-41550i ^ global1.a.x, global1.a.x, global1.a.x >> (59297u % 32u)), 1i), firstTrailingBit(-global1.a.x) ^ ~(-52887i), global1.a.x, countOneBits(u_input.e) << ((~7923u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(5462u, 1u, 49078u), u_input.d)) % 32u)), 4294967295u, global1.e, Struct_1(abs(global1.d.a), select(select(vec3<bool>(true, global1.d.b.x, true), select(vec3<bool>(global1.c.b.x, true, global1.c.b.x), vec3<bool>(true, true, global1.e.b.x), global1.c.b), vec3<bool>(true, false, global1.e.b.x)), vec3<bool>(true, all(vec2<bool>(global1.d.b.x, global1.c.b.x)), global1.e.b.x | true), vec3<bool>(true, any(global1.c.b), global1.e.b.x))), global1.c);
    return Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 644f, -1818f, 243f) - vec4<f32>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 10u)], var_2, var_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -298f, var_2, global2[_wgslsmith_index_u32(u_input.d.x, 10u)]))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], 1899f, arg_0, var_2), vec4<f32>(global2[_wgslsmith_index_u32(global1.d.a.x, 10u)], global2[_wgslsmith_index_u32(27333u, 10u)], 682f, var_2), vec4<bool>(global1.d.b.x, true, true, global1.d.b.x))))))))), global0[_wgslsmith_index_u32(firstTrailingBit(abs(~u_input.b)) ^ 11953u, 13u)], global0[_wgslsmith_index_u32(global1.c.a.x, 13u)], Struct_1(global1.d.a, select(select(!vec3<bool>(true, global1.d.b.x, false), !global1.d.b, false), global1.c.b, false)));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec4<f32> {
    global1 = func_1(arg_0).b;
    let var_0 = func_4(_wgslsmith_f_op_f32(arg_1.a.x * -494f), false, arg_1.c.d.b.yx);
    global1 = Struct_2(~arg_1.b.a, 0u, Struct_1(vec4<u32>(~(~0u), ~(1u << (global1.c.a.x % 32u)), ~abs(18572u), abs(abs(arg_1.d.a.x))), arg_1.d.b), arg_1.d, arg_1.d);
    var var_1 = global1.e.b.xx;
    var var_2 = Struct_4(arg_1.b.d.a.x, select(select(vec4<bool>(true, var_1.x, func_1(global2[_wgslsmith_index_u32(u_input.d.x, 10u)]).c.c.b.x, global2[_wgslsmith_index_u32(16321u, 10u)] >= 932f), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_0, false, arg_1.d.b.x), var_1.x), vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, true, arg_1.c.c.b.x, true)), true), !vec4<bool>(any(vec2<bool>(global1.c.b.x, var_1.x)), all(vec2<bool>(true, var_1.x)), global2[_wgslsmith_index_u32(4294967295u, 10u)] >= arg_1.a.x, any(vec4<bool>(false, true, var_1.x, global1.c.b.x))), var_1.x), arg_1.a, abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 1u), ~global1.e.a.xw), vec2<u32>(arg_1.c.d.a.x | 4294967295u, ~global1.c.a.x))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(990f, var_2.c.x, 990f, arg_0) - vec4<f32>(arg_0, 1518f, 261f, 413f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, arg_0, global2[_wgslsmith_index_u32(4294967295u, 10u)], -260f)))), _wgslsmith_f_op_vec4_f32(var_2.c + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-733f, global2[_wgslsmith_index_u32(3469u, 10u)], arg_0, -291f)))), var_2.b))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = countOneBits(vec2<i32>(u_input.c, 27487i));
    let var_1 = firstTrailingBit(global1.e.a.x);
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(func_1(1000f).c.a.x, -2147483647i << (arg_0.x % 32u)), countOneBits(vec2<i32>(0i, select(min(-2147483647i, 14075i), global1.a.x, -2147483647i == var_0.x))));
    var var_3 = false;
    var_0 = vec2<i32>(20374i, var_0.x);
    return Struct_2(-global1.a, 105127u, Struct_1(vec4<u32>(1u, u_input.d.x ^ 49799u, max(arg_0.x, 1u), 5954u) | vec4<u32>(4294967295u, _wgslsmith_div_u32(36572u, 8215u), ~u_input.d.x, arg_1.c.e.a.x), global1.c.b), arg_1.d, func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x))))).d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(vec2<u32>(18946u << ((_wgslsmith_clamp_u32(14953u, 41005u, 4294967295u) & 4294967295u) % 32u), _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mod_u32(~1u, 1u))), Struct_3(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(-138f - _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b, 10u)]))), func_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.b, 10u)], 1000f)))), Struct_2(-(~vec4<i32>(-6928i, -1i, u_input.c, -2147483647i)), _wgslsmith_add_u32(global1.e.a.x, global1.b) ^ global1.e.a.x, func_1(global2[_wgslsmith_index_u32(~global1.c.a.x, 10u)]).b.d, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1154u, global1.c.a.x, 30749u), vec4<u32>(global1.c.a.x, 29661u, 1u, global1.c.a.x)), !vec3<bool>(global1.c.b.x, true, global1.e.b.x)), global1.c), Struct_2(vec4<i32>(func_1(251f).c.a.x, -30996i, ~global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 73184i, 0i, -1i), vec4<i32>(global1.a.x, 2147483647i, u_input.e, -2345i))), _wgslsmith_add_u32(~u_input.b, u_input.b), global1.c, Struct_1(vec4<u32>(0u, 1u, 13073u, global1.e.a.x), global1.c.b), Struct_1(vec4<u32>(global1.c.a.x, 1u, 1u, global1.b), global1.c.b)), global1.c), global1.d.b.x);
    var var_0 = countOneBits(global1.d.a.x | func_1(global2[_wgslsmith_index_u32(23690u, 10u)]).c.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(25862u, 10u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.b, 10u)] * global2[_wgslsmith_index_u32(global1.c.a.x, 10u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(59110u, 10u)], -913f))))), global1.a);
}

