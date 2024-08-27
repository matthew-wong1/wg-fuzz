struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: vec3<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = !global1.a.zx;
    let var_1 = u_input.b;
    var var_2 = Struct_5(Struct_3(Struct_1(vec4<bool>(all(global1.a), true, true, select(global1.a.x, false, true))), 0u, select(global1.a.zxx, global1.a.zyw, global1.a.zzw), _wgslsmith_add_u32(~global3.x, ~(~47877u))), _wgslsmith_sub_vec3_i32(~(~vec3<i32>(-2147483647i, -2147483647i, 20403i) & max(vec3<i32>(global0.x, 42981i, global0.x), vec3<i32>(global0.x, global0.x, global0.x))), -vec3<i32>(~global0.x, global0.x >> (global3.x % 32u), -global0.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, ~4294967295u), ~(_wgslsmith_mult_u32(var_1, u_input.b) >> (~4294967295u % 32u))));
    return !select(vec4<bool>(all(select(vec2<bool>(false, true), global1.a.zx, true)), any(vec2<bool>(var_2.a.a.a.x, false)), var_0.x, true), vec4<bool>(var_0.x, true, true, select(true, all(vec2<bool>(true, true)), var_0.x)), vec4<bool>(true, global1.a.x, global1.a.x, false));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(-31133i, (25439i | global0.x) ^ 1i), vec2<i32>(4752i, ~_wgslsmith_add_i32(arg_0.b.x, global0.x))) >> ((global3.zz ^ ~max(~vec2<u32>(1u, global3.x), abs(global3.zx))) % vec2<u32>(32u));
    var var_0 = vec4<bool>(!any(select(arg_0.a.a.a, vec4<bool>(true, true, false, true), false)), !(-global0.x >= global0.x), all(!vec3<bool>(any(vec4<bool>(true, global1.a.x, true, arg_0.a.c.x)), arg_1.a.x, !arg_0.a.a.a.x)), true);
    let var_1 = -1000f;
    global3 = vec3<u32>(global3.x, 0u, min(22105u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 31597u, arg_2, 2113u), ~vec4<u32>(24268u, arg_2, 129591u, arg_0.c)), ~1u));
    let var_2 = all(vec4<bool>(firstTrailingBit(global3.x) > (~60402u & ~global3.x), global1.a.x, (-1i == ~arg_0.b.x) == all(func_3().zx), true));
    return ~_wgslsmith_mult_i32(arg_0.b.x, 1i);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = vec2<bool>(arg_1, arg_0.x);
    let var_1 = any(!(!arg_0.xww));
    let var_2 = ~global0.x;
    var var_3 = func_4(Struct_5(Struct_3(Struct_1(func_3()), abs(_wgslsmith_mod_u32(global3.x, global3.x)), func_3().zxw, 0u), reverseBits(firstLeadingBit(vec3<i32>(global0.x, var_2, 2147483647i))), global3.x), Struct_1(!(!func_3())), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1551f)))), arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, arg_2.x, 493f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1364f, 566f)))))));
    global3 = _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 44044u, 25490u), reverseBits(vec3<u32>(1u, global3.x, 15313u) & vec3<u32>(u_input.b, 49692u, 1u))), ~(vec3<u32>(~u_input.a, u_input.b, 15709u) & ~max(vec3<u32>(u_input.b, u_input.b, global3.x), vec3<u32>(0u, u_input.a, 1u))));
    return Struct_2(~(~(~vec3<u32>(u_input.b, u_input.a, 52933u))) | select(vec3<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, u_input.b), ~global3.x), vec3<u32>(4294967295u, max(45046u, global3.x), ~global3.x), !(1993u == global3.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(arg_1);
    let var_1 = func_2(!global1.a, global3.x == ~17881u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1292f)), 1784f)), vec2<f32>(_wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(483f - 1000f)), -770f), !(!(!global1.a.ww)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, 2041f, 408f, 1000f) - vec4<f32>(610f, -1738f, -103f, -494f))) + _wgslsmith_div_vec4_f32(vec4<f32>(279f, 1f, _wgslsmith_div_f32(-1775f, 1055f), _wgslsmith_f_op_f32(max(-641f, -338f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(round(-3173f)), 137f, _wgslsmith_f_op_f32(f32(-1f) * -218f))))));
    global2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.a.x, global3.x), _wgslsmith_add_u32(1u, var_1.a.x), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(6373u, var_1.a.x), var_1.a.xx)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, global3.x, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, 56974u, var_1.a.x, 45382u)), ~countOneBits(vec4<u32>(1u, 0u, 4294967295u, u_input.a)))), firstTrailingBit(~(~abs(vec4<u32>(u_input.a, u_input.b, var_1.a.x, 4294967295u)))));
    global0 = min(vec2<i32>(~(-4917i), arg_0), _wgslsmith_mult_vec2_i32(~vec2<i32>(-7278i, global0.x << (var_1.a.x % 32u)), _wgslsmith_add_vec2_i32((vec2<i32>(global0.x, 64621i) << (var_1.a.zy % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(1i, global0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-1456i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(47497i, global0.x), vec2<i32>(global0.x, arg_0))))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(_wgslsmith_mod_i32(func_1(-15381i, vec4<bool>(true, true, false, global1.a.x)), 0i), global0.x);
    var var_0 = global1.a.x;
    var var_1 = !(!select(global1.a.yxy, select(!vec3<bool>(global1.a.x, global1.a.x, false), global1.a.wwx, global1.a.x), !global1.a.x));
    var var_2 = ~vec3<u32>(u_input.a, global3.x, global3.x);
    global3 = ~vec3<u32>(~var_2.x, ~_wgslsmith_add_u32(global3.x, global3.x), 27303u) & ~((~vec3<u32>(0u, global3.x, u_input.b) | abs(vec3<u32>(6311u, var_2.x, 10041u))) & abs(abs(vec3<u32>(var_2.x, 25090u, 30960u))));
    let var_3 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1273f, -282f, 392f) + vec3<f32>(-1006f, 157f, 149f)), vec3<f32>(_wgslsmith_f_op_f32(round(-1154f)), -115f, _wgslsmith_f_op_f32(-602f * 1864f))))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-1379f, 492f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, -943f, 154f, 727f) + vec4<f32>(-445f, 1263f, -1833f, 443f)), vec4<f32>(-366f, 567f, 467f, -730f), global1.a)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1581f, 1495f, 294f, -102f))), vec4<f32>(229f, 585f, 1660f, 1069f))))), 103887u, -_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.x, global0.x), _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 22167i), vec2<i32>(global0.x, global0.x)) | vec2<i32>(-4234i, global0.x), min(vec2<i32>(-2147483647i, -37761i), ~vec2<i32>(66603i, global0.x))));
}

