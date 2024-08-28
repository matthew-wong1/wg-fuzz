struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec4<u32>(4294967295u, 43471u, 4294967295u, 4294967295u), i32(-2147483648), -808f, vec2<f32>(1241f, -1494f)), Struct_1(false, vec4<u32>(30554u, 41826u, 0u, 4294967295u), -39853i, -207f, vec2<f32>(409f, 475f)), Struct_1(false, vec4<u32>(79317u, 10904u, 1u, 4294967295u), -16583i, -1291f, vec2<f32>(1757f, -1553f)), Struct_1(false, vec4<u32>(35731u, 17216u, 0u, 0u), 61577i, -191f, vec2<f32>(-1000f, -687f)), Struct_1(false, vec4<u32>(1u, 4294967295u, 1u, 39892u), -1i, 509f, vec2<f32>(1470f, -362f)), Struct_1(false, vec4<u32>(70232u, 25570u, 0u, 607u), 0i, -949f, vec2<f32>(-434f, 1202f)), Struct_1(true, vec4<u32>(51161u, 53599u, 4294967295u, 4294967295u), -13318i, 1000f, vec2<f32>(-509f, 314f)), Struct_1(true, vec4<u32>(34252u, 35952u, 39440u, 1840u), -8021i, -769f, vec2<f32>(751f, 148f)), Struct_1(true, vec4<u32>(1u, 23972u, 1u, 137634u), -1i, 832f, vec2<f32>(-494f, -1877f)), Struct_1(true, vec4<u32>(1u, 4294967295u, 4294967295u, 9203u), 13849i, -992f, vec2<f32>(-1260f, 279f)), Struct_1(false, vec4<u32>(29779u, 83270u, 4294967295u, 1u), -1i, -759f, vec2<f32>(743f, -968f)), Struct_1(false, vec4<u32>(8519u, 0u, 3956u, 1u), 58475i, 1940f, vec2<f32>(-477f, 1752f)), Struct_1(true, vec4<u32>(1u, 1u, 97123u, 4294967295u), -1i, 231f, vec2<f32>(3119f, -1042f)), Struct_1(true, vec4<u32>(7709u, 5527u, 61599u, 6574u), 2147483647i, -1000f, vec2<f32>(-1000f, -863f)), Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 65683u), 65470i, -387f, vec2<f32>(363f, -940f)), Struct_1(false, vec4<u32>(93243u, 4294967295u, 4294967295u, 0u), -59493i, -611f, vec2<f32>(658f, -333f)), Struct_1(true, vec4<u32>(23510u, 25983u, 4294967295u, 1u), 2147483647i, 212f, vec2<f32>(124f, 1000f)), Struct_1(false, vec4<u32>(1u, 24056u, 30112u, 89166u), i32(-2147483648), 1959f, vec2<f32>(-1544f, -1915f)), Struct_1(false, vec4<u32>(23725u, 4294967295u, 1u, 4294967295u), 2147483647i, -336f, vec2<f32>(-569f, -708f)), Struct_1(false, vec4<u32>(0u, 4294967295u, 1u, 15906u), -1672i, 890f, vec2<f32>(-1667f, 1498f)), Struct_1(false, vec4<u32>(15717u, 24550u, 2640u, 4294967295u), -54685i, 110f, vec2<f32>(-397f, -937f)), Struct_1(false, vec4<u32>(0u, 15051u, 1u, 42365u), -37882i, 1035f, vec2<f32>(106f, -172f)), Struct_1(true, vec4<u32>(4294967295u, 36543u, 16449u, 1u), i32(-2147483648), 1000f, vec2<f32>(300f, -279f)), Struct_1(true, vec4<u32>(6043u, 50770u, 4294967295u, 0u), -1772i, -1000f, vec2<f32>(-1000f, -652f)), Struct_1(true, vec4<u32>(1u, 48137u, 1u, 0u), -3774i, -392f, vec2<f32>(858f, 810f)), Struct_1(true, vec4<u32>(35551u, 1u, 0u, 14315u), -4638i, 579f, vec2<f32>(-1691f, 1072f)));

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    global3 = vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-1i ^ global3.x, select(u_input.b, u_input.b, arg_0)) | _wgslsmith_dot_vec2_i32(~u_input.a, abs(vec2<i32>(u_input.a.x, 1i)))) << (~(~min(global0.c.b.yz, ~global0.c.b.wy)) % vec2<u32>(32u));
    let var_0 = Struct_4(global0.c.e.x, global0.b | -max(global0.b >> (vec4<u32>(71373u, 4399u, 4294967295u, global0.c.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 0i, -2147483647i, 0i)), global1[_wgslsmith_index_u32(9509u, 26u)]);
    let var_1 = global0.c.b.x;
    global3 = -abs(select(vec2<i32>(-41297i, ~(-12072i)), _wgslsmith_mult_vec2_i32(vec2<i32>(51769i, var_0.c.c), vec2<i32>(global0.b.x, var_0.b.x)) & firstLeadingBit(global0.b.xx), var_0.c.a));
    var var_2 = -438f;
    return !arg_1.zy;
}

