struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(1i, 1i, 0i, 2147483647i), vec4<i32>(1i, 1i, 2147483647i, 0i), vec4<i32>(3078i, 1i, 44564i, -35844i), vec4<i32>(1i, -1i, -27028i, 1i), vec4<i32>(58674i, 0i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -41712i, -1i, -67579i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(max(~vec3<i32>(-1792i, u_input.a.x, u_input.a.x), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -26474i, u_input.a.x), u_input.a.zzw)))), vec3<i32>(_wgslsmith_div_i32(min(firstTrailingBit(u_input.a.x), u_input.a.x), u_input.a.x), ~firstTrailingBit(-26454i | u_input.a.x), u_input.a.x));
    let var_1 = arg_0.a.yx;
    var var_2 = false;
    var var_3 = ~_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(~var_0.x, u_input.a.x), _wgslsmith_add_i32(select(u_input.a.x, 2147483647i, arg_0.a.x), u_input.a.x)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, 2147483647i, ~var_0.x, u_input.a.x | var_0.x)));
    let var_4 = all(arg_0.a.yx);
    return firstTrailingBit(_wgslsmith_sub_u32(~min(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 4294967295u), ~(~15571u) >> (~abs(u_input.c.x) % 32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = any(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-520f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(710f))), true));
    global0 = array<Struct_1, 7>();
    let var_1 = u_input.c;
    return Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~((u_input.d.x >> (u_input.d.x % 32u)) & var_1.x), _wgslsmith_sub_u32(~var_1.x, func_3(Struct_1(vec3<bool>(var_0, true, false)))), _wgslsmith_dot_vec3_u32(u_input.b, select(firstTrailingBit(vec3<u32>(26360u, var_1.x, var_1.x)), ~u_input.b, var_0))), 7u)], false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1522f + 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(871f))))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<Struct_1, 7>();
    let var_0 = select(func_2().a.a, select(vec3<bool>(true, !(arg_2.c >= arg_2.c), false), !arg_2.a.a, true), true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.c - -1558f))) + _wgslsmith_f_op_f32(min(-1807f, -112f)))), 1000f, arg_2.c);
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    return func_2().a.a.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_sub_vec2_i32(select(min(~vec2<i32>(29832i, -23865i), vec2<i32>(2147483647i, u_input.a.x)), firstTrailingBit(vec2<i32>(u_input.a.x, 12798i)), false), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(2147483647i, u_input.a.x) ^ u_input.a.wx), max(-u_input.a.yz, abs(u_input.a.zy)))) >> (~_wgslsmith_sub_vec2_u32(~min(u_input.d, vec2<u32>(28371u, 4294967295u)), u_input.d) % vec2<u32>(32u));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(func_4(arg_2, 0i, Struct_2(Struct_1(arg_0), arg_0.x, arg_1)), arg_0.x | arg_2, true)), any(!vec2<bool>(!arg_2, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(-264f, -1000f)) - -2020f));
    var_1 = func_2();
    var_1 = Struct_2(Struct_1(!vec3<bool>(arg_2, var_1.a.a.x, !var_1.a.a.x)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + 1f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1896f, 1818f, -359f, arg_1), vec4<f32>(-212f, arg_1, arg_1, -1457f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(227f, -875f, 1f, arg_1))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-548f, -1394f, -678f, var_1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-263f, 1000f, -1108f, arg_1), vec4<f32>(arg_1, arg_1, 1193f, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, arg_1, arg_1))), !vec4<bool>(true, true, arg_2, arg_2))), !select(select(vec4<bool>(arg_0.x, arg_2, true, arg_2), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(var_1.a.a.x, arg_2, var_1.a.a.x, false)), !vec4<bool>(arg_0.x, arg_0.x, true, false), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))));
    return (-reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.zzw, u_input.a.yzz)) > ~19769i) & true;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    global0 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_clamp_vec2_i32(arg_3, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(arg_3.x, -21548i) ^ vec2<i32>(19990i, arg_3.x)), ~(-vec2<i32>(arg_3.x, arg_3.x))), arg_3.x), max(arg_3, _wgslsmith_mult_vec2_i32(u_input.a.yw << ((vec2<u32>(u_input.c.x, 4294967295u) ^ vec2<u32>(0u, 37655u)) % vec2<u32>(32u)), u_input.a.yx)));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(1u, 7u)], func_5(vec3<bool>(false, true, any(!vec2<bool>(arg_2, true))), -157f, func_4(arg_2, _wgslsmith_add_i32(~19227i, arg_3.x), func_2()), ~78903u), arg_1);
    var var_2 = 23666u;
    let var_3 = Struct_2(Struct_1(func_2().a.a), true, _wgslsmith_f_op_f32(-1757f * 1750f));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    var var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f))), _wgslsmith_f_op_f32(f32(-1f) * -1222f), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)))), _wgslsmith_div_f32(-1000f, -764f), all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true))), -max(vec2<i32>(15942i, -22784i) & u_input.a.yw, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-41605i, -19519i, -25903i, -11906i), vec4<i32>(-14941i, u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x)));
    global1 = array<vec4<i32>, 6>();
    var_0 = select(vec3<bool>(!(false && all(vec4<bool>(var_0.x, false, var_0.x, true))), true, select(false, all(func_2().a.a), true)), vec3<bool>(func_5(!func_2().a.a, -1086f, true, ~u_input.c.x ^ (u_input.d.x & u_input.b.x)), true, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 75716u, 0u, 2816u), vec4<u32>(u_input.d.x, 16863u, 4294967295u, u_input.b.x)) > u_input.d.x), var_0.x);
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    let var_1 = (_wgslsmith_clamp_vec2_i32(-u_input.a.ww, min(vec2<i32>(36417i, u_input.a.x), u_input.a.yx), -u_input.a.zx) | u_input.a.xz) & min(vec2<i32>(-1i) * -min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x)), u_input.a.xw);
    global1 = array<vec4<i32>, 6>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(max(1115f, _wgslsmith_div_f32(-444f, 1000f)))))), _wgslsmith_f_op_f32(select(-448f, 247f, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-1223f, 1i, var_2, ~select(vec2<u32>(49215u, u_input.c.x) ^ (u_input.d ^ vec2<u32>(1u, u_input.d.x)), ~(~vec2<u32>(u_input.c.x, 54819u)), !all(vec4<bool>(true, false, var_0.x, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-356f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 + 1166f))))));
}

