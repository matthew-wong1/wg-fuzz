struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-475f, -731f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-450f, 1480f)));
    var var_0 = abs(1i);
    var var_1 = countOneBits(_wgslsmith_clamp_vec4_u32(firstTrailingBit(firstLeadingBit(~vec4<u32>(arg_1.x, 9043u, u_input.b.x, 4294967295u))), select(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.a.wyz, vec3<u32>(u_input.d, 1u, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, u_input.d, 35512u), _wgslsmith_dot_vec3_u32(arg_1, u_input.a.wyx)), ~(~vec4<u32>(1u, arg_1.x, 19681u, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), any(vec4<bool>(true, true, false, true)))), u_input.a));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f))), global0.x) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-470f)), _wgslsmith_div_f32(global0.x, global0.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -453f)), vec2<f32>(654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_2 = reverseBits(select(vec3<u32>(arg_1.x, ~u_input.d, u_input.b.x), ~arg_1, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, u_input.d), arg_1, var_1.yyx) % vec3<u32>(32u));
    return select(select(vec4<bool>(true, all(vec2<bool>(false, false)) & (var_2.x < 45868u), true, false), vec4<bool>(true, true, true, -1i >= arg_3.a), vec4<bool>(true, true, true, true)), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, !(1i > -arg_3.a), true));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.d * -599f), 1f, _wgslsmith_f_op_f32(-arg_1.d))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -178f, global0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.d, global0.x, -900f), vec3<f32>(-1083f, arg_1.d, arg_3.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1543f, arg_1.d, arg_1.d)))))));
    var var_1 = Struct_3(arg_3, -firstLeadingBit(max(vec3<i32>(-2147483647i, 0i, 1i) & vec3<i32>(-2147483647i, arg_3.c.a, arg_1.c.a), ~vec3<i32>(20257i, arg_1.b.a, -1i))), Struct_1(countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-29359i, arg_3.c.a, arg_1.c.a, arg_1.b.a), vec4<i32>(6760i, u_input.c, arg_0, 1i)))), _wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2156f, global0.x, global0.x, 801f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(926f, var_0.x, -1342f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, -1733f, 991f, arg_1.d)), !vec4<bool>(false, arg_1.a.x, false, true)))), vec4<f32>(arg_3.d, arg_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.d, arg_3.d, arg_3.a.x)))), _wgslsmith_f_op_f32(var_0.x - 1000f)))));
    var var_2 = Struct_3(arg_3, var_1.b, arg_3.c, abs(i32(-1i) * -min(var_1.a.c.a, 0i)), vec4<f32>(_wgslsmith_f_op_f32(1422f + var_0.x), _wgslsmith_f_op_f32(var_0.x - -335f), -846f, _wgslsmith_f_op_f32(-1248f * var_0.x)));
    var_2 = Struct_3(arg_3, vec3<i32>(var_1.b.x, var_2.b.x, arg_1.b.a), var_1.a.b, arg_3.b.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, 255f, global0.x, -1079f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.e))));
    var var_3 = Struct_2(var_2.a.a, Struct_1(var_2.b.x), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, var_2.c.a, arg_1.b.a, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1.d, 1i, var_2.a.b.a), vec4<i32>(-2147483647i, arg_1.c.a, arg_3.c.a, -1i)), ~vec4<i32>(arg_0, var_1.d, -25353i, 12084i)), abs(max(vec4<i32>(var_1.d, var_2.a.b.a, var_2.b.x, -30145i), vec4<i32>(-1i, arg_2.x, var_1.a.b.a, var_2.a.c.a))))), _wgslsmith_f_op_f32(min(-573f, global0.x)));
    return select(!vec4<bool>(all(select(arg_1.a.xz, vec2<bool>(var_2.a.a.x, false), vec2<bool>(var_3.a.x, arg_1.a.x))), var_1.a.a.x, select(any(vec3<bool>(true, false, false)), !var_3.a.x, true), var_3.a.x), var_2.a.a, !var_1.a.a);
}

fn func_2() -> vec4<f32> {
    let var_0 = global0.x;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -530f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -459f))))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(485f * -1673f))), var_2.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, global0.x) + _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-124f - 1303f)), vec2<f32>(1616f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_4 = func_4(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(u_input.c, 18288i, -10999i, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~22111i, ~u_input.c, -u_input.c), -select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(68779i, -28898i, u_input.c, 18273i), vec4<bool>(true, false, false, true)))), Struct_2(func_3(-1i, min(u_input.a.wyx, select(vec3<u32>(32653u, 4294967295u, 26447u), u_input.a.xyw, vec3<bool>(true, false, false))), Struct_1(i32(-1i) * -27762i), Struct_1(-1i)), Struct_1(2147483647i), Struct_1(-u_input.c & 2147483647i), 236f), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, -74293i)) >> (var_1 % vec2<u32>(32u))), Struct_2(vec4<bool>(!any(vec4<bool>(true, false, false, false)), !all(vec4<bool>(false, false, false, true)), any(func_3(-3942i, u_input.a.ywy, Struct_1(u_input.c), Struct_1(u_input.c)).zz), any(vec4<bool>(true, true, true, true))), Struct_1(4952i), Struct_1(2147483647i), -172f));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x + 1969f))), _wgslsmith_f_op_f32(956f - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(max(-1283f, var_3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1874f, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -1663f)))));
    var var_0 = all(!vec2<bool>(true, true & all(vec3<bool>(false, true, true))));
    var_0 = !(!(arg_1.x > 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * arg_2) * _wgslsmith_f_op_f32(f32(-1f) * -1317f));
    var_0 = all(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1665f, -759f), _wgslsmith_div_f32(663f, 1140f), -920f, -736f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, global0.x, 242f, -842f)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-444f)), -913f));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(~u_input.a.xy, _wgslsmith_mod_vec3_i32(vec3<i32>(~1i, u_input.c, -17703i), min(vec3<i32>(-36947i, 15589i, ~u_input.c), firstLeadingBit(~vec3<i32>(u_input.c, -1i, u_input.c)))), global0.x));
    var var_1 = false;
    var var_2 = all(!func_3(93613i, u_input.a.yxw, Struct_1(_wgslsmith_div_i32(u_input.c, u_input.c)), Struct_1(~u_input.c)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 407f, global0.x) + var_0.wzz) * _wgslsmith_f_op_vec3_f32(select(var_0.xwz, vec3<f32>(global0.x, -154f, var_0.x), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.zyz)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, u_input.d, 4294967295u), u_input.c, vec4<i32>(firstTrailingBit(-24997i), u_input.c, u_input.c, 0i));
}

