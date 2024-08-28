struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(46558u, 7021u, 4294967295u), vec3<u32>(86783u, 28471u, 1908u), vec3<u32>(4294967295u, 58273u, 0u), vec3<u32>(0u, 88245u, 4294967295u), vec3<u32>(26543u, 4294967295u, 54078u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(54344u, 4294967295u, 4294967295u), vec3<u32>(8735u, 48382u, 0u), vec3<u32>(4294967295u, 956u, 5105u), vec3<u32>(0u, 8860u, 7043u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 7194u), vec3<u32>(4294967295u, 65125u, 1u), vec3<u32>(28089u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(90378u, 122815u, 0u), vec3<u32>(121911u, 7343u, 21409u), vec3<u32>(0u, 24192u, 0u), vec3<u32>(4294967295u, 0u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.e.ywy + vec3<f32>(161f, arg_3.e.x, arg_3.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.c.a, 850f, -390f)))))))), arg_3, 923f, _wgslsmith_div_vec4_u32(select(vec4<u32>(~1u, min(1u, u_input.b.x), u_input.a.x, ~0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.d, u_input.a.x), vec4<u32>(2523u, 162910u, 0u, u_input.a.x)) ^ u_input.a, all(!vec2<bool>(false, arg_0))), firstTrailingBit(vec4<u32>(1u, ~31168u, 1u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-779f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -482f)))));
    let var_1 = false;
    global1 = array<vec3<u32>, 21>();
    var var_2 = ~firstTrailingBit(firstTrailingBit(vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.b.zx), var_0.d.x, u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2717f) * _wgslsmith_f_op_f32(f32(-1f) * -1693f)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, var_0.b.e.x, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(-arg_3.c.b), var_0.b.a.zzz)) - arg_3.e.zxw);
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global1 = array<vec3<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, -1734f)), vec2<f32>(-2762f, 1403f), !global0[_wgslsmith_index_u32(44142u, 18u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, -1690f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1791f, 1032f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(327f, -1850f), vec2<f32>(484f, 803f), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, 732f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(612f, 559f) * vec2<f32>(1000f, 1000f))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(175f, 646f, 294f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, vec2<i32>(11990i, -1i), true, Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], false, global0[_wgslsmith_index_u32(1u, 18u)], false), Struct_1(343f, vec3<f32>(-918f, var_0.x, 251f)), Struct_1(-649f, vec3<f32>(var_0.x, 1000f, 1158f)), global0[_wgslsmith_index_u32(1u, 18u)], vec4<f32>(-1388f, -713f, -890f, var_0.x))))))));
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, -524f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-338f * -147f)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<bool, 18>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) + _wgslsmith_f_op_f32(f32(-1f) * -1223f)), _wgslsmith_div_f32(arg_0, 1222f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1151f);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(u_input.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-853f, -334f))), _wgslsmith_f_op_vec2_f32(func_2(~u_input.a.x)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 974f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    let var_2 = 37922i;
    return Struct_2(!select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], false)), !vec4<bool>(false, global0[_wgslsmith_index_u32(13744u, 18u)], true, global0[_wgslsmith_index_u32(u_input.d, 18u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(10083u, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(124473u, 18u)], global0[_wgslsmith_index_u32(17581u, 18u)]), global0[_wgslsmith_index_u32(u_input.c, 18u)])), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-111f, 1728f, true)) * var_0.x) - _wgslsmith_f_op_f32(1957f * _wgslsmith_f_op_f32(f32(-1f) * -1929f))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(var_0.x, -457f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(459f - var_1.x))))), Struct_1(394f, vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 513f, -1471f)), global0[_wgslsmith_index_u32(~13798u, 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1134f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, var_0.x, var_0.x, -390f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1406f, var_1.x, 1431f, var_1.x) * vec4<f32>(var_0.x, var_1.x, arg_0, 1389f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-909f + -1248f), var_1.x, _wgslsmith_f_op_f32(var_1.x + arg_0))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 18>();
    global1 = array<vec3<u32>, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(arg_0.c.b - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, arg_0.e.x, arg_0.b.a) * _wgslsmith_f_op_vec3_f32(-arg_0.e.zxw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b) - _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.b)))))), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.b.x + arg_0.e.x))), 1f))), arg_0.c.a, firstLeadingBit(min(countOneBits(~u_input.a), ~firstLeadingBit(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(11592u)).x - -1917f))));
    let var_1 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(arg_1, firstTrailingBit(arg_1), false != arg_0.d), vec4<i32>(~arg_1.x, ~arg_1.x, arg_1.x, _wgslsmith_sub_i32(arg_1.x, -1i)), min(-vec4<i32>(arg_1.x, 17648i, arg_1.x, arg_1.x), arg_1)), -(abs(vec4<i32>(66259i, 22180i, arg_1.x, arg_1.x)) ^ arg_1) & _wgslsmith_mod_vec4_i32(arg_1, ~arg_1));
    global1 = array<vec3<u32>, 21>();
    return Struct_1(238f, _wgslsmith_f_op_vec3_f32(func_3(true, firstLeadingBit(arg_1.wz), true, func_1(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(trunc(var_0.e))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global1 = array<vec3<u32>, 21>();
    global1 = array<vec3<u32>, 21>();
    var var_0 = Struct_2(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], false), false))), Struct_1(-1952f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1513f, -619f, -106f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, 1105f, -1337f))))))), func_4(func_1(-390f), vec4<i32>(~2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -27794i, 2147483647i), vec3<i32>(2147483647i, 0i, 1i)), ~1i), 1i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -476f) > _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-378f + -831f), _wgslsmith_f_op_f32(ceil(292f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1100f, -934f) - -819f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(111f + -1000f)), -671f, _wgslsmith_div_f32(-1708f, -3208f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-325f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, 492f, 1183f, 864f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1418f, 1754f, -813f, 1566f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, -1652f, 613f, -763f) * vec4<f32>(966f, -1195f, -931f, -510f)))))));
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_1 = firstLeadingBit(1u);
    let var_2 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, abs(1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(42180i, -2657i), vec2<i32>(-32073i, 0i)), 1i), i32(-1i) * -27328i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1010f, var_0.e, vec4<i32>(-var_2, -countOneBits(min(var_2, 19535i)), var_2, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(var_2, var_2, var_2, 1i)), abs(vec4<i32>(var_2, -1i, var_2, var_2)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, var_0.c.a, var_0.c.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(885f, var_0.c.b.x, -1554f), vec3<f32>(var_0.c.a, var_0.e.x, var_0.e.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a, var_0.b.a, -657f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, var_0.c.a, var_0.e.x))))), 0i);
}

