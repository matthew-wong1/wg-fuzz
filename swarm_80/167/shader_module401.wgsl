struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<bool, 5>;

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    let var_0 = select(!select(!select(vec2<bool>(true, true), vec2<bool>(global2.b.a, arg_1.a), true), vec2<bool>(global1[_wgslsmith_index_u32(434u, 5u)] && global1[_wgslsmith_index_u32(6458u, 5u)], 23462i >= arg_1.d), any(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 5u)], arg_1.a))), !(!select(select(vec2<bool>(arg_1.a, global2.b.a), vec2<bool>(true, arg_1.a), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)])), vec2<bool>(true, true), true)), all(select(!(!vec2<bool>(true, arg_1.a)), !vec2<bool>(false, global2.b.a), select(!global2.b.a, true, true))));
    let var_1 = all(var_0);
    var var_2 = !(!vec4<bool>(!arg_1.a, any(vec3<bool>(global2.b.a, var_0.x, false)), all(!vec3<bool>(arg_1.a, false, global2.b.a)), select(false, true, true)));
    var var_3 = global2.b;
    let var_4 = u_input.c.x;
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = select(vec2<bool>(arg_1.a, false), vec2<bool>(func_3(abs(~vec3<u32>(arg_2, 21931u, 4294967295u)), global2.b), _wgslsmith_dot_vec3_i32(~arg_1.c.a, -vec3<i32>(-53750i, -1i, -16041i)) >= (~u_input.a << (0u % 32u))), vec2<bool>(!(global2.b.a && global2.b.a) == false, global2.b.b.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.b.x)))));
    global2 = arg_1.c;
    var var_1 = arg_1.c;
    let var_2 = Struct_3(!all(vec2<bool>(false, all(var_0))), global2.b, arg_1.c);
    var var_3 = vec4<u32>(global2.b.c, ~1u, abs(~global2.b.c), max(_wgslsmith_mod_u32(var_1.b.c, 0u), ~firstTrailingBit(_wgslsmith_sub_u32(0u, u_input.b.x))));
    return var_1.b.c;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b.b.x, 1250f, false)) * _wgslsmith_f_op_f32(select(681f, arg_3.b.x, true))) * -725f), _wgslsmith_f_op_f32(-global2.b.b.x)));
    let var_0 = vec4<u32>(u_input.b.x, 9881u, 4294967295u, _wgslsmith_sub_u32(u_input.b.x, select(firstTrailingBit(arg_3.c), ~firstTrailingBit(20775u), global1[_wgslsmith_index_u32(arg_0.x, 5u)])));
    global0 = _wgslsmith_f_op_f32(-arg_3.b.x);
    return Struct_1(true || global2.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.x, global2.b.b.x, arg_3.b.x))) * arg_3.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.b) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.b.x, 1427f, 1000f), vec3<f32>(global2.b.b.x, -432f, -260f))))))), ~arg_0.x, ~10679i ^ (~select(arg_2.x, -2147483647i, arg_1.x) >> (reverseBits(arg_3.c) % 32u)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.x)))))));
    var var_0 = func_4(arg_0, !vec4<bool>(global1[_wgslsmith_index_u32(~12706u << ((arg_0.x >> (12239u % 32u)) % 32u), 5u)], global2.b.a, func_2(u_input.b, Struct_3(false, global2.b, Struct_2(vec3<i32>(u_input.d, 1i, -65845i), global2.b)), 1953u) >= 0u, u_input.c.x < abs(global2.a.x)), min(abs(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-8055i, -68726i, 0i), u_input.c.wyz))), vec3<i32>(global2.a.x, abs(_wgslsmith_dot_vec3_i32(global2.a, global2.a)), firstLeadingBit(~global2.b.d))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(-16262i, 2147483647i), u_input.c.zw)) < firstTrailingBit(global2.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.b.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2259f, global2.b.b.x, 148f) + vec3<f32>(global2.b.b.x, 619f, global2.b.b.x)))))), ~_wgslsmith_mod_u32(86642u << (0u % 32u), u_input.b.x), _wgslsmith_sub_i32(u_input.c.x & (u_input.c.x << (4294967295u % 32u)), 1i)));
    var var_1 = u_input.b.yy;
    var_1 = vec2<u32>(var_1.x, 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(select(var_0.c, 102u, global1[_wgslsmith_index_u32(global2.b.c, 5u)]), _wgslsmith_clamp_u32(u_input.b.x, 2847u, 1u)), ~arg_0.yy) % 32u));
    let var_2 = vec3<i32>(var_0.d, firstLeadingBit(-(~u_input.c.x >> ((arg_0.x & 24365u) % 32u))), -1i);
    return Struct_3(func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 4294967295u, 4685u), u_input.b), ~var_1.x, global2.b.c) & countOneBits(vec3<u32>(74755u, global2.b.c, 17744u)), vec4<bool>(all(!vec4<bool>(global2.b.a, global1[_wgslsmith_index_u32(9027u, 5u)], false, global1[_wgslsmith_index_u32(global2.b.c, 5u)])), true, true, false), ~abs(abs(vec3<i32>(var_0.d, var_0.d, -2147483647i))), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(88659u, var_0.c, 27007u), arg_0), select(select(vec4<bool>(global1[_wgslsmith_index_u32(73098u, 5u)], global2.b.a, var_0.a, var_0.a), vec4<bool>(false, false, true, false), false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 5u)], global2.b.a, false, global1[_wgslsmith_index_u32(79140u, 5u)]), vec4<bool>(global2.b.a, global1[_wgslsmith_index_u32(var_1.x, 5u)], var_0.a, global2.b.a), vec4<bool>(true, var_0.a, false, global2.b.a)), vec4<bool>(true, true, true, true)), min(abs(vec3<i32>(var_0.d, 17350i, u_input.a)), max(vec3<i32>(35948i, 11618i, var_2.x), vec3<i32>(global2.a.x, 1i, var_2.x))), global2.b)).a, global2.b, Struct_2(vec3<i32>(_wgslsmith_mod_i32(~var_2.x, -35220i), ~countOneBits(var_2.x), -12259i), Struct_1(1i < -u_input.c.x, global2.b.b, 1u, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(9115i, -2147483647i, 2147483647i, -26922i)), u_input.c & vec4<i32>(-32181i, u_input.a, u_input.d, 0i)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_sub_vec3_u32(u_input.b.yxw, firstTrailingBit(vec3<u32>(global2.b.c, arg_1.b.c, arg_3.x) >> (vec3<u32>(4294967295u, arg_1.c.b.c, 0u) % vec3<u32>(32u)))), vec4<bool>(all(vec4<bool>(true, arg_1.b.a, !global1[_wgslsmith_index_u32(arg_3.x, 5u)], true)), func_1(~(u_input.b.yzz >> (vec3<u32>(arg_1.b.c, 4294967295u, arg_3.x) % vec3<u32>(32u)))).c.b.a, select((global2.b.d >> (global2.b.c % 32u)) > arg_1.b.d, false, arg_1.b.a), true), select(u_input.c.wxy, arg_1.c.a, arg_1.c.b.a), global2.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(arg_1.b.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1172f, arg_1.b.b.x, 575f, _wgslsmith_f_op_f32(var_1.x + -717f)))) + vec4<f32>(_wgslsmith_f_op_f32(1140f + _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1415f, global2.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(abs(-385f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.b.x, var_0.b.x, -1264f, 381f), vec4<f32>(-1112f, -195f, var_1.x, global2.b.b.x)))))))));
    global1 = array<bool, 5>();
    let var_3 = func_1(arg_3);
    return Struct_1(((arg_3.x >> (~1u % 32u)) == 13701u) | var_3.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b))), var_0.c, -7838i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b.b.x;
    global1 = array<bool, 5>();
    var var_0 = u_input.b;
    let var_1 = Struct_3(false, func_5(!vec2<bool>(true, !global2.b.a), func_1(abs(firstLeadingBit(u_input.b.zzx))), vec3<f32>(-952f, -1612f, -448f), vec3<u32>(u_input.b.x | reverseBits(14293u), reverseBits(_wgslsmith_div_u32(global2.b.c, 1u)), global2.b.c)), Struct_2(-firstTrailingBit(u_input.c.xzx), Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(global2.b.b.x - -1554f), _wgslsmith_f_op_f32(round(-364f)), _wgslsmith_f_op_f32(step(1000f, 363f))), 55408u, ~_wgslsmith_add_i32(67007i, -37071i))));
    var var_2 = vec3<bool>(true, true, all(!select(vec4<bool>(global1[_wgslsmith_index_u32(52005u, 5u)], global2.b.a, var_1.a, false), vec4<bool>(var_1.c.b.a, false, global2.b.a, var_1.b.a), global1[_wgslsmith_index_u32(u_input.b.x, 5u)])) != global1[_wgslsmith_index_u32(var_0.x, 5u)]);
    let var_3 = ~39495u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(30819u, ~_wgslsmith_add_u32(52515u, var_0.x), ~func_4(vec3<u32>(4294967295u, var_1.b.c, 25004u), vec4<bool>(var_1.c.b.a, false, true, global2.b.a), vec3<i32>(1i, 4543i, var_1.c.b.d), global2.b).c, var_3));
}

