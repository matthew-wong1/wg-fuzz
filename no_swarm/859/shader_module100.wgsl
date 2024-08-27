struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8495u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = -7939i;
    let var_1 = ~vec3<u32>(reverseBits(1u), _wgslsmith_dot_vec2_u32((u_input.c.wx << (u_input.c.yw % vec2<u32>(32u))) | vec2<u32>(u_input.c.x, u_input.a), u_input.c.xz), u_input.c.x);
    var var_2 = ~_wgslsmith_add_vec4_i32(-vec4<i32>(i32(-1i) * -19957i, u_input.b.x, countOneBits(-58356i), _wgslsmith_mod_i32(u_input.b.x, 1i)), u_input.b);
    let var_3 = vec2<i32>(-29009i, -_wgslsmith_add_i32(63056i, ~_wgslsmith_add_i32(u_input.b.x, 1i)));
    let var_4 = firstTrailingBit(~u_input.c.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-690f, -191f, arg_0))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1305f)))))), u_input.c.xzz);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(1000f + arg_1.a), false | arg_0)), 207f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(1000f, var_0.a)))))), select(!(!(!vec2<bool>(arg_0, arg_0))), select(select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), select(vec2<bool>(false, false), vec2<bool>(false, arg_0), false))), vec2<bool>(true, arg_0))));
    let var_2 = arg_0 & false;
    let var_3 = Struct_2(select(vec4<bool>(arg_0, true, false, true), select(vec4<bool>(true, any(vec4<bool>(arg_0, arg_0, var_2, arg_0)), var_0.b.x != 4294967295u, u_input.b.x <= 25921i), !vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(true, true, var_2, arg_0)), select(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, var_2), false), vec4<bool>(!var_2, all(vec2<bool>(false, arg_0)), true, true), vec4<bool>(!arg_0, all(vec3<bool>(arg_0, var_2, arg_0)), var_1.x < var_1.x, true))), _wgslsmith_f_op_f32(select(-979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) - _wgslsmith_f_op_f32(-var_0.a))), arg_0)), var_1.x, ~vec3<u32>((var_0.b.x | 4294967295u) ^ 4294967295u, (75367u | u_input.a) & _wgslsmith_div_u32(arg_2, 19762u), 0u & arg_2));
    var var_4 = _wgslsmith_div_f32(-1000f, arg_1.a);
    return 14870u;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = u_input.a;
    let var_0 = func_2(true == (-(~(-2665i)) > arg_0));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, ~func_3(true, Struct_1(arg_1.x, vec3<u32>(var_0.b.x, 0u, 0u)), 1u) & reverseBits(~var_0.b.x), _wgslsmith_add_u32(52103u, 1u), ~max(~0u, func_3(false, var_0, var_0.b.x))), u_input.c);
    var var_1 = any(!vec2<bool>(all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, false))));
    var var_2 = min(vec3<i32>(_wgslsmith_clamp_i32(~select(2996i, -1i, false), -13670i, -8727i), 2147483647i, 6034i), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zww, vec3<i32>(66870i, i32(-1i) * -30223i, i32(-1i) * -2147483647i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, 72855i, -2147483647i), u_input.b.zxx ^ u_input.b.xxw) >> (var_0.b % vec3<u32>(32u))));
    return Struct_2(select(vec4<bool>(~(-22695i) < arg_0, true, false, (u_input.a | u_input.a) < firstLeadingBit(0u)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, any(vec3<bool>(true, true, false))))), var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_div_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 61786u, 1u), u_input.c.xwy), vec3<u32>(var_0.b.x, 1u, 37312u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(var_0.b), ~vec3<u32>(0u, var_0.b.x, 1u))) & ~(~u_input.c.zyy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = func_2(any(!select(func_1(26136i, vec2<f32>(-1000f, 694f)).a.wwz, arg_0.a.yxz, vec3<bool>(arg_0.a.x, true, false))));
    global0 = var_0.b.x;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(var_0.a + 278f)))))));
    let var_2 = func_1(~(-23852i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(799f, 1549f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.a))) * vec2<f32>(arg_0.c, -1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_0.c)))))).a.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1217f);
    return Struct_2(vec4<bool>(_wgslsmith_div_i32(~1813i, u_input.b.x) == -_wgslsmith_mod_i32(-2147483647i, -2147483647i), false, !arg_2, arg_0.a.x), _wgslsmith_f_op_f32(arg_1.a * -1000f), -1000f, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    let var_0 = func_4(func_1(_wgslsmith_mult_i32(-21602i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))), Struct_1(1f, ~(u_input.c.zzw >> (~u_input.c.ywx % vec3<u32>(32u)))), true, ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 59189u), vec3<u32>(u_input.c.x, u_input.a, 91136u))));
    global0 = var_0.d.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(min(func_4(Struct_2(var_0.a, var_0.b, var_0.c, vec3<u32>(var_0.d.x, u_input.c.x, u_input.c.x)), Struct_1(-408f, u_input.c.wzy), true, var_0.d).c, -560f))))));
    global0 = _wgslsmith_sub_u32(u_input.c.x & (~func_2(false).b.x & (var_0.d.x >> (u_input.a % 32u))), u_input.a);
    var var_2 = var_0;
    var var_3 = func_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), -((u_input.b.x << (var_0.d.x % 32u)) >> (47296u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(sign(var_2.b)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -613f) * vec2<f32>(398f, 813f))))));
    var var_4 = func_2(true);
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), func_1(71427i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + var_4.a)))).b, 813f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, func_3(var_2.a.x, Struct_1(2712f, var_0.d), var_4.b.x), 4294967295u), var_3.d), vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 4294967295u), 6860u, ~51667u)), func_1(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) - _wgslsmith_f_op_f32(-var_1)), var_1)).d.x);
}

