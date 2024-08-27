struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-726f)), _wgslsmith_div_f32(715f, 1196f)) + _wgslsmith_f_op_f32(select(-1252f, -987f, all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(376f, -764f))) - 157f), false)), 1f, -334f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1099f + -393f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) - _wgslsmith_f_op_f32(round(1021f)))), -920f)));
    global1 = Struct_2(Struct_1(_wgslsmith_sub_i32(29832i, 2147483647i)));
    var var_1 = global0.wxw;
    var var_2 = global1.a;
    let var_3 = _wgslsmith_sub_vec4_i32(min(vec4<i32>(-24469i, 0i, _wgslsmith_dot_vec2_i32(~u_input.c.yz, u_input.c.yy), _wgslsmith_clamp_i32(countOneBits(u_input.c.x), -13708i, var_2.a >> (var_1.x % 32u))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -15436i, -2147483647i, global1.a.a), vec4<i32>(-2147483647i, 31728i, -2534i, global1.a.a)))), _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(49573i, 1i, global1.a.a, var_2.a), vec4<i32>(-14778i, -27019i, 2147483647i, -16883i)) >> ((vec4<u32>(69734u, 50180u, u_input.a, var_1.x) & vec4<u32>(1u, u_input.d, 4294967295u, 28630u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.a, 1i, var_2.a, var_2.a)), ~vec4<i32>(2147483647i, 2147483647i, -22506i, var_2.a), -vec4<i32>(u_input.c.x, -11289i, 20157i, global1.a.a))), vec4<i32>(firstLeadingBit(firstTrailingBit(-47186i)), -92271i, -var_2.a, -countOneBits(15032i))));
    return _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_1.x), ~var_1.x, firstTrailingBit(~global0.x), 3258u), ~(~abs(vec4<u32>(u_input.d, 33941u, global0.x, u_input.b)) ^ ~vec4<u32>(var_1.x, 21538u, 6257u, 3201u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = max(func_3(), ~firstLeadingBit(max(~vec4<u32>(35112u, 20744u, 24511u, u_input.a), firstTrailingBit(vec4<u32>(global0.x, 4843u, 1u, global0.x)))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-arg_2, firstLeadingBit(arg_2)), firstTrailingBit(2147483647i))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.x, _wgslsmith_div_u32(~global0.x, 1u)), _wgslsmith_mult_vec3_u32(global0.wzz, _wgslsmith_clamp_vec3_u32(~global0.xyy, vec3<u32>(u_input.b, global0.x, u_input.d), firstLeadingBit(global0.wyy))) & reverseBits(global0.wyy));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(942f, 798f, 1000f, 999f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-786f, 1087f, -249f, 603f)))))), select(vec4<bool>(true, false, all(vec2<bool>(true, true)), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), true), true | all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-229f, 1237f, -1110f, -1466f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, -252f, -307f, 893f))))), true));
    global1 = var_0;
    return Struct_1(0i);
}

fn func_1() -> Struct_2 {
    var var_0 = ~u_input.d != (~_wgslsmith_add_u32(reverseBits(4294967295u), max(u_input.d, 71674u)) & u_input.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f + -220f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)));
    return Struct_2(func_2(Struct_1(_wgslsmith_sub_i32(global1.a.a, 2147483647i) & 69141i), _wgslsmith_mod_i32(~0i, ~global1.a.a) >> (_wgslsmith_clamp_u32(global0.x, global0.x, 0u) % 32u), _wgslsmith_div_i32(global1.a.a, _wgslsmith_mod_i32(global1.a.a, global1.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = u_input.c.xz & _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(1i, u_input.c.x)) ^ u_input.c.yx, -u_input.c.yx);
    var var_1 = global0.ywz;
    global1 = func_1();
    global0 = vec4<u32>(1u, _wgslsmith_mod_u32(~(~var_1.x), abs(98732u)) >> (global0.x % 32u), countOneBits(51234u), 0u);
    let var_2 = u_input.c.x;
    var var_3 = vec3<f32>(-811f, 365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(1356f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f + 2149f) + _wgslsmith_div_f32(-733f, 1611f)) - -858f)));
    var var_4 = !(!select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, 4294967295u <= u_input.d), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true)));
    var var_5 = -29071i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1u, firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(29877i, 20501i, 1034i, 2148i), abs(vec4<i32>(var_2, 1i, -15518i, global1.a.a))), ~vec4<i32>(29991i, 1i, var_0.x, global1.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, var_3.x, var_3.x, 1044f) + vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)), vec4<f32>(var_3.x, var_3.x, -504f, var_3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1350f, 779f, 334f) - _wgslsmith_div_vec4_f32(vec4<f32>(-741f, -919f, var_3.x, 1564f), vec4<f32>(-1343f, -1000f, var_3.x, 310f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -270f, var_3.x, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 1448f, var_3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, -227f, -500f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -646f, 553f) - vec3<f32>(var_3.x, var_3.x, var_3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(654f, -1378f, 1000f), vec3<f32>(var_3.x, 1357f, -885f), var_4.x))))));
}

