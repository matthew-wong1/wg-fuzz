struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool;

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<f32>, 9>;

var<private> global4: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1000f, -571f, -1953f), vec3<f32>(493f, 1000f, -781f), vec3<f32>(550f, 959f, -1281f), vec3<f32>(-1152f, 474f, 178f), vec3<f32>(850f, -270f, 2203f), vec3<f32>(-186f, 162f, 2802f), vec3<f32>(661f, -363f, 1916f), vec3<f32>(460f, -783f, -903f), vec3<f32>(-898f, -922f, 1907f), vec3<f32>(108f, 599f, 1000f), vec3<f32>(535f, -1061f, 1257f), vec3<f32>(268f, -1000f, 1581f), vec3<f32>(1015f, 1675f, -745f), vec3<f32>(845f, 247f, -322f), vec3<f32>(-363f, -877f, 486f), vec3<f32>(873f, 1000f, 225f), vec3<f32>(-1000f, 1000f, 208f), vec3<f32>(1119f, 2700f, -798f), vec3<f32>(1949f, -435f, 1000f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> f32 {
    let var_0 = any(vec4<bool>(true, u_input.c >= firstTrailingBit(74929u), true & (u_input.d <= ~u_input.c), !(!all(arg_0.zz))));
    let var_1 = _wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(1u, u_input.d))))), vec2<u32>(12507u, 4294967295u) & select(select(~vec2<u32>(77224u, 1u), select(vec2<u32>(76114u, u_input.d), vec2<u32>(1u, 4294967295u), true), arg_1.x & arg_0.x), firstTrailingBit(reverseBits(vec2<u32>(0u, 12282u))), vec2<bool>(!var_0, var_0 && true)), max(countOneBits(vec2<u32>(8965u, _wgslsmith_div_u32(u_input.c, u_input.c))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.d, 112859u)) & (vec2<u32>(4294967295u, u_input.d) >> (vec2<u32>(31006u, u_input.d) % vec2<u32>(32u))))));
    global3 = array<vec4<f32>, 9>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 794f, 2753f)) + _wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(55265u, 57950u), 19u)], vec3<f32>(-274f, 1000f, -374f))) - _wgslsmith_f_op_vec3_f32(min(global4[_wgslsmith_index_u32(var_1.x << (u_input.d % 32u), 19u)], _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1748f, -1000f), vec3<f32>(793f, 1573f, -2130f))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.x)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.x))))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) - -453f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(-var_2.x))));
}

fn func_2() -> Struct_2 {
    global1 = global0.x;
    let var_0 = 10699i;
    var var_1 = global0.x;
    let var_2 = ~(~(~reverseBits(-vec4<i32>(var_0, 1i, 1i, 0i))));
    global1 = any(select(select(!global2.wzw, global2.wxy, !(!vec3<bool>(global0.x, false, global0.x))), select(!select(vec3<bool>(false, global2.x, global0.x), vec3<bool>(false, false, false), global2.yyy), vec3<bool>(global2.x, true, false), global0.x), all(!select(vec4<bool>(global0.x, true, global0.x, global2.x), vec4<bool>(false, true, global0.x, false), false))));
    return Struct_2(Struct_1(false, _wgslsmith_f_op_f32(func_3(global2.zzw, vec3<bool>(global0.x, any(vec2<bool>(false, true)), 1i > var_0))), !select(global2.zx, global0.zy, !global0.yx)), Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>((false == global2.x) && false, any(select(vec2<bool>(global2.x, false), global0.yy, vec2<bool>(true, true))))), Struct_1(!any(global2.xx), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -389f))), vec2<bool>(all(select(global0.xy, vec2<bool>(false, true), true)), u_input.a < u_input.a)), Struct_1(true, 1000f, vec2<bool>(global0.x, true && (global2.x && global2.x))), ~vec2<u32>(u_input.c, min(14339u, u_input.c)) | vec2<u32>(171u, u_input.c));
}

