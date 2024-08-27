struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5 = Struct_5(vec2<f32>(298f, 410f), Struct_1(0i, 126f));

var<private> global2: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-28616i, 33582i, global0.b.a), vec3<i32>(-17393i, _wgslsmith_sub_i32(-45812i, -1i), global0.b.a)), ~global0.b.a), false, !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)), true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.b, global0.b.b, global0.b.b, 2316f), vec4<f32>(865f, arg_0, global0.a.x, global0.b.b)) * vec4<f32>(-1662f, 1378f, global1.a.x, 127f))))));
    var var_2 = vec3<i32>(-global1.b.a, 0i, reverseBits(0i)) << (~vec3<u32>(arg_1.a, firstLeadingBit(u_input.a), ~countOneBits(4294967295u)) % vec3<u32>(32u));
    var var_3 = !select(select(!var_1.c, var_1.c, select(!var_1.c, var_1.c, true)), vec2<bool>(true, true), select(var_1.c, var_1.c, vec2<bool>(true, 503f != global0.a.x)));
    let var_4 = true;
    return var_1.e.ywz;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = vec4<bool>(firstLeadingBit(1i) < _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(arg_2, arg_2), -13850i), false, any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)), (global1.b.b == 1f) && !(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(arg_2.x, -1i, global0.b.a, global1.b.a)) >= global1.b.a));
    global2 = arg_0;
    let var_1 = Struct_2(_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(arg_1, 0u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1, u_input.a), ~vec2<u32>(20370u, 52982u)) << (vec2<u32>(arg_1, 6349u) % vec2<u32>(32u))), true, global0.b, Struct_1(max(global0.b.a & (global0.b.a | arg_2.x), abs(-1i) & global0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = var_1;
    global2 = 2214f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a));
}

fn func_2() -> Struct_5 {
    let var_0 = ~2321u;
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(func_4(-2428f, 15792u, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0.b.a, u_input.b, global0.b.a), -vec4<i32>(u_input.b, 2147483647i, 2147483647i, 14693i)), vec4<i32>(_wgslsmith_div_i32(u_input.b, -36763i), reverseBits(0i), -31575i << (var_0 % 32u), firstTrailingBit(86317i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1297f, 1449f, -2602f) * vec3<f32>(global0.a.x, 1000f, -1000f)), _wgslsmith_f_op_vec3_f32(func_3(-236f, Struct_4(u_input.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-643f, -104f, 1378f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 876f, global0.a.x) + vec3<f32>(global0.b.b, 1256f, global0.a.x)))))), global1.b);
    var var_1 = true;
    var var_2 = Struct_2(~vec2<u32>(0u | ~u_input.a, u_input.a), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), false)), Struct_1(-global1.b.a, global0.a.x), Struct_1(-1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x + 1005f)))))));
    let var_3 = Struct_5(vec2<f32>(386f, 1000f), Struct_1(u_input.b, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_2.d.b))));
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec4<bool> {
    global2 = 505f;
    global0 = func_2();
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-705f * global1.b.b))));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global0.a.x, -241f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global0.b.b, global0.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global0.b.b, -1219f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 358f, 239f) + vec3<f32>(global0.a.x, global0.b.b, global1.b.b))))))) - vec3<f32>(global1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b) - 239f)), global1.b.b));
    return vec4<bool>(arg_0 || any(vec2<bool>(any(vec4<bool>(true, false, false, true)), true)), _wgslsmith_add_u32(~1u, u_input.a) < ~0u, !(!(!all(vec3<bool>(true, true, arg_0)))), true && any(vec4<bool>(true, arg_0, true, false)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_4(u_input.a);
    let var_1 = !(!vec2<bool>(!any(arg_1.wx), false | arg_0));
    global1 = Struct_5(vec2<f32>(global0.a.x, global0.b.b), Struct_1(select(19780i, global0.b.a, 50179u >= (6545u ^ u_input.a)), 177f));
    var var_2 = -(u_input.b | max(reverseBits(countOneBits(1i)), global1.b.a));
    global0 = func_2();
    return Struct_4(0u);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - arg_1.x);
    global0 = Struct_5(global1.a, Struct_1(global0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b + -2463f) + global0.a.x)));
    let var_0 = arg_1.x;
    var var_1 = func_2();
    var var_2 = !all(vec4<bool>(true, true, true, true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(true, select(vec4<bool>(false, true, true, true), !func_1(true, vec3<i32>(global1.b.a, 24801i, 10003i)), select(vec4<bool>(false, true, false, false), func_1(true, vec3<i32>(global0.b.a, -43698i, global0.b.a)), vec4<bool>(false, false, false, false))), Struct_3(global0.b.a, true == (35046i < global0.b.a), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b, global1.b.b, global0.a.x, 1000f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-879f, global0.b.b, 627f, global1.a.x))))), global0.b.b), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.a.x, -1409f) + vec3<f32>(218f, -1060f, 113f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.b, 642f, 1026f), vec3<f32>(global1.b.b, global0.b.b, global1.b.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1205f, 1000f, 871f), vec3<f32>(-1219f, global1.a.x, global1.b.b))), any(vec4<bool>(false, true, true, false))))), vec3<f32>(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-138f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1499f - global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -892f))))));
    let var_1 = Struct_1(firstLeadingBit(-1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b.b) - global0.b.b), 278f)));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b, -var_1.a), func_2().b.a), reverseBits(select(firstLeadingBit(vec2<i32>(0i, var_1.a)), -vec2<i32>(global1.b.a, global0.b.a), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.a.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3(-378f, Struct_4(_wgslsmith_add_u32(12225u, ~var_0.a)))).x;
    var var_4 = var_1;
    let var_5 = vec4<u32>(14180u, var_0.a, _wgslsmith_mod_u32(~44271u, _wgslsmith_mult_u32(1u, 1u) ^ ~_wgslsmith_mult_u32(0u, u_input.a)), ~(~select(~var_0.a, 23564u, any(vec2<bool>(false, true)))));
    var var_6 = firstLeadingBit(-(~(-2147483647i << ((0u ^ var_5.x) % 32u))));
    var_6 = ~max(global1.b.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(53249i, _wgslsmith_div_i32(-22517i, 18570i)), countOneBits(firstTrailingBit(var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a, 39235u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, -2147483647i), ~var_4.a, global0.b.a), vec3<i32>(~(-1i), u_input.b << (var_0.a % 32u), global1.b.a >> (26443u % 32u))), ~vec3<i32>(~global0.b.a, 1i, 1i << (var_0.a % 32u))), _wgslsmith_mod_i32(-(~56878i), var_4.a), -min(~(vec3<i32>(u_input.b, u_input.b, -62430i) ^ vec3<i32>(-25665i, var_4.a, 2147483647i)), -(~vec3<i32>(u_input.b, var_2.a, 2147483647i))), vec2<i32>(global1.b.a, -(firstLeadingBit(var_1.a) & _wgslsmith_sub_i32(-1i, var_4.a))));
}

