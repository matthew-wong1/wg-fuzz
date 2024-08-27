struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<Struct_2, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(-60716i, vec2<f32>(_wgslsmith_f_op_f32(1f * -2183f), _wgslsmith_f_op_f32(trunc(173f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-154f, 491f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f + -672f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-619f, 381f, false)) + _wgslsmith_f_op_f32(166f - -2123f))), -1212f, 1433f), _wgslsmith_sub_i32(u_input.a.x, ~(-26052i)) >= -(~abs(u_input.a.x)));
    var var_1 = false & (((-var_0.a.a | _wgslsmith_dot_vec4_i32(vec4<i32>(-31592i, arg_0.x, 1i, -45023i), vec4<i32>(1i, 18986i, var_0.a.a, 1i))) ^ ~_wgslsmith_mult_i32(var_0.a.a, -2147483647i)) != ~1i);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1071f))), -754f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2868f, 868f, var_0.c.x) * var_0.b), var_0.b))), var_0.d);
    global1 = array<Struct_2, 27>();
    return select(select(select(vec4<bool>(!var_0.d, u_input.b.x > 39823u, all(vec3<bool>(true, var_0.d, var_0.d)), true), !select(vec4<bool>(var_0.d, false, true, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, false), vec4<bool>(var_0.d, false, false, false)), all(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d))), select(!vec4<bool>(var_0.d, var_0.d, true, var_0.d), !vec4<bool>(true, var_0.d, false, var_0.d), all(vec4<bool>(var_0.d, true, true, false))), !select(var_0.d && var_0.d, !var_0.d, true)), select(select(select(select(vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(true, true, false, var_0.d), vec4<bool>(true, var_0.d, false, var_0.d)), select(vec4<bool>(var_0.d, true, var_0.d, false), vec4<bool>(var_0.d, true, var_0.d, var_0.d), var_0.d), !var_0.d), select(!vec4<bool>(true, var_0.d, var_0.d, false), select(vec4<bool>(true, var_0.d, false, true), vec4<bool>(true, var_0.d, var_0.d, var_0.d), var_0.d), select(vec4<bool>(false, false, true, var_0.d), vec4<bool>(var_0.d, var_0.d, false, var_0.d), vec4<bool>(true, var_0.d, true, var_0.d))), select(!vec4<bool>(true, var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d, false, true, var_0.d), true)), vec4<bool>(true, any(!vec3<bool>(false, var_0.d, var_0.d)), all(!vec3<bool>(false, var_0.d, var_0.d)), !var_0.d), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_0.d, var_0.d, false, var_0.d), vec4<bool>(true, false, var_0.d, false), vec4<bool>(var_0.d, var_0.d, true, false)), any(!vec4<bool>(true, var_0.d, var_0.d, var_0.d)))), !vec4<bool>(!(true || var_0.d), false, !var_0.d, !(!var_0.d)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, -889f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(882f - _wgslsmith_div_f32(118f, -1162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(398f, 1000f)) * _wgslsmith_f_op_f32(min(-187f, -1055f))), -550f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(695f * -116f)))))), select(false, true, false));
    let var_1 = func_3(arg_3.wyx, ~u_input.d);
    var_0 = Struct_3(var_0.a, var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.c.x, 262f))))), false);
    global1 = array<Struct_2, 27>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1047f, -894f, -780f, var_0.a.b.x))))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.a.b.x - var_0.c.x), 1237f, var_0.c.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x) * _wgslsmith_f_op_f32(round(-929f))))), _wgslsmith_f_op_f32(652f - _wgslsmith_f_op_f32(-var_0.c.x)), var_0.a.b.x));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1336f, 1000f, _wgslsmith_f_op_f32(min(-1514f, 1242f)), -403f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) + -608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1680f))), _wgslsmith_f_op_f32(step(660f, _wgslsmith_f_op_f32(ceil(-1821f)))), -232f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1452f, -1512f, -282f, 945f) + vec4<f32>(-951f, -1279f, -1000f, -252f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(select(vec2<u32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), u_input.c, false), 4294967295u, firstTrailingBit(u_input.c), vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 0u, global0[_wgslsmith_index_u32(44365u, 29u)], 0u) % vec4<u32>(32u)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(step(1151f, 2784f)), -742f, -1000f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, var_0.x, var_0.x, var_0.x)))))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(686f, _wgslsmith_f_op_f32(floor(var_0.x)), 1000f, _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -338f), var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1992f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(472f, var_0.x, var_0.x, -391f))), select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(false, true, var_1, true), vec4<bool>(var_1, false, var_1, false))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, 728f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -101f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 696f, var_0.x))))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * var_0.x), var_1))));
    return Struct_5(_wgslsmith_f_op_f32(-355f + 178f), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, 1i, -1i, -37498i), vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x)) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 4294967295u, 0u, u_input.c.x), ~vec4<u32>(u_input.b.x, 1u, 12606u, 1u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> Struct_3 {
    let var_0 = Struct_4(vec4<bool>(false, all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), all(!func_3(arg_1.b.yxx, 40303u).wy), false), abs(firstLeadingBit(vec2<i32>(-83205i, 53699i)) | vec2<i32>(countOneBits(arg_0.a.a), u_input.a.x)));
    global0 = array<u32, 29>();
    var var_1 = Struct_3(Struct_1(-1i, arg_0.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.a, 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_0.a.b.x))), -1000f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-217f, 125f, 491f)))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.b.x, arg_1.a, arg_1.a), vec3<f32>(arg_1.a, arg_1.a, -1404f)))), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f + 1000f)), 772f), 1i == ((arg_1.b.x >> (~23589u % 32u)) >> (_wgslsmith_add_u32(arg_0.b.x, u_input.b.x) % 32u)));
    global0 = array<u32, 29>();
    var_1 = Struct_3(arg_0.a, vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -442f), arg_0.a.b.x), vec3<f32>(-665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -106f)), _wgslsmith_f_op_f32(var_1.b.x * var_1.c.x)), any(var_0.a.wyx));
    return Struct_3(Struct_1(~arg_1.b.x & -31087i, arg_0.a.b), _wgslsmith_f_op_vec3_f32(-var_1.c), var_1.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(67065u, 27u)], func_1());
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x), _wgslsmith_f_op_f32(abs(var_0.a.b.x))));
    var var_2 = countOneBits(select(select(~(~vec4<u32>(7240u, u_input.b.x, 4294967295u, 30371u)), firstTrailingBit(abs(vec4<u32>(4294967295u, u_input.b.x, 21028u, 41160u))), func_3(-vec3<i32>(u_input.a.x, var_0.a.a, var_0.a.a), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.x)).x), vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 56511u, 4294967295u), 29u)], 4294967295u, _wgslsmith_mod_u32(~u_input.d, 16451u), global0[_wgslsmith_index_u32(1u, 29u)]), false));
    var var_3 = Struct_4(vec4<bool>(true, false, var_0.d, var_0.d), -((firstLeadingBit(u_input.a) & u_input.a) << (~u_input.c % vec2<u32>(32u))));
    var var_4 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-var_3.b.x), vec3<u32>(u_input.b.x, 1u, 34938u), ~vec4<i32>(reverseBits(max(4587i, -2147483647i)), -1i, -35028i, _wgslsmith_mod_i32(u_input.a.x, -6439i)));
}

