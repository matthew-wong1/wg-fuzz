struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: vec2<u32>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    global1 = select(!(!(!(!vec4<bool>(true, global3.x, false, false)))), !(!vec4<bool>(any(vec2<bool>(global1.x, true)), arg_2.b, any(vec4<bool>(global1.x, true, arg_2.b, true)), 1u > arg_2.c)), select(select(vec4<bool>(true, global1.x | false, arg_2.b & global3.x, false), vec4<bool>(global3.x & global1.x, true | global1.x, true != global3.x, true), vec4<bool>(arg_2.b | arg_2.b, arg_2.b, arg_3.x < u_input.d, global1.x)), select(vec4<bool>(global3.x == true, u_input.a.x > u_input.a.x, u_input.b.x == u_input.b.x, select(false, global1.x, false)), !select(vec4<bool>(true, arg_2.b, true, arg_2.b), vec4<bool>(arg_2.b, true, true, false), global3.x), true), true));
    let var_0 = vec4<u32>(0u, _wgslsmith_add_u32(~(~arg_2.c), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.d), arg_1)), ~u_input.d, global2.x) << ((vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_3.yw, arg_3.ww), ~12822u), abs(global2.x ^ arg_3.x), firstLeadingBit(0u), 1u) >> (vec4<u32>(countOneBits(0u), arg_2.e, _wgslsmith_mod_u32(_wgslsmith_add_u32(20065u, 9350u), 30405u), arg_1) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(arg_0, !select(all(global1.ww), false, global1.x), max(~76797u, arg_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -955f), -505f, arg_2.b)) * arg_0), 39862u);
    var var_2 = var_1;
    var var_3 = ~_wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(select(select(-40404i, -2147483647i, true), ~(-10453i), var_1.b), 0i, i32(-1i) * -2147483647i));
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1039f))), !(u_input.c >= ~55689u), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_1, arg_0.x, Struct_1(arg_1, global3.x, global2.x, 1273f, 17042u), vec4<u32>(global2.x, arg_0.x, 4294967295u, 4294967295u))), arg_1, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1)), global2.x));
    var_0 = Struct_2(var_0.a);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, 1252f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1383f, var_0.a.d) + var_0.a.d)))))));
    var var_2 = Struct_3(Struct_2(var_0.a));
    var var_3 = -677f;
    return var_2.a.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = global1.wwz;
    var var_1 = Struct_3(Struct_2(func_2(vec2<u32>(min(global2.x, arg_1.a.a.c), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.a + arg_0.a)))));
    let var_2 = arg_1.a.a.e;
    let var_3 = ~(~(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.x), u_input.a.yz), 1i, arg_2.x)));
    var var_4 = global3.x;
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec2<bool>(all(vec2<bool>(all(select(global1.yzx, vec3<bool>(false, false, global1.x), vec3<bool>(arg_0.a.a.b, true, true))), false)), !global1.x);
    global3 = !vec3<bool>(global3.x, _wgslsmith_mod_i32(u_input.b.x & -13451i, ~u_input.a.x) <= -31923i, select(true, ~u_input.a.x == _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), all(vec4<bool>(true, true, true, var_0.x))));
    var var_1 = !arg_0.a.a.b;
    global1 = vec4<bool>(global1.x, all(vec2<bool>(true, false)), global1.x, global1.x);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(31096i, u_input.b.x, 2147483647i, u_input.b.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, 2147483647i, 0i), vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, 0i))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 31606i, -10555i, 0i)), vec4<i32>(min(u_input.b.x, 13655i), 1i ^ u_input.b.x, abs(u_input.a.x), -1i))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.a.a.d, _wgslsmith_f_op_f32(select(-944f, 681f, true)))), 600f) + arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 195f, 297f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(264f)), -503f, _wgslsmith_f_op_f32(-1000f - 266f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(286f, 261f, -766f)))), _wgslsmith_f_op_f32(f32(-1f) * -623f) <= _wgslsmith_f_op_f32(ceil(-665f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-680f)), _wgslsmith_f_op_f32(-540f - _wgslsmith_f_op_f32(-690f * -292f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(-301f, global1.x, 43066u, -427f, u_input.e), Struct_3(Struct_2(Struct_1(519f, false, 50807u, 875f, u_input.d))), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, 458f, 911f, -500f))))), vec3<f32>(1f, 1f, 1f)), -1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1474f - 2030f), 1f, _wgslsmith_f_op_f32(1056f * -120f), _wgslsmith_f_op_f32(floor(271f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -624f), -163f, -263f, _wgslsmith_f_op_f32(-762f * -778f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), -212f, _wgslsmith_f_op_f32(ceil(-1317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) + 698f))), _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(abs(57778u), _wgslsmith_sub_u32(1u, 0u))), firstTrailingBit(global2.x)));
}

