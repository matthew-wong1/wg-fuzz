struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_3,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(20792i, i32(-2147483648)), vec2<i32>(-28269i, -12931i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -1i), vec2<i32>(53818i, 17206i), vec2<i32>(-1i, 34009i), vec2<i32>(62260i, 26780i), vec2<i32>(35727i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(1i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(11620i, -1i), vec2<i32>(34127i, 9756i), vec2<i32>(0i, -31662i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-30475i, 51783i), vec2<i32>(i32(-2147483648), 4980i), vec2<i32>(54866i, 0i), vec2<i32>(12587i, 0i), vec2<i32>(-1255i, 1i), vec2<i32>(1i, -32438i), vec2<i32>(-10377i, 8160i), vec2<i32>(1i, 74233i), vec2<i32>(53673i, -3269i), vec2<i32>(2147483647i, 28606i), vec2<i32>(35551i, 19115i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - 112f))), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, 322f, 1150f))))), Struct_1(arg_1));
    let var_1 = i32(-1i) * -12547i;
    global0 = array<vec2<i32>, 28>();
    let var_2 = false;
    global0 = array<vec2<i32>, 28>();
    return 372f;
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(min(vec3<i32>(-74507i, u_input.d.x, u_input.e) << (~vec3<u32>(u_input.a, 98605u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.e, u_input.e, ~(-11542i)))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-555f, _wgslsmith_f_op_f32(690f + 899f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(228f)), _wgslsmith_f_op_f32(min(420f, 869f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 1627f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(min(-235f, 1736f)), -836f, _wgslsmith_f_op_f32(floor(-664f))))))));
    var_0 = Struct_2(var_0.a);
    global0 = array<vec2<i32>, 28>();
    var var_2 = select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), true), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), 13926u < u_input.b);
    return (!var_2.x | (select(~9677u, u_input.b, false) < _wgslsmith_sub_u32(~u_input.a, u_input.a))) || true;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-153f, vec3<i32>(u_input.d.x, u_input.e, -2147483647i))), _wgslsmith_f_op_f32(trunc(1612f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2541f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-644f - 169f), _wgslsmith_f_op_f32(f32(-1f) * -1520f), func_3())))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    return firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(min(u_input.b, 57693u), u_input.a)), reverseBits(vec2<u32>(1u, firstTrailingBit(u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    var var_0 = ~min(func_1(), ~vec2<u32>(~4657u, ~u_input.c));
    let var_1 = u_input.d.x;
    var var_2 = Struct_5(vec3<i32>(_wgslsmith_mod_i32(~2147483647i, i32(-1i) * -79891i), var_1, -((var_1 & -49462i) & u_input.d.x)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1255f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f * -1648f) + _wgslsmith_f_op_f32(f32(-1f) * -783f))), Struct_1(-min(vec3<i32>(u_input.d.x, -1i, -2147483647i), vec3<i32>(var_1, u_input.d.x, u_input.d.x)))));
    let var_3 = Struct_5(var_2.a, Struct_3(var_2.b.a, var_2.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-vec2<i32>(2198i, ~var_1), abs(_wgslsmith_mult_vec2_i32(var_2.b.b.a.xy, vec2<i32>(-1i, 2147483647i)) << (reverseBits(vec2<u32>(34079u, 0u)) % vec2<u32>(32u)))), var_1, _wgslsmith_f_op_f32(1179f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)) - -409f)));
}

