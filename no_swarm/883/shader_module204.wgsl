struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(87304u, vec4<bool>(true, false, true, true), vec4<i32>(18847i, 22413i, 15338i, 78220i)), Struct_1(0u, vec4<bool>(true, false, true, true), vec4<i32>(0i, i32(-2147483648), -19023i, -1i)), Struct_1(64648u, vec4<bool>(true, false, false, true), vec4<i32>(-43238i, 61049i, 23059i, 0i)), Struct_1(19279u, vec4<bool>(true, false, true, true), vec4<i32>(i32(-2147483648), 1516i, -1i, 2147483647i)), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec4<i32>(8999i, 0i, -1i, -1i)), Struct_1(4294967295u, vec4<bool>(false, true, true, false), vec4<i32>(-1i, -12680i, 41060i, -1i)));

var<private> global1: vec3<u32>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    let var_0 = vec3<bool>(arg_0.b.x, _wgslsmith_mult_u32(0u, arg_0.a) > _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2, global1.x), global1.xy), u_input.b == _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 12769u)), ~(~global1.yz)));
    let var_1 = -1000f;
    var var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-(arg_0.c.zwx << (vec3<u32>(47309u, global1.x, 48900u) % vec3<u32>(32u)))), ~(~(~(arg_1.zzy << (vec3<u32>(1u, arg_0.a, 1u) % vec3<u32>(32u))))));
    var var_3 = ~_wgslsmith_clamp_i32(arg_1.x, min(-u_input.a, arg_1.x) << (~1u % 32u), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(0i, 34254i, u_input.a), ~(arg_0.c.x ^ -2147483647i)));
    var var_4 = vec3<f32>(var_1, 237f, _wgslsmith_f_op_f32(var_1 * var_1));
    return global1.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -108f, -1050f)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(285f)), -1063f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2246f)) + -1603f) * _wgslsmith_f_op_f32(sign(1436f))), 1f)));
    global1 = _wgslsmith_sub_vec3_u32(reverseBits(abs(~(vec3<u32>(u_input.b, 4294967295u, 55416u) ^ vec3<u32>(global1.x, u_input.b, 10519u)))), vec3<u32>(~firstLeadingBit(u_input.b), u_input.b, u_input.b) >> (abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 56351u, u_input.b), vec3<u32>(u_input.b, u_input.b, 16684u))) % vec3<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(~(~global1.x), 6u)];
    global1 = vec3<u32>(4294967295u, var_1.a, ~func_3(Struct_1(global1.x, !vec4<bool>(false, false, global2.x, true), var_1.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<i32>(var_1.c.x, -1i, var_1.c.x, 0i)), 130204u));
    global0 = array<Struct_1, 6>();
    return max(global1.x, ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 105549u), vec3<u32>(0u, 1u, u_input.b))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = ~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, global1.x, 21961u)) | vec3<u32>(arg_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 50214u, global1.x), vec3<u32>(arg_2.a, 49461u, arg_2.a)), select(arg_2.a, arg_2.a, true))) ^ select(select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, 83155u), vec3<u32>(26977u, arg_2.a, 0u)), 1u, u_input.b), ~reverseBits(vec3<u32>(global1.x, arg_2.a, global1.x)), false), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(global1.x, u_input.b, 4294967295u)), vec3<u32>(28119u, global1.x, u_input.b << (u_input.b % 32u))), true);
    global1 = vec3<u32>(_wgslsmith_div_u32(global1.x, 59080u), ~4294967295u, 1u);
    var var_0 = u_input.b;
    let var_1 = global0[_wgslsmith_index_u32(56076u, 6u)];
    let var_2 = Struct_1(func_2(), arg_2.b, select(~(~(var_1.c >> (vec4<u32>(9736u, 22079u, 0u, 0u) % vec4<u32>(32u)))), var_1.c, select(var_1.b, vec4<bool>(true, true, true, !global2.x), !(!arg_2.b))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = firstTrailingBit(~firstTrailingBit(~vec3<u32>(2748u, u_input.b, 4294967295u) & vec3<u32>(arg_1.a, u_input.b, 4294967295u)));
    var var_0 = ~max(vec3<u32>(firstTrailingBit(~22864u), ~(~arg_1.a), _wgslsmith_add_u32(1u, ~5633u)), abs(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)) ^ vec3<u32>(global1.x, 1u, arg_1.a)));
    global1 = countOneBits(_wgslsmith_div_vec3_u32(~select(~vec3<u32>(0u, arg_1.a, 1u), ~vec3<u32>(global1.x, global1.x, u_input.b), vec3<bool>(true, true, global2.x)), countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(16616u, 1u, var_0.x), vec3<u32>(10284u, var_0.x, global1.x), vec3<u32>(43893u, 66170u, 36512u)), vec3<u32>(arg_1.a, var_0.x, 0u) >> (vec3<u32>(u_input.b, 1u, 4294967295u) % vec3<u32>(32u))))));
    var_0 = ~vec3<u32>(_wgslsmith_mult_u32(min(_wgslsmith_add_u32(1u, arg_1.a), global1.x), arg_0.a), ~_wgslsmith_sub_u32(1u, ~4294967295u), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.yy, global1.zz)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(560f * 997f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(316f)), 109f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2930f + -1000f), _wgslsmith_f_op_f32(-1671f + 1966f))), _wgslsmith_f_op_f32(abs(1783f)), global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f * 1490f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f - -393f) + _wgslsmith_f_op_f32(max(1409f, _wgslsmith_f_op_f32(round(-489f)))))));
    return global0[_wgslsmith_index_u32(arg_0.a, 6u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    let var_0 = true;
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~_wgslsmith_sub_u32(max(u_input.b, arg_3.a), ~95837u), u_input.b), vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(17128u, 1u, arg_3.a, u_input.b), ~vec4<u32>(1u, arg_0.a, 4294967295u, arg_3.a)), min(~28620u, 0u), _wgslsmith_sub_u32(26017u, countOneBits(min(arg_3.a, 8403u)))));
    let var_1 = Struct_1(1u, !arg_0.b, abs(arg_0.c) ^ _wgslsmith_sub_vec4_i32(arg_0.c, arg_3.c));
    global2 = vec2<bool>(false, !arg_3.b.x);
    return Struct_1(abs(1u), vec4<bool>(!func_1(vec2<bool>(true, false), true, arg_3).b.x && any(vec4<bool>(true, global2.x, var_0, false)), _wgslsmith_div_f32(-1029f, _wgslsmith_f_op_f32(sign(218f))) >= _wgslsmith_f_op_f32(ceil(-1275f)), true, false), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28122u, 1u, u_input.b), vec3<u32>(global1.x, 4294967295u, 1u), vec3<u32>(global1.x, 0u, 7979u)), vec3<u32>(global1.x, 1u, 14958u)) | (vec3<u32>(1u, ~u_input.b, _wgslsmith_clamp_u32(1u, global1.x, u_input.b)) << (vec3<u32>(abs(4294967295u), _wgslsmith_mod_u32(4294967295u, global1.x), u_input.b) % vec3<u32>(32u))));
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 6u)];
    var var_1 = func_5(func_4(Struct_1(1u, select(!var_0.b, vec4<bool>(false, true, var_0.b.x, false), vec4<bool>(global2.x, global2.x, global2.x, true)), min(-vec4<i32>(u_input.a, 40740i, u_input.a, -6275i), countOneBits(var_0.c))), func_1(select(!var_0.b.zz, var_0.b.xy, true), true, global0[_wgslsmith_index_u32(1u, 6u)]), true), var_0.c.wwz >> (select(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, var_0.a, var_0.a), vec3<u32>(global1.x, 14924u, 0u)), max(~vec3<u32>(u_input.b, 2743u, u_input.b), ~vec3<u32>(4957u, 51521u, 5720u)), true) % vec3<u32>(32u)), abs(abs(min(-1i, 1i))), global0[_wgslsmith_index_u32(43839u, 6u)]);
    let var_2 = vec4<u32>(~4294967295u, _wgslsmith_div_u32(func_3(func_5(global0[_wgslsmith_index_u32(var_1.a, 6u)], var_0.c.xzx, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 6u)]), var_1.c, var_1.a) << (55986u % 32u), ~(~_wgslsmith_add_u32(var_0.a, u_input.b))), ~36535u, select(~_wgslsmith_div_u32(var_0.a, firstTrailingBit(u_input.b)), 12530u, false));
    let var_3 = firstLeadingBit(global1.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 515f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 345f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1548f, 1368f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-619f, 788f), vec2<f32>(-130f, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(723f, -957f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-531f, 2265f) + vec2<f32>(-1248f, -1078f)) + vec2<f32>(-1355f, 1152f))) * vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(182f)))))));
    var var_5 = var_1.c.yx;
    var_1 = Struct_1(var_1.a, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(-var_4.x)) >= _wgslsmith_f_op_f32(1000f * var_4.x), !global2.x & (select(true, global2.x, var_1.b.x) || func_4(global0[_wgslsmith_index_u32(var_3, 6u)], Struct_1(1u, vec4<bool>(global2.x, global2.x, true, var_0.b.x), vec4<i32>(-2147483647i, var_0.c.x, 2147483647i, var_5.x)), var_0.b.x).b.x), var_0.b.x | var_0.b.x, !var_1.b.x), -abs(countOneBits(var_0.c & vec4<i32>(var_0.c.x, -18426i, 1i, var_1.c.x))));
    var var_6 = 1197f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-662f)), vec3<u32>(var_1.a, countOneBits(_wgslsmith_sub_u32(1u, ~var_2.x)), _wgslsmith_add_u32(var_3, func_3(Struct_1(5659u, var_0.b, var_0.c), vec4<i32>(var_0.c.x, -836i, -24365i, var_0.c.x), ~var_0.a))));
}

