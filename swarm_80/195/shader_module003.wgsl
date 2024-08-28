struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(~u_input.c.x, Struct_2(Struct_1(~(global1.a | global1.a), !select(vec3<bool>(global2.x, true, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, false), global2.zyy)), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 1u), global1.a)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.x), vec2<u32>(global1.a.x, 46574u)), 30u)])), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1062f, global0[_wgslsmith_index_u32(49340u, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)]) - vec3<f32>(952f, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 843f, global0[_wgslsmith_index_u32(0u, 30u)])), global1.b.x))))), global1.a.x, abs(~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, u_input.a), vec3<i32>(12219i, u_input.c.x, 1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)]) + vec2<f32>(-1000f, -680f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)]), vec2<f32>(global0[_wgslsmith_index_u32(18751u, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)])))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(773f, 1000f) * vec2<f32>(1235f, global0[_wgslsmith_index_u32(1u, 30u)])), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a.x, 30u)]))))));
    global1 = Struct_1(var_0.b.b, global2.xzw);
    global1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 4294967295u), select(firstLeadingBit(var_0.b.a.a), firstTrailingBit(vec2<u32>(u_input.b, 1u)), global2.x)), u_input.b), global1.b);
    let var_1 = all(vec2<bool>(!all(!vec4<bool>(false, var_0.b.a.b.x, global1.b.x, global2.x)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(var_0.d, var_0.d), u_input.c.x) >= 2147483647i));
    let var_2 = u_input.b;
    return var_0.e.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_2 {
    global1 = Struct_1(global1.a, vec3<bool>(arg_1.a == true, select(global1.b.x, global1.b.x, !global1.b.x), true));
    global1 = Struct_1(arg_2.zy, !select(!global1.b, select(select(vec3<bool>(global1.b.x, global1.b.x, true), global2.xzw, arg_1.a), !global1.b, true), global1.b));
    var var_0 = vec4<bool>(true, true, any(global1.b), global1.b.x);
    let var_1 = -_wgslsmith_mult_i32(43903i & _wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), vec3<i32>(-31300i, u_input.a, u_input.a))), i32(-1i) * -1i);
    let var_2 = !(!(!(!vec4<bool>(global2.x, true, false, false))));
    return Struct_2(Struct_1((countOneBits(vec2<u32>(57020u, global1.a.x)) << (firstLeadingBit(vec2<u32>(u_input.b, 2990u)) % vec2<u32>(32u))) | ((arg_2.xy & global1.a) << (_wgslsmith_add_vec2_u32(arg_2.yw, arg_2.yw) % vec2<u32>(32u))), vec3<bool>(any(select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(global2.x, true, false), var_0.zyy)), all(!global1.b.xy), global2.x)), arg_2.zz, _wgslsmith_f_op_f32(-1000f + 283f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), 1447f, _wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    global1 = arg_1.b.a;
    let var_0 = arg_0.a.a.x;
    let var_1 = _wgslsmith_mult_i32(-u_input.a, -1i) >> (~arg_1.c % 32u);
    let var_2 = arg_0;
    global1 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d.x, arg_0.d.x, var_2.d.x) * arg_1.b.d), _wgslsmith_f_op_vec3_f32(min(arg_1.b.d, vec3<f32>(156f, -1009f, -954f))), !vec3<bool>(var_2.a.b.x, false, global2.x)))), Struct_4(true), ~vec4<u32>(~4294967295u, _wgslsmith_div_u32(4294967295u, global1.a.x), _wgslsmith_clamp_u32(arg_1.b.b.x, u_input.b, arg_0.b.x), ~4294967295u)).a.a, vec3<bool>(false, arg_1.b.a.b.x, global2.x));
    return var_2.d.yz;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    var var_0 = 81866u;
    global2 = vec4<bool>(arg_2, !arg_3.a, any(global1.b), false);
    var_0 = _wgslsmith_dot_vec4_u32(abs(~max(~vec4<u32>(global1.a.x, 4294967295u, 1u, global1.a.x), vec4<u32>(u_input.b, global1.a.x, 38524u, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.b), 0u | ~global1.a.x, firstLeadingBit(global1.a.x), global1.a.x), vec4<u32>(global1.a.x, _wgslsmith_mult_u32(49177u, global1.a.x) >> (~global1.a.x % 32u), ~17920u, select(95688u, max(4294967295u, 0u), global2.x))));
    let var_1 = Struct_3(u_input.c.x, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 856f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, arg_1, -269f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 1750f, arg_1)))), Struct_4(!global1.b.x | !arg_3.a), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, 1u, 26830u, u_input.b), abs(vec4<u32>(global1.a.x, 0u, 12217u, 0u)), ~vec4<u32>(global1.a.x, 11394u, u_input.b, global1.a.x)), vec4<u32>(~u_input.b, global1.a.x, 4294967295u, global1.a.x))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 49595u, u_input.b, 4294967295u) >> (reverseBits(vec4<u32>(u_input.b, global1.a.x, 0u, global1.a.x)) % vec4<u32>(32u))), ~abs(vec4<u32>(0u, global1.a.x, global1.a.x, u_input.b)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, global1.a.x, 1u, 29613u), vec4<u32>(48744u, global1.a.x, 4559u, u_input.b) | vec4<u32>(59865u, 26509u, u_input.b, 0u)) % vec4<u32>(32u))), vec3<i32>(u_input.c.x, -(~_wgslsmith_mult_i32(91972i, u_input.c.x)), max(-19668i, firstLeadingBit(u_input.c.x) & -u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1996f, -577f)))), arg_0)) + arg_0));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(var_1.d.x, u_input.a) ^ u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(-60193i, var_1.d.x), vec2<i32>(-2147483647i, var_1.a)), true), u_input.c), abs(var_1.a));
    return func_2(var_1.b.d, Struct_4(true), vec4<u32>(6201u, global1.a.x, _wgslsmith_div_u32(~u_input.b ^ global1.a.x, 81544u ^ (4294967295u >> (global1.a.x % 32u))), ~(_wgslsmith_mult_u32(var_1.b.b.x, 4294967295u) & _wgslsmith_dot_vec2_u32(global1.a, var_1.b.b)))).a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global0 = array<f32, 30>();
    global1 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(292f, global0[_wgslsmith_index_u32(global1.a.x, 30u)]), vec2<f32>(1662f, global0[_wgslsmith_index_u32(u_input.b, 30u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(16400u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)])))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec3<f32>(1499f, global0[_wgslsmith_index_u32(32486u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_4(arg_0.x), vec4<u32>(4294967295u, u_input.b, global1.a.x, 0u)), Struct_3(u_input.a, Struct_2(Struct_1(global1.a, vec3<bool>(false, true, global2.x)), global1.a, 205f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)])), global1.a.x, vec3<i32>(1i, 12916i, 2147483647i), vec2<f32>(global0[_wgslsmith_index_u32(global1.a.x, 30u)], global0[_wgslsmith_index_u32(16959u, 30u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.x, 30u)] * 652f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.a.x, 30u)]))), !(-1928f > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1021f, global0[_wgslsmith_index_u32(0u, 30u)])))), Struct_4(arg_0.x));
    var var_0 = Struct_1(vec2<u32>(func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), global0[_wgslsmith_index_u32(106380u, 30u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] - global0[_wgslsmith_index_u32(6015u, 30u)]))), true, Struct_4(global0[_wgslsmith_index_u32(global1.a.x, 30u)] == -1000f)).a.x, abs(1u)), vec3<bool>(true, global2.x, true));
    let var_1 = u_input.c.x;
    var_0 = func_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, 2078f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(-1000f, 133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)]))), Struct_4(var_0.b.x), min(select(~vec4<u32>(var_0.a.x, 108498u, global1.a.x, 50848u), ~vec4<u32>(1u, 15833u, 4294967295u, u_input.b), !vec4<bool>(false, var_0.b.x, false, global1.b.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, var_0.a.x, 0u, var_0.a.x)), reverseBits(vec4<u32>(4294967295u, u_input.b, u_input.b, var_0.a.x))))).d, Struct_4(true), ~vec4<u32>(countOneBits(~global1.a.x), global1.a.x & func_5(vec2<f32>(1555f, global0[_wgslsmith_index_u32(0u, 30u)]), -314f, true, Struct_4(false)).a.x, var_0.a.x, (48706u ^ global1.a.x) & _wgslsmith_add_u32(u_input.b, u_input.b))).a;
    return Struct_4(false);
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_3 {
    global1 = func_2(vec3<f32>(global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_sub_u32(1u, 1u), 42861u)), 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -1000f), arg_1, vec4<u32>(u_input.b, 10382u, u_input.b, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(arg_2.c, global1.a.x))) ^ vec4<u32>(arg_2.b.b.x, arg_2.c, global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 54615u), arg_2.b.b))).a;
    var var_0 = select(global1.a.x, 38537u, any(select(arg_2.b.a.b.zz, select(func_5(vec2<f32>(global0[_wgslsmith_index_u32(28662u, 30u)], global0[_wgslsmith_index_u32(arg_2.b.b.x, 30u)]), arg_2.e.x, true, Struct_4(true)).b.xz, global2.zz, vec2<bool>(global2.x, arg_1.a)), select(select(global1.b.xz, vec2<bool>(true, true), vec2<bool>(arg_1.a, true)), !vec2<bool>(false, arg_3.x), global1.b.x))));
    let var_1 = Struct_1(global1.a, vec3<bool>(min(select(27415i, -58637i, global1.b.x), -u_input.c.x) > (select(1i, arg_2.a, false) >> (u_input.b % 32u)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.x, 639f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~22996u, firstTrailingBit(1u)), 30u)], global1.b.x, func_1(func_5(vec2<f32>(arg_2.e.x, -1261f), -1000f, false, arg_1).b.zx)).b.x, !all(arg_3)));
    var var_2 = arg_2.b.d;
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~(global1.a ^ arg_2.b.b), vec2<u32>(func_2(arg_2.b.d, Struct_4(global2.x), vec4<u32>(global1.a.x, 5997u, u_input.b, 54076u)).b.x, u_input.b)), vec2<u32>((global1.a.x & u_input.b) >> (var_1.a.x % 32u), func_2(arg_2.b.d, Struct_4(var_1.b.x), vec4<u32>(arg_2.c, 4294967295u, 43413u, 41156u)).b.x >> (0u % 32u))), vec3<bool>(all(!vec4<bool>(arg_3.x, arg_2.b.a.b.x, arg_3.x, global1.b.x)), arg_1.a, arg_1.a));
    return Struct_3(-12096i, func_2(_wgslsmith_f_op_vec3_f32(-arg_2.b.d), arg_1, ~vec4<u32>(max(4294967295u, arg_2.c), arg_2.c, _wgslsmith_dot_vec2_u32(var_3.a, vec2<u32>(arg_2.b.b.x, 18297u)), 1u)), ~(~(~(36349u >> (arg_2.c % 32u)))), ~arg_2.d, _wgslsmith_f_op_vec2_f32(var_2.zy * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-364f, _wgslsmith_f_op_f32(arg_2.b.d.x * var_2.x))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    global1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(select(34910u, 0u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 1u), arg_1.b.a.a)), arg_2.a.x >> (_wgslsmith_div_u32(global1.a.x, 52365u) % 32u)) >> (~vec2<u32>(_wgslsmith_add_u32(0u, 18092u), arg_2.a.x) % vec2<u32>(32u)), func_6(arg_1.d.x, Struct_4((arg_1.d.x & arg_1.d.x) < max(arg_1.d.x, u_input.a)), func_6(-_wgslsmith_div_i32(u_input.a, 1i), func_1(!global1.b.zy), arg_1, select(!vec3<bool>(false, arg_1.b.a.b.x, false), func_6(-1i, Struct_4(arg_2.b.x), Struct_3(arg_1.a, Struct_2(arg_1.b.a, vec2<u32>(u_input.b, global1.a.x), -1053f, arg_1.b.d), u_input.b, vec3<i32>(-24699i, 0i, u_input.a), arg_0.yz), vec3<bool>(global2.x, arg_2.b.x, global2.x)).b.a.b, arg_1.b.a.b)), global2.xyz).b.a.b);
    global2 = vec4<bool>(any(global1.b), global2.x, true, false);
    var var_0 = ~vec4<u32>(1u, global1.a.x, _wgslsmith_sub_u32(arg_2.a.x, 0u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.b.a.a.x, global1.a.x), 78691u, ~26999u));
    var var_1 = arg_1.b;
    var var_2 = false & func_5(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1306f), arg_0.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 30u)], arg_1.b.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3))), true, Struct_4(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1315f, -183f)), arg_3, func_2(vec3<f32>(-1334f, -684f, -496f), Struct_4(true), vec4<u32>(17170u, var_1.b.x, 0u, var_0.x)).a.b.x, Struct_4(arg_2.b.x)).b.x)).b.x;
    return vec3<bool>(func_6(select(0i, arg_1.a, any(!vec4<bool>(false, false, false, arg_1.b.a.b.x))), func_1(!(!vec2<bool>(arg_2.b.x, false))), arg_1, global2.zyy).b.a.b.x, false, arg_1.d.x > firstTrailingBit(func_6(u_input.a, Struct_4(false), arg_1, func_6(-2966i, Struct_4(arg_2.b.x), Struct_3(u_input.a, Struct_2(arg_1.b.a, var_0.yw, var_1.d.x, var_1.d), u_input.b, vec3<i32>(u_input.c.x, -1i, arg_1.a), vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], 518f)), vec3<bool>(true, var_1.a.b.x, true)).b.a.b).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(countOneBits(vec2<u32>(u_input.b, _wgslsmith_div_u32(abs(global1.a.x), global1.a.x))), func_7(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-450f, 734f, global0[_wgslsmith_index_u32(0u, 30u)], -780f))) + vec4<f32>(-1150f, global0[_wgslsmith_index_u32(0u, 30u)], 607f, global0[_wgslsmith_index_u32(71716u, 30u)])), vec4<f32>(_wgslsmith_f_op_f32(-126f * 609f), global0[_wgslsmith_index_u32(global1.a.x, 30u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a.x, 30u)]), _wgslsmith_div_f32(1354f, global0[_wgslsmith_index_u32(u_input.b, 30u)])))), func_6(-u_input.a, func_1(vec2<bool>(global2.x, global1.b.x)), Struct_3(-33031i, Struct_2(Struct_1(vec2<u32>(49602u, global1.a.x), vec3<bool>(true, false, global1.b.x)), vec2<u32>(u_input.b, 21023u), global0[_wgslsmith_index_u32(1u, 30u)], vec3<f32>(global0[_wgslsmith_index_u32(global1.a.x, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)], 1200f)), ~u_input.b, max(vec3<i32>(-18261i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.a, -24139i, -2147483647i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1344f, global0[_wgslsmith_index_u32(u_input.b, 30u)])))), global2.zwz), Struct_1(global1.a, global2.xzz), 1033f));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, -191f, 189f, global0[_wgslsmith_index_u32(50017u, 30u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(53385u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], -217f, 1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(74964u, 30u)], 760f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)]) - vec4<f32>(2807f, -305f, -1450f, 445f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], -1108f, global0[_wgslsmith_index_u32(u_input.b, 30u)])))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(27132u, 30u)])), 1f, global0[_wgslsmith_index_u32(~u_input.b, 30u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 30u)]))))), (func_2(vec3<f32>(-609f, global0[_wgslsmith_index_u32(0u, 30u)], 140f), Struct_4(false), vec4<u32>(global1.a.x, 83776u, 0u, global1.a.x)).a.a.x == firstTrailingBit(global1.a.x)) | global2.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(197f, global0[_wgslsmith_index_u32(global1.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(global1.a.x, 30u)]) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], -601f, -325f, global0[_wgslsmith_index_u32(0u, 30u)]))))))), !select(!select(vec4<bool>(false, global2.x, false, false), vec4<bool>(false, false, true, true), vec4<bool>(global2.x, false, global2.x, global2.x)), !(!vec4<bool>(true, false, global2.x, true)), select(!vec4<bool>(false, global2.x, true, global1.b.x), !vec4<bool>(global1.b.x, global1.b.x, true, true), any(global1.b.yx)))));
    var var_1 = global1.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b & 48616u, 30u)]));
    var_1 = true;
    var_1 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1261f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(1u, 30u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(292f, global0[_wgslsmith_index_u32(47609u, 30u)]))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))), global1.b.yy)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.xy))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

