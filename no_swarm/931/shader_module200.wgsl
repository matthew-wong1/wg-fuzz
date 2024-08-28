struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: i32 = 20002i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -696f)))) - _wgslsmith_f_op_f32(f32(-1f) * -885f)), vec3<i32>(u_input.b, 41827i, u_input.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(var_0.a)), firstLeadingBit(vec3<i32>(-var_0.b.x, 0i, -1i)));
    var var_2 = Struct_2(-1403f, Struct_1(!vec2<bool>(any(vec3<bool>(true, false, true)), select(false, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, -188f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(select(arg_0.a, 140f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(arg_0.a + var_0.a)), 783f);
    var var_3 = true;
    global1 = var_0.b.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.b.a, vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(-651f, _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)))), arg_0.a));
    global0 = array<u32, 10>();
    var var_1 = firstLeadingBit(-8827i);
    var_1 = -u_input.a.x;
    var_1 = -3736i << (select(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 86172u, global0[_wgslsmith_index_u32(4294967295u, 10u)], 1u), vec4<u32>(arg_2.x, 1u, global0[_wgslsmith_index_u32(37604u, 10u)], 1u))), 4294967295u, false) % 32u);
    return Struct_1(vec2<bool>(!(!(-1i > u_input.b)), var_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(f32(-1f) * -622f)), -920f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_2(Struct_2(arg_1.x, Struct_1(vec2<bool>(false, arg_2.a.x), arg_1.yx), 322f, arg_2.b.x), Struct_2(arg_2.b.x, arg_2, arg_0.x, arg_1.x), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83250u, 10u)], 10u)], 1u), vec3<u32>(4354u, 350u, 18406u)).b.x)))) + arg_2.b);
    var var_1 = ~vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(20218u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 13286u)), global0[_wgslsmith_index_u32(0u, 10u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11499u, 10u)], 10u)]), 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], _wgslsmith_mult_u32(~(~4294967295u), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(33516u, 10u)], 11923u), 10u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1044u, 10u)], 10u)]);
    var_1 = vec4<u32>(~(~22253u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(52793u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), var_1.yw), (var_1.wy >> (vec2<u32>(112975u, 4294967295u) % vec2<u32>(32u))) | ~var_1.yx), global0[_wgslsmith_index_u32(var_1.x, 10u)], countOneBits(4294967295u)) ^ vec4<u32>(var_1.x, 4294967295u, global0[_wgslsmith_index_u32(~0u, 10u)], 24u);
    global0 = array<u32, 10>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(153f, arg_0.x)), Struct_1(!vec2<bool>(arg_2.a.x, !arg_2.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(195f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2.b.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -151f))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = -u_input.b;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(45680u, global0[_wgslsmith_index_u32(14913u, 10u)] << (global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38865u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), 10u)] % 32u), reverseBits(~28435u)), _wgslsmith_div_vec3_u32(firstLeadingBit(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2698u, 10u)], 10u)], 10u)], 62537u, 103095u))), _wgslsmith_add_vec3_u32(~(vec3<u32>(80259u, 53162u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) | vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49854u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 1u)), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(14750u, 10u)], 16671u) & (vec3<u32>(0u, global0[_wgslsmith_index_u32(81582u, 10u)], 56225u) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57893u, 10u)], 10u)], 15942u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)])))));
    var var_2 = -112f;
    var var_3 = select(select(vec3<bool>(arg_2.b.a.x, func_2(func_4(arg_0, vec3<f32>(arg_3, arg_0.x, arg_3), arg_2.b), arg_2, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(123933u, 10u)])).a.x, false), !vec3<bool>(!arg_2.b.a.x, arg_2.b.a.x, arg_2.b.a.x), !(!any(vec4<bool>(arg_2.b.a.x, arg_2.b.a.x, true, arg_2.b.a.x)))), !select(vec3<bool>(false, true, false), vec3<bool>(u_input.a.x > 29617i, u_input.a.x > 2147483647i, false), all(!arg_2.b.a)), arg_2.b.a.x && arg_2.b.a.x);
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(1111f, 1394f, arg_2.d), true))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(370f + arg_2.d))), -378f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, 116f) - func_2(arg_2, Struct_2(-773f, arg_2.b, arg_2.c, arg_0.x), vec2<u32>(1449u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(7374u, 10u)], 1u, global0[_wgslsmith_index_u32(1u, 10u)])).b.x))), _wgslsmith_f_op_vec3_f32(-arg_0), func_2(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.b.b.x, arg_0.x) * arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-715f, 1852f, 1032f), arg_0)))), arg_0, Struct_1(!vec2<bool>(false, arg_2.b.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-467f, arg_0.x), vec2<f32>(arg_0.x, -2049f), arg_2.b.a.x)))), arg_2, ~(~reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65940u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)]))), max(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 10u)], 0u, 1u), vec3<u32>(20162u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(26180u, 10u)], global0[_wgslsmith_index_u32(16249u, 10u)], 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12680u, 10u)], 10u)], 40014u))))).b;
    return arg_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<f32> {
    global0 = array<u32, 10>();
    global1 = arg_0.x;
    var var_0 = ~(~u_input.a);
    let var_1 = arg_1;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) + _wgslsmith_f_op_f32(-var_1.b.b.x)))))), arg_1.b, -682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-435f, var_1.d, var_1.b.b.x) + vec3<f32>(var_1.d, -169f, 254f)), vec3<f32>(var_1.a, arg_1.a, 939f), !vec3<bool>(true, true, var_1.b.a.x))), u_input.b, func_4(vec3<f32>(var_1.d, 572f, -248f), vec3<f32>(-917f, 1000f, var_1.d), func_2(arg_1, arg_1, vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3463u, 10u)], 10u)]), vec3<u32>(50676u, global0[_wgslsmith_index_u32(1u, 10u)], 57225u))), var_1.b.b.x))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, var_1.b.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(979f, arg_1.c, arg_1.c))), vec3<f32>(var_2.b.b.x, -881f, 291f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(vec3<f32>(-791f, -3294f, 805f), arg_0.x, var_1, -586f)), _wgslsmith_f_op_f32(f32(-1f) * -422f), func_2(Struct_2(var_2.c, Struct_1(var_2.b.a, var_1.b.b), var_1.b.b.x, arg_1.a), var_2, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 25546u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19185u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65545u, 10u)], 10u)], 10u)], 10u)], 1u)).b.x)))), var_2.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 41432i;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-493f, 716f, 1317f))), _wgslsmith_f_op_vec3_f32(func_1(u_input.a.yx, Struct_2(-1823f, Struct_1(vec2<bool>(true, true), vec2<f32>(-1000f, -321f)), 1000f, -1115f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(299f, 1244f, 1518f) * vec3<f32>(-2721f, -147f, -395f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(0u, _wgslsmith_sub_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78878u, 10u)], 10u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 8039u))), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)] >> (14086u % 32u), 10u)])), abs(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(firstLeadingBit(62469i), u_input.a.x & 48831i), min(u_input.b, u_input.b))));
}

