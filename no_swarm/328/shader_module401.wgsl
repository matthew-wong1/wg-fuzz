struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = select(~((_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(11295u, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 47267u, u_input.a.x, 51906u))) << (vec4<u32>(0u ^ u_input.b.x, u_input.a.x, ~u_input.b.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~0u, u_input.a.x, 0u, 1u), max(_wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(0u, u_input.b.x, 5333u, 4294967295u))), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a, all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x)))), u_input.a ^ vec4<u32>(_wgslsmith_mod_u32(52926u, u_input.b.x), 62900u, 1u, ~u_input.a.x)), any(select(select(arg_0.a, arg_0.a, select(vec3<bool>(true, arg_0.a.x, true), arg_0.a, arg_0.a.x)), select(!arg_0.a, !vec3<bool>(false, arg_0.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, true)), arg_0.a)));
    var var_1 = firstTrailingBit(abs(vec3<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), u_input.a.yw), var_0.x) | vec3<u32>(countOneBits(0u), 0u, var_0.x)));
    let var_2 = arg_0.a.x;
    var_1 = abs(vec3<u32>(reverseBits(u_input.a.x), var_0.x, firstTrailingBit(~(~2384u))));
    let var_3 = vec4<u32>(~(~(~u_input.a.x)) ^ u_input.b.x, var_0.x, ~15692u, u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-901f)) - 1f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-855f)), _wgslsmith_f_op_f32(ceil(752f)), any(!vec2<bool>(var_2, false))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = ((-abs(71184i) >> (select(firstTrailingBit(u_input.b.x), ~0u, arg_1.x | false) % 32u)) | _wgslsmith_mod_i32(firstLeadingBit(1i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 1i), vec3<i32>(13323i, 0i, 2147483647i))))) & -2863i;
    let var_1 = min(-firstTrailingBit(max(2147483647i, -76643i)), -(i32(-1i) * -15405i));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(727f, -1050f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(754f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))));
    global0 = _wgslsmith_f_op_f32(1366f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1424f)));
    var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(var_2.a)), select(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2164f - var_2.a))) <= -296f, select(all(vec4<bool>(true, false, false, arg_1.x)), arg_1.x, true)));
    return arg_1;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, false))))), -1809f), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), false), any(vec3<bool>(true, false, false)) || true)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) + _wgslsmith_f_op_f32(857f + 1000f)), -673f)), -482f)));
    let var_1 = !any(var_0.a);
    let var_2 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, ~u_input.b.x, u_input.b.x), u_input.a));
    global0 = 130f;
    return 729f;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-173f + -2661f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, true)))))) + vec3<f32>(608f, -404f, -2556f));
    var var_1 = vec2<f32>(747f, -1214f);
    let var_2 = false;
    return Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(!var_2, var_2, !var_2), all(vec2<bool>(!var_2, select(true, var_2, var_2)))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = arg_3.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x))))) - _wgslsmith_f_op_f32(-arg_3.x));
    return arg_2.c;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_i32(reverseBits(~(-vec3<i32>(6878i, arg_2.x, arg_2.x))), (~vec3<i32>(arg_2.x, arg_2.x, 34321i) ^ ~vec3<i32>(2147483647i, arg_2.x, arg_2.x)) ^ ~(-vec3<i32>(arg_2.x, arg_2.x, arg_2.x))), arg_2.x, Struct_1(!arg_1.a));
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(1i, 19596i), 0i, firstLeadingBit(var_0.a), var_0.a) & ((vec4<i32>(61024i, var_0.a, arg_2.x, 2384i) ^ vec4<i32>(arg_2.x, -1i, arg_2.x, var_0.b)) ^ vec4<i32>(-27650i, arg_2.x, var_0.a, var_0.b))), vec4<i32>(0i | _wgslsmith_mod_i32(-13143i, var_0.a), select(firstTrailingBit(var_0.a) ^ _wgslsmith_mult_i32(17211i, -1i), abs(reverseBits(11994i)), false), ~(~(~arg_2.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.a, arg_2.x), arg_2, true), vec2<i32>(arg_2.x, var_0.b)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 48302i), vec2<i32>(0i, arg_2.x))))));
    let var_2 = vec2<f32>(1425f, -187f);
    global0 = _wgslsmith_f_op_f32(func_2());
    var var_3 = Struct_3(138f, ~4294967295u > ((arg_0.x ^ u_input.a.x) >> (min(countOneBits(arg_0.x), _wgslsmith_add_u32(16353u, u_input.a.x)) % 32u)));
    return Struct_3(1066f, func_5(var_3.b, -34780i, var_0, _wgslsmith_f_op_vec2_f32(-var_2)).a.x);
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), -651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-450f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, arg_1.b, false))))))))));
    let var_0 = Struct_3(-1021f, func_1(~u_input.b.x ^ 22048u, ~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 1i)), firstLeadingBit(vec2<i32>(-35222i, 1i)))).a.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(u_input.a, func_6(~_wgslsmith_mult_vec3_u32(countOneBits(u_input.a.zyy), vec3<u32>(0u, u_input.b.x, 41911u)), func_5(true, -(i32(-1i) * -17978i), Struct_2(1i, firstTrailingBit(-2147483647i), func_1(u_input.a.x, vec2<i32>(-43230i, 0i))), vec2<f32>(_wgslsmith_div_f32(-371f, -331f), -248f)), vec2<i32>(1i, 1i)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), -1684f))) * _wgslsmith_f_op_f32(sign(func_6(vec3<u32>(min(11830u, 66874u), u_input.b.x, 61478u), func_5(true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, 20826i), vec4<i32>(10544i, -5601i, -1i, -1i)), Struct_2(-13726i, -1i, Struct_1(vec3<bool>(true, true, var_0.b))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 1000f), vec2<f32>(-1484f, -377f))), -vec2<i32>(32039i, 0i)).a)));
    var_0 = func_6(firstLeadingBit(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)), u_input.b)), Struct_1(!func_5(true, ~0i, Struct_2(7793i, 0i, Struct_1(vec3<bool>(false, var_0.b, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1543f, -682f), vec2<f32>(176f, 139f), vec2<bool>(var_0.b, false)))).a), vec2<i32>(_wgslsmith_sub_i32(1i, 41238i) << (u_input.a.x % 32u), min(_wgslsmith_sub_i32(countOneBits(-2147483647i), countOneBits(1i)), ~_wgslsmith_mod_i32(-9879i, -2340i))));
    let var_1 = -512f;
    var var_2 = ~14895u;
    let var_3 = min(vec2<i32>(abs(-1i), ~2147483647i << (_wgslsmith_mult_u32(u_input.b.x, 0u) % 32u)), firstTrailingBit(abs(vec2<i32>(1i, 1i)))) << ((u_input.b.xy ^ u_input.a.yx) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(abs(~4196i), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(var_3.x, var_3.x)) ^ var_3.x, -2147483647i)), ((vec4<i32>(-1i) * -vec4<i32>(var_3.x, var_3.x, -1i, var_3.x)) << (((vec4<u32>(16387u, 1u, 23360u, u_input.a.x) & u_input.a) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.b.x, 19858u, u_input.b.x) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_3.x, 1i, 2147483647i)), ~vec3<i32>(2147483647i, 13476i, var_3.x))));
}

