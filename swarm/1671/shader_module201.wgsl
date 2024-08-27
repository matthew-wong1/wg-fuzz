struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 14>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -379f)) * global0.a)));
    var var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(22598u, 113505u), select(max(vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 4294967295u)), reverseBits(vec2<u32>(4294967295u, 17545u)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), arg_2)));
    var var_2 = Struct_5(u_input.a.x, select(select(vec4<bool>(true, false | arg_2, arg_2, true != arg_2), select(select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(arg_2, arg_2, true, false), arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), true), arg_2), select(vec4<bool>(arg_2, !arg_2, any(vec4<bool>(arg_2, arg_2, false, arg_2)), all(vec4<bool>(arg_2, true, arg_2, false))), vec4<bool>(false, select(false, false, arg_2), true, 78889i >= u_input.a.x), !(!vec4<bool>(true, arg_2, false, arg_2))), select(any(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, true, true, arg_2), vec4<bool>(false, arg_2, false, true))), !arg_2, true)), Struct_1(var_0.a.a), arg_1);
    let var_3 = (((firstTrailingBit(vec4<u32>(44386u, var_1.x, var_1.x, var_1.x)) ^ ~vec4<u32>(var_1.x, 43509u, var_1.x, var_1.x)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<u32>(4294967295u, var_1.x, 0u, 13234u)), ~vec4<u32>(61128u, 0u, var_1.x, 71563u), reverseBits(vec4<u32>(0u, var_1.x, var_1.x, 0u))) % vec4<u32>(32u))) & ~(~vec4<u32>(var_1.x, 38336u, 80319u, 1u))) >> ((~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 54489u), vec4<u32>(var_1.x, 4294967295u, var_1.x, 5210u))) | vec4<u32>(18118u, reverseBits(~41110u), var_1.x, 1u)) % vec4<u32>(32u));
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 218f), vec2<f32>(var_0.a.a, var_2.c.a), false))), vec2<f32>(385f, _wgslsmith_f_op_f32(f32(-1f) * -678f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - -309f), 814f))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(21781i, u_input.a.x, -45005i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), firstTrailingBit(1i), true)), vec2<f32>(_wgslsmith_f_op_f32(484f * _wgslsmith_f_op_f32(f32(-1f) * -749f)), 1000f));
    global1 = array<vec4<f32>, 14>();
    let var_1 = any(vec2<bool>(!(!any(vec4<bool>(false, false, true, true))), !(14751u <= arg_1.x)));
    global1 = array<vec4<f32>, 14>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 738f, global0.a) + vec3<f32>(-402f, 1919f, 1333f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1791f, -475f) - vec3<f32>(-498f, 996f, -1409f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, -1178f, -460f))))))));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1381f));
}

fn func_1(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = -341f;
    global0 = func_2(_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(4294967295u, 32069u))), ~firstTrailingBit(~vec2<u32>(41888u, 5501u))), ~vec4<u32>(min(1u, 4294967295u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(7333u, 3385u), vec2<u32>(1u, 1u))), max(_wgslsmith_mod_u32(65881u, 1u), 4294967295u), ~1u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-global0.a))), -1000f);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(select(884f, global0.a, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1148f, var_1.x, var_1.x)))))), vec3<f32>(-826f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1537f, global0.a), global0.a))));
    var_0 = var_1.x;
    return _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, ((u_input.a.x >> (0u % 32u)) & _wgslsmith_mod_i32(0i, 43353i)) >> (~0u % 32u), -_wgslsmith_mod_i32(-1i, min(16942i, 2147483647i))), -vec3<i32>(abs(-2414i) << (firstLeadingBit(39660u) % 32u), min(firstTrailingBit(u_input.a.x), 66965i), u_input.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_5(u_input.a.x, vec4<bool>(true, true, !(!any(vec3<bool>(true, true, true))), u_input.a.x == reverseBits(i32(-1i) * -18999i)), Struct_1(-531f), _wgslsmith_sub_i32(firstTrailingBit(-u_input.a.x | 2147483647i), arg_1.x | ~arg_1.x));
    var var_1 = -21786i;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1181f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.a)))), global0.a));
    var var_2 = func_2(~(~min(vec2<u32>(arg_2, arg_2), abs(vec2<u32>(4294967295u, arg_2)))), vec4<u32>(arg_2, 4294967295u, arg_2, _wgslsmith_add_u32(arg_2, arg_2 ^ ~73019u)));
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(-2434f * _wgslsmith_f_op_f32(exp2(var_0.c.a))), var_2.a), vec3<f32>(-1000f, var_2.a, global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(494f, -682f, 560f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, var_0.c.a, var_2.a)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-1f), 290f)));
    return Struct_4(func_2(select(vec2<u32>(0u, arg_2), vec2<u32>(103020u, 0u), !vec2<bool>(var_0.b.x, true)) << (~reverseBits(vec2<u32>(arg_2, 22967u)) % vec2<u32>(32u)), ~(vec4<u32>(arg_2, arg_2, 9761u, arg_2) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, 1u, arg_2), vec4<u32>(arg_2, arg_2, arg_2, arg_2)) % vec4<u32>(32u)))), Struct_2(func_2(abs(~vec2<u32>(1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, arg_2, arg_2), vec4<u32>(arg_2, 37696u, 0u, 0u)) & ~vec4<u32>(4294967295u, 4294967295u, arg_2, 90257u))), _wgslsmith_div_u32(arg_2, abs(~(~arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~97431u));
    global0 = Struct_1(global0.a);
    var var_1 = all(vec4<bool>(true, 82275u >= (_wgslsmith_mult_u32(var_0, 8233u) & ~var_0), !all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))) <= global0.a));
    let var_2 = global0.a;
    let var_3 = func_4(~_wgslsmith_add_vec3_i32((vec3<i32>(u_input.a.x, 3435i, u_input.a.x) ^ vec3<i32>(35670i, -5553i, u_input.a.x)) ^ func_1(vec4<bool>(true, true, true, false)), vec3<i32>(~(-3507i), abs(1i), -11960i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x & ~2147483647i, ~(-2147483647i)), u_input.a), ~var_0);
    let var_4 = Struct_5(_wgslsmith_mod_i32(u_input.a.x | _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, 8672i), u_input.a.x), -25499i), vec4<bool>(true, false, true, false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(186f - 663f))))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

