struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    global2 = array<vec2<i32>, 2>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(224f - 805f));
    var var_1 = Struct_5(global3.x | false, u_input.b, !global3.yz, vec4<i32>(1i, u_input.b.x, -9195i, 0i) | ~vec4<i32>(-u_input.b.x, u_input.b.x, 1i, u_input.b.x));
    var var_2 = ~0u;
    global1 = true;
    return vec4<bool>((45291i | u_input.b.x) < _wgslsmith_div_i32(u_input.b.x | abs(31247i), var_1.d.x), !all(var_1.c), all(vec3<bool>(global3.x, var_1.c.x, !select(false, global3.x, false))), var_1.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global0 = array<vec4<bool>, 31>();
    let var_0 = Struct_5(true, _wgslsmith_add_vec4_i32(select(select(vec4<i32>(-28854i, 0i, -4264i, -58730i), u_input.b, true), ~arg_2, !arg_0.a), u_input.b) | arg_2, !select(!(!arg_0.a.yw), vec2<bool>(true, true), !(!global3.zz)), vec4<i32>(countOneBits(max(u_input.b.x, ~0i)), _wgslsmith_mod_i32(~(-u_input.b.x), u_input.b.x), 1i, abs(arg_2.x)));
    let var_1 = 0i;
    let var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(arg_0.b.yzz + arg_0.b.wzw), arg_0, ~_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 19285u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(99397u, u_input.a, u_input.a ^ u_input.a)));
    global2 = array<vec2<i32>, 2>();
    return var_2.d.x;
}

