struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 51656u;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0i, false), Struct_1(2147483647i, false), Struct_1(31651i, false), Struct_1(0i, false), Struct_1(-9563i, false), Struct_1(1i, true), Struct_1(371i, true), Struct_1(2147483647i, true), Struct_1(2384i, false), Struct_1(-40966i, true), Struct_1(1i, true), Struct_1(-26075i, false), Struct_1(2147483647i, false), Struct_1(1i, false), Struct_1(1i, true), Struct_1(i32(-2147483648), true), Struct_1(25185i, false), Struct_1(34720i, false), Struct_1(-19530i, true));

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global3 = array<Struct_1, 12>();
    let var_0 = firstLeadingBit(-u_input.b);
    global3 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(298f, -1292f, false))), _wgslsmith_f_op_f32(max(-366f, _wgslsmith_div_f32(-2444f, -1000f))))) + _wgslsmith_f_op_f32(select(-645f, -919f, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(select(-823f, -746f, true)))))));
    global1 = u_input.c.x;
    return 1000f;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1f), 1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-485f))))))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 12u)];
    let var_2 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 19u)];
    return u_input.c.x & (4294967295u | (u_input.c.x | countOneBits(u_input.c.x)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_2)) + -895f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1783f + arg_2))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) - -413f), _wgslsmith_f_op_f32(-696f - _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + arg_2))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(abs(arg_2)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2875f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(-1317f)), -2076f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, 830f, -391f, 1000f)))), !(!select(vec4<bool>(false, true, arg_1, arg_1), select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), false))));
    global3 = array<Struct_1, 12>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~arg_0 ^ _wgslsmith_sub_u32(u_input.c.x, 48498u)), arg_0) | arg_0, 19u)];
    var var_2 = u_input.c.yy;
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(arg_2, arg_2)), _wgslsmith_f_op_f32(1674f + -876f), -948f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, var_0.x, 2378f, arg_2))))));
    return Struct_2(var_1.b, select(vec3<bool>(true, var_1.b, any(select(vec4<bool>(arg_1, var_1.b, arg_1, false), vec4<bool>(arg_1, var_1.b, true, true), false))), select(vec3<bool>(arg_1, var_1.b, var_1.b | var_1.b), !select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, var_1.b, true), var_1.b), var_1.b), select(select(all(vec4<bool>(false, true, arg_1, false)), arg_1, select(arg_1, arg_1, arg_1)), true, var_1.b)), Struct_1(max(reverseBits(-5641i), _wgslsmith_sub_i32(~var_1.a, abs(var_1.a))), false), true || (1u == max(_wgslsmith_div_u32(var_2.x, 29599u), reverseBits(var_2.x))));
}

fn func_1() -> Struct_2 {
    return func_4(~select(func_2(vec4<bool>(false, true, false, true)), _wgslsmith_mult_u32(0u | u_input.c.x, func_2(vec4<bool>(false, true, true, false))), true != all(vec4<bool>(false, true, true, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f + 1933f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f + 201f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = u_input.c.x;
    var var_1 = select(select(!(!select(vec4<bool>(true, false, false, var_0.d), vec4<bool>(true, false, true, var_0.c.b), var_0.d)), !vec4<bool>(func_1().c.b, all(var_0.b.zz), true, func_4(1u, true, -626f).c.b), select(select(!vec4<bool>(true, false, var_0.a, var_0.a), !vec4<bool>(true, var_0.c.b, true, var_0.c.b), vec4<bool>(var_0.a, true, true, false)), !select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.b.x, true, true, var_0.c.b), var_0.b.x), var_0.d)), vec4<bool>(select(any(var_0.b.zx), false, (var_0.c.a ^ u_input.d.x) == 1i), 1f != _wgslsmith_f_op_f32(step(-497f, 256f)), var_0.a, true), vec4<bool>(var_0.a, true, !func_1().b.x, !func_4(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), !var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1408f)).a));
    let var_2 = global3[_wgslsmith_index_u32(func_2(select(vec4<bool>(false, !var_1.x, true, var_1.x), vec4<bool>(all(!vec2<bool>(var_0.c.b, true)), func_1().d != (var_1.x | false), !func_4(u_input.c.x, true, -841f).a, any(var_0.b) & !var_1.x), select(var_1.x, var_0.b.x, false))), 12u)];
    let var_3 = var_0.c.a;
    let var_4 = Struct_2((true && var_1.x) || var_2.b, func_4(1u, var_1.x, 1944f).b, Struct_1(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.b), u_input.e), any(!select(vec4<bool>(var_1.x, var_0.b.x, var_2.b, var_2.b), vec4<bool>(var_0.c.b, var_1.x, var_1.x, true), vec4<bool>(true, true, true, true)))), (abs(_wgslsmith_dot_vec3_i32(u_input.d.wyx, vec3<i32>(var_0.c.a, 1i, var_2.a))) <= -64339i) & (any(var_0.b.yy) != var_1.x));
    let var_5 = ~max(vec4<u32>(u_input.c.x, ~35552u, firstLeadingBit(1u), ~(~u_input.c.x)), vec4<u32>(~73195u, 44095u, ~(~0u), 17770u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(471f, 1061f) + 688f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(0i << (_wgslsmith_dot_vec4_u32(~u_input.c, select(vec4<u32>(u_input.c.x, 0u, 2515u, u_input.c.x), vec4<u32>(var_5.x, var_5.x, 36473u, u_input.c.x), vec4<bool>(var_4.d, var_1.x, false, var_0.c.b))) % 32u), 20043i), var_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, -1710f, 917f, 1306f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, -645f, 1253f, 301f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, -1000f, 427f, 1141f) - vec4<f32>(535f, 795f, 302f, 317f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, 143f, 510f, 1150f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(339f)), _wgslsmith_f_op_f32(min(-1478f, 317f)), _wgslsmith_f_op_f32(-679f * -1121f), -1249f), !(!vec4<bool>(false, true, true, var_0.b.x))))));
}