fn func_1() -> bool {
    global4 = array<vec3<f32>, 19>();
    global0 = select(global2.xxw, !select(vec3<bool>(all(vec4<bool>(global2.x, global2.x, global2.x, false)), global0.x, true), vec3<bool>(false, global0.x, true), true), true);
    var var_0 = func_2();
    global2 = vec4<bool>(any(vec4<bool>(any(vec3<bool>(true, true, global2.x)), !any(vec2<bool>(false, global0.x)), !all(vec2<bool>(false, global2.x)), all(select(vec2<bool>(global2.x, global0.x), vec2<bool>(var_0.a.a, var_0.a.a), var_0.b.c)))), true, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.e.x, 1u, var_0.e.x), ~select(vec3<u32>(1u, var_0.e.x, u_input.d), vec3<u32>(144091u, 30687u, 13681u), false)) > ~abs(u_input.c), !(!(~27319i <= _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.b * 1015f)));
    return global0.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    return !select(vec4<bool>(false & (global2.x & arg_1.c.x), _wgslsmith_f_op_f32(min(arg_2, -1192f)) < _wgslsmith_f_op_f32(589f - arg_1.b), arg_0.x != arg_0.x, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) <= -u_input.b.x), !select(!vec4<bool>(arg_1.a, arg_1.a, true, true), !vec4<bool>(false, global0.x, global0.x, false), any(vec4<bool>(false, arg_1.c.x, global0.x, global0.x))), select(!(!global0.x), all(!vec3<bool>(false, global0.x, global0.x)), all(vec4<bool>(false, false, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(~max(vec4<u32>(4294967295u, u_input.c, 4294967295u | u_input.d, u_input.d | u_input.d), select(vec4<u32>(u_input.d, 366u, 0u, u_input.c), vec4<u32>(45334u, 68627u, u_input.d, u_input.c) ^ vec4<u32>(1u, u_input.c, u_input.d, u_input.d), global0.x)), Struct_1(func_1(), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1295f * 224f), _wgslsmith_f_op_f32(trunc(1000f))))), !global2.yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-386f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = func_4(select(~firstTrailingBit(reverseBits(vec4<u32>(u_input.d, 69802u, u_input.d, u_input.d))), min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 57631u, u_input.d), vec4<u32>(1u, u_input.c, 20666u, u_input.d)), vec4<u32>(24218u, u_input.c, 0u, 1u) & vec4<u32>(u_input.d, u_input.c, 4294967295u, 1u)) >> (~(~vec4<u32>(u_input.d, u_input.d, 1u, 11773u)) % vec4<u32>(32u)), any(!vec3<bool>(true, global0.x, global0.x))), Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1228f, _wgslsmith_f_op_f32(f32(-1f) * -301f))), !(!(!vec2<bool>(true, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(334f)), 748f))) + _wgslsmith_f_op_f32(ceil(316f)))).x;
    let var_0 = func_2().b.c;
    let var_1 = _wgslsmith_mod_i32(2147483647i, 1i);
    global2 = !func_4(~vec4<u32>(u_input.d >> (u_input.c % 32u), u_input.d, u_input.d, _wgslsmith_sub_u32(838u, u_input.c)), Struct_1(any(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.x, global0.x, global2.x, false), vec4<bool>(false, global0.x, true, true))), 109f, vec2<bool>(true | var_0.x, global0.x)), _wgslsmith_f_op_f32(1039f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1507f)))));
    global3 = array<vec4<f32>, 9>();
    let var_2 = ~firstLeadingBit(select(abs(vec3<u32>(u_input.c, 9170u, u_input.c)), reverseBits(~vec3<u32>(u_input.d, u_input.c, 32150u)), vec3<bool>(global0.x || global0.x, false, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2315f), _wgslsmith_f_op_f32(f32(-1f) * -2279f))))));
}

