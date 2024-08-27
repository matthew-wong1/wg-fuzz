struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(-473f, 0i, vec2<i32>(13649i, 17736i), vec3<i32>(-42507i, 68254i, i32(-2147483648)), vec2<f32>(587f, 779f));

var<private> global2: array<i32, 24> = array<i32, 24>(i32(-2147483648), -1029i, -15597i, -1i, 0i, i32(-2147483648), -24288i, 2147483647i, 24010i, 32999i, -1i, 0i, -5701i, 36855i, i32(-2147483648), -66378i, 2147483647i, 3025i, -16i, 10341i, -1i, 0i, 2282i, 6344i);

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = select(false | !((1u ^ arg_3.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 82050u), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global4.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, -469f)) * _wgslsmith_f_op_f32(arg_0.x - -1000f)), arg_1.x);
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, global4.x, global1.e.x, 1763f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1000f, arg_0.x, global1.a) + vec4<f32>(global1.e.x, global4.x, global1.a, 222f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, arg_0.x, global4.x, 403f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(486f * -149f) + 1021f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -154f) - _wgslsmith_f_op_f32(-162f + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), -447f)));
    let var_1 = 1i;
    var var_2 = arg_3.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(global1.a)), global1.b, _wgslsmith_add_vec2_i32(~abs(~vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(105806u, 24u)])), -u_input.a.yz), vec3<i32>(global2[_wgslsmith_index_u32(reverseBits(~14708u & abs(arg_3.x)), 24u)], global1.d.x, firstLeadingBit(arg_2.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), vec2<f32>(global1.e.x, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) <= global4.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) * _wgslsmith_f_op_f32(-global1.e.x))), 465f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_1.c;
    var var_1 = vec3<i32>(select(abs(_wgslsmith_sub_i32(-3376i & arg_0, arg_2.b)), u_input.a.x, true), max(_wgslsmith_add_i32(_wgslsmith_mult_i32(39433i, _wgslsmith_mod_i32(arg_0, -2147483647i)), ~45336i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(713u, 65178u, 1u, 23636u), vec4<u32>(0u, 4294967295u, 76628u, 55733u))), 24u)] & _wgslsmith_clamp_i32(~arg_2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, -41588i), vec2<i32>(arg_1.b, -1i)), 1i)), arg_1.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4.wz, vec4<bool>(true, true, true, true), vec4<i32>(arg_0, -24905i, arg_1.b, arg_0), ~vec4<u32>(0u, 0u, 1u, 0u))) + -1724f)), _wgslsmith_mult_i32(global3.x, _wgslsmith_dot_vec2_i32(~arg_1.c, vec2<i32>(1041i, global1.c.x)) << (firstTrailingBit(1u) % 32u)), vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_add_i32(global3.x, global1.b), 1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -3180i), 2147483647i) | _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, 1i, -2147483647i)), vec3<i32>(var_1.x, global1.b, global1.c.x))), vec3<i32>(-arg_0, _wgslsmith_add_i32(~(-2147483647i), -36302i), 2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, 1036f) + arg_1.e) + _wgslsmith_f_op_vec2_f32(-arg_2.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e) - _wgslsmith_f_op_vec2_f32(-arg_1.e)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1231f, arg_2.a), global1.e, vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-422f, -875f), vec2<f32>(538f, global1.e.x))))), vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))))));
    var var_3 = global1.e;
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_f_op_f32(-var_2.e.x)))))));
}

