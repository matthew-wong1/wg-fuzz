struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(-1298f, 1000f, vec4<f32>(1223f, 150f, -657f, -905f));

var<private> global2: array<f32, 31> = array<f32, 31>(-782f, 244f, -147f, -192f, -269f, 1747f, 1040f, -564f, 362f, 2125f, -121f, 499f, -162f, 1000f, 1000f, -1474f, 586f, -1204f, 127f, -458f, -916f, -528f, -1000f, -1644f, 1456f, 458f, 1237f, 387f, -188f, 351f, -1691f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) - global1.a));
    var var_1 = all(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), false), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var_1 = all(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, false)), true)), vec2<bool>(select(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, false, true))), false), true & (var_0 != var_0)));
    return -11063i;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(), min(arg_0.b.x, select(-34116i, 47222i, false)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.b.x, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, -12351i, -27304i, -14383i) ^ vec4<i32>(99i, u_input.a, u_input.a, u_input.a)), -56887i), max(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-26269i, arg_0.b.x, u_input.a, arg_0.b.x), vec4<i32>(-1i, arg_0.b.x, -1i, 18762i)), -vec4<i32>(u_input.a, 0i, arg_0.b.x, arg_0.b.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, u_input.a, u_input.a), vec4<i32>(22578i, 2240i, 0i, -54540i))))));
    var var_1 = vec2<bool>(61056u == ~u_input.b.x, any(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), u_input.c.x < (1u >> (0u % 32u)), all(vec3<bool>(true, true, true)), global1.b > _wgslsmith_f_op_f32(-573f * 652f))));
    var var_2 = arg_0;
    var_0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(59356i, -1i), var_0.a.x), ~u_input.a << (u_input.b.x % 32u), 0i, 0i));
    var_0 = Struct_1(firstLeadingBit(select(var_0.a, var_0.a ^ vec4<i32>(-1i, 51961i, 0i, -1i), true)) & vec4<i32>(-2147483647i, _wgslsmith_add_i32(var_0.a.x, _wgslsmith_div_i32(5269i, -2147483647i)), _wgslsmith_mult_i32(abs(arg_0.b.x), i32(-1i) * -34222i), ~arg_0.b.x));
    return countOneBits(max(var_0.a, vec4<i32>(-1i, 2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.b.x, -2147483647i), var_0.a.x), 1i)));
}

fn func_1() -> f32 {
    var var_0 = -(_wgslsmith_mult_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), select(vec4<i32>(u_input.a, u_input.a, 0i, 51943i), func_2(Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], 1328f, 500f), vec2<i32>(u_input.a, 2147483647i)), global1.b), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))) | vec4<i32>(u_input.a, firstLeadingBit(-2147483647i | u_input.a), ~1i, 39510i));
    let var_1 = select(!select(vec4<bool>(u_input.c.x < 81859u, false, false, false), vec4<bool>(select(false, false, false), any(vec4<bool>(false, false, false, false)), false, any(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, u_input.a >= u_input.a, true)), !vec4<bool>((global2[_wgslsmith_index_u32(18340u, 31u)] > 1630f) & false, -16566i != (u_input.a | -73015i), select(u_input.d.x, u_input.b.x, true) < u_input.d.x, any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, true, true)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    global1 = Struct_3(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global2[_wgslsmith_index_u32(23327u, 31u)]) + -1023f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-911f * -1378f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.c.x, 31u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, -322f, global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 31u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2108f, global1.c.x, -935f, -266f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 31u)] * global2[_wgslsmith_index_u32(89368u, 31u)]) - -2120f), global2[_wgslsmith_index_u32(u_input.d.x, 31u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1219f, global2[_wgslsmith_index_u32(34092u, 31u)], -1125f))))), !vec3<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.b.x, 31u)] > global2[_wgslsmith_index_u32(28844u, 31u)], all(vec2<bool>(true, false))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-14733i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-40861i, u_input.a, u_input.a, 0i), vec4<i32>(var_0.x, 7356i, var_0.x, 1i)), u_input.a)), vec2<i32>(i32(-1i) * -24571i, _wgslsmith_add_i32(max(u_input.a, 0i), 1i))));
    let var_3 = ~u_input.c.x;
    return global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(49058u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(var_3, ~var_3))), u_input.c.x), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(-1033f, 277f)), 506f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(788f, global1.a, -1212f, global1.c.x))))) - vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_f32(901f * 2271f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.xwz, u_input.d.zzy), 31u)])), _wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c))));
    var var_1 = Struct_3(-139f, _wgslsmith_f_op_f32(select(-508f, var_0.c.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 32266u, 1u), vec3<u32>(87492u, u_input.c.x, 0u), false), select(vec3<u32>(1u, 1u, 18944u), u_input.d.yxw, vec3<bool>(true, true, false))) >= select(u_input.c.x, 5522u, true))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 31u)] + 968f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(387f, 216f)))), global1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(step(-315f, var_0.c.x)))))));
    var var_2 = var_0.c;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), var_2.x))), ~vec3<u32>(u_input.c.x, 58163u, ~(~u_input.c.x)), ~u_input.a ^ abs(2147483647i), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~func_2(Struct_2(global1.c.yxy, vec2<i32>(-1i, u_input.a)), var_2.x).yyy), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(-30852i, u_input.a, 2147483647i), vec3<i32>(33921i, 1i, u_input.a)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(51239i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -70454i, u_input.a), vec3<i32>(1i, u_input.a, u_input.a)), select(false, false, true)))));
}

