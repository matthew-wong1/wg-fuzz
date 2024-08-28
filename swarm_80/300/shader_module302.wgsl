struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<i32>(1i, -1i, -1i, 1i), Struct_1(vec2<i32>(-37560i, 9186i), vec3<u32>(1703u, 0u, 79188u)), 43516u, -1048f), Struct_2(vec4<i32>(1i, -1i, 4243i, -9686i), Struct_1(vec2<i32>(-1i, 1i), vec3<u32>(1u, 1u, 4294967295u)), 29325u, 898f));

var<private> global1: array<Struct_4, 24>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.c.x >> (select(1u, 4357u, false) % 32u);
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.e, u_input.d), u_input.c.x), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, u_input.a.x, u_input.b.x), ~vec3<u32>(7253u, 1u, 1u), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), max(u_input.a, vec3<u32>(526u, 1u, u_input.a.x) >> (u_input.a % vec3<u32>(32u)))));
    let var_2 = 1000f;
    let var_3 = vec4<bool>(!(_wgslsmith_div_i32(select(0i, var_1.a.x, true), 15589i << (var_1.b.x % 32u)) >= 1i), true, true & any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !select(true, u_input.b.x > 4294967295u, true) && !(0u < abs(var_1.b.x)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -179f) - vec3<f32>(-1713f, var_2, -144f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, -239f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, var_2, 1261f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) - vec3<f32>(var_2, var_2, 235f)))))));
    return var_3;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_3 {
    global1 = array<Struct_4, 24>();
    var var_0 = global0[_wgslsmith_index_u32(122530u, 2u)];
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(u_input.b, firstTrailingBit(~u_input.b), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x), !vec4<bool>(arg_0.x, true, true, true), all(vec2<bool>(arg_0.x, arg_0.x)))), _wgslsmith_mod_vec4_u32(u_input.b, reverseBits(vec4<u32>(58630u, var_0.b.b.x, u_input.b.x, 55062u)))) & ~u_input.b.x, 2u)];
    global1 = array<Struct_4, 24>();
    var var_1 = func_3();
    return Struct_3(firstTrailingBit(u_input.a), var_0.b, vec3<bool>(false, !select(false, var_1.x, func_3().x), ~1u <= (4294967295u << (select(118755u, 1u, var_1.x) % 32u))), global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.d)), var_0.d, _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1473f, var_0.d, 666f) - vec3<f32>(-175f, -1907f, 676f)) + vec3<f32>(586f, var_0.d, -1257f)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_3 {
    global0 = array<Struct_2, 2>();
    var var_0 = !any(vec3<bool>(arg_0.a, select(arg_0.c.x == u_input.b.x, true, !arg_0.a), false));
    var var_1 = func_2(vec2<bool>(arg_0.a, 2145u >= _wgslsmith_sub_u32(max(u_input.a.x, arg_0.c.x), ~arg_0.d.b.x)), ~reverseBits(-firstLeadingBit(vec2<i32>(arg_0.e.a.x, -2147483647i))), ~(-(~(~arg_0.e.a.zwz))));
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(abs(firstLeadingBit(arg_0.e.c)), ~4294967295u >> (~var_1.a.x % 32u)), arg_0.d.b.x, ~(u_input.a.x ^ abs(var_1.a.x))), arg_0.d, arg_1, Struct_2(vec4<i32>(-25351i, arg_0.d.a.x, _wgslsmith_clamp_i32(arg_0.d.a.x, var_1.d.a.x, arg_0.d.a.x) | func_2(vec2<bool>(arg_0.a, false), vec2<i32>(var_1.b.a.x, var_1.b.a.x), u_input.c).b.a.x, _wgslsmith_dot_vec4_i32(countOneBits(var_1.d.a), firstTrailingBit(vec4<i32>(-68425i, u_input.e, -2147483647i, var_1.b.a.x)))), arg_0.e.b, ~u_input.b.x, -1798f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - arg_0.b.x)), 405f, _wgslsmith_f_op_f32(var_1.d.d - _wgslsmith_f_op_f32(var_1.e.x * -495f))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = func_1(Struct_4(firstTrailingBit(1u) < _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(61452u, 32093u)), vec2<u32>(u_input.a.x, 74788u)), arg_0.e, abs(max(max(vec3<u32>(u_input.b.x, 0u, arg_0.b.b.x), arg_0.a), _wgslsmith_sub_vec3_u32(arg_0.a, u_input.a))), arg_0.b, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~u_input.a.x, 26885u)), 2u)]), func_1(Struct_4(arg_0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.e))), max(select(u_input.a, vec3<u32>(0u, arg_0.b.b.x, u_input.a.x), arg_0.c), arg_0.b.b), Struct_1(select(vec2<i32>(-14990i, u_input.d), vec2<i32>(u_input.d, 2147483647i), arg_0.c.zy), arg_0.d.b.b), func_2(func_3().zx, ~arg_0.d.a.ww, vec3<i32>(arg_0.d.a.x, arg_0.d.b.a.x, 817i)).d), vec3<bool>(false, !(u_input.a.x >= 10130u), arg_0.d.a.x >= -1i)).c);
    let var_1 = _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), ~(-(vec2<i32>(u_input.c.x, 45396i) | vec2<i32>(2147483647i, 0i))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c << (var_0.b.b % vec3<u32>(32u)), u_input.c), func_1(Struct_4(false, arg_0.e, arg_0.d.b.b, arg_0.d.b, Struct_2(arg_0.d.a, Struct_1(vec2<i32>(arg_0.d.a.x, var_0.d.b.a.x), u_input.a), 0u, -492f)), vec3<bool>(arg_1, true, true)).d.a.xxz)).d.d * _wgslsmith_div_f32(arg_0.d.d, _wgslsmith_f_op_f32(trunc(var_0.e.x))));
    let var_2 = arg_0.d;
    let var_3 = ~(~u_input.c.xx);
    var_0 = arg_0;
    return arg_0.c.x;
}