fn func_2() -> vec2<bool> {
    global0 = Struct_4(global0.a, vec4<i32>(global0.c.c, ~abs(19305i), -1i, ~abs(i32(-1i) * -15720i)), Struct_1(global0.c.a, ~(~(~global0.c.b)), _wgslsmith_dot_vec3_i32(-(global0.b.wxw ^ vec3<i32>(global3.x, -15123i, u_input.a.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.b.wwy, global0.b.yzw), -global0.b.wyz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-341f * global0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global0.c.e, vec2<f32>(348f, global0.c.e.x))))))));
    var var_0 = Struct_2(~global0.c.c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1616f + global0.a) * _wgslsmith_f_op_f32(round(global0.a)))))), global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c.e.x, _wgslsmith_f_op_f32(global0.c.e.x - global0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-550f - -1474f), global0.a))))));
    global0 = Struct_4(global0.a, firstLeadingBit(-(~(-vec4<i32>(global3.x, global0.b.x, 1i, var_0.a)))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(44549u, min(_wgslsmith_add_u32(global0.c.b.x, global0.c.b.x), ~10597u)), 26u)]);
    global2 = array<vec4<i32>, 1>();
    return select(select(!func_3(all(vec2<bool>(false, true)), select(vec3<bool>(global0.c.a, global0.c.a, true), vec3<bool>(true, false, false), true)), select(!select(vec2<bool>(false, global0.c.a), vec2<bool>(false, false), global0.c.a), !select(vec2<bool>(global0.c.a, true), vec2<bool>(true, true), false), vec2<bool>(false, any(vec4<bool>(global0.c.a, false, global0.c.a, true)))), false), vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))) < 426f));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = global0.c.e.x;
    let var_1 = !select(vec2<bool>(all(vec4<bool>(false, global0.c.a, global0.c.a, global0.c.a)), false), select(select(func_2(), select(vec2<bool>(global0.c.a, true), vec2<bool>(global0.c.a, true), global0.c.a), vec2<bool>(global0.c.a, true)), vec2<bool>(any(vec2<bool>(false, true)), false || global0.c.a), !(!vec2<bool>(false, global0.c.a))), false);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(777f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(224f)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), global0.c.c > _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(global0.b.yxx, _wgslsmith_sub_vec3_i32(global0.b.xzx, vec3<i32>(global0.b.x, -24786i, u_input.a.x))))));
    let var_2 = -(~(-vec2<i32>(~u_input.b, min(global0.b.x, 0i))));
    global2 = array<vec4<i32>, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(~43223u, ~1u), min(vec2<u32>(1u, global0.c.b.x), global0.c.b.xz), ~_wgslsmith_mod_vec2_u32(global0.c.b.ww, vec2<u32>(16202u, global0.c.b.x))));
    var var_1 = vec4<f32>(625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d) * _wgslsmith_div_f32(-1048f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(155f, -1076f, global0.a, 208f), vec4<f32>(global0.a, global0.a, global0.a, global0.c.e.x)), global0.c.b)))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(611f)) * global0.a));
    var var_2 = 1u;
    var_2 = ~9880u;
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, 709f, global0.a, -1000f)))), global0.c.b)), _wgslsmith_f_op_f32(global0.c.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(608f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(761f)), global0.c.d)), _wgslsmith_f_op_f32(-var_1.x))), -513f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
}

