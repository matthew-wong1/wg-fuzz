struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec3<i32>(-36407i, 328i, 23805i)), vec2<f32>(-380f, 3388f), Struct_1(vec3<i32>(-37000i, 1i, -63431i)), vec2<f32>(766f, -937f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.d;
    var var_1 = max(u_input.a.x, 22157u);
    let var_2 = _wgslsmith_clamp_u32(0u, ~arg_1.x, ~countOneBits(12874u));
    let var_3 = i32(-1i) * -2147483647i;
    let var_4 = u_input.b;
    return 2147483647i;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~(~u_input.b);
    let var_1 = _wgslsmith_add_u32(~22297u, ~(~(~u_input.a.x)) >> (~33670u % 32u));
    let var_2 = Struct_2(!any(select(!vec4<bool>(global1.a, global1.a, false, false), select(vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(true, global1.a, false, false), false), global1.a)), global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e)))) - arg_0.xy), global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1864f, 1337f)))));
    var var_3 = 1537f;
    var_0 = func_3(Struct_3(global1.b, !select(vec3<bool>(false, true, true), select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(true, var_2.a, var_2.a), var_2.a), vec3<bool>(true, global1.a, var_2.a)), Struct_2(false, Struct_1(vec3<i32>(global1.b.a.x, var_2.d.a.x, -2491i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c - vec2<f32>(-1000f, 316f)) + arg_0.yx), Struct_1(firstTrailingBit(vec3<i32>(0i, global1.d.a.x, 0i))), arg_0.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-642f)) * 1419f) + arg_0.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, var_1, ~u_input.a.x), abs(~vec3<u32>(var_1, 1u, 0u))), _wgslsmith_mult_i32(u_input.b, global1.d.a.x), Struct_2(select(true && all(vec2<bool>(global1.a, false)), !(!var_2.a), !(global1.a && global1.a)), var_2.d, _wgslsmith_f_op_vec2_f32(-var_2.e), Struct_1(var_2.b.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.c)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f * 277f))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<bool>) -> vec3<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1301f, 1167f, 130f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, 262f, -868f) + vec3<f32>(arg_1.x, arg_1.x, global1.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-arg_1.x));
    global1 = Struct_2(!(!any(select(vec3<bool>(false, true, arg_3.x), arg_3, true))), global1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1202f, global1.c.x)))) - _wgslsmith_f_op_vec2_f32(var_0.xz + vec2<f32>(global1.c.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -715f) - vec2<f32>(649f, var_0.x))))), Struct_1(global1.b.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(arg_1)), global1.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 1052f))))));
    global1 = Struct_2(arg_3.x, Struct_1(firstLeadingBit(-(global1.b.a ^ vec3<i32>(-2147483647i, global1.b.a.x, 31650i)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -390f)))), 744f), global1.b, vec2<f32>(_wgslsmith_f_op_f32(round(705f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + var_0.x))));
    global1 = Struct_2(global1.a, global1.d, var_0.yy, Struct_1(global1.d.a << (~u_input.a % vec3<u32>(32u))), arg_1);
    global0 = _wgslsmith_div_u32(1u, u_input.a.x);
    return -_wgslsmith_div_vec3_i32(min(global1.d.a, firstLeadingBit(select(vec3<i32>(2147483647i, global1.b.a.x, -44995i), global1.b.a, vec3<bool>(global1.a, global1.a, true)))), vec3<i32>(select(-4094i, firstLeadingBit(51869i), all(vec4<bool>(false, false, global1.a, false))), -select(2147483647i, global1.d.a.x, true), 22424i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.c.x < _wgslsmith_f_op_f32(-1553f + _wgslsmith_div_f32(-1000f, 2733f)), Struct_1(func_1(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(select(global1.e, global1.e, vec2<bool>(true, true))), firstLeadingBit(-u_input.b), select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global1.a, global1.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e)))), Struct_1(abs(~vec3<i32>(u_input.b, -1174i, -2147483647i) ^ -vec3<i32>(-1i, 1i, 0i))), vec2<f32>(-318f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(-global1.c.x))))));
    global1 = Struct_2(all(select(select(vec2<bool>(true, true), !vec2<bool>(global1.a, false), false), !(!vec2<bool>(global1.a, false)), vec2<bool>(global1.a, all(vec2<bool>(true, false))))), global1.d, global1.e, Struct_1(-(~vec3<i32>(-16839i, -1i, 27066i))), global1.c);
    var var_0 = global1.a;
    var var_1 = Struct_2(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(-7805i, u_input.b), -2147483647i) == _wgslsmith_add_i32(~(~global1.b.a.x), global1.b.a.x), Struct_1(-global1.b.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1045f, global1.e.x) * _wgslsmith_f_op_vec2_f32(min(global1.e, vec2<f32>(global1.c.x, global1.e.x)))) - _wgslsmith_f_op_vec2_f32(select(global1.e, global1.c, vec2<bool>(global1.a, global1.a)))))), global1.d, vec2<f32>(-828f, 1936f));
    var var_2 = firstTrailingBit(select(global1.d.a, global1.b.a, select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a)))) << (_wgslsmith_sub_vec3_u32(select(max(u_input.a, u_input.a), u_input.a | u_input.a, select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, true), true)), vec3<u32>(1u, u_input.a.x, u_input.a.x) >> (countOneBits(u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = Struct_3(Struct_1(global1.b.a), !(!select(select(vec3<bool>(var_1.a, var_1.a, global1.a), vec3<bool>(global1.a, var_1.a, global1.a), vec3<bool>(global1.a, true, true)), select(vec3<bool>(false, global1.a, true), vec3<bool>(var_1.a, global1.a, false), vec3<bool>(false, global1.a, false)), select(vec3<bool>(true, true, false), vec3<bool>(global1.a, var_1.a, var_1.a), false))), Struct_2(true, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.d.a.x, 38940i, u_input.b), vec3<i32>(var_1.d.a.x, -6777i, -2147483647i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.e.x, 1932f), var_1.e))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e - var_1.e), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.e.x, global1.c.x), vec2<f32>(global1.c.x, -686f), vec2<bool>(var_1.a, true))))), var_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1396f)) + global1.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 744f, global1.c.x) + vec3<f32>(global1.e.x, -964f, 769f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.e.x)), -669f))) - _wgslsmith_f_op_f32(trunc(var_1.e.x))));
    global0 = 4294967295u;
    global0 = ~_wgslsmith_div_u32(0u, ~(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) >> (59582u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(var_2.x, _wgslsmith_sub_i32(var_1.b.a.x, var_2.x | var_1.d.a.x), 2147483647i, ~u_input.b & func_1(4294967295u, var_1.e, -1i, vec3<bool>(var_1.a, global1.a, var_3.c.a)).x), abs(vec4<i32>(var_2.x, _wgslsmith_mod_i32(var_2.x, var_1.d.a.x), -var_3.c.b.a.x, -16641i))), u_input.a.x, vec4<u32>(u_input.a.x, ~abs(20083u), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x) << (vec4<u32>(u_input.a.x >> (0u % 32u), ~(~1u), 1u, 4294967295u) % vec4<u32>(32u)));
}

