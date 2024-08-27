struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-7558i, -5374i, -34318i), vec3<i32>(-34852i, -1i, 2147483647i), vec3<i32>(20671i, -45200i, -18929i), vec3<i32>(52157i, -16813i, -1i), vec3<i32>(-37636i, 2147483647i, 13180i), vec3<i32>(2147483647i, -47406i, 9455i), vec3<i32>(2147483647i, -37643i, 2147483647i), vec3<i32>(1i, -4436i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -17155i), vec3<i32>(1i, 19652i, 2147483647i), vec3<i32>(0i, 1i, 0i), vec3<i32>(7810i, -35104i, -1i), vec3<i32>(2147483647i, -41036i, 0i), vec3<i32>(-16797i, -26842i, 13031i), vec3<i32>(-1i, 9868i, i32(-2147483648)), vec3<i32>(12460i, i32(-2147483648), 0i), vec3<i32>(-17642i, -2236i, -32144i), vec3<i32>(-34470i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 47999i, 0i), vec3<i32>(-1i, -20366i, 0i), vec3<i32>(0i, 19342i, i32(-2147483648)), vec3<i32>(10835i, -1i, 1i), vec3<i32>(-3497i, 24080i, 1i), vec3<i32>(20926i, 1292i, -1i), vec3<i32>(-1i, -58223i, -23102i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(38755i, -26187i, 37341i), vec3<i32>(i32(-2147483648), 17863i, 6976i), vec3<i32>(-5885i, i32(-2147483648), 32035i), vec3<i32>(0i, 0i, 33619i));

var<private> global3: array<Struct_1, 23>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = abs(arg_0.a.b.yx);
    let var_1 = arg_0;
    global2 = array<vec3<i32>, 31>();
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), -1000f));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(global4.b.x, 23u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a, vec3<u32>(6511u, 6925u, 4294967295u), vec4<i32>(-29723i, u_input.b, -2147483647i, u_input.b), vec2<bool>(true, false), global4.e), vec4<f32>(-226f, 1228f, 399f, 1053f)), select(vec4<bool>(false, global0.x, global0.x, global4.e), vec4<bool>(false, false, true, global0.x), vec4<bool>(false, global0.x, true, true)), _wgslsmith_f_op_f32(min(-234f, -705f))))), -1172f, _wgslsmith_f_op_f32(-1000f + -1029f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -511f)), var_0.b.x));
    global2 = array<vec3<i32>, 31>();
    var var_3 = !select(select(!global4.d, vec2<bool>(false, all(vec4<bool>(false, true, false, true))), select(select(vec2<bool>(false, var_1.e), var_0.a.d, vec2<bool>(global4.d.x, var_1.d.x)), vec2<bool>(var_0.a.d.x, true), var_0.b.x > var_0.b.x)), select(!select(global0.yx, vec2<bool>(false, true), vec2<bool>(true, true)), !(!vec2<bool>(true, var_1.e)), any(vec4<bool>(global4.d.x, false, false, true))), vec2<bool>(!(!var_0.a.e), select(global0.x & global4.d.x, true, true)));
    return global1[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global4.b.xx ^ var_0.a.b.zz, vec2<u32>(var_0.a.b.x, 4294967295u)), abs(_wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(14979u, var_1.b.x, 44587u))))), 15u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global2 = array<vec3<i32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1030f)) + _wgslsmith_f_op_f32(trunc(-1308f))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(663f, var_1), vec2<f32>(var_1, var_1), false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-322f, -1552f)))), !vec2<bool>(global4.e, global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1289f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, var_1))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1058f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2941f, -1159f) * vec2<f32>(var_1, var_1))))))));
    var var_3 = func_2();
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.b.a.c.x, ~(-1i), global4.a.x), countOneBits(~(~vec3<i32>(arg_0.b.a.a.x, 2147483647i, -16539i)))));
    let var_1 = ~(~(~vec4<u32>(global4.b.x, 33025u, arg_0.b.a.b.x, _wgslsmith_clamp_u32(global4.b.x, global4.b.x, 4294967295u))));
    var var_2 = global4.c;
    global3 = array<Struct_1, 23>();
    var var_3 = global4.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(93743i, u_input.b);
    global0 = vec3<bool>((u_input.b << (global4.b.x % 32u)) > u_input.b, true, global4.d.x);
    global4 = func_4(Struct_3(106f, Struct_2(func_1(), vec4<f32>(651f, _wgslsmith_f_op_f32(405f - 377f), _wgslsmith_div_f32(1035f, 275f), _wgslsmith_f_op_f32(func_3(Struct_2(global3[_wgslsmith_index_u32(global4.b.x, 23u)], vec4<f32>(-885f, -237f, 1000f, 1155f)), vec4<bool>(false, global0.x, false, global0.x), -767f))))), global0.xx, !vec3<bool>(false, !(!global4.d.x), true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1160f, 970f))))) * 2082f), _wgslsmith_f_op_f32(max(-2384f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(319f, -1009f)) - -791f), 1000f, (0i > var_0.x) && false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-419f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1049f)), -1619f))));
    var var_2 = global4.b.xz;
    let var_3 = ((func_4(Struct_3(1641f, Struct_2(global3[_wgslsmith_index_u32(global4.b.x, 23u)], vec4<f32>(var_1.x, -169f, -817f, var_1.x))), vec2<bool>(global0.x, false), vec3<bool>(true, true, false)).b & ~global4.b) ^ (vec3<u32>(9323u ^ var_2.x, ~9264u, 10475u) ^ global4.b)) & _wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(var_2.x, 4294967295u, 4294967295u)), global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~15256u, global4.b.x, 1u, ~20348u));
}

