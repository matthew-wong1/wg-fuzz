struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(((u_input.b.x | u_input.b.x) > _wgslsmith_div_i32(1i, u_input.b.x)) & all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), countOneBits(vec3<i32>(abs(u_input.b.x), -u_input.b.x, u_input.b.x)), Struct_1(~(~reverseBits(u_input.b.x)), 119f, !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.a);
    let var_1 = _wgslsmith_add_i32(10251i, select(-(~var_0.c.a), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a, var_0.c.a, 18287i, u_input.b.x), vec4<i32>(u_input.b.x, var_0.d, -44319i, 0i)), _wgslsmith_sub_i32(-1952i, var_0.b.x)), all(vec4<bool>(all(vec3<bool>(false, true, var_0.a)), true, !var_0.a, !var_0.c.c.x))));
    let var_2 = Struct_4(u_input.b.x, vec4<u32>(var_0.e, var_0.e, ~32432u, u_input.a << (1u % 32u)));
    let var_3 = select(vec4<bool>(any(select(select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(true, false, var_0.c.c.x, var_0.a), false), vec4<bool>(var_0.c.c.x, var_0.a, var_0.a, var_0.c.c.x), !vec4<bool>(var_0.a, var_0.c.c.x, true, var_0.a))), select(var_0.a, false, true), var_0.c.c.x, true), !(!(!(!vec4<bool>(var_0.a, true, true, var_0.c.c.x)))), var_0.c.c.x);
    let var_4 = 0u;
    return max(vec2<i32>(-var_1 << (var_4 % 32u), ~(-_wgslsmith_sub_i32(14153i, u_input.b.x))), abs(vec2<i32>(var_1 & var_2.a, var_0.b.x << (var_4 % 32u))) | ~vec2<i32>(firstTrailingBit(var_0.d), -2147483647i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~12883u, min(32443u, ~u_input.a));
    let var_1 = Struct_1(reverseBits(u_input.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-209f, -169f)), -163f))))), vec3<bool>(!all(vec2<bool>(true, true)), 0i != ~(~u_input.b.x), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))));
    var var_2 = 18564u;
    var var_3 = var_1;
    return Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(func_3()) & u_input.b, select(_wgslsmith_div_vec2_i32(u_input.b, abs(u_input.b)), u_input.b, !(false && var_3.c.x))), var_3.b, select(select(vec3<bool>(u_input.b.x > u_input.b.x, true, true), !var_3.c, var_1.c), var_1.c, vec3<bool>(any(var_1.c.xz), false, var_1.c.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = 0i;
    var_0 = _wgslsmith_mult_i32(arg_2.a, -43561i);
    var var_1 = !(!vec4<bool>(func_2(arg_0.x).c.x, all(select(vec3<bool>(arg_2.c.x, arg_2.c.x, true), arg_2.c, arg_2.c)), arg_2.c.x, arg_2.c.x));
    var_1 = select(!(!(!vec4<bool>(false, arg_2.c.x, false, false))), vec4<bool>(!((-2147483647i & arg_2.a) <= (i32(-1i) * -39706i)), arg_2.c.x, arg_2.c.x, !(arg_0.x != arg_0.x)), !(!(arg_1 > 207f)));
    var var_2 = func_2(u_input.a).c;
    return false != var_2.x;
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1054f * -567f))))) * -1055f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1456f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-437f * 300f))))) + 1033f), -604f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-16981i, func_3().x, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, -29758i), min(-648i, -63460i))), 231f, select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, false)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, false, arg_0)), func_2(arg_1.b.x).c)));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.a.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_4 = arg_1.b.x;
    return ~_wgslsmith_clamp_i32(-2161i, i32(-1i) * -u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.b ^ u_input.b, ~u_input.b));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(func_5(func_4(vec2<u32>(u_input.a, 38464u) | vec2<u32>(1u, u_input.a), -1594f, func_2(u_input.a), firstLeadingBit(vec2<i32>(u_input.b.x, 1049i))) & true, Struct_4(-2147483647i, ~_wgslsmith_div_vec4_u32(vec4<u32>(21097u, u_input.a, 0u, 22426u), vec4<u32>(1u, u_input.a, 1u, 6538u))), u_input.a), ~vec4<u32>(4294967295u, max(_wgslsmith_add_u32(u_input.a, u_input.a), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstTrailingBit(vec2<u32>(u_input.a, 21386u))), 14547u));
    var var_1 = Struct_2(func_2(u_input.a));
    let var_2 = ~var_0.a;
    let var_3 = _wgslsmith_dot_vec3_u32(countOneBits(~min(var_0.b.wwx, reverseBits(var_0.b.xww))), vec3<u32>(max(~min(u_input.a, 47817u), ~firstTrailingBit(1u)), firstTrailingBit(~(~var_0.b.x)), abs(4294967295u)));
    var var_4 = var_1.a.c;
    return Struct_4(var_1.a.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_sub_vec3_u32(min(~vec3<u32>(0u, 4294967295u, u_input.a) << (vec3<u32>(77417u, u_input.a, 14474u) % vec3<u32>(32u)), ~vec3<u32>(18142u, u_input.a, 4434u)), ~(~(~vec3<u32>(u_input.a, 0u, u_input.a)))), ~(~vec3<u32>(4294967295u, 66698u, u_input.a)), false);
    var_0 = vec3<u32>(3025u, firstTrailingBit(var_0.x), 39892u);
    var var_1 = false;
    let var_2 = func_1();
    var_0 = ~vec3<u32>(var_2.b.x, _wgslsmith_div_u32(~abs(var_2.b.x), abs(1u & var_0.x)), u_input.a);
    var_1 = u_input.a == min(u_input.a, _wgslsmith_sub_u32(1u, 0u | max(var_2.b.x, 1u)));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)), -133f)), _wgslsmith_f_op_f32(max(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(482f, -1197f))))), _wgslsmith_f_op_f32(776f * _wgslsmith_f_op_f32(954f - _wgslsmith_div_f32(-759f, 111f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-948f, -366f, 530f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-854f, -1213f, -1054f), vec3<f32>(673f, 1659f, 333f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1401f, 1122f, 699f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(581f, 602f, 859f)))) + vec3<f32>(1f, 1f, 1f))));
    let var_4 = select(func_1().a, _wgslsmith_mult_i32(2147483647i, var_2.a), true);
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3.x, -586f)) - vec3<f32>(668f, _wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(var_3.x + var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.b.x, ~92471u), 274f, vec4<f32>(var_3.x, _wgslsmith_f_op_f32(ceil(235f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_3.x)) * 1394f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(313f + var_3.x)))), vec3<u32>(var_0.x, ~(var_0.x & var_2.b.x), var_2.b.x));
}

