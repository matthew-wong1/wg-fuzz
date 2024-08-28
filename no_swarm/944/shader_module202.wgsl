struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 29>;

var<private> global3: vec2<f32> = vec2<f32>(353f, 689f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 1333f, 827f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x + -720f)))) - vec4<f32>(909f, -275f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, -733f)), 550f, 410f, -619f))));
    let var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, 0u)), 0u << (u_input.b % 32u), ~0u)), firstTrailingBit(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(23159u, u_input.b, 1u, 4294967295u), vec4<u32>(57700u, u_input.b, 71762u, 16683u))))), 29u)];
    global1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(select(firstTrailingBit(-2147483647i), ~firstLeadingBit(arg_0.a), var_2.c), ~(-2147483647i)), ~_wgslsmith_div_i32(-20763i, countOneBits(u_input.e)) << (u_input.b % 32u));
    global1 = -75802i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1157f, -158f)), _wgslsmith_f_op_f32(123f * -1010f)))), -148f));
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    global1 = -(~abs(2147483647i));
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-31284i, vec3<i32>(u_input.e, u_input.a, 20028i), global0[_wgslsmith_index_u32(1u, 27u)], u_input.a))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 1707f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, 173f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-3575f, -1000f) - vec2<f32>(1523f, arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1562f, -257f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(158f * arg_0)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.x)))));
    var var_0 = Struct_1(~(~82728i), -firstTrailingBit(-vec3<i32>(u_input.d, u_input.d, u_input.c)), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(round(-774f))) * _wgslsmith_f_op_f32(1326f * -570f))), _wgslsmith_sub_i32(reverseBits(countOneBits(-1i) >> (u_input.b % 32u)), u_input.a));
    global1 = var_0.d;
    var var_1 = u_input.b;
    return any(vec2<bool>(all(!vec4<bool>(arg_1, arg_1, true, arg_1)), all(vec3<bool>(true, arg_0 >= 452f, all(vec2<bool>(false, arg_1))))));
}

fn func_1() -> i32 {
    let var_0 = !(!vec4<bool>(global3.x != global3.x, true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), func_2(global3.x, true)));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, ~u_input.a, u_input.c), vec3<i32>(u_input.a, max(u_input.e, 28164i) | u_input.a, firstLeadingBit(min(20559i, u_input.d)))), _wgslsmith_mod_vec3_i32(vec3<i32>(16213i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e, u_input.c), abs(vec2<i32>(15279i, u_input.e))), 0i), select(-vec3<i32>(2852i, 2147483647i, u_input.e), -(vec3<i32>(48805i, -2147483647i, u_input.d) & vec3<i32>(1i, u_input.d, u_input.a)), true)), vec3<f32>(_wgslsmith_div_f32(791f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -790f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) - global3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-6924i, vec3<i32>(u_input.d, u_input.c, 1i), global0[_wgslsmith_index_u32(u_input.b, 27u)], -5569i))).x))), -402f), _wgslsmith_div_i32(i32(-1i) * -1i, firstTrailingBit(u_input.d)));
    var_1 = Struct_1(_wgslsmith_add_i32(abs(~u_input.c & ~(-27027i)), min(_wgslsmith_sub_i32(0i, 7495i) >> (~u_input.b % 32u), i32(-1i) * -71454i)), vec3<i32>(var_1.a, u_input.e, _wgslsmith_dot_vec3_i32(max(abs(vec3<i32>(u_input.c, var_1.d, var_1.b.x)), abs(vec3<i32>(var_1.a, u_input.d, -13308i))), vec3<i32>(u_input.c, -1i, var_1.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(2147483647i, vec3<i32>(-2147483647i, var_1.a, var_1.a), vec3<f32>(global3.x, -1000f, 209f), 28812i))).x)) - global0[_wgslsmith_index_u32(41513u >> (select(u_input.b, u_input.b, var_0.x) % 32u), 27u)]), firstLeadingBit(firstLeadingBit(u_input.d)));
    var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, var_1.a) ^ ~(~(-4260i)), _wgslsmith_mod_i32(-39241i, ~countOneBits(-1i))), vec3<i32>(var_1.a, -13572i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.b.x, 10863i, u_input.a), ~u_input.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, -252f, global3.x))) + vec3<f32>(-1207f, var_1.c.x, global3.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1761f, global3.x) + var_1.c)))), firstTrailingBit(2147483647i));
    let var_2 = Struct_1(u_input.a, vec3<i32>(-(~(-1i)) >> (select(0u >> (u_input.b % 32u), _wgslsmith_add_u32(u_input.b, 34137u), false) % 32u), -1i, u_input.c), _wgslsmith_f_op_vec3_f32(step(var_1.c, var_1.c)), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, u_input.a), -1940i), 0i));
    return _wgslsmith_dot_vec2_i32(~(_wgslsmith_mod_vec2_i32(vec2<i32>(-15383i, 0i), var_1.b.zz) & select(var_2.b.yx, var_1.b.zz, false)) >> (vec2<u32>(firstLeadingBit(_wgslsmith_clamp_u32(0u, 4294967295u, 2211u)), 4294967295u) % vec2<u32>(32u)), var_1.b.zy);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> StorageBuffer {
    var var_0 = (~(-23646i) & arg_0) ^ u_input.d;
    let var_1 = Struct_2(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.d), max(-9993i, 42222i), -4845i), vec3<i32>(~(-1i), arg_0, -u_input.a)), arg_0), vec3<i32>(~countOneBits(u_input.c), i32(-1i) * -(~u_input.e), -2147483647i), all(vec4<bool>(true, !select(true, true, true), true, false)));
    var var_2 = ~arg_2;
    let var_3 = Struct_1(-2147483647i, min(-(~max(vec3<i32>(u_input.c, arg_0, 1i), vec3<i32>(37042i, -1i, 14999i))), var_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, global3.x, 335f), vec3<f32>(-1000f, global3.x, arg_1), var_1.c)) * global0[_wgslsmith_index_u32(~78158u, 27u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~u_input.b, 27u)]) + vec3<f32>(_wgslsmith_div_f32(global3.x, arg_1), 1162f, 1f))), -firstTrailingBit(~(-2147483647i)));
    var var_4 = global2[_wgslsmith_index_u32(u_input.b, 29u)];
    return StorageBuffer(896f, abs(abs(u_input.b)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.e, func_1()), select(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(0i, u_input.e, u_input.d)), _wgslsmith_mult_i32(1i, ~u_input.d), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(892f, global3.x))))))), max(~_wgslsmith_sub_u32(67359u, _wgslsmith_add_u32(u_input.b, u_input.b)), 29953u));
}

