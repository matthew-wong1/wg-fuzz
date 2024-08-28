struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec4<f32>(182f, -484f, 713f, -815f), Struct_2(1u, false, -1668f)), vec3<f32>(1000f, 1000f, 704f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = false;
    global1 = Struct_4(Struct_3(global1.a.a, Struct_2(~global1.a.b.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1187f * global1.b.x) + _wgslsmith_f_op_f32(round(-1109f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, _wgslsmith_div_f32(global1.b.x, -109f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f + -276f) * global1.b.x))));
    var var_1 = global1.a;
    var var_2 = !(!select(select(select(vec3<bool>(true, false, global1.a.b.b), vec3<bool>(var_0, true, true), vec3<bool>(var_1.b.b, var_1.b.b, false)), vec3<bool>(var_0, false, var_1.b.b), false), vec3<bool>(global1.a.b.b, any(vec3<bool>(global1.a.b.b, true, true)), true), var_1.b.b));
    let var_3 = global1.a.b.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.c, 1000f) * _wgslsmith_div_f32(-1000f, -1120f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = global1.a;
    let var_1 = global1.a.b;
    var var_2 = !vec3<bool>(240f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), !(4294967295u != select(global1.a.b.a, 24221u, true)), true);
    var var_3 = !(!(!vec3<bool>(false, global1.a.b.b | false, select(var_0.b.b, false, var_1.b))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, 692f, _wgslsmith_f_op_f32(global1.a.b.c + _wgslsmith_f_op_f32(416f - -1353f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, -457f, -249f) * global1.a.a.yzy))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -1016f, 1064f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, global1.b.x, -2453f) - global1.a.a.yxw))))));
    return Struct_1(_wgslsmith_mult_vec4_i32(u_input.b, abs(-u_input.b)), var_0.b.a & (countOneBits(min(u_input.c.x, var_0.b.a)) | (38149u ^ var_1.a)), vec3<bool>(true, all(select(vec4<bool>(global1.a.b.b, false, var_2.x, false), select(vec4<bool>(false, var_0.b.b, var_3.x, var_0.b.b), vec4<bool>(true, false, var_0.b.b, true), var_3.x), select(vec4<bool>(var_3.x, var_1.b, false, global1.a.b.b), vec4<bool>(true, false, true, true), false))), true), vec3<bool>(true, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b.x), vec2<i32>(global0[_wgslsmith_index_u32(26200u, 12u)], 34976i)), reverseBits(global0[_wgslsmith_index_u32(4294967295u, 12u)])) < 25074i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1357f - -761f) * var_0.a.x) != var_0.b.c), !var_0.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~arg_2.b.a;
    var var_1 = select(29742i, 83648i, select(arg_2.b.b, -115f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - -656f) - global1.b.x), func_2().d.x));
    var_1 = -(((global0[_wgslsmith_index_u32(global1.a.b.a | var_0, 12u)] | global0[_wgslsmith_index_u32(~1u, 12u)]) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.zx), firstTrailingBit(28427u)) % 32u)) | countOneBits(~(~arg_0.a.x)));
    return Struct_1(firstTrailingBit(-firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], -39497i, -2147483647i))), global1.a.b.a, !(!select(arg_0.c, !arg_0.c, !vec3<bool>(arg_2.b.b, arg_1.b.b, false))), vec3<bool>(true, true, any(select(vec4<bool>(arg_0.e, arg_1.b.b, arg_2.b.b, arg_1.b.b), select(vec4<bool>(false, false, arg_2.b.b, true), vec4<bool>(arg_1.b.b, true, true, false), vec4<bool>(true, arg_1.b.b, true, true)), 23890i >= u_input.b.x))), !any(!vec4<bool>(true, global1.a.b.b, arg_2.b.b, arg_0.e)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    var var_0 = global1.b;
    var var_1 = func_4(func_2(), Struct_3(global1.a.a, global1.a.b), global1.a);
    var var_2 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(global1.a.a.zzz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(521f, 341f, 214f) - vec3<f32>(var_0.x, var_0.x, -1050f)), vec3<f32>(global1.b.x, global1.a.b.c, var_0.x))))));
    global0 = array<i32, 12>();
    var_2 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f - var_0.x) - _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(abs(-1006f)))));
    return ~(~arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.x < 0i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(442f, 875f))));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 27984u, u_input.a.x) ^ vec4<u32>(0u, 35824u, global1.a.b.a, 39382u), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), u_input.c.x), u_input.c.zyx) | _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(1u), global1.a.b.a, ~func_1(vec2<bool>(global1.a.b.b, false), u_input.a.x)), ~u_input.a);
    global1 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(round(671f)), 804f, _wgslsmith_f_op_f32(-global1.a.a.x)) - global1.a.a), global1.a.b), global1.b);
    let var_3 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1441f), _wgslsmith_f_op_f32(sign(global1.a.a.x)), 627f))), global1.b)));
    var var_4 = Struct_1(-_wgslsmith_sub_vec4_i32(-min(vec4<i32>(u_input.b.x, -27059i, global0[_wgslsmith_index_u32(0u, 12u)], -22037i), u_input.b), vec4<i32>(0i, ~global0[_wgslsmith_index_u32(var_3.a.b.a, 12u)], -32517i, -1i)), ~var_3.a.b.a, select(vec3<bool>(true, any(select(vec2<bool>(var_3.a.b.b, global1.a.b.b), vec2<bool>(true, true), vec2<bool>(true, var_3.a.b.b))), all(select(vec4<bool>(true, global1.a.b.b, false, false), vec4<bool>(false, false, var_3.a.b.b, false), vec4<bool>(global1.a.b.b, false, global1.a.b.b, var_3.a.b.b)))), vec3<bool>(true, func_2().c.x, _wgslsmith_f_op_f32(abs(global1.a.b.c)) <= -518f), true), select(select(func_2().d, select(vec3<bool>(var_3.a.b.b, global1.a.b.b, false), vec3<bool>(true, true, false), !var_3.a.b.b), vec3<bool>(true, true, false)), vec3<bool>(!global1.a.b.b, !any(vec2<bool>(global1.a.b.b, false)), true), !func_4(func_2(), var_3.a, var_3.a).e), var_3.a.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.xy, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2992f, global1.a.a.x) * _wgslsmith_div_f32(global1.a.a.x, 1306f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.a.x)))))));
}