fn func_2() -> Struct_4 {
    let var_0 = max(54563u ^ func_4(Struct_2(func_3(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1664f, 191f, 766f, 403f))), true, -vec4<i32>(u_input.b.x, -17676i, u_input.b.x, 101489i) >> (~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))), ~0u);
    global3 = select(!select(vec3<bool>(true, true, true), vec3<bool>(global3.x, false, true), true), !vec3<bool>(select(any(vec3<bool>(true, global3.x, global3.x)), true, !global3.x), select(0i, -49713i, true) <= (1i << (u_input.a % 32u)), any(vec2<bool>(false, true))), vec3<bool>(true, false, !global3.x));
    var var_1 = Struct_3(Struct_2(select(!select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), global0[_wgslsmith_index_u32(4294967295u, 31u)]), !(!global0[_wgslsmith_index_u32(var_0, 31u)]), global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1008f), 1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(floor(-1204f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-201f, 167f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), Struct_2(!(!vec4<bool>(global3.x, true, global3.x, false)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1672f), 1f, _wgslsmith_f_op_f32(-720f * -1271f), _wgslsmith_f_op_f32(574f + 778f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(590f, -643f, 702f, 1816f))))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(53621u, u_input.a, var_0), vec3<u32>(var_0, 0u, 62946u)) & reverseBits(vec3<u32>(var_0, 1u, 71264u))) & (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 3073u, 0u), vec3<u32>(u_input.a, var_0, var_0), vec3<u32>(u_input.a, 0u, u_input.a)), ~vec3<u32>(u_input.a, var_0, 12616u)) | ~(~vec3<u32>(4294967295u, 1u, u_input.a))));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(min(u_input.b.xw, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zw, u_input.b.xw, global2[_wgslsmith_index_u32(var_1.d.x, 2u)]), _wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, 8066i)))), countOneBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)))), _wgslsmith_clamp_i32(~_wgslsmith_div_i32(u_input.b.x, 1i), firstTrailingBit(-abs(-2704i)), u_input.b.x & reverseBits(1i)));
    var var_3 = 29776i;
    return Struct_4(true, Struct_3(Struct_2(select(global0[_wgslsmith_index_u32(~1u, 31u)], global0[_wgslsmith_index_u32(~var_1.d.x, 31u)], vec4<bool>(var_1.c.a.x, false, var_1.a.a.x, var_1.c.a.x)), var_1.c.b), var_1.c.b.zyz, Struct_2(vec4<bool>(false, false, var_1.c.a.x, any(vec4<bool>(global3.x, var_1.a.a.x, false, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(763f, -1000f, var_1.a.b.x, var_1.c.b.x) - vec4<f32>(var_1.c.b.x, var_1.a.b.x, var_1.c.b.x, -574f)), _wgslsmith_f_op_vec4_f32(-var_1.c.b), var_1.c.a))), ~var_1.d), firstTrailingBit(-_wgslsmith_sub_vec3_i32(~vec3<i32>(35027i, -19969i, 5686i), max(vec3<i32>(u_input.b.x, -2147483647i, var_2.x), u_input.b.wwz))), _wgslsmith_f_op_f32(909f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -717f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) * -335f)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1517f, _wgslsmith_f_op_f32(1677f - -1556f), _wgslsmith_f_op_f32(abs(var_0.d)))))), func_2().b.b, var_0.b.c.a.yzy));
    var var_2 = Struct_1(min((vec2<u32>(4294967295u, 40705u) ^ var_0.b.d.zx) ^ ~var_0.b.d.xy, var_0.b.d.yx) ^ vec2<u32>(var_0.b.d.x, ~reverseBits(4294967295u)), func_2().b.c.a, !(u_input.a < _wgslsmith_mult_u32(4171u << (u_input.a % 32u), var_0.b.d.x)), ~vec4<i32>(0i >> (1u % 32u), -17568i, var_0.c.x, u_input.b.x));
    global2 = array<vec2<i32>, 2>();
    var var_3 = func_2().b;
    return func_2().b.c;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = vec3<bool>(arg_2.c.a.x, any(!vec4<bool>(false, true == arg_2.c.a.x, all(vec4<bool>(true, global3.x, arg_2.c.a.x, true)), arg_2.c.a.x)), select(false, 19918u < func_4(Struct_2(vec4<bool>(arg_2.c.a.x, false, true, true), vec4<f32>(-1521f, arg_2.a.b.x, 312f, 1048f)), u_input.b.x != u_input.b.x, max(u_input.b, u_input.b)), false));
    global1 = arg_2.c.a.x;
    let var_1 = Struct_1(~arg_2.d.yz, !func_1(_wgslsmith_div_f32(-1147f, 1034f)).a, false, abs(u_input.b));
    var var_2 = Struct_4(var_1.c, Struct_3(func_1(arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(2197f).b.x, _wgslsmith_f_op_f32(abs(193f)), _wgslsmith_f_op_f32(f32(-1f) * -560f))), arg_2.c, ~((arg_2.d >> (arg_2.d % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(arg_2.d, vec3<u32>(arg_2.d.x, 0u, 1u)))), func_2().c, arg_2.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(sign(arg_2.b.x))))));
    let var_3 = var_2.c.x;
    return Struct_5(true, var_1.d, !arg_2.a.a.zx, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    global1 = global3.x;
    global0 = array<vec4<bool>, 31>();
    global3 = vec3<bool>(true, !any(vec2<bool>(true, global3.x)), !any(global3.yy));
    let var_1 = func_5(vec4<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(var_0 - 467f)), var_0), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) * var_0)), -(~(-58512i)), Struct_3(func_1(-694f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 302f, 1339f), vec3<f32>(1434f, -305f, var_0)))), func_1(_wgslsmith_f_op_f32(select(-132f, 1472f, !global3.x))), vec3<u32>(1u, 48242u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.a), u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -1252f, var_0)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1166f, -1000f, _wgslsmith_f_op_f32(min(var_0, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, 819f, 632f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), u_input.b.x, _wgslsmith_add_u32(0u, select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(60306u, u_input.a, 0u, 0u)), _wgslsmith_mult_u32(2887u, 58305u)), 0u, var_1.a)));
}

