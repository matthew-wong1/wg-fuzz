struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global2: f32;

var<private> global3: array<i32, 32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> f32 {
    global1 = array<vec4<bool>, 29>();
    let var_0 = select(!select(vec3<bool>(!arg_1.b.x, arg_1.b.x && true, select(false, arg_1.b.x, true)), !(!vec3<bool>(false, arg_1.b.x, false)), !select(vec3<bool>(arg_1.b.x, arg_1.b.x, true), vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(true, true, arg_1.b.x))), vec3<bool>(any(!(!global1[_wgslsmith_index_u32(u_input.d, 29u)])), arg_1.b.x, false), vec3<bool>(all(select(!vec4<bool>(arg_1.b.x, false, true, true), !vec4<bool>(true, true, arg_1.b.x, arg_1.b.x), any(vec3<bool>(arg_1.b.x, arg_1.b.x, false)))), true, _wgslsmith_f_op_f32(423f - -1579f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-arg_1.a.c.x)))));
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(47874u, arg_1.c.c.x, var_1, 1u) ^ abs(vec4<u32>(17406u, 62336u, var_1, u_input.d)), abs(vec4<u32>(30121u, u_input.b, u_input.d, 5315u))), abs(countOneBits(vec4<u32>(arg_1.c.c.x, u_input.d, var_1, 4294967295u)))), reverseBits(min(vec4<u32>(1u, min(var_1, 1u), max(31840u, 0u), arg_1.c.c.x), ~(~vec4<u32>(0u, u_input.b, var_1, var_1)))), ~vec4<u32>(~1u, ~(u_input.a.x & 9053u), 25658u, _wgslsmith_add_u32(arg_1.c.c.x, var_1 << (u_input.b % 32u))));
    var var_3 = var_2;
    return arg_1.c.a.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_5(Struct_3(abs(~abs(vec4<i32>(u_input.c.x, global3[_wgslsmith_index_u32(0u, 32u)], -1i, global3[_wgslsmith_index_u32(u_input.d, 32u)]))), ~u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1764f, -795f) * vec2<f32>(2093f, -150f))))), select(vec2<bool>(true, !any(vec3<bool>(true, false, true))), vec2<bool>(true, true), false), Struct_2(vec3<f32>(-1295f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(-54448i, global3[_wgslsmith_index_u32(57926u, 32u)]), Struct_5(Struct_3(vec4<i32>(global3[_wgslsmith_index_u32(1u, 32u)], u_input.c.x, global3[_wgslsmith_index_u32(u_input.d, 32u)], 46925i), -7058i, vec2<f32>(1808f, 944f)), vec2<bool>(false, false), Struct_2(vec3<f32>(-2123f, -1062f, 106f), global3[_wgslsmith_index_u32(1u, 32u)], vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), -479f, -555f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1033f, -1588f), _wgslsmith_f_op_f32(ceil(-973f))))), global3[_wgslsmith_index_u32(countOneBits(u_input.d << (select(u_input.d, 15705u, false) % 32u)), 32u)], vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.a.x), ~u_input.b, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f * -1680f) * _wgslsmith_f_op_f32(select(572f, 281f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(905f + 1298f))) - _wgslsmith_f_op_f32(-533f - _wgslsmith_f_op_f32(f32(-1f) * -1312f))));
    global1 = array<vec4<bool>, 29>();
    var var_1 = u_input.c.x;
    var var_2 = !select(!(!(!vec3<bool>(var_0.b.x, var_0.b.x, false))), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), select(!select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false)), select(vec3<bool>(var_0.b.x, var_0.b.x, false), select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(true, var_0.b.x, true)), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), !select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.b.x)));
    let var_3 = u_input.c.x | (1i << (_wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(u_input.d, var_0.c.c.x)), var_0.c.c.x) % 32u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-159f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)), _wgslsmith_f_op_f32(select(-478f, 613f, var_0.c.c.x > var_0.c.c.x))))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1190f, -994f, -1855f), vec3<f32>(1000f, 652f, 2533f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1185f)), _wgslsmith_f_op_f32(f32(-1f) * -341f), -364f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1871f, -976f, 1004f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(505f, 887f, -193f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2019f - -978f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -549f), -1504f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1202f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(117f, 586f)), _wgslsmith_f_op_f32(func_2())))));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))));
    var var_1 = ~abs(~(~arg_0.x));
    let var_2 = Struct_4(Struct_1(vec2<f32>(1237f, _wgslsmith_f_op_f32(f32(-1f) * -1115f)), -(firstTrailingBit(2147483647i) ^ arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1204f, -380f, _wgslsmith_f_op_f32(-var_0.x), var_0.x) + vec4<f32>(-554f, -1000f, _wgslsmith_f_op_f32(step(-1000f, var_0.x)), _wgslsmith_f_op_f32(-419f + var_0.x))), max(vec3<u32>(1u, 26372u, u_input.a.x) << (~arg_0.zzz % vec3<u32>(32u)), vec3<u32>(max(4294967295u, 61709u), arg_0.x, 1u << (1u % 32u))), var_0.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), ~(~firstTrailingBit(u_input.c.x)), arg_0.wzw), _wgslsmith_add_u32(1u, ~(~_wgslsmith_sub_u32(32567u, 0u))), 1u, 0u);
    global0 = array<vec4<i32>, 29>();
    return var_2.b;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: i32) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2093f)));
    global0 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + 576f) * -1688f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.a.x, arg_1.c.x)))))));
    global2 = -1938f;
    global0 = array<vec4<i32>, 29>();
    return (countOneBits(arg_0.c.b) ^ ~12173i) & -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 29>();
    global1 = array<vec4<bool>, 29>();
    global1 = array<vec4<bool>, 29>();
    let var_0 = Struct_3(vec4<i32>(func_4(Struct_5(Struct_3(vec4<i32>(u_input.c.x, u_input.c.x, -4945i, u_input.c.x), global3[_wgslsmith_index_u32(4294967295u, 32u)], vec2<f32>(-305f, -181f)), vec2<bool>(true, false), func_1(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.a.x), u_input.b, vec4<bool>(true, false, false, true), u_input.c.x), _wgslsmith_f_op_f32(908f * 1000f), _wgslsmith_f_op_f32(func_3(u_input.c.x, Struct_5(Struct_3(global0[_wgslsmith_index_u32(u_input.d, 29u)], 2147483647i, vec2<f32>(810f, 205f)), vec2<bool>(false, false), Struct_2(vec3<f32>(912f, -602f, 1099f), 2147483647i, vec3<u32>(4294967295u, 69617u, 4294967295u)), 201f, -276f)))), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.d, 32u)], -2147483647i, global3[_wgslsmith_index_u32(0u, 32u)]), u_input.c), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1240f, -909f)))), u_input.c.x), u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_1 = 1i;
    let var_2 = _wgslsmith_add_i32(reverseBits(global3[_wgslsmith_index_u32(u_input.d, 32u)]), i32(-1i) * -84975i);
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(67801u, ~4294967295u), reverseBits(~u_input.a)));
}

