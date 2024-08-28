struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0i, vec4<u32>(14100u, 1u, 79321u, 0u), 1433f), Struct_1(-5935i, vec4<u32>(0u, 1u, 54305u, 1u), 1000f), Struct_1(-1i, vec4<u32>(0u, 78067u, 63897u, 1u), -306f), Struct_1(-5308i, vec4<u32>(75877u, 1181u, 1u, 23491u), -1239f), Struct_1(21652i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 352f), Struct_1(27045i, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), -1619f), Struct_1(32330i, vec4<u32>(4294967295u, 4294967295u, 25356u, 4294967295u), 1243f), Struct_1(1i, vec4<u32>(54094u, 18738u, 70157u, 1u), 764f), Struct_1(-1i, vec4<u32>(0u, 23249u, 33953u, 4294967295u), 830f), Struct_1(i32(-2147483648), vec4<u32>(0u, 607u, 67104u, 23499u), 259f), Struct_1(7253i, vec4<u32>(16567u, 27103u, 4294967295u, 4294967295u), -1499f), Struct_1(24836i, vec4<u32>(22727u, 1u, 1u, 0u), -130f), Struct_1(-1i, vec4<u32>(24136u, 77628u, 1u, 1u), -2180f), Struct_1(-1i, vec4<u32>(12608u, 4294967295u, 1u, 27380u), -274f), Struct_1(0i, vec4<u32>(0u, 7158u, 31356u, 0u), -2190f), Struct_1(-1930i, vec4<u32>(18544u, 0u, 4294967295u, 73762u), 1036f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_1, 16>();
    var var_0 = u_input.a;
    global1 = array<Struct_1, 16>();
    let var_1 = global1[_wgslsmith_index_u32(~(~(reverseBits(~4294967295u) ^ (u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 21541u), vec3<u32>(u_input.c, 13821u, u_input.b)) % 32u)))), 16u)];
    let var_2 = Struct_1(-max(select(~(-2147483647i), 1i, true), u_input.a.x), select(~(~min(vec4<u32>(0u, u_input.b, 1u, var_1.b.x), var_1.b)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.c, 4294967295u, 71273u)), var_1.b), !(1u > ~var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + -1236f))));
    return ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~var_1.b.x, abs(7864u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 36305u), vec2<u32>(var_2.b.x, u_input.b)), countOneBits(u_input.c), false), ~86251u, u_input.b ^ var_2.b.x), vec4<u32>(var_2.b.x, ~(~var_1.b.x), var_2.b.x, _wgslsmith_mod_u32(~u_input.c, var_1.b.x)));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    global1 = array<Struct_1, 16>();
    global0 = !(1i <= _wgslsmith_div_i32(min(u_input.a.x, 1i), 2147483647i & u_input.a.x));
    var var_0 = Struct_2(all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(select(reverseBits(1u >> (firstTrailingBit(4294967295u) % 32u)), arg_0.x, true), 16u)], vec3<f32>(774f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f + 1925f)), -350f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1676f, -416f))))))), Struct_1(u_input.a.x, vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(u_input.b, arg_0.x, u_input.b, 4294967295u)), ~1u, select(func_3().x, _wgslsmith_mult_u32(78337u, u_input.b), true), _wgslsmith_sub_u32(u_input.c, arg_0.x) ^ ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(2083f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)))), Struct_1(firstLeadingBit(u_input.a.x), _wgslsmith_add_vec4_u32(~arg_0, countOneBits(arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-200f - -1046f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)), true))));
    var var_1 = 444f;
    var_0 = Struct_2(true, Struct_1(_wgslsmith_mult_i32(1i, var_0.b.a), ~arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e.c + var_0.e.c)))))), var_0.c, var_0.e, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.b.x, arg_0.x), 16u)]);
    return vec2<bool>(true, true);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_u32(9712u, _wgslsmith_mod_u32(u_input.b, 20009u));
    global1 = array<Struct_1, 16>();
    global0 = true;
    global1 = array<Struct_1, 16>();
    var var_1 = Struct_2(all(func_4(~func_3())), global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 16u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1430f * 298f) - _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-487f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1749f), -1000f, true))), -1554f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(~max(vec3<u32>(u_input.b, 4294967295u, var_0), vec3<u32>(6198u, 8088u, 1u)), ~vec3<u32>(u_input.c, var_0, 47818u)), func_3().xwz), 16u)], global1[_wgslsmith_index_u32(31486u, 16u)]);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-664f)) - _wgslsmith_f_op_f32(var_1.d.c + var_1.c.x)) * _wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(trunc(var_1.d.c)))), _wgslsmith_div_f32(-1000f, var_1.d.c));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec4<u32>(77435u, 4294967295u, _wgslsmith_sub_u32(~u_input.b, min(u_input.b, ~(~1u))), u_input.c);
    var var_1 = ~(~1u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(f32(-1f) * -1090f));
    var_2 = vec2<f32>(311f, _wgslsmith_f_op_f32(func_2()));
    var var_3 = Struct_1(-28764i, vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~63005u), ~(~43058u)), 11834u, ~54719u), 1500f);
    return !select(vec3<bool>(false, !(!arg_1), true), vec3<bool>(all(func_4(vec4<u32>(var_0.x, 28461u, var_0.x, 6802u))), !all(vec3<bool>(arg_1, true, arg_1)), true), (countOneBits(0u) << (var_0.x % 32u)) > ~(~80205u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(all(vec2<bool>(true, all(vec3<bool>(false, false, false)))) & !all(func_1(u_input.a.x, false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))));
    global0 = !(reverseBits(max(~u_input.a.x, u_input.a.x)) < u_input.a.x);
    let var_1 = Struct_2(!(!(-370f < _wgslsmith_f_op_f32(round(1745f)))), Struct_1(1i | ~reverseBits(u_input.a.x), firstLeadingBit(~(~vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-492f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f - 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2702f, 1743f) * _wgslsmith_f_op_f32(f32(-1f) * -1703f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1174f + -217f), 1000f))), -1090f), Struct_1(-2147483647i, ~vec4<u32>(u_input.c, 4294967295u, 99667u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), Struct_1(countOneBits(u_input.a.x) >> (u_input.c % 32u), min(~(vec4<u32>(48435u, 1u, u_input.c, 1u) | vec4<u32>(u_input.b, u_input.b, 24146u, 56817u)), ~(~vec4<u32>(0u, u_input.c, 0u, 90787u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1998f + 733f), 1306f) - _wgslsmith_f_op_f32(max(-555f, _wgslsmith_f_op_f32(-688f * -1522f))))));
    var_0 = all(!vec2<bool>(all(vec2<bool>(false, var_1.a)), var_1.a));
    let var_2 = select(vec2<bool>(~(-2147483647i) >= ~(2147483647i & var_1.d.a), ~(~u_input.b) >= var_1.d.b.x), vec2<bool>(!(!any(vec2<bool>(var_1.a, var_1.a))), var_1.a), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<u32>(var_1.e.b.x, _wgslsmith_clamp_u32(var_1.e.b.x, 39662u, u_input.b) ^ var_1.b.b.x) ^ var_1.d.b.wx);
}

