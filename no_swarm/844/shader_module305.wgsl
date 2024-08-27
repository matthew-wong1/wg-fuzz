struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<f32>(-1000f, 275f, 880f), vec4<f32>(1000f, -716f, -1181f, -1113f)), Struct_4(vec3<f32>(-240f, -214f, 3000f), vec4<f32>(-138f, -1767f, -502f, -242f)), Struct_4(vec3<f32>(-1317f, -1763f, 1000f), vec4<f32>(979f, 436f, 2309f, 1000f)), Struct_4(vec3<f32>(1355f, 192f, -873f), vec4<f32>(-357f, 474f, 855f, 309f)), Struct_4(vec3<f32>(734f, 1795f, 235f), vec4<f32>(-2117f, -506f, 1082f, -1167f)), Struct_4(vec3<f32>(-1015f, 326f, -1000f), vec4<f32>(460f, 608f, -379f, -1518f)), Struct_4(vec3<f32>(-141f, 979f, -1079f), vec4<f32>(-815f, -1131f, 1000f, -1660f)), Struct_4(vec3<f32>(655f, 278f, -201f), vec4<f32>(-1722f, -720f, -1151f, 166f)), Struct_4(vec3<f32>(363f, -351f, -669f), vec4<f32>(1810f, 1624f, 115f, 1000f)));

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<i32> = vec2<i32>(13065i, 2147483647i);

var<private> global3: Struct_1;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, -777i);
    global4 = abs(~firstTrailingBit(_wgslsmith_mult_vec2_u32(global3.b, vec2<u32>(22463u, 8534u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, _wgslsmith_f_op_f32(round(1561f))) * vec2<f32>(468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1010f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, 443f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1441f, -1904f))))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-421f * 924f), -1206f), vec2<f32>(_wgslsmith_f_op_f32(287f - 618f), -289f)))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_2 = 1u;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), 732f, 786f, 363f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, 1982f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, 1046f, var_1.x, var_1.x))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1320f, var_1.x))), var_1.x, _wgslsmith_f_op_f32(-112f + 487f), _wgslsmith_f_op_f32(-1000f + var_1.x))), global3.b, global3.a, !(all(vec4<bool>(true, false, false, false)) & true));
    return ~(~0u >> (global4.x % 32u));
}

fn func_2() -> f32 {
    global2 = _wgslsmith_add_vec2_i32(select(-(vec2<i32>(-1i) * -vec2<i32>(-10536i, 15339i)), _wgslsmith_mod_vec2_i32(-u_input.a.zz, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global3.c), vec2<i32>(-2147483647i, 1i))) << ((vec2<u32>(u_input.b, global3.b.x) ^ (vec2<u32>(global4.x, 40755u) << (vec2<u32>(92263u, global3.a) % vec2<u32>(32u)))) % vec2<u32>(32u)), select(vec2<bool>(all(vec3<bool>(false, false, false)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<i32>(i32(-1i) * -global3.c, global3.c) & vec2<i32>(-1i, countOneBits(36872i & global2.x)));
    global4 = vec2<u32>(func_3(firstLeadingBit(global4.x)), abs(abs(~global3.a) ^ (~global4.x ^ 0u)));
    let var_0 = ~4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(943f, _wgslsmith_f_op_f32(-1218f * -648f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(352f, 243f))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))));
    global0 = array<Struct_4, 9>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(abs(1198f)), !(!(_wgslsmith_f_op_f32(-168f + var_1.x) <= 358f))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_5) -> Struct_2 {
    global4 = vec2<u32>(global4.x, 15899u) << (~(~global3.b) % vec2<u32>(32u));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -899f))));
    let var_1 = firstLeadingBit(~abs(-abs(-25203i)));
    global2 = vec2<i32>(2147483647i, 24692i);
    let var_2 = 1u;
    return Struct_2(true, vec2<f32>(arg_0, -807f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, arg_3.a)) + _wgslsmith_f_op_f32(-346f * arg_3.a)))), _wgslsmith_div_f32(411f, 533f), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, true)))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-726f, -367f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1001f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - _wgslsmith_f_op_f32(-952f - -1497f)), 459f, !any(vec3<bool>(false, true, false)))) + _wgslsmith_div_f32(-1000f, -1205f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-911f, -1140f, false)), -1055f, -161f, -1167f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(func_2()), -1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-303f, 1834f, _wgslsmith_f_op_f32(round(1417f)), 330f), vec4<f32>(_wgslsmith_f_op_f32(123f + 168f), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1384f))))), Struct_5(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -162f))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(step(-826f, var_0.b.x)))), var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(1094f, -361f, var_0.b.x, var_0.b.x), vec4<f32>(-1441f, var_0.c, var_0.b.x, var_0.c)), Struct_5(var_0.c)).b.x, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f), -2296f), 922f)));
    global3 = Struct_1(global4.x, ~vec2<u32>(~1u, ~global3.b.x) | abs(global3.b), 1i);
    let var_2 = var_0;
    global4 = global3.b;
    return Struct_1(global3.a, ~global3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, i32(-1i) * -global3.c), ~firstLeadingBit(select(vec2<i32>(arg_0, global3.c), vec2<i32>(-1i, arg_0), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.a.zx >> ((global3.b & global3.b) % vec2<u32>(32u));
    global4 = max(~vec2<u32>(1u, _wgslsmith_div_u32(~u_input.b, global4.x)), vec2<u32>(_wgslsmith_add_u32(global4.x, 4294967295u), global3.b.x));
    global1 = 41990u;
    global4 = ~vec2<u32>(7692u, 72739u);
    global2 = vec2<i32>(-u_input.a.x, 41229i);
    global2 = -u_input.a.yx;
    let var_0 = func_1(global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(~vec3<i32>(12903i, var_0.c, var_0.c)), -17937i, var_0.b.x | ~30845u, var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) - _wgslsmith_f_op_f32(select(559f, 107f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1062f)));
}

