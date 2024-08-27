struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 4> = array<i32, 4>(-45461i, 0i, i32(-2147483648), 1i);

var<private> global2: array<f32, 1>;

var<private> global3: Struct_2 = Struct_2(1u, Struct_1(vec4<bool>(true, true, false, true), 51747i, vec4<i32>(22251i, 1i, -1i, 0i)), Struct_1(vec4<bool>(true, false, true, false), 2147483647i, vec4<i32>(-21687i, i32(-2147483648), 22688i, -1i)), 597f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))), Struct_1(!select(!arg_0, select(global3.b.a, arg_0, true), global3.c.a.x), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(1468i | u_input.b.x, _wgslsmith_div_i32(global3.c.c.x, global1[_wgslsmith_index_u32(17629u, 4u)]))), ~(-_wgslsmith_mod_vec4_i32(u_input.c, global3.c.c))), ~49345i, ~reverseBits(global3.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(sign(arg_1.x))) + global3.d);
    var var_2 = select(!var_0.b.a.wyx, vec3<bool>(all(global3.c.a.zw), false, true & arg_0.x), global3.c.a.x);
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 60258u), 1u)];
    global2 = array<f32, 1>();
    return (global3.a << (reverseBits(_wgslsmith_mod_u32(var_0.d, reverseBits(0u))) % 32u)) | (max(var_0.d, global3.a) >> (var_0.d % 32u));
}

