struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(15937i, 23164i, i32(-2147483648)), vec3<i32>(-20939i, 0i, 2147483647i), vec3<i32>(-48519i, 19415i, 65575i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-32603i, 10083i, 5493i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-1i, 2147483647i, -8775i), vec3<i32>(11800i, -16098i, 2147483647i), vec3<i32>(0i, 47325i, -4743i), vec3<i32>(-1i, -36814i, 2147483647i), vec3<i32>(0i, 43454i, -23173i), vec3<i32>(0i, -60293i, 2147483647i), vec3<i32>(-55540i, 29629i, i32(-2147483648)), vec3<i32>(-31131i, -22662i, 2147483647i), vec3<i32>(-719i, -38335i, -19851i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(1i, i32(-2147483648), 44264i), vec3<i32>(2147483647i, 20675i, 2147483647i), vec3<i32>(1i, -26305i, 1i), vec3<i32>(-66144i, 19577i, -1i));

var<private> global2: array<vec3<bool>, 29>;

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2291f, -253f, 325f, -277f), vec4<f32>(-338f, -872f, 630f, -319f))))) - vec4<f32>(_wgslsmith_f_op_f32(603f * 173f), -347f, -960f, _wgslsmith_f_op_f32(round(-1182f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, -814f, _wgslsmith_f_op_f32(f32(-1f) * -1107f), 248f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1416f, -184f)), -1328f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(633f)), _wgslsmith_f_op_f32(-858f - -155f)), _wgslsmith_f_op_f32(f32(-1f) * -2467f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = vec4<bool>(true, all(vec2<bool>(all(select(vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(1u, 29u)])), true)), true, true);
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_1((true & any(!vec3<bool>(var_1.x, false, false))) || all(var_1.zw), global2[_wgslsmith_index_u32(~(~(~0u)) & select(_wgslsmith_div_u32(1u, u_input.a) ^ 37208u, ~_wgslsmith_clamp_u32(u_input.a, 17482u, 20309u), true), 29u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-560f, -1022f), vec2<f32>(-361f, var_0.x), var_1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(608f, -746f) * var_0.yz), var_0.yz, !vec2<bool>(var_1.x, true))), var_1.xy))), 1u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(1876f, 303f, _wgslsmith_f_op_f32(f32(-1f) * -461f), var_0.x), var_0), !(!all(global2[_wgslsmith_index_u32(u_input.a, 29u)])))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_2.c.x), -637f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + 1894f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-475f + 599f))), _wgslsmith_f_op_f32(trunc(var_2.c.x)), 852f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> u32 {
    global1 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-868f, 1000f, arg_0.c.x, arg_2))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1409f, -2271f, 469f, 187f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(arg_2 - arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-149f)), _wgslsmith_f_op_f32(arg_3 * arg_2), arg_3, _wgslsmith_f_op_f32(753f - -896f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1195f, 732f, arg_3)), _wgslsmith_f_op_vec4_f32(func_3()), vec4<bool>(false, false, false, arg_0.a))))));
    var var_1 = max(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(32377i, -24093i, arg_1.x), reverseBits(vec3<i32>(1i, arg_1.x, arg_1.x))), ~(-arg_1.x >> ((u_input.a >> (4294967295u % 32u)) % 32u)));
    global2 = array<vec3<bool>, 29>();
    let var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, arg_0.d, 49563u), abs(arg_0.d), arg_0.d, u_input.a);
    return _wgslsmith_sub_u32(~arg_0.d, u_input.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    return ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, firstTrailingBit(arg_1.d)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 2325u), vec3<u32>(arg_1.d, arg_1.d, arg_1.d))), vec3<u32>(0u, countOneBits(1u >> (1u % 32u)), arg_1.d), vec3<u32>(50691u, 0u, arg_1.d));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 0u, 72664u)), reverseBits(~u_input.a)), ~u_input.a, u_input.a), func_4(-(~(-13766i)) << (func_2(global3[_wgslsmith_index_u32(~u_input.a, 14u)], vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(trunc(-1000f))) % 32u), global0[_wgslsmith_index_u32(~u_input.a, 15u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a ^ 129443u, ~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(26512u, u_input.a), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(43672u, 4294967295u)))), 14u)]));
    global3 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1729f), _wgslsmith_f_op_f32(375f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(trunc(293f))) + 588f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x + _wgslsmith_f_op_f32(f32(-1f) * -529f)), _wgslsmith_f_op_f32(f32(-1f) * -345f)))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u >> (((_wgslsmith_dot_vec2_u32(vec2<u32>(39612u, 22029u), vec2<u32>(22017u, 1u)) & u_input.a) << (countOneBits(u_input.a) % 32u)) % 32u)), 14u)];
    let var_3 = abs(_wgslsmith_mod_vec2_u32(select(firstLeadingBit(max(vec2<u32>(u_input.a, var_2.d), vec2<u32>(0u, u_input.a))), ~(~vec2<u32>(47223u, 1u)), var_2.b.zy), vec2<u32>(~1u, var_2.d)));
    return min(_wgslsmith_add_u32(4294967295u, func_2(global3[_wgslsmith_index_u32(var_2.d, 14u)], vec4<i32>(125650i, -1i, -1i, -6972i), var_2.c.x, 490f)) << (4294967295u % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(51821u, 0u, 14623u, var_2.d), vec4<u32>(1u, var_2.d, var_3.x, 69533u)))) >> (4294967295u % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_1 = 29264i;
    var var_2 = !vec4<bool>(all(select(vec4<bool>(true, var_0.a, false, false), select(vec4<bool>(arg_0.b.x, true, false, true), vec4<bool>(var_0.b.x, false, arg_0.a, false), true), true)), !any(select(vec4<bool>(arg_0.a, true, var_0.a, arg_0.b.x), vec4<bool>(true, true, arg_0.b.x, true), arg_0.a)), all(vec2<bool>(true, true)), arg_0.b.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    return Struct_1(!var_2.x, select(select(select(select(vec3<bool>(arg_0.a, true, var_2.x), arg_0.b, vec3<bool>(var_0.a, var_0.a, false)), !global2[_wgslsmith_index_u32(arg_1, 29u)], !vec3<bool>(true, var_2.x, false)), select(vec3<bool>(var_2.x, var_0.b.x, true), vec3<bool>(arg_0.a, true, arg_0.b.x), false), !var_2.x), select(!vec3<bool>(var_0.a, arg_0.b.x, var_2.x), var_0.b, !vec3<bool>(var_2.x, false, arg_0.b.x)), true), vec2<f32>(_wgslsmith_f_op_f32(1005f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) + -613f)), -1201f), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 20>();
    let var_0 = func_5(global0[_wgslsmith_index_u32(func_1(), 15u)], u_input.a);
    let var_1 = func_5(global3[_wgslsmith_index_u32(0u, 14u)], 16406u);
    let var_2 = -min(_wgslsmith_add_vec4_i32(vec4<i32>(1i, abs(-38975i), 14414i, ~60575i), select(~vec4<i32>(-22925i, -40175i, -1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, 34366i, 25371i), vec4<i32>(46331i, 6974i, -7695i, 2147483647i)), any(var_1.b))), ~vec4<i32>(1i, reverseBits(25277i), _wgslsmith_div_i32(-13050i, -5837i), -23255i));
    var var_3 = -1i;
    global3 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, -25816i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.x))), -287f, var_0.c.x));
}

