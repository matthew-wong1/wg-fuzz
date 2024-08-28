struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = !vec2<bool>(!(!(68848u < arg_0)), select(-1i, _wgslsmith_add_i32(u_input.a.x, -25021i), any(vec4<bool>(false, true, true, false))) <= ~u_input.a.x);
    return var_0.x;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-319f))), _wgslsmith_f_op_f32(step(645f, -751f)), true)));
    var var_1 = ~vec2<i32>(u_input.a.x, 34019i);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(424f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1042f * var_0))))));
    var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 9785i), ~(-u_input.a.yz) << (vec2<u32>(~firstLeadingBit(17964u), 1u) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(31083u, 27521u, 1u, 0u))), 50552u);
    return _wgslsmith_sub_i32(select(~(-(i32(-1i) * -2147483647i)), var_1.x, !(abs(var_3) != var_3)), u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = -func_3();
    let var_1 = Struct_2(-1i, Struct_1(_wgslsmith_f_op_f32(2550f + arg_0), ~var_0), Struct_1(-1382f, _wgslsmith_dot_vec3_i32(u_input.a.zww, u_input.a.yyw)), abs(arg_2.x) & arg_2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 637f, 596f), vec3<f32>(-874f, 200f, 746f)), vec3<f32>(1000f, 281f, -1000f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, 1000f, arg_0)) - vec3<f32>(arg_0, -1319f, arg_0)), true)))));
    var var_2 = 4294967295u;
    var_2 = ~_wgslsmith_sub_u32(countOneBits(var_1.d >> (4294967295u % 32u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, 1u, 27266u)) | arg_2.x), var_1.d);
    let var_3 = vec4<u32>(0u, ~(~4294967295u), 1u, countOneBits(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9841u, 0u), vec3<u32>(83799u, 1u, arg_2.x)), var_1.d) >> (40270u % 32u)));
    return vec2<bool>(1380f == _wgslsmith_div_f32(-264f, arg_0), func_1(84299u));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> bool {
    var var_0 = Struct_5(max(_wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(49188i, -2147483647i) ^ -u_input.a.xy), vec2<i32>(u_input.a.x, 12604i)));
    let var_1 = arg_2.x;
    var_0 = Struct_5(vec2<i32>(_wgslsmith_mult_i32(select(u_input.a.x, -5616i, true), -10130i) | u_input.a.x, 0i));
    var_0 = Struct_5(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, 33079i), _wgslsmith_div_vec2_i32(var_0.a, ~u_input.a.yy)));
    return arg_2.x || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(firstLeadingBit(u_input.a.zw));
    let var_1 = vec4<bool>(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(1995u, 92955u, 4294967295u, 133937u), vec4<u32>(0u, 1u, 1u, 19368u)) == _wgslsmith_mod_u32(4294967295u, 1u))), any(select(vec3<bool>(2147483647i < u_input.a.x, all(vec2<bool>(true, false)), true), vec3<bool>(true, select(false, false, true), false), vec3<bool>(true, true, true))), false, all(vec4<bool>(true, true, func_1(1u), func_4(~vec4<u32>(51304u, 1u, 1u, 4294967295u), 4294967295u, func_2(-310f, Struct_5(var_0.a), vec2<u32>(1u, 0u)), -883f))));
    let var_2 = -((-vec4<i32>(28611i, u_input.a.x, var_0.a.x, -40209i) & -vec4<i32>(14029i, var_0.a.x, var_0.a.x, 3241i)) << (select(countOneBits(vec4<u32>(75381u, 4294967295u, 0u, 15089u)), vec4<u32>(1u, 1u, 1u, 1u), var_1) % vec4<u32>(32u))) | select(u_input.a, _wgslsmith_div_vec4_i32(select(u_input.a | vec4<i32>(40175i, -1i, -24851i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -46754i, 2147483647i, var_0.a.x), vec4<i32>(u_input.a.x, -6413i, 26756i, u_input.a.x)), true), vec4<i32>(-41936i, u_input.a.x, -16595i, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.a.x)))), all(func_2(_wgslsmith_f_op_f32(-1118f * 643f), var_0, vec2<u32>(4294967295u, 4294967295u))));
    var var_3 = !all(vec2<bool>(!any(var_1.wyx), true));
    var_3 = !(!var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_i32(vec2<i32>(-17035i, u_input.a.x & -10519i), vec2<i32>(func_3(), var_0.a.x)), _wgslsmith_add_vec2_i32(var_0.a, -_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, u_input.a.x), vec2<i32>(var_0.a.x, 0i)))), 1938f, max(0u, 1u >> (1u % 32u)) >> (1u % 32u), ~max(20441u, firstTrailingBit(6242u) & 59424u), ~0u);
}

