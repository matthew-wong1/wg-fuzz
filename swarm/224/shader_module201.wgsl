struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<f32, 19>();
    let var_0 = Struct_1((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 19u)])) <= 1722f) && any(arg_1.b), !arg_1.b, ((arg_1.c ^ vec4<i32>(2147483647i, arg_1.c.x, arg_1.c.x, arg_1.c.x)) & firstLeadingBit(arg_1.c)) ^ min(arg_1.c, firstLeadingBit(~arg_1.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_2 = countOneBits(var_0.c.x);
    var var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~firstTrailingBit(15928u), abs(~u_input.b.x), ~14025u), ~vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x) >> (countOneBits(min(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(countOneBits(u_input.a), ~0u, u_input.b.x, 1u) & reverseBits(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)));
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: u32) -> bool {
    global0 = array<f32, 19>();
    var var_0 = abs(vec4<u32>(23500u, reverseBits(_wgslsmith_mult_u32(u_input.a, arg_1)), _wgslsmith_mod_u32(~abs(4294967295u), arg_1), select(31696u, ~u_input.a, false) << (58901u % 32u)));
    let var_1 = !(!all(vec4<bool>(true, true, true, true)));
    var_0 = firstTrailingBit(vec4<u32>(61494u, var_0.x, 24611u, arg_1 << (arg_1 % 32u)));
    global0 = array<f32, 19>();
    return !any(!vec4<bool>(true, var_1, select(false, true, true), var_1));
}

fn func_2() -> f32 {
    global0 = array<f32, 19>();
    let var_0 = !(!func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1597f * global0[_wgslsmith_index_u32(4294967295u, 19u)])), abs(func_3(global0[_wgslsmith_index_u32(45861u, 19u)], Struct_1(true, vec3<bool>(false, true, false), vec4<i32>(u_input.c, -2147483647i, 2147483647i, -209i))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 1000f), vec3<f32>(1162f, global0[_wgslsmith_index_u32(39582u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(false, var_0, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1158f, 145f, 1631f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(253f, global0[_wgslsmith_index_u32(9011u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(481f, 275f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)])))))));
    let var_2 = _wgslsmith_f_op_f32(round(-750f));
    var_1 = vec3<f32>(213f, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f + -1018f) + var_2))) + _wgslsmith_f_op_f32(var_2 - -217f)));
    return -2768f;
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(f32(-1f) * -416f));
    let var_1 = Struct_1((all(vec4<bool>(true, true, true, true)) | ((0u << (u_input.a % 32u)) != ~0u)) | !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), !(!vec3<bool>(select(false, true, true), false, select(false, true, false))), -vec4<i32>(select(~(-1i), min(u_input.c, u_input.c), any(vec2<bool>(false, true))), u_input.c, _wgslsmith_add_i32(abs(-13498i), u_input.c | -62370i), -min(u_input.c, 0i)));
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_2 = var_1;
    return var_2;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    global0 = array<f32, 19>();
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u, ~u_input.a), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(11170u, 19u)])))))) - _wgslsmith_f_op_f32(-311f * _wgslsmith_f_op_f32(floor(501f))));
    return func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-189f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))), 583f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(898f, global0[_wgslsmith_index_u32(4294967295u, 19u)], 1747f) * vec3<f32>(285f, -722f, -529f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(463f, -159f, var_2))), arg_3)), vec3<f32>(-191f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 19u)] * 1453f), _wgslsmith_f_op_f32(var_2 - global0[_wgslsmith_index_u32(1u, 19u)]))))));
}

fn func_6(arg_0: Struct_1) -> bool {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_0 = Struct_1(select(arg_0.b.x, _wgslsmith_div_u32(101742u, ~u_input.b.x) <= ~u_input.b.x, !(!arg_0.b.x)), vec3<bool>(arg_0.b.x, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1956f, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(18038u, 19u)]) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], -731f))).c.x >= reverseBits(_wgslsmith_mult_i32(u_input.c, 2147483647i)), ~arg_0.c.x >= ~(-22681i)), arg_0.c);
    global0 = array<f32, 19>();
    return arg_0.a;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    return ~(~firstLeadingBit(~1u)) << (~(~(u_input.a >> (u_input.a % 32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var var_0 = u_input.a;
    var_0 = ~1u;
    var_0 = func_7(Struct_1(func_6(func_1(false, true, Struct_1(true, vec3<bool>(true, false, false), vec4<i32>(-62431i, 632i, u_input.c, 13951i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), vec3<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), func_1(true, true, Struct_1(true, vec3<bool>(false, false, false), vec4<i32>(1i, -1i, -14914i, u_input.c)), vec3<bool>(true, true, true)).b.x), -(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) ^ vec4<i32>(firstTrailingBit(u_input.c), 0i >> (u_input.a % 32u), u_input.c, u_input.c)), ~(-_wgslsmith_clamp_i32(-61337i, 0i, 3370i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-367f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1005f, -167f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(9583u, 19u)], -799f) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -961f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1446f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(24118u, 19u)], 571f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), -2924f))));
    var var_1 = Struct_1(any(vec3<bool>(false && func_5(vec3<f32>(1320f, 973f, global0[_wgslsmith_index_u32(u_input.a, 19u)])).b.x, false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(15094u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 1835f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(27944u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(19992u, 19u)]) - vec3<f32>(924f, -1682f, -730f)))).b.x), vec4<i32>(u_input.c >> (~16207u % 32u), -min(u_input.c, func_1(true, false, Struct_1(false, vec3<bool>(true, true, true), vec4<i32>(u_input.c, 37068i, u_input.c, u_input.c)), vec3<bool>(true, true, false)).c.x), firstTrailingBit(countOneBits(-2147483647i)), 0i));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(484f * 649f))), -772f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24187u, 19u)]), _wgslsmith_f_op_f32(233f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)] * _wgslsmith_f_op_f32(ceil(-321f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1688f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a) << (~u_input.b.x % 32u), 19u)], -1000f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a & u_input.b.x, 19u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, -1145f, 1000f, -2065f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(72308u, 19u)], -746f, -2027f)))))));
    let var_3 = Struct_1(false, select(vec3<bool>(var_1.b.x, var_1.a && true, true), func_1(var_1.a, var_1.b.x, func_1(var_1.a, true, func_1(var_1.a, var_1.b.x, Struct_1(var_1.a, vec3<bool>(false, var_1.b.x, true), var_1.c), var_1.b), func_1(true, var_1.a, Struct_1(false, var_1.b, var_1.c), vec3<bool>(false, var_1.b.x, var_1.a)).b), vec3<bool>(func_4(501f, u_input.a), !var_1.a, true)).b, !var_1.b.x), ~(~min(_wgslsmith_sub_vec4_i32(var_1.c, vec4<i32>(u_input.c, 3820i, -93867i, -26711i)), var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

