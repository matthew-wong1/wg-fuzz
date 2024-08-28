struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 21627u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(42716u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 43244u), vec2<u32>(58393u, 52832u), vec2<u32>(128343u, 43050u), vec2<u32>(13973u, 35083u), vec2<u32>(4294967295u, 43057u), vec2<u32>(9935u, 1u), vec2<u32>(106029u, 7266u), vec2<u32>(1u, 4294967295u), vec2<u32>(20886u, 32745u), vec2<u32>(68484u, 34055u));

var<private> global2: array<f32, 32> = array<f32, 32>(-1226f, 1565f, -454f, 288f, 346f, 243f, 846f, -1199f, 1551f, 152f, 1560f, 475f, -685f, -2897f, 416f, 174f, 636f, -264f, 1158f, -259f, 393f, -1235f, -1203f, 179f, -1174f, -504f, -1285f, -927f, 328f, 161f, -177f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    global1 = array<vec2<u32>, 17>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(max(1u, 1u), 32u)], Struct_1(true), -firstTrailingBit(global0[_wgslsmith_index_u32(~4294967295u, 8u)]), Struct_1(!(!(-1000f >= arg_0))), abs(vec2<u32>(37741u, select(~21558u, firstTrailingBit(0u), true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-599f + _wgslsmith_f_op_f32(select(arg_0, global2[_wgslsmith_index_u32(var_0.e.x, 32u)], arg_1.x))))) + var_0.a), Struct_1(any(!select(arg_1, arg_1, arg_1.x))), -15501i, Struct_1(any(!select(vec2<bool>(true, arg_1.x), arg_1, vec2<bool>(arg_1.x, false)))), ~_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(var_0.e.x, 17u)], ~(vec2<u32>(var_0.e.x, 1u) | vec2<u32>(1u, 24553u))));
    let var_2 = reverseBits(i32(-1i) * -(~(-global0[_wgslsmith_index_u32(5067u, 8u)])));
    var var_3 = select(firstTrailingBit((vec2<i32>(var_1.c, 4132i) | select(vec2<i32>(-8835i, 39655i), vec2<i32>(20810i, u_input.b), arg_1)) | firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_1.e.x, 8u)], 2147483647i))), _wgslsmith_mult_vec2_i32(~(-vec2<i32>(var_2, -3867i)), ~(vec2<i32>(var_0.c, 86212i) & vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], var_2))) >> ((var_0.e & vec2<u32>(abs(22656u), var_1.e.x)) % vec2<u32>(32u)), false);
    return true | !all(!(!vec4<bool>(var_1.b.a, var_0.b.a, false, true)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(abs(44615u), 32u)], Struct_1(!func_3(-2091f, vec2<bool>(false, true))), u_input.a, Struct_1(true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~33815u), _wgslsmith_clamp_u32(0u, 26759u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16609u, 0u, 17655u), vec4<u32>(28556u, 1u, 1u, 4294967295u)))), 17u)]));
    global1 = array<vec2<u32>, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.a + -1449f)))))) + _wgslsmith_f_op_f32(step(var_0.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) + _wgslsmith_f_op_f32(f32(-1f) * -1246f)), var_0.a.a)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(596f, global2[_wgslsmith_index_u32(51191u, 32u)]) + _wgslsmith_f_op_f32(abs(var_0.a.a))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(542f)), global2[_wgslsmith_index_u32(~var_0.a.e.x, 32u)])))), var_0.a.d, firstLeadingBit(2147483647i), var_0.a.d, ~global1[_wgslsmith_index_u32(abs(var_0.a.e.x) | 1u, 17u)]);
    var var_3 = 573f;
    return Struct_3(var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1369f), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.e.x, arg_1.a.e.x), vec2<u32>(arg_1.a.e.x, 27840u)), 32u)])), arg_1.a.d, countOneBits(arg_1.a.c), func_2().a.b, global1[_wgslsmith_index_u32(firstLeadingBit(~(31678u ^ arg_1.a.e.x)), 17u)]));
    var var_1 = var_0;
    global0 = array<i32, 8>();
    var_1 = func_2();
    global2 = array<f32, 32>();
    return Struct_1((all(select(vec4<bool>(true, var_0.a.b.a, true, arg_0), vec4<bool>(var_0.a.b.a, false, false, false), false)) | (1629f != _wgslsmith_div_f32(var_1.a.a, var_0.a.a))) || false);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = any(arg_0);
    var var_1 = 391f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-805f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)])))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1824f - global2[_wgslsmith_index_u32(42336u, 32u)]) + -384f)))) <= _wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(-1694f - _wgslsmith_f_op_f32(f32(-1f) * -1656f)));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~0u, 32u)] * -648f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30507u, 32u)]) - global2[_wgslsmith_index_u32(108672u, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 32u)] * global2[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(57678u, 4294967295u) & global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 32386u), 17u)]), ~(~global1[_wgslsmith_index_u32(6427u, 17u)])), 32u)]));
    var var_3 = Struct_2(-744f, func_4(false, func_2()), (63433i ^ global0[_wgslsmith_index_u32(~1u, 8u)]) << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u), func_2().a.b, global1[_wgslsmith_index_u32(~(~abs(~1u)), 17u)]);
    return 64784u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 32>();
    var var_0 = ~(u_input.b >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, 49920u, 4294967295u, 0u))) % 32u));
    let var_1 = vec3<u32>(1u, countOneBits(_wgslsmith_mult_u32(func_1(vec4<bool>(true, true, true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), func_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true)))), 35974u);
    global2 = array<f32, 32>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 32u)], global2[_wgslsmith_index_u32(var_1.x, 32u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(44520u, 32u)], 1518f) * vec2<f32>(-716f, global2[_wgslsmith_index_u32(4294967295u, 32u)]))))))) * vec2<f32>(global2[_wgslsmith_index_u32(12164u, 32u)], 984f));
    let var_3 = !(_wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(4294967295u), ~4294967295u), var_1.x) != ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(41743u, vec3<u32>(~var_1.x, max(~var_1.x, 5914u), var_1.x), -1i, var_2.x, ~var_1);
}

