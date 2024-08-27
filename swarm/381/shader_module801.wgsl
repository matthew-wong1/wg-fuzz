struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 46484u, 39792u), vec3<u32>(32799u, 1u, 9543u), vec3<u32>(55593u, 70292u, 103658u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(62304u, 1u, 14u), vec3<u32>(26573u, 98964u, 46836u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(6868u, 51876u, 4621u), vec3<u32>(4132u, 1u, 35540u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 4294967295u, 49071u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 1u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<vec3<u32>, 13>();
    let var_0 = false;
    global0 = array<vec3<u32>, 13>();
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(34596u, 42846u, arg_1.a, 1371u), vec4<u32>(arg_1.a, 0u, 31218u, 0u)), ~vec4<u32>(arg_1.a ^ arg_0.a, 34774u, _wgslsmith_clamp_u32(arg_0.a, 0u, 55555u), 337u)) >> (max(vec4<u32>(arg_1.a, arg_1.a, ~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.a, arg_0.a), _wgslsmith_mult_u32(arg_1.a, 0u))), vec4<u32>(arg_1.a, ~(~arg_1.a), ~1u, ~abs(1u))) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<bool>(true, true, true, any(vec3<bool>(_wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(4294967295u, 1u)) <= arg_1.x, true, true)));
    let var_1 = !vec2<bool>(!(!any(vec2<bool>(var_0.x, var_0.x))), !(2132f < arg_2.c));
    var var_2 = -(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 8225i, u_input.a.x, 966i), ~vec4<i32>(u_input.a.x, 5074i, arg_0, arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(4381i, arg_0, -73741i, 2147483647i), vec4<i32>(39046i, arg_0, 1i, arg_0))), abs(vec4<i32>(-2147483647i, arg_0, arg_0, u_input.a.x) << (vec4<u32>(1u, arg_2.a, arg_1.x, 1u) % vec4<u32>(32u)))) << (vec4<u32>(select(_wgslsmith_div_u32(arg_2.a, 72768u), 42456u, true), arg_1.x, 1u, ~arg_1.x) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.c, arg_2.b))))))));
    var var_4 = vec4<bool>(true, (arg_0 ^ _wgslsmith_add_i32(~12681i, -2228i & var_2.x)) <= -1i, false, false);
    return _wgslsmith_div_u32(~51689u, arg_1.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = vec4<u32>(~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(14285u, 45788u), ~select(9970u, 6124u, true)), firstTrailingBit(12347u), func_4(i32(-1i) * -38608i, select(func_3(Struct_1(4294967295u, 1577f, -782f), Struct_1(6101u, -337f, -299f)) & firstLeadingBit(vec4<u32>(50996u, 72522u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), select(false, true, true)), Struct_1(13357u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1259f - 457f), _wgslsmith_f_op_f32(2952f - -567f), true)), 1f)), firstLeadingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23864u, 85079u, 70u), vec4<u32>(0u, 21259u, 4294967295u, 4294967295u)))));
    var var_1 = -vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i) >> (~var_0.x % 32u), -countOneBits(-20414i), ~u_input.a.x, u_input.a.x & ~u_input.a.x) ^ (firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -9927i), vec4<i32>(1i, 0i, u_input.a.x, 29554i)), vec4<i32>(-14411i, u_input.a.x, u_input.a.x, u_input.a.x))) & _wgslsmith_mod_vec4_i32(vec4<i32>(~9887i, min(-22290i, u_input.a.x), 0i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -44159i, 1i, u_input.a.x), vec4<i32>(1i, -35742i, -18766i, u_input.a.x))));
    global0 = array<vec3<u32>, 13>();
    var var_2 = 14284u;
    let var_3 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -702f))))), -1069f);
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(~var_0.x), countOneBits(~14332u)), var_0.zw);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.c))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1535f, 1126f))) - _wgslsmith_f_op_f32(-arg_1.c)))), arg_2.b));
    global0 = array<vec3<u32>, 13>();
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 13>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(21514u, 4294967295u, 12157u, 57387u)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1003u, 4294967295u, 114671u), vec4<u32>(33014u, 1u, 0u, 43915u), vec4<u32>(113756u, 4294967295u, 103609u, 17376u)))), arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(937f)))))));
    var_0 = func_6(16909i, !arg_0.x, func_5(_wgslsmith_clamp_vec2_u32(~min(vec2<u32>(var_0.a, 1u), vec2<u32>(6390u, var_0.a)), func_2(), ~vec2<u32>(4294967295u, var_0.a) >> (firstTrailingBit(vec2<u32>(var_0.a, 1u)) % vec2<u32>(32u))), Struct_1(var_0.a, var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(arg_1 - 1726f)))), Struct_1(~1u, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(min(-607f, var_0.c))), _wgslsmith_f_op_f32(-1299f * -1000f))), firstTrailingBit(min(~1i, u_input.a.x)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~52997u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(-601f)));
    var var_2 = ~_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a, var_0.a, 24407u, var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(3157u, 3494u, var_1.a, var_1.a), vec4<u32>(53818u, var_1.a, 1u, var_1.a)))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 23458u, var_1.a, var_0.a), vec4<u32>(45013u, 10693u, var_0.a, 18727u)), vec4<u32>(24739u, var_0.a, var_0.a, 4294967295u), true) & _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 64292u, 37791u, 40232u), func_3(Struct_1(var_1.a, var_1.c, 462f), Struct_1(var_1.a, var_1.c, var_1.c))), firstLeadingBit(~vec4<u32>(51284u, 4294967295u, var_1.a, 1u)));
    return func_6(abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, 33905i, -1i))), 56873i, u_input.a.x)), select(arg_0.x, any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, true), true)), false), func_6(~44601i, arg_0.x, Struct_1(4294967295u, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -128f)), 1i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, u_input.a.x, -80491i, u_input.a.x) & vec4<i32>(-292i, -1i, u_input.a.x, 17899i), countOneBits(vec4<i32>(-16307i, u_input.a.x, -1i, u_input.a.x))) & vec4<i32>(_wgslsmith_add_i32(0i, u_input.a.x), u_input.a.x & -2147483647i, _wgslsmith_mult_i32(1i, u_input.a.x), -2147483647i), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, 2147483647i), vec3<i32>(7481i, u_input.a.x, u_input.a.x)), u_input.a.x), abs(~(-38783i)), abs(16820i), select(_wgslsmith_sub_i32(-88261i, 0i), 2147483647i, !arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)) + 1803f));
    var var_1 = func_1(vec3<bool>(false, any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true), _wgslsmith_f_op_f32(-128f - 217f));
    var_1 = func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, var_1.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.b)), var_1.c)))) + var_1.b));
    var var_2 = func_1(vec3<bool>(!any(vec4<bool>(true, true, false, false)), false, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true))), 333f);
    var_2 = Struct_1(var_1.a, var_2.c, -2613f);
    var var_3 = Struct_1(~(~firstTrailingBit(var_2.a)), var_2.c, 366f);
    var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_3.a, var_3.a, var_3.a, 33703u) | vec4<u32>(var_2.a, 0u, 22806u, 56114u)), ~(~vec4<u32>(var_2.a, var_1.a, var_2.a, 55220u))) >> (~117178u % 32u), 1064f, -700f);
    var_3 = func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_3.b));
    var_0 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~_wgslsmith_div_i32(-30583i, 51185i), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_add_i32(~u_input.a.x, abs(u_input.a.x)))), vec2<f32>(var_3.b, _wgslsmith_f_op_f32(var_3.c - var_1.c)));
}

