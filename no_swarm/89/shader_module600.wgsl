struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(63508u, 25935u, 73756u, 1u), 1u, vec3<i32>(1i, 15942i, -10670i), Struct_1(-915f, vec2<bool>(true, true), -1i, vec4<f32>(-514f, -1000f, 377f, -647f)), vec2<f32>(-2719f, -1139f)), Struct_2(vec4<u32>(82867u, 4294967295u, 4294967295u, 43908u), 1u, vec3<i32>(i32(-2147483648), -19963i, 0i), Struct_1(-708f, vec2<bool>(true, false), 0i, vec4<f32>(828f, -1247f, 494f, -458f)), vec2<f32>(1334f, 740f)), Struct_2(vec4<u32>(45184u, 79459u, 30681u, 1u), 4294967295u, vec3<i32>(2147483647i, 1i, -27099i), Struct_1(398f, vec2<bool>(true, true), -32217i, vec4<f32>(-1082f, -1000f, 2424f, -1006f)), vec2<f32>(1922f, 1525f)), Struct_2(vec4<u32>(0u, 11108u, 4294967295u, 44138u), 18769u, vec3<i32>(-4789i, i32(-2147483648), -14617i), Struct_1(-535f, vec2<bool>(false, true), 41513i, vec4<f32>(1055f, 335f, 1069f, -436f)), vec2<f32>(-528f, -147f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(arg_1.d.wzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(101f * arg_0.e.x), arg_1.d.x, _wgslsmith_f_op_f32(global0.x * 548f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.d.x, global0.x, -795f), vec3<f32>(global0.x, 932f, 751f)))))), select(!vec3<bool>(!arg_0.d.b.x, arg_1.b.x, true), !select(select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, false, arg_1.b.x)), !vec3<bool>(arg_1.b.x, arg_0.d.b.x, false), vec3<bool>(false, arg_0.d.b.x, arg_0.d.b.x)), vec3<bool>(all(select(vec3<bool>(arg_0.d.b.x, arg_0.d.b.x, true), vec3<bool>(arg_1.b.x, false, false), vec3<bool>(true, true, arg_0.d.b.x))), !select(arg_0.d.b.x, false, false), arg_1.b.x))));
    var var_2 = arg_1;
    var_0 = 1u;
    var var_3 = global1[_wgslsmith_index_u32((~u_input.b.x << (u_input.d.x % 32u)) | 2458u, 4u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -562f);
}

fn func_2() -> f32 {
    var var_0 = vec3<i32>(19614i, _wgslsmith_add_i32(u_input.c, ~(-49311i) >> (0u % 32u)), _wgslsmith_sub_i32(u_input.a.x, min(u_input.c, -2147483647i) & (u_input.c << (u_input.b.x % 32u))) << (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u));
    var var_1 = Struct_1(global0.x, vec2<bool>(false, all(vec2<bool>(any(vec2<bool>(false, false)), true))), -35476i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(313f)), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -154f) * _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(0u, 92077u, 26254u, u_input.d.x), 98465u, u_input.a.xyw, Struct_1(378f, vec2<bool>(false, false), u_input.c, vec4<f32>(-450f, 371f, global0.x, 586f)), vec2<f32>(global0.x, 1344f)), Struct_1(global0.x, vec2<bool>(false, true), 28552i, vec4<f32>(global0.x, 1091f, 2169f, -262f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f) + -1460f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 4u)], Struct_1(1811f, vec2<bool>(false, true), var_0.x, vec4<f32>(global0.x, -1989f, -797f, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -532f)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f * _wgslsmith_f_op_f32(floor(global0.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(abs(global0.x)))))), var_1.b, firstLeadingBit(-2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.x, var_1.a, 164f, -168f))) * var_1.d)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-779f + -1812f))), var_1.a);
    global0 = _wgslsmith_f_op_vec2_f32(var_1.d.wy + var_1.d.xx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(global0.x * 514f)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<Struct_2, 4>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-445f * 259f), _wgslsmith_f_op_f32(-global0.x), true))))), _wgslsmith_f_op_f32(-arg_0.a));
    var var_0 = u_input.c;
    let var_1 = u_input.d.x;
    let var_2 = u_input.a;
    return select(!(!vec4<bool>(true, true, arg_0.b.x, !arg_0.b.x)), select(select(!vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), vec4<bool>(!arg_0.b.x, true, any(vec4<bool>(arg_0.b.x, arg_0.b.x, false, true)), arg_0.b.x && arg_0.b.x), !select(vec4<bool>(false, false, arg_0.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, false))), !vec4<bool>(select(arg_0.b.x, arg_0.b.x, arg_0.b.x), false, false, arg_0.b.x), firstLeadingBit(~0u) != u_input.d.x), !arg_0.b.x || any(select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(false, arg_0.b.x, true, false), select(vec4<bool>(arg_0.b.x, false, false, false), vec4<bool>(true, false, arg_0.b.x, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(func_1(Struct_1(170f, vec2<bool>(true, false), u_input.c, vec4<f32>(global0.x, global0.x, -704f, global0.x))), func_1(Struct_1(1000f, vec2<bool>(false, true), 16901i, vec4<f32>(-677f, global0.x, global0.x, -419f))), any(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(Struct_1(-1620f, vec2<bool>(false, true), 1i, vec4<f32>(global0.x, -393f, -489f, 1116f)))))), true, (u_input.d.x <= _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 42739u)) || (_wgslsmith_sub_u32(~12083u, _wgslsmith_clamp_u32(4294967295u, 19822u, 8331u)) < _wgslsmith_mod_u32(u_input.b.x, 1u)), true);
    var_0 = select(!select(vec4<bool>(select(var_0.x, var_0.x, var_0.x), true, all(var_0.xxx), !var_0.x), func_1(Struct_1(global0.x, var_0.yw, 1i, vec4<f32>(global0.x, global0.x, global0.x, -1364f))), func_1(Struct_1(326f, vec2<bool>(true, var_0.x), 9590i, vec4<f32>(-1338f, global0.x, global0.x, global0.x)))), vec4<bool>(var_0.x | true, (func_1(Struct_1(global0.x, var_0.xz, u_input.c, vec4<f32>(global0.x, 1251f, 281f, global0.x))).x | any(vec3<bool>(var_0.x, var_0.x, var_0.x))) || any(vec2<bool>(var_0.x, var_0.x)), var_0.x, true), select(select(func_1(Struct_1(global0.x, var_0.yw, u_input.a.x, vec4<f32>(-1505f, 204f, -542f, 307f))), vec4<bool>(true, var_0.x, var_0.x, true), all(select(var_0.xw, var_0.yx, var_0.x))), !vec4<bool>(all(var_0.zyw), var_0.x, var_0.x, true), all(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_1 = ~(-_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, u_input.c)), u_input.c));
    let var_2 = ~2147483647i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-732f * global0.x), global0.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(min(-1376f, 1791f)))))), var_0.zx, select(2147483647i, ~(~(-1i)), var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -779f, -593f))) + vec4<f32>(-514f, _wgslsmith_f_op_f32(global0.x * -1000f), global0.x, _wgslsmith_div_f32(global0.x, -351f))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + 739f), _wgslsmith_f_op_f32(sign(global0.x)), u_input.d.x > 25811u)), 443f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * 2454f), _wgslsmith_f_op_f32(-343f * global0.x), var_0.x)), 1033f), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 550f)))), global0.x));
}