fn func_2() -> f32 {
    var var_0 = global4.yww;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global4.x + var_0.x), ~global3.x, vec2<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-34711i, -47008i), ~vec2<i32>(-13961i, global1.d.x)), global2[_wgslsmith_index_u32(29723u, 24u)])), _wgslsmith_clamp_vec3_i32(-global1.d, -vec3<i32>(1i, global2[_wgslsmith_index_u32(12033u, 24u)], -36460i), vec3<i32>(3344i & global2[_wgslsmith_index_u32(88320u, 24u)], global2[_wgslsmith_index_u32(46610u, 24u)], ~0i)) & _wgslsmith_sub_vec3_i32(-u_input.a, reverseBits(-global1.d)), _wgslsmith_f_op_vec2_f32(func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, max(~4294967295u, ~70553u)), 24u)], Struct_1(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(func_3(var_0.zz, vec4<bool>(false, true, true, true), vec4<i32>(u_input.a.x, 0i, -31511i, 42296i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 116471u)))), ~(~global2[_wgslsmith_index_u32(4294967295u, 24u)]), global1.c, vec3<i32>(global3.x, u_input.a.x ^ global3.x, _wgslsmith_add_i32(u_input.a.x, global3.x)), global4.yx), Struct_1(var_0.x, 18713i, global1.c, global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.yw, vec2<f32>(global1.a, 710f)) * vec2<f32>(-884f, global1.e.x))))));
    let var_2 = Struct_1(-1776f, (~u_input.a.x & -global3.x) >> (~(~_wgslsmith_add_u32(71466u, 25423u)) % 32u), select(firstTrailingBit(vec2<i32>(var_1.c.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26737u, 5363u, 7107u), vec3<u32>(4294967295u, 15032u, 0u)), 24u)])), var_1.c, all(vec2<bool>(true, all(vec3<bool>(false, true, false))))), countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-761f, _wgslsmith_f_op_f32(step(var_0.x, global1.e.x)))))));
    let var_3 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, var_2.e.x < var_0.x), vec2<bool>(true, true))), all(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)));
    var var_4 = select(var_3, vec2<bool>(!(!var_3.x | (var_3.x & true)), true && all(!vec3<bool>(true, true, var_3.x))), var_3);
    return 845f;
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, global3.x, 2147483647i, global1.b) ^ ~vec4<i32>(-34010i, global2[_wgslsmith_index_u32(1u, 24u)], global3.x, global3.x)), -vec4<i32>(firstTrailingBit(0i), -2147483647i, ~global1.d.x, -38553i)));
    let var_1 = Struct_1(global1.a, min(global3.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0, global2[_wgslsmith_index_u32(99135u, 24u)], global3.x), vec4<i32>(39741i, var_0, 1i, 1i)), global3.x), -_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(global2[_wgslsmith_index_u32(0u, 24u)] << (39327u % 32u), -u_input.a.x), vec2<i32>(-1i) * -vec2<i32>(-23951i, u_input.a.x)), ~_wgslsmith_div_vec3_i32(global1.d, ~(-u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 2071f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.e)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-418f, 1756f)))))));
    return var_1;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    var var_0 = arg_2;
    global3 = -global1.c;
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(arg_3.x, 56411u), 64516u, 0u, 15441u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 83947u, 1u, _wgslsmith_mult_u32(arg_3.x, arg_3.x)), ~reverseBits(vec4<u32>(30860u, 48192u, 1u, arg_3.x)), ~select(vec4<u32>(arg_3.x, 66080u, arg_3.x, 1u), vec4<u32>(1u, 0u, arg_3.x, arg_3.x), vec4<bool>(arg_0.x, arg_0.x, false, false))), min(vec4<u32>(arg_3.x, arg_3.x, reverseBits(1u), _wgslsmith_clamp_u32(arg_3.x, arg_3.x, arg_3.x)), firstTrailingBit(~vec4<u32>(1u, 1u, arg_3.x, arg_3.x)) | ~vec4<u32>(17069u, arg_3.x, arg_3.x, arg_3.x)));
    return func_5(_wgslsmith_div_f32(func_5(var_0.e.x, any(arg_0.yz)).e.x, global1.a), global2[_wgslsmith_index_u32(~(~4294967295u), 24u)] <= (i32(-1i) * -4614i));
}

fn func_1() -> vec3<bool> {
    global1 = func_6(vec3<bool>(true, true, false), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(5817i, u_input.a.x, -53082i)), _wgslsmith_div_vec3_i32(vec3<i32>(-61508i, u_input.a.x, u_input.a.x) >> (~vec3<u32>(80043u, 51049u, 8710u) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, u_input.a.x, -40439i))), func_5(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), global4.x)))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24970u), vec2<u32>(44184u, 1u))) > _wgslsmith_mult_u32(~11297u, abs(1u))), max(~vec3<u32>(firstLeadingBit(18829u), _wgslsmith_mod_u32(54855u, 4294967295u), ~5283u), abs(vec3<u32>(~4294967295u, _wgslsmith_add_u32(0u, 44215u), 0u))));
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -692f, global4.x, -122f) - vec4<f32>(-1000f, global1.a, -561f, global1.e.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(206f, -2204f, global4.x, global4.x))))))))), !(_wgslsmith_f_op_f32(f32(-1f) * -1390f) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), global4.x, all(vec4<bool>(false, false, false, true)))))));
    global2 = array<i32, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - 1000f), global1.c.x, vec2<i32>(-1i, _wgslsmith_sub_i32(0i >> (1u % 32u), func_5(_wgslsmith_f_op_f32(floor(global1.e.x)), true).c.x)), ~(~global1.d & firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(min(-469f, -644f)), -262f));
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1491f, func_6(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), abs(firstTrailingBit(vec3<i32>(global1.c.x, var_0.b, -1i))), func_5(-1220f, global1.d.x <= 1i), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(106169u, 4294967295u, 4307u)), vec3<u32>(1u, 1u, 1u))).a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-415f, func_6(vec3<bool>(true, true, false), global1.d, Struct_1(global1.a, global3.x, var_0.c, global1.d, var_0.e), vec3<u32>(11714u, 4294967295u, 1u)).a))));
    return vec3<bool>(1u <= _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(42308u, 21408u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(46766u, 1u), vec2<u32>(0u, 1u)))), true, ~(-1i | -global3.x) > 1i);
}