fn func_2() -> Struct_2 {
    global0 = -2147483647i;
    global2 = array<f32, 1>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], 934f, 336f))), global3.c, 0i, global3.a);
    let var_1 = Struct_5(var_0.a, var_0.b, ~global1[_wgslsmith_index_u32(func_3(!vec4<bool>(true, true, global3.b.a.x, false), vec3<f32>(-577f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] * -979f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 1u)]))), 4u)], global3.a);
    global2 = array<f32, 1>();
    return Struct_2(countOneBits(var_1.d), Struct_1(vec4<bool>(any(var_1.b.a.yxx) | true, global3.c.a.x, !(!var_0.b.a.x), var_1.b.a.x | false), _wgslsmith_div_i32(1i, 2147483647i), -_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(286u, 4u)], 45569i, u_input.c.x, var_1.c), vec4<i32>(var_0.c, global3.b.b, -1i, var_1.b.b))), Struct_1(select(!(!var_0.b.a), global3.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, var_0.d), vec2<u32>(8762u, 4294967295u)) >= u_input.d), reverseBits(-(1i ^ var_1.c)), _wgslsmith_sub_vec4_i32(var_1.b.c, ~(-vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(102123u, 4u)], u_input.c.x, -1i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_f32(sign(1000f)), var_0.b.a.x | false)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = Struct_3(~(0i >> (1u % 32u)), _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(765f + global2[_wgslsmith_index_u32(1u, 1u)]) - _wgslsmith_div_f32(1564f, 1000f)) * global3.d)), arg_0, func_2());
    let var_2 = _wgslsmith_mult_vec3_u32(arg_2.zyx, arg_2.yxw);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.d + -443f), var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.d.d, -269f))))))), func_2().c, 1i, 52735u);
    var_3 = Struct_5(var_3.a, func_2().b, (_wgslsmith_mult_i32(-2147483647i, 1i) << (max(_wgslsmith_add_u32(u_input.d, 26488u), arg_2.x) % 32u)) & 31091i, ~(~abs(func_2().a)));
    return vec4<i32>(var_1.c.b, ~var_1.c.b, ~_wgslsmith_mod_i32(countOneBits(-73753i), firstLeadingBit(var_1.d.c.c.x)), ~(-2147483647i));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global1 = array<i32, 4>();
    let var_0 = arg_0.c;
    global2 = array<f32, 1>();
    var var_1 = Struct_4(vec4<bool>(!any(vec3<bool>(false, var_0.c.a.x, global3.b.a.x)), !(~0u != var_0.d.a), var_0.d.c.a.x, select(!any(vec2<bool>(false, global3.b.a.x)), all(arg_0.a.yz), true)), func_2().c, arg_0.c, true, false);
    let var_2 = arg_0.c.d;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    global0 = global1[_wgslsmith_index_u32(0u, 4u)];
    global3 = func_4(Struct_4(global3.b.a, Struct_1(select(select(vec4<bool>(global3.b.a.x, global3.b.a.x, global3.b.a.x, true), global3.c.a, false), vec4<bool>(false, false, false, global3.b.a.x), !vec4<bool>(global3.b.a.x, true, global3.c.a.x, false)), _wgslsmith_add_i32(-global3.b.b, ~global1[_wgslsmith_index_u32(global3.a, 4u)]), func_1(global3.b, global3.b.a.wy, select(vec4<u32>(1u, 35471u, 69193u, global3.a), vec4<u32>(u_input.a, u_input.d, global3.a, 3618u), global3.b.a.x))), Struct_3(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 1u)])), func_2().c, Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(24831u, u_input.d, global3.a), vec3<u32>(17225u, 1u, global3.a)), global3.b, Struct_1(vec4<bool>(false, true, true, global3.b.a.x), 1i, global3.b.c), 902f)), global3.b.a.x, !(false || global3.b.a.x)));
    global2 = array<f32, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(361f, 1000f, -157f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1091f, 1052f) - vec3<f32>(-1139f, global2[_wgslsmith_index_u32(74288u, 1u)], -418f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(371f, global3.d, 226f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, global2[_wgslsmith_index_u32(global3.a, 1u)], global2[_wgslsmith_index_u32(global3.a, 1u)])))))));
    var var_1 = global3.b;
    global3 = Struct_2(~53219u, Struct_1(global3.c.a, 2147483647i, _wgslsmith_add_vec4_i32(-func_4(Struct_4(global3.b.a, global3.c, Struct_3(0i, global2[_wgslsmith_index_u32(1u, 1u)], global3.c, Struct_2(u_input.d, Struct_1(vec4<bool>(false, true, var_1.a.x, global3.b.a.x), global1[_wgslsmith_index_u32(0u, 4u)], vec4<i32>(var_1.b, global3.b.c.x, var_1.b, -13538i)), global3.b, 608f)), true, global3.c.a.x)).c.c, vec4<i32>(max(u_input.b.x, var_1.b), -29715i, global3.b.b, -1i))), Struct_1(!func_4(Struct_4(global3.c.a, global3.c, Struct_3(-2147483647i, var_0.x, Struct_1(vec4<bool>(false, false, global3.b.a.x, var_1.a.x), 0i, global3.c.c), Struct_2(20314u, global3.b, Struct_1(vec4<bool>(true, var_1.a.x, true, true), -23266i, vec4<i32>(var_1.c.x, -8268i, -22087i, 10359i)), global3.d)), global3.b.a.x, true)).b.a, global3.c.c.x, countOneBits(vec4<i32>(-29811i, ~u_input.c.x, u_input.c.x, 1i << (0u % 32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -788f))));
    let var_2 = Struct_5(vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], 1f, global3.d), func_4(Struct_4(vec4<bool>(global3.c.a.x, false, false, var_1.a.x), func_4(Struct_4(vec4<bool>(true, true, global3.b.a.x, false), Struct_1(vec4<bool>(global3.b.a.x, var_1.a.x, var_1.a.x, var_1.a.x), -24950i, vec4<i32>(-32829i, 14706i, global3.c.b, 2147483647i)), Struct_3(global3.b.b, global2[_wgslsmith_index_u32(47595u, 1u)], Struct_1(var_1.a, global3.b.c.x, vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(global3.a, 4u)], 46621i, -1i)), Struct_2(u_input.a, Struct_1(global3.c.a, u_input.c.x, var_1.c), Struct_1(vec4<bool>(global3.b.a.x, var_1.a.x, false, false), var_1.b, global3.c.c), global3.d)), false, false)).c, Struct_3(-2147483647i, var_0.x, func_4(Struct_4(vec4<bool>(true, global3.c.a.x, true, var_1.a.x), global3.c, Struct_3(var_1.c.x, var_0.x, Struct_1(global3.b.a, global1[_wgslsmith_index_u32(84890u, 4u)], vec4<i32>(u_input.c.x, 27532i, 25492i, global3.c.b)), Struct_2(86179u, Struct_1(var_1.a, global1[_wgslsmith_index_u32(global3.a, 4u)], u_input.c), global3.c, global2[_wgslsmith_index_u32(4294967295u, 1u)])), var_1.a.x, true)).c, Struct_2(u_input.d, global3.b, Struct_1(global3.b.a, -2147483647i, vec4<i32>(-1i, var_1.b, 2147483647i, 2147483647i)), -417f)), func_4(Struct_4(vec4<bool>(var_1.a.x, global3.c.a.x, global3.c.a.x, global3.b.a.x), Struct_1(var_1.a, -2147483647i, vec4<i32>(-41109i, global1[_wgslsmith_index_u32(u_input.a, 4u)], var_1.c.x, 1i)), Struct_3(-6843i, -143f, Struct_1(vec4<bool>(false, true, var_1.a.x, var_1.a.x), 1i, global3.c.c), Struct_2(1u, Struct_1(var_1.a, -2895i, global3.c.c), global3.c, 291f)), var_1.a.x, true)).c.a.x, true)).b, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_clamp_i32(func_4(Struct_4(vec4<bool>(true, global3.c.a.x, global3.c.a.x, global3.c.a.x), global3.c, Struct_3(1i, -514f, Struct_1(vec4<bool>(false, global3.c.a.x, var_1.a.x, false), u_input.b.x, vec4<i32>(-1i, global3.c.c.x, 1i, -27609i)), Struct_2(global3.a, Struct_1(var_1.a, global1[_wgslsmith_index_u32(55137u, 4u)], u_input.b), Struct_1(var_1.a, global1[_wgslsmith_index_u32(1u, 4u)], vec4<i32>(1i, u_input.c.x, global3.c.c.x, -27248i)), 1016f)), global3.c.a.x, var_1.a.x)).c.b, _wgslsmith_div_i32(global3.b.c.x, -1i), _wgslsmith_sub_i32(44646i, 2147483647i))), u_input.b.x), firstTrailingBit(41410u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(select(var_0, var_2.a, var_2.b.a.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(var_2.a.x, -310f, -250f), var_2.b.a.ywy)), _wgslsmith_f_op_vec3_f32(var_0 + var_0))))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(var_2.d, var_2.d) ^ ~vec2<u32>(14040u, var_2.d), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global3.a), vec2<u32>(var_2.d, 4294967295u))), ~vec2<u32>(var_2.d >> (global3.a % 32u), 37666u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~47152u, max(~global3.a, 18340u << (u_input.d % 32u))), 4u)] ^ 62537i, var_0, vec4<f32>(-1646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.d)) + _wgslsmith_f_op_f32(-global3.d))), -574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d, _wgslsmith_f_op_f32(1097f * var_0.x))))));
}

