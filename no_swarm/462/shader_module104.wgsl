struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_1 = Struct_1(true, vec2<bool>(true, false), vec3<i32>(-19046i, 2147483647i, 74830i), 36951u, vec4<f32>(2446f, -585f, -612f, -1000f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(global2.c, global2.c), vec3<i32>(_wgslsmith_add_i32(12869i, (5511i ^ u_input.a.x) | _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), u_input.a.x, 1i));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2211f)))), _wgslsmith_f_op_f32(global2.e.x + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.d, 12u)] + 959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.e.x, -519f)) + _wgslsmith_f_op_f32(step(global2.e.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(global2.e.x + global0[_wgslsmith_index_u32(firstTrailingBit(global2.d), 12u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, 817f, global0[_wgslsmith_index_u32(4349u, 12u)], global0[_wgslsmith_index_u32(global2.d, 12u)])))));
    global1 = !vec3<bool>(!all(vec3<bool>(global1.x, global1.x, global2.b.x)), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, global1.x, global2.a, global2.a), false), vec4<bool>(global2.b.x, false, true, false), !vec4<bool>(global1.x, true, true, false))), (true == all(vec4<bool>(true, global2.b.x, global2.b.x, false))) || (u_input.a.x > select(1i, u_input.a.x, global2.a)));
    var var_2 = var_1;
    var var_3 = vec3<i32>(-5514i, u_input.a.x, _wgslsmith_dot_vec3_i32(~firstLeadingBit(abs(u_input.a)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, min(vec3<i32>(u_input.a.x, u_input.a.x, -10821i), vec3<i32>(var_0.x, 33520i, u_input.a.x)), u_input.a), min(global2.c, vec3<i32>(-11381i, 1i, -1i)))));
    return countOneBits(countOneBits(_wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, var_0.x, var_3.x), u_input.a, vec3<bool>(global2.a, false, global2.b.x)) >> (firstTrailingBit(vec3<u32>(4294967295u, global2.d, global2.d)) % vec3<u32>(32u)), vec3<i32>(-global2.c.x, 1309i, 1i))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global0 = array<f32, 12>();
    global1 = vec3<bool>(any(select(!arg_2.b, !(!arg_0.b), true)), true, false);
    global2 = arg_0;
    global1 = select(vec3<bool>(any(vec3<bool>(false, arg_1 || false, global1.x)), false, global1.x), !(!(!select(vec3<bool>(global1.x, true, arg_1), vec3<bool>(true, false, true), arg_2.b.x))), select(select(!(!vec3<bool>(arg_2.b.x, arg_1, arg_0.a)), !select(vec3<bool>(false, global2.a, global1.x), vec3<bool>(arg_0.b.x, false, false), false), !any(arg_2.b)), !vec3<bool>(false, !global1.x, false), vec3<bool>(true, global2.a, false)));
    var var_0 = Struct_1(arg_2.e.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)), arg_0.b, -countOneBits(arg_3.zzz), arg_0.d, _wgslsmith_f_op_vec4_f32(-arg_2.e));
    return any(vec4<bool>(var_0.e.x != _wgslsmith_f_op_f32(-var_0.e.x), arg_1, false, any(!select(arg_2.b, global2.b, vec2<bool>(global2.a, arg_2.a)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    global1 = vec3<bool>(func_4(Struct_1(global2.b.x, global1.xy, ~(-arg_1.c), 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 1028f, global2.e.x, arg_3), vec4<f32>(arg_3, 696f, 379f, -603f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.e.x, 422f, global2.e.x, arg_3))))), false, Struct_1(arg_1.a, select(global2.b, global2.b, select(vec2<bool>(global2.a, global2.a), vec2<bool>(true, true), false)), func_3(), arg_1.d, _wgslsmith_f_op_vec4_f32(arg_1.e - _wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, -728f, 1478f, 1021f) * vec4<f32>(arg_0.x, arg_1.e.x, arg_0.x, 473f)))), vec4<i32>(firstTrailingBit(13447i), -2147483647i, ~global2.c.x, abs(u_input.a.x)) >> (vec4<u32>(select(38268u, 24095u, true), firstTrailingBit(65216u), 0u, arg_2) % vec4<u32>(32u))), true, arg_1.a);
    global1 = vec3<bool>(global2.b.x, global1.x, arg_1.d < (91008u ^ global2.d));
    return _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(select(firstLeadingBit(arg_2), abs(~36357u), false), 12u)], _wgslsmith_f_op_f32(sign(arg_1.e.x)), true));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-562f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(674f, global0[_wgslsmith_index_u32(1u, 12u)], global2.e.x) * vec3<f32>(1241f, global2.e.x, global0[_wgslsmith_index_u32(global2.d, 12u)])), Struct_1(global2.b.x, vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, 94781i), global2.d, global2.e), 10780u, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9335u, 12u)]))) - 333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1455f)), arg_0.x);
    global0 = array<f32, 12>();
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>((global2.d & (global2.d ^ global2.d)) >> (select(17799u, 4294967295u, global1.x) % 32u), ~(~global2.d & max(1387u, global2.d)), ~global2.d), ~_wgslsmith_clamp_vec3_u32(~max(vec3<u32>(global2.d, 1u, 49412u), vec3<u32>(0u, global2.d, 8941u)), vec3<u32>(global2.d, 0u, _wgslsmith_mod_u32(global2.d, 22223u)), ~reverseBits(vec3<u32>(4294967295u, 1u, global2.d))));
    global2 = Struct_1(any(vec3<bool>(global2.c.x >= reverseBits(u_input.a.x), global1.x, global2.a)), select(select(select(global2.b, !vec2<bool>(global1.x, global1.x), select(global2.b, global2.b, global1.x)), global1.yy, func_4(Struct_1(true, global2.b, u_input.a, 1u, global2.e), global2.d <= 43439u, Struct_1(false, vec2<bool>(false, global1.x), vec3<i32>(-39790i, global2.c.x, 0i), global2.d, vec4<f32>(944f, global0[_wgslsmith_index_u32(global2.d, 12u)], 435f, -723f)), vec4<i32>(-40872i, -80167i, -28216i, u_input.a.x))), !global1.xy, !global1.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, countOneBits(-u_input.a.x), global2.c.x), _wgslsmith_mod_vec3_i32(select(u_input.a, vec3<i32>(-50056i, -40772i, 31645i), global2.b.x), vec3<i32>(0i, -9783i, -2147483647i)) | vec3<i32>(~global2.c.x, _wgslsmith_add_i32(global2.c.x, u_input.a.x), 6663i), -vec3<i32>(global2.c.x, 16802i, -global2.c.x)), global2.d, _wgslsmith_f_op_vec4_f32(-global2.e));
    let var_2 = 4294967295u;
    return any(select(select(vec3<bool>(false, !global1.x, all(vec3<bool>(false, true, global2.b.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, global2.a, false), any(vec4<bool>(false, true, false, true))), global1.x), !vec3<bool>(global2.b.x && global2.b.x, any(vec3<bool>(true, true, global1.x)), global2.d != var_1.x), !select(select(vec3<bool>(global1.x, true, false), vec3<bool>(false, false, false), vec3<bool>(global1.x, global2.b.x, global1.x)), vec3<bool>(global2.a, false, true), vec3<bool>(global1.x, global1.x, true))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> vec3<bool> {
    let var_0 = ~(select(global2.d, ~(~global2.d), global1.x | true) << (firstTrailingBit(global2.d) % 32u));
    let var_1 = Struct_1(!any(vec3<bool>(false, true, false)) | true, global2.b, vec3<i32>(18289i, abs(global2.c.x), 1i), global2.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -645f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 12u)] - -900f)) - global0[_wgslsmith_index_u32(~(5317u << (var_0 % 32u)), 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 12u)], -717f)) + global2.e.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51531u, 12u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.d, 12u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(101f - -1646f), arg_0))))));
    global1 = arg_1;
    global1 = !select(arg_1, arg_1, all(!select(vec2<bool>(var_1.b.x, false), global1.zz, arg_1.x)));
    let var_2 = Struct_1(true, global2.b, ~_wgslsmith_mod_vec3_i32(u_input.a, abs(vec3<i32>(-1i, -1i, 2147483647i))), ~(~_wgslsmith_clamp_u32(0u, var_0, 0u) ^ 9421u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-966f)), global2.e.x, 1124f, -150f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-375f, arg_0, 334f, global0[_wgslsmith_index_u32(var_1.d, 12u)]))))));
    return !vec3<bool>(true, !(true & func_4(Struct_1(false, vec2<bool>(var_2.b.x, global2.b.x), u_input.a, var_2.d, vec4<f32>(654f, 1000f, global0[_wgslsmith_index_u32(0u, 12u)], var_1.e.x)), var_2.a, var_1, vec4<i32>(var_1.c.x, 38178i, global2.c.x, 7105i))), func_1(global2.e.wx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!global2.b, !vec2<bool>((u_input.a.x < global2.c.x) || true, global2.a && select(global2.b.x, global1.x, false)), !select(!select(vec2<bool>(global1.x, false), global2.b, false), !select(global2.b, vec2<bool>(global1.x, false), global1.x), any(vec2<bool>(global1.x, global2.b.x))));
    let var_1 = 7594i;
    global1 = func_5(global2.e.x, select(!vec3<bool>(true, true, global2.d <= 28947u), !(!select(vec3<bool>(global2.b.x, global2.b.x, global2.a), vec3<bool>(false, false, true), true)), select(7629i != _wgslsmith_mod_i32(global2.c.x, var_1), func_1(vec2<f32>(global2.e.x, global2.e.x)), global1.x)), 1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(23427u, 4294967295u >> (global2.d % 32u), 1u), firstTrailingBit(vec3<u32>(5447u, 1u, 74104u) >> (vec3<u32>(global2.d, global2.d, global2.d) % vec3<u32>(32u)))));
    let var_2 = Struct_1(any(!vec4<bool>(var_0.x, global2.a, true, !global1.x)), var_0, ~(~(-select(vec3<i32>(-1i, 2147483647i, -24887i), global2.c, global1.x))), ~0u, vec4<f32>(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(abs(1u), 12u)])), global2.e.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-163f, global0[_wgslsmith_index_u32(global2.d, 12u)])), _wgslsmith_f_op_f32(floor(global2.e.x))), _wgslsmith_f_op_f32(1738f + -321f)), _wgslsmith_f_op_f32(sign(-767f))));
    var var_3 = var_2.e.xzw;
    var var_4 = -vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global2.c.x, 15521i, -2147483647i, global2.c.x)), vec4<i32>(0i, 71290i, global2.c.x, 16209i) | _wgslsmith_mod_vec4_i32(vec4<i32>(-9848i, u_input.a.x, var_2.c.x, global2.c.x), vec4<i32>(u_input.a.x, global2.c.x, u_input.a.x, -5759i))), _wgslsmith_mod_i32(global2.c.x, -15948i), 1365i);
    global0 = array<f32, 12>();
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.e.zyx)), _wgslsmith_f_op_vec3_f32(ceil(global2.e.www)))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(24659u ^ var_2.d, 12u)] - _wgslsmith_f_op_f32(select(163f, global2.e.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)))), var_2.c.x, var_2.e, ~_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(57407u, var_2.d, 4294967295u, var_2.d)), countOneBits(vec4<u32>(global2.d, var_2.d, 17006u, var_2.d) & vec4<u32>(31705u, 107541u, global2.d, var_2.d))), vec2<i32>(u_input.a.x, global2.c.x));
}

