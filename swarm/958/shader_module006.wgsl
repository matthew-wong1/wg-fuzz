struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-613f, 368f, 1807f, -1000f);

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<f32> {
    global0 = vec4<f32>(arg_1, -401f, 1259f, _wgslsmith_f_op_f32(-arg_0.c));
    var var_0 = Struct_2(u_input.e, vec2<bool>(true, true), max(u_input.e, u_input.e), ~35814u, global1.x);
    var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_0.c, u_input.e & vec2<i32>(var_0.a.x, arg_2.d)) | reverseBits(vec2<i32>(35044i, 2147483647i)), ~vec2<i32>(arg_2.d, countOneBits(var_0.a.x)), min(u_input.e, ~var_0.a) >> (vec2<u32>(var_0.e, arg_2.a.x) % vec2<u32>(32u))), vec2<bool>(true, !any(!vec4<bool>(var_0.b.x, arg_3.x, arg_3.x, var_0.b.x))), var_0.a, max(countOneBits(1u), ~(abs(global1.x) & arg_2.a.x)), var_0.d);
    var var_1 = true;
    global1 = arg_2.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c, arg_2.c, 821f, 915f), vec4<f32>(374f, arg_0.c, global0.x, arg_1)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.c, 556f, 1028f))))));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(48918i, -51109i);
    var var_1 = Struct_2(abs(_wgslsmith_sub_vec2_i32(abs(u_input.e), u_input.e)), !select(vec2<bool>(false, true), vec2<bool>(select(false, false, true), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)), countOneBits(u_input.e), 1u, global1.x);
    let var_2 = Struct_2(vec2<i32>(select(-1i, u_input.b, any(!vec3<bool>(var_1.b.x, true, var_1.b.x))), -1699i), vec2<bool>(!var_1.b.x, var_1.b.x || !all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), u_input.e, var_1.e, 20597u);
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -425f))), global0.x);
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, firstTrailingBit(0i), -17495i), _wgslsmith_add_vec3_i32(-vec3<i32>(1i, 1i, var_1.c.x), ~_wgslsmith_add_vec3_i32(max(vec3<i32>(var_1.a.x, -43022i, -1i), vec3<i32>(var_1.a.x, var_0, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -68131i, var_0), vec3<i32>(87729i, 21910i, var_0)))));
    return firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~(~74032u)), firstTrailingBit(~(~vec2<u32>(var_1.e, global1.x))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_2.e), vec2<u32>(70618u, 4294967295u), vec2<u32>(u_input.c, 4294967295u)))));
}