fn func_7(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, global4.x, arg_1.x, global1.a), vec4<f32>(-545f, -786f, 506f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global1.a, -214f, -1320f)))))));
    let var_0 = abs(4294967295u);
    global1 = func_6(arg_2, _wgslsmith_sub_vec3_i32(func_6(arg_2, func_6(vec3<bool>(arg_2.x, true, false), global1.d, arg_3, vec3<u32>(4689u, 31698u, 80477u)).d, Struct_1(arg_3.e.x, global2[_wgslsmith_index_u32(var_0, 24u)], vec2<i32>(2147483647i, arg_3.d.x), vec3<i32>(-23954i, 73547i, u_input.a.x), vec2<f32>(arg_3.e.x, arg_3.a)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, 45999u), vec3<u32>(var_0, 4294967295u, var_0))).d, vec3<i32>(_wgslsmith_sub_i32(0i, arg_3.c.x), firstLeadingBit(-1i), ~(-28484i))) & ~vec3<i32>(global1.b, -8657i, 0i), func_6(arg_2, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 24u)], u_input.a.x, global3.x), vec4<i32>(-30588i, -1i, global1.c.x, arg_3.b)), global2[_wgslsmith_index_u32(7845u, 24u)] | -4304i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_0, 24u)], -2147483647i)), -firstLeadingBit(vec3<i32>(31768i, 0i, global3.x))), arg_3, vec3<u32>(1u, ~var_0, ~(~var_0))), vec3<u32>(~var_0, 0u, var_0));
    let var_1 = arg_3.a;
    global1 = arg_3;
    return arg_3.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<i32>(u_input.a.x ^ _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, 1453i, -15069i, 1i) & vec4<i32>(3590i, global1.d.x, global1.c.x, 1i)), vec4<i32>(-1i) * -vec4<i32>(-1i, global3.x, global1.d.x, 23282i)), global1.d.x);
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f), 1462f))), global1.a, _wgslsmith_f_op_f32(-1525f + global1.a), _wgslsmith_f_op_f32(func_7(any(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -687f, global4.x))), select(func_1(), vec3<bool>(true, false, true), any(vec2<bool>(false, true))), Struct_1(-821f, -9869i, select(vec2<i32>(u_input.a.x, global1.d.x), vec2<i32>(-40880i, -2147483647i), vec2<bool>(true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global3.x, global3.x), global1.d), vec2<f32>(1f, 1f))))));
    global3 = global1.c;
    let var_0 = func_6(vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), true, any(vec2<bool>(true, true))), -(~abs(global1.d | u_input.a)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global4.x) - 789f) - global4.x), true), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(7545u, 1u, 41923u), vec3<u32>(1u, 1u, 1u)))).a;
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_i32(-12683i, _wgslsmith_sub_i32(-10627i, -2147483647i)), func_6(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true), vec3<i32>(1i, -27549i, global1.b) & ~vec3<i32>(global1.c.x, global3.x, u_input.a.x), func_5(-826f, select(true, false, false)), ~vec3<u32>(25787u, 1u, 0u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), func_5(var_0, all(vec3<bool>(true, true, true))).b, ~(global1.c >> (vec2<u32>(82201u, 8179u) % vec2<u32>(32u))), select(countOneBits(vec3<i32>(-7438i, global1.c.x, -2147483647i)), ~u_input.a, func_1().x), global1.e))).x, false != (!any(vec2<bool>(false, true)) && false));
    let var_2 = any(vec2<bool>(true, true));
    var var_3 = func_5(_wgslsmith_f_op_f32(sign(-730f)), all(!func_1())).d.x;
    let var_4 = -(~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

