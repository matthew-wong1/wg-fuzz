struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1335f;

var<private> global1: array<u32, 14> = array<u32, 14>(1u, 1u, 4294967295u, 63138u, 0u, 1u, 1u, 3536u, 62035u, 44728u, 0u, 1u, 0u, 4294967295u);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(54618u, 0u, 1u, 1883u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = !select(vec2<bool>(true, !(60710i < u_input.c)), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), false), _wgslsmith_mod_u32(global2.a.a.x, arg_1.a.x) <= _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(56291u, 14u)], arg_1.a.x), vec3<u32>(arg_1.a.x, global2.a.a.x, global1[_wgslsmith_index_u32(arg_1.a.x, 14u)]) << (vec3<u32>(global1[_wgslsmith_index_u32(arg_1.a.x, 14u)], global2.a.a.x, 8715u) % vec3<u32>(32u))));
    let var_1 = !select(vec3<bool>(false, true, true), vec3<bool>(all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), false)), true && select(var_0.x, true, true), var_0.x), select(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, true)), vec3<bool>(var_0.x, false, var_0.x), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x))));
    return Struct_2(Struct_1(~global2.a.a));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1600f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -681f), -575f), vec3<f32>(_wgslsmith_f_op_f32(-581f - _wgslsmith_f_op_f32(sign(1164f))), _wgslsmith_f_op_f32(-2420f * _wgslsmith_f_op_f32(f32(-1f) * -978f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1177f * 1339f) - 1556f)))), global2.a, -384f);
    global1 = array<u32, 14>();
    let var_1 = abs(31639i);
    var var_2 = _wgslsmith_f_op_f32(round(1f));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2024f))), -721f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f) * _wgslsmith_f_op_f32(f32(-1f) * -284f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1217f + -2061f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(899f))) * 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1363f, 1132f, -931f), _wgslsmith_div_vec3_f32(vec3<f32>(1386f, -1586f, -694f), vec3<f32>(-377f, -941f, -641f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(910f, 461f, -402f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1481f, 1000f, -1931f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-187f * _wgslsmith_f_op_f32(sign(562f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)), -2108f))));
    return Struct_3(var_3.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(754f, -974f, -984f))))))), Struct_1(select(vec4<u32>(global2.a.a.x, arg_1.a.x, 0u, global1[_wgslsmith_index_u32(32537u, 14u)]), ~vec4<u32>(arg_0.a.a.x, global2.a.a.x, 1u, 30917u), select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true)))), -1127f).a);
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-562f, 122f))), -144f)), -397f, _wgslsmith_f_op_f32(1571f * _wgslsmith_f_op_f32(f32(-1f) * -864f))), Struct_1(~reverseBits(~vec4<u32>(12038u, global2.a.a.x, 0u, arg_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1831f))));
    let var_1 = select(vec4<bool>(select(!(!arg_2), true, true), false && any(select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_2, true, true, true))), true, true), !(!select(!vec4<bool>(arg_2, true, arg_2, arg_2), !vec4<bool>(arg_2, false, arg_2, arg_2), !arg_2)), arg_2);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(169f, 209f, -1648f, -1950f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -1316f, 1110f, 2369f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1268f, -1000f, _wgslsmith_f_op_f32(round(1468f)), 1933f) + vec4<f32>(_wgslsmith_f_op_f32(1000f * -289f), _wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(max(-230f, -322f)), _wgslsmith_f_op_f32(trunc(-247f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-317f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(476f * -978f), _wgslsmith_f_op_f32(1173f * -1142f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1140f, -1360f, 367f, 793f) - vec4<f32>(-1000f, -718f, -210f, -1468f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1().a), var_2.x) + -827f);
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_4 {
    var var_0 = !(!(!select(!vec3<bool>(true, false, arg_2), !vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, true, true), vec3<bool>(false, arg_2, true)))));
    let var_1 = Struct_3(arg_1);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-126f, _wgslsmith_f_op_f32(f32(-1f) * -470f), 1999f, -490f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 383f), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(arg_1 * arg_0.a))))));
    let var_3 = func_2(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(-arg_1), all(vec4<bool>(true, false, true, false)))), func_1().a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1477f))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))));
    var var_4 = var_3.a;
    return Struct_4(Struct_2(Struct_1(~select(global2.a.a, vec4<u32>(59834u, 4294967295u, global2.a.a.x, 8399u), var_0.x))), -421f, Struct_3(1216f), select(vec4<bool>(var_0.x, all(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, arg_2), vec3<bool>(true, true, false))), var_0.x, false), select(vec4<bool>(arg_2, arg_2, all(vec4<bool>(var_0.x, var_0.x, false, true)), any(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(arg_2, true, false, var_0.x), true), select(select(vec4<bool>(false, false, false, arg_2), vec4<bool>(false, var_0.x, arg_2, false), all(vec2<bool>(false, false))), vec4<bool>(true, false, arg_2, !arg_2), var_0.x)), func_1().a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_u32(select(3619u << (min(global2.a.a.x, global2.a.a.x) % 32u), global2.a.a.x, arg_1.d.x), ~global2.a.a.x);
    var var_1 = arg_1;
    global2 = var_1.a;
    global0 = var_1.e;
    var var_2 = func_2(vec3<f32>(350f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -695f)), Struct_1(_wgslsmith_add_vec4_u32(arg_1.a.a.a, abs(arg_1.a.a.a >> (global2.a.a % vec4<u32>(32u))))), -956f).a;
    return Struct_2(Struct_1(min(~vec4<u32>(49355u, 28845u, 88582u, var_1.a.a.a.x), vec4<u32>(_wgslsmith_sub_u32(57562u, global2.a.a.x), max(global1[_wgslsmith_index_u32(4294967295u, 14u)], var_1.a.a.a.x), ~global2.a.a.x, func_4(Struct_3(-1749f), -831f, arg_1.d.x).a.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a);
    global2 = func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-280f)))), func_4(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + _wgslsmith_f_op_f32(func_3(var_0, var_0.a, true, -25303i))) * 1f), all(vec4<bool>(true, true, false, true))));
    var var_1 = -135f;
    var var_2 = vec3<i32>(2147483647i, _wgslsmith_mod_i32(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, u_input.c, 2147483647i), u_input.b), u_input.a.x), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(countOneBits(u_input.a), u_input.a, vec2<i32>(-1i, -1i)), abs(firstLeadingBit(vec2<i32>(0i, -1i)))));
    var_2 = max(-(-vec3<i32>(u_input.c, var_2.x, u_input.a.x) << (var_0.a.a.wyx % vec3<u32>(32u))), vec3<i32>(16923i, 0i, u_input.a.x | _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(var_2.x, -49112i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)))));
    let var_4 = var_0;
    global0 = 546f;
    var_1 = _wgslsmith_f_op_f32(1f * -2295f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, var_2.x, -26382i, u_input.b)), ~select(vec4<i32>(var_2.x, -25321i, -2147483647i, var_2.x), vec4<i32>(u_input.c, u_input.a.x, var_2.x, -28802i), true)) & ~(-vec4<i32>(1i, u_input.a.x, -1546i, 0i)), vec4<i32>(-11373i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, u_input.b), 12691i), u_input.c, 20372i), 16319u);
}