fn func_2() -> f32 {
    let var_0 = u_input.c;
    var var_1 = Struct_4(Struct_2(_wgslsmith_mult_vec2_i32(-u_input.e, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, u_input.d), u_input.e, vec2<i32>(u_input.b, 2147483647i)) << (func_3() % vec2<u32>(32u))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(u_input.b <= -2147483647i, true)), _wgslsmith_add_vec2_i32(u_input.e, countOneBits(~vec2<i32>(1i, 39237i))), var_0, var_0));
    global1 = _wgslsmith_sub_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.a, var_0) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))), vec2<u32>(28887u, _wgslsmith_add_u32(0u, abs(1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(17135u, 28436u, u_input.c), vec3<u32>(96516u, 0u, 36817u)) % 32u))));
    var var_2 = Struct_1(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global1.x, 1u)), vec2<u32>(u_input.a, var_0)) | ~(vec2<u32>(4294967295u, global1.x) >> ((vec2<u32>(1u, var_1.a.e) >> (vec2<u32>(var_1.a.e, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))), abs(_wgslsmith_div_u32((1u >> (0u % 32u)) | abs(u_input.c), var_0)), -1055f, ~(-min(-4657i, -30517i)) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.a.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(28450i, -1i, var_1.a.a.x), vec3<i32>(-7396i, u_input.d, 85597i))), -47571i));
    let var_3 = Struct_1(~vec2<u32>(~_wgslsmith_add_u32(0u, 14303u), _wgslsmith_mult_u32(4294967295u, global1.x >> (var_0 % 32u))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f + -617f)) - _wgslsmith_f_op_f32(max(var_2.c, -353f))), ~var_2.d & var_2.d);
    return 971f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<u32>(u_input.c, u_input.a), 4294967295u, global0.x, 1i), global0.x, Struct_1(vec2<u32>(1u, 55118u), 4294967295u, -762f, u_input.d), vec2<bool>(true, false)))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(global0.x, -1410f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(-432f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(870f, 1000f, global0.x, global0.x) + vec4<f32>(1000f, global0.x, -1690f, 639f))), select(false, !(u_input.e.x <= u_input.b), true))));
    let var_0 = -firstLeadingBit(-1i >> (1u % 32u));
    var var_1 = firstLeadingBit(~(~vec4<i32>(0i, _wgslsmith_div_i32(-29510i, var_0), u_input.e.x, min(2147483647i, u_input.b))));
    var var_2 = vec4<bool>(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1319f)), _wgslsmith_f_op_f32(min(-477f, global0.x)))) > _wgslsmith_f_op_f32(-global0.x), true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))) <= 271f), false);
    let var_3 = Struct_1(min(func_3(), _wgslsmith_mod_vec2_u32(func_3(), ~reverseBits(vec2<u32>(27596u, 33198u)))), ~(u_input.a << (9386u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), 0i);
    global1 = countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(84509u, u_input.a, 4294967295u), _wgslsmith_mod_u32(global1.x, _wgslsmith_add_u32(86026u, global1.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(min(var_3.a, var_3.a), vec2<u32>(108332u, 4294967295u)), 67151u)));
    var var_4 = select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(any(select(var_2.xzz, vec3<bool>(var_2.x, false, var_2.x), var_2.yzz)) && (_wgslsmith_add_u32(4294967295u, global1.x) > (global1.x & 34357u)), all(!select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, var_2.x), var_2.x))), select(var_2.yz, var_2.zw, select(all(var_2.yz), false, true & all(var_2.xwy))));
    let var_5 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, ~_wgslsmith_add_u32(var_3.a.x << (4294967295u % 32u), ~0u), max(max(select(global1.x, 21256u, true), 0u), 0u)), ~(~(~vec3<u32>(0u, 4294967295u, global1.x))) ^ max(_wgslsmith_sub_vec3_u32(~vec3<u32>(global1.x, 0u, 1712u), vec3<u32>(53463u, var_3.a.x, global1.x)), ~reverseBits(vec3<u32>(0u, var_3.b, 11578u))), (vec3<u32>(func_3().x, ~1u, 65214u) >> (~vec3<u32>(var_3.a.x, 63331u, 1u) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(72644u, var_3.b, 1u) | vec3<u32>(global1.x, global1.x, 8751u), vec3<u32>(var_3.a.x, 49223u, 4294967295u)));
    let var_6 = Struct_2(min((vec2<i32>(-86176i, -42152i) ^ ~var_1.yz) | min(-var_1.zw, -vec2<i32>(1i, var_0)), var_1.zw), vec2<bool>(false, !var_2.x), -vec2<i32>(firstLeadingBit(~u_input.b), 2147483647i), ~_wgslsmith_add_u32(1u, ~5541u), min(~var_5.x, var_3.a.x << (49968u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec2<i32>(u_input.d, u_input.e.x), ~select(var_6.a, vec2<i32>(0i, u_input.b), vec2<bool>(false, false))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(~var_1.zzz), vec3<i32>(22807i, -52119i, u_input.b)), var_1.wwz), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * -1000f))), -339f, global0.x, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1238f, var_3.c, global0.x, var_3.c) * vec4<f32>(var_3.c, global0.x, 158f, -1015f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -1611f)), -12656i);
}

