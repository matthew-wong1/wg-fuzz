struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<i32, 23>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = ~min(vec4<u32>(~4294967295u, ~select(0u, 4294967295u, false), ~(~7960u), 2175u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(10340u, 18246u, 0u, 46240u), vec4<u32>(71313u, 2202u, 0u, 53763u), vec4<u32>(1u, 0u, 61692u, 0u))));
    var var_1 = select(arg_0.x, arg_0.x, 23215u <= firstTrailingBit(0u)) & true;
    var var_2 = Struct_1(0u, -vec4<i32>(-(~(-1i)), global1[_wgslsmith_index_u32(42885u, 23u)], u_input.a.x & -10944i, 1i >> (var_0.x % 32u)), vec4<bool>(true, false | (arg_0.x | true), arg_0.x != (true || arg_0.x), true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1717f))) - 258f) * -371f) - _wgslsmith_div_f32(-895f, 784f));
    var_0 = ~(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(31967u, var_2.a, 1u, 4294967295u) & vec4<u32>(66732u, var_2.a, var_2.a, 1u), abs(vec4<u32>(var_0.x, 73u, 39576u, 13166u)))));
    return _wgslsmith_mult_vec3_u32(var_0.wxx, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, var_2.a), firstTrailingBit(66301u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.a, var_0.x), var_0.x & 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_0.x, 24284u)), vec2<u32>(62583u, var_2.a))), var_0.zww));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_5(~(~arg_2), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1212f, -591f, -1000f) - vec3<f32>(-265f, 853f, 257f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1120f, -661f, -1706f) * vec3<f32>(-1000f, -2719f, 246f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(138f, -2282f, -218f))))))), Struct_4(_wgslsmith_add_vec3_u32(select(func_3(vec4<bool>(arg_1.x, arg_0, arg_1.x, arg_1.x)), abs(vec3<u32>(arg_2, 36013u, arg_2)), true), firstLeadingBit(abs(vec3<u32>(0u, arg_2, arg_2)))), select(all(vec3<bool>(arg_0, arg_0, arg_0)), true, !arg_1.x), select(select(select(vec4<bool>(arg_1.x, arg_0, true, arg_0), vec4<bool>(true, true, true, arg_0), arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_0), arg_0), !vec4<bool>(true, arg_1.x, arg_0, arg_0)), !(!vec4<bool>(true, arg_0, false, false)), arg_2 > arg_2), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) * 1f), vec4<u32>(reverseBits(arg_2), ~arg_2, _wgslsmith_div_u32(0u, arg_2), ~3537u), ~u_input.a.x, arg_1), global0[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_4(vec3<u32>(arg_2, arg_2, firstTrailingBit(4294967295u) << (~arg_2 % 32u)), arg_0, !(!(!vec4<bool>(false, arg_1.x, true, false))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1475f), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 71815u, arg_2, arg_2), ~vec4<u32>(1u, arg_2, arg_2, arg_2)), u_input.a.x, arg_1), global0[_wgslsmith_index_u32(~31312u, 16u)]), firstTrailingBit(_wgslsmith_sub_u32(max(arg_2, 1u) >> (arg_2 % 32u), arg_2 & arg_2)));
    var var_1 = var_0.d.d;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(129f))), -358f));
    var var_3 = var_0.c.e;
    var var_4 = false;
    return Struct_3(var_0.d.d, ~(~firstTrailingBit(0u)), vec4<f32>(-654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 735f))), 835f, _wgslsmith_f_op_f32(step(var_0.c.d.a, var_1.a))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = func_2(all(vec4<bool>(false, any(vec2<bool>(true, true)), true, true)), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), arg_1.x < u_input.a.x)), ~(~1u));
    var var_1 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(func_2(true, var_0.a.d, ~1u).b, 0u, _wgslsmith_sub_u32(1u, var_0.a.b.x << (var_0.a.b.x % 32u))), var_0.a.b.xzx ^ vec3<u32>(1u, _wgslsmith_mod_u32(var_0.a.b.x, 4712u), ~21758u)), 4294967295u >= ~var_0.b, !select(select(vec4<bool>(var_0.a.d.x, false, true, true), vec4<bool>(false, var_0.a.d.x, var_0.a.d.x, true), vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, false)), !(!vec4<bool>(false, false, var_0.a.d.x, true)), var_0.a.d.x), Struct_2(_wgslsmith_f_op_f32(-822f - var_0.c.x), var_0.a.b, i32(-1i) * -(~0i), vec3<bool>(false, any(var_0.a.d) && var_0.a.d.x, var_0.a.d.x)), global0[_wgslsmith_index_u32(~var_0.a.b.x, 16u)]);
    let var_2 = select(vec2<bool>(var_0.a.d.x, !var_1.e.c.x), vec2<bool>(any(vec2<bool>(var_1.d.a < -776f, false)), all(select(func_2(var_0.a.d.x, vec3<bool>(var_0.a.d.x, var_1.d.d.x, var_0.a.d.x), var_0.a.b.x).a.d.yz, var_1.e.c.zy, true))), true);
    global1 = array<i32, 23>();
    let var_3 = Struct_4((_wgslsmith_sub_vec3_u32(var_1.d.b.xxx, vec3<u32>(var_1.e.a, 4294967295u, var_0.b)) << (~vec3<u32>(var_1.e.a, 1u, var_0.b) % vec3<u32>(32u))) ^ ~func_3(select(var_1.e.c, var_1.e.c, var_1.c)), true, vec4<bool>(!all(vec3<bool>(var_0.a.d.x, var_2.x, var_1.c.x)), true, !all(var_1.c), !(true && all(vec2<bool>(true, true)))), var_0.a, global0[_wgslsmith_index_u32(~1u, 16u)]);
    return ~vec2<u32>(~34249u, countOneBits(~var_1.d.b.x));
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_5(arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1466f, _wgslsmith_f_op_f32(f32(-1f) * -337f), true)), -286f, 1f) - vec3<f32>(func_2(true, vec3<bool>(false, false, true), _wgslsmith_add_u32(17692u, 60741u)).c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1440f)), _wgslsmith_f_op_f32(f32(-1f) * -468f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-650f, 757f, true)), -353f)))), Struct_4(_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.x, 37864u), vec3<u32>(4294967295u, 0u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), func_2(false, vec3<bool>(true, true, false), 56997u).a.d.x), vec3<u32>(4294967295u, 53332u, 25829u)), true, !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), arg_0.x < 54436u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f - -2252f)), select(abs(vec4<u32>(0u, 46436u, arg_0.x, arg_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, 0u, 1u), vec4<u32>(27622u, arg_0.x, 50593u, arg_0.x), vec4<u32>(61219u, 46176u, 1u, arg_0.x)), vec4<bool>(false, true, true, false)), abs(-global1[_wgslsmith_index_u32(arg_0.x, 23u)]), func_2(true, vec3<bool>(true, true, true), 4294967295u).a.d), global0[_wgslsmith_index_u32(arg_0.x, 16u)]), Struct_4(vec3<u32>(~arg_0.x, arg_0.x, ~_wgslsmith_sub_u32(arg_0.x, arg_0.x)), !(!select(false, false, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-616f, 328f))), ~abs(vec4<u32>(24409u, 12918u, arg_0.x, arg_0.x)), i32(-1i) * -u_input.a.x, select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), global0[_wgslsmith_index_u32(~arg_0.x, 16u)]), 5233u);
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    var var_1 = var_0.c.e.b.xz >> (select(var_0.d.d.b.xz, var_0.d.d.b.yz, !func_2(true, vec3<bool>(false, var_0.d.d.d.x, false), 23784u).a.d.zz) % vec2<u32>(32u));
    return var_0.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(~(~func_1(u_input.a, u_input.a.xx, vec4<i32>(40476i, global1[_wgslsmith_index_u32(4294967295u, 23u)], -32812i, u_input.a.x)))), ~func_1(max(~vec3<i32>(-28228i, -1i, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(13501u, 23u)], -1i, u_input.a.x), u_input.a)), vec2<i32>(global1[_wgslsmith_index_u32(~0u, 23u)], reverseBits(2147483647i)), -(~vec4<i32>(10792i, u_input.a.x, u_input.a.x, -67423i))).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, 502f, 1005f, -1584f))))));
    var_0 = Struct_3(func_2(any(select(vec4<bool>(var_0.a.d.x, true, var_0.a.d.x, false), vec4<bool>(true, false, var_0.a.d.x, false), !vec4<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, true))), !(!vec3<bool>(true, true, var_0.a.d.x)), var_0.b).a, min(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a.b, var_0.a.b), vec4<u32>(~0u, var_0.a.b.x, 4294967295u, var_0.b)), min(var_0.a.b.x, ~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_div_vec4_f32(var_0.c, var_0.c))) * func_2(!var_0.a.d.x, func_2(true, vec3<bool>(true, true, true), 22269u).a.d, abs(1u) | (24359u | var_0.b)).c));
    let var_1 = vec2<u32>(~_wgslsmith_add_u32(~var_0.b, var_0.b), _wgslsmith_dot_vec3_u32(func_2(var_0.a.d.x, var_0.a.d, _wgslsmith_add_u32(4294967295u, var_0.b)).a.b.zzy, ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.a.b.x, var_0.b), var_0.a.b.zxw)) & _wgslsmith_div_u32(4294967295u, firstTrailingBit(1644u)));
    global0 = array<Struct_1, 16>();
    var var_2 = var_1.x;
    global1 = array<i32, 23>();
    var_0 = func_2(~firstTrailingBit(_wgslsmith_clamp_u32(var_1.x, var_0.a.b.x, var_1.x)) == 4294967295u, vec3<bool>(firstTrailingBit(24990u) > _wgslsmith_mult_u32(var_1.x, ~var_1.x), func_4(_wgslsmith_mult_vec2_u32(var_0.a.b.yy, vec2<u32>(var_1.x, 47291u))).d.x, false), ~(~16520u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_1.x)));
}

