struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<f32>(165f, 1129f, -1000f), 1313f, vec3<bool>(true, true, false)), Struct_2(vec3<f32>(1000f, 1207f, 345f), -469f, vec3<bool>(false, false, false)), Struct_2(vec3<f32>(-973f, -1353f, 1167f), 166f, vec3<bool>(false, true, true)), Struct_2(vec3<f32>(760f, 1000f, -357f), 423f, vec3<bool>(false, true, false)), Struct_2(vec3<f32>(1377f, 344f, -2618f), -177f, vec3<bool>(true, false, true)), Struct_2(vec3<f32>(158f, 1009f, 899f), 180f, vec3<bool>(false, true, true)), Struct_2(vec3<f32>(334f, 567f, -446f), 654f, vec3<bool>(true, true, true)), Struct_2(vec3<f32>(1084f, 844f, 2103f), -1000f, vec3<bool>(false, false, false)));

var<private> global1: Struct_5 = Struct_5(vec4<bool>(true, false, true, true));

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(41755u, 18191u), vec2<u32>(1u, 38194u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(72685u, 0u), vec2<u32>(1u, 77419u), vec2<u32>(75363u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(38185u, 0u), vec2<u32>(40489u, 1u), vec2<u32>(15174u, 4294967295u), vec2<u32>(4294967295u, 18457u), vec2<u32>(1u, 3609u), vec2<u32>(46001u, 64139u), vec2<u32>(38744u, 61891u), vec2<u32>(89446u, 21639u), vec2<u32>(1u, 4294967295u), vec2<u32>(68937u, 0u), vec2<u32>(30915u, 27926u), vec2<u32>(0u, 20860u), vec2<u32>(1u, 86896u), vec2<u32>(1u, 0u), vec2<u32>(29571u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 52133u), vec2<u32>(57174u, 13577u), vec2<u32>(1u, 10550u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    let var_0 = !any(!vec2<bool>(all(vec3<bool>(global1.a.x, false, true)), any(global1.a.wxx)));
    global3 = array<vec2<u32>, 27>();
    let var_1 = vec2<u32>(4226u, abs(u_input.b));
    var var_2 = _wgslsmith_mult_vec2_i32(-max(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.xx) ^ (vec2<i32>(-1i) * -u_input.c.yy), u_input.c.wy);
    global2 = global1.a.x;
    return ~(~var_1.x << (~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), 31257u, min(13397u, 43242u)) % 32u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> bool {
    global0 = array<Struct_2, 8>();
    global1 = Struct_5(arg_2);
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, -select(arg_1.x, u_input.c.x, arg_0)), 21512i) >= arg_1.x;
    global2 = (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-155f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) + 1f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-434f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(-236f + -1883f))))) != true;
    let var_1 = false;
    return true;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 0u))), 8u)];
    let var_1 = vec2<i32>(abs(abs(-37020i)), 0i);
    var var_2 = Struct_1(79950i, global3[_wgslsmith_index_u32(~func_2(), 27u)] ^ vec2<u32>(~u_input.b ^ 20698u, u_input.b), vec2<u32>(reverseBits(8809u), u_input.b), select(!select(global1.a, !global1.a, vec4<bool>(false, false, true, arg_1.x)), vec4<bool>(true, true, select(var_0.c.x, func_3(true, var_1, global1.a), true), true), any(select(vec4<bool>(arg_1.x, true, false, false), global1.a, !global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))));
    let var_3 = vec3<bool>(true, _wgslsmith_f_op_f32(trunc(428f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-423f, _wgslsmith_f_op_f32(f32(-1f) * -998f))))), var_2.d.x);
    return -196i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(all(select(select(global1.a.zy, global1.a.ww, global1.a.x), select(global1.a.ww, vec2<bool>(global1.a.x, global1.a.x), true), true)), true, global1.a.x, false), !vec4<bool>(true, func_1(709f, global1.a.yzw) < func_1(1000f, vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), true, func_3(u_input.a == -18113i, vec2<i32>(u_input.c.x, 1i), global1.a)), vec4<bool>(global1.a.x, all(vec2<bool>(true, false & global1.a.x)), true, !(false & all(global1.a))));
    var var_1 = _wgslsmith_div_vec4_u32(~reverseBits(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(u_input.b, u_input.b, 1u, 0u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 51609u, u_input.b, 14518u)) % vec4<u32>(32u))));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(abs(u_input.b), 8u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f + -946f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1766f, 839f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(floor(-1000f)), -836f))), true, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(9719i, -11617i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a, -2147483647i), vec3<i32>(-1i, -29506i, u_input.c.x))), vec3<i32>(u_input.c.x, -2147483647i, -7769i) & vec3<i32>(u_input.c.x, u_input.a, 0i))));
    global3 = array<vec2<u32>, 27>();
    var var_3 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.zx), ~global3[_wgslsmith_index_u32(29883u, 27u)])), vec4<i32>(~reverseBits(var_2.d ^ u_input.a), 19109i, i32(-1i) * -(i32(-1i) * -48245i), u_input.c.x), var_1.yzy);
}