fn func_5(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = vec3<bool>(true, select(!(any(arg_0) & true), func_3().x, !arg_0.x && ((u_input.e > u_input.e) & arg_0.x)), true);
    global0 = array<Struct_2, 2>();
    var var_1 = Struct_1(abs(-u_input.c.zy), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 37378u) << ((u_input.b.yzz & u_input.a) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x))), ~(u_input.b.ywy | u_input.b.yyy)) << (vec3<u32>(0u, u_input.b.x, ~(0u >> (u_input.b.x % 32u))) % vec3<u32>(32u)));
    global1 = array<Struct_4, 24>();
    global1 = array<Struct_4, 24>();
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(max(u_input.e, -u_input.e ^ 41322i), u_input.d);
    var var_1 = func_5(vec3<bool>(true, func_4(func_1(Struct_4(false, vec3<f32>(-1000f, -293f, -710f), vec3<u32>(4294967295u, 44437u, 4294967295u), Struct_1(vec2<i32>(u_input.d, u_input.c.x), vec3<u32>(1u, u_input.a.x, 1u)), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), true), false));
    var_0 = min(_wgslsmith_clamp_i32(u_input.c.x, ~select(u_input.c.x, 1i & u_input.e, false), 1i), u_input.e);
    var var_2 = false;
    let var_3 = func_2(!func_1(global1[_wgslsmith_index_u32(~(~1u), 24u)], vec3<bool>(all(vec3<bool>(false, false, false)), true, true)).c.zz, _wgslsmith_div_vec2_i32(max(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -28778i, u_input.e), u_input.c)), ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(u_input.d, u_input.d))), vec2<i32>(u_input.e, u_input.e)), _wgslsmith_add_vec3_i32(u_input.c, min(u_input.c, u_input.c) & -vec3<i32>(u_input.e, 2147483647i, u_input.d)) << (vec3<u32>(func_2(vec2<bool>(true, true), select(u_input.c.zy, vec2<i32>(u_input.e, 2147483647i), false), select(vec3<i32>(u_input.d, u_input.e, 34182i), vec3<i32>(0i, -53683i, 0i), true)).d.b.b.x, ~_wgslsmith_mult_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, var_1.x) << (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 54565u, 9856u)) % 32u)) % vec3<u32>(32u))).b.a;
    let var_4 = Struct_3(vec3<u32>(countOneBits(0u), abs(_wgslsmith_mod_u32(~u_input.b.x, var_1.x & var_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 24814u, var_1.x), u_input.b.wxy)), func_1(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec3<bool>(true, u_input.b.x == _wgslsmith_clamp_u32(var_1.x, u_input.a.x, 28755u), true & all(vec4<bool>(false, false, false, true)))).d.b, select(!func_2(vec2<bool>(true, false), func_1(global1[_wgslsmith_index_u32(52454u, 24u)], vec3<bool>(false, true, true)).b.a, vec3<i32>(var_3.x, -27352i, 6094i) | u_input.c).c, !vec3<bool>(true, any(vec3<bool>(false, true, false)), select(true, false, true)), true), Struct_2(select(vec4<i32>(-9356i, -1i, var_3.x, 0i) | _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 54537i, -23343i, u_input.e), vec4<i32>(u_input.e, -1i, 8993i, 17337i)), ~(~vec4<i32>(28891i, var_3.x, 15148i, -2147483647i)), false), Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), -vec2<i32>(u_input.e, var_3.x)), u_input.a), ~(~1u), _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_5 = _wgslsmith_clamp_u32(1u, ~1u, ~var_4.d.b.b.x);
    let var_6 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e, reverseBits(var_4.a), min(vec3<i32>((1i | var_6.a.x) & -var_4.b.a.x, u_input.e, -(i32(-1i) * -1i)), func_1(global1[_wgslsmith_index_u32(func_2(vec2<bool>(true, true), _wgslsmith_sub_vec2_i32(var_3, vec2<i32>(var_4.d.a.x, var_4.b.a.x)), _wgslsmith_mod_vec3_i32(var_6.a.zzw, vec3<i32>(-1i, u_input.d, u_input.d))).d.b.b.x, 24u)], var_4.c).d.a.zyw), u_input.d);
}

