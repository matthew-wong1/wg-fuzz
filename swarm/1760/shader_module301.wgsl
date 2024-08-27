struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32> = vec3<i32>(9333i, -40023i, i32(-2147483648));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    global0 = vec2<u32>(1u, ~(~1u) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, global0.x)) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u))) >> (vec2<u32>(84327u, reverseBits(global0.x)) % vec2<u32>(32u));
    global1 = vec3<i32>(global1.x, firstTrailingBit(global1.x), ~_wgslsmith_clamp_i32(global1.x, global1.x, global1.x >> (4294967295u % 32u))) | ~abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(36086i, -14403i, -49664i, 1i), vec4<i32>(global1.x, global1.x, global1.x, global1.x)), global1.x, global1.x));
    let var_0 = abs(u_input.a);
    var var_1 = 1u;
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(~global1.x << (~47939u % 32u), reverseBits(global1.x), ~2147483647i, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 34515i, ~reverseBits(12164i), global1.x), -_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, -39853i) & vec4<i32>(global1.x, 30474i, -24789i, global1.x), vec4<i32>(-2147483647i, 2147483647i, global1.x, 25574i) ^ vec4<i32>(global1.x, global1.x, 8647i, 0i))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-32444i, -14201i, global1.x, -2147483647i), vec4<i32>(global1.x, global1.x, global1.x, global1.x))));
    return vec2<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -3099i) >> (vec2<u32>(1u, 54459u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(9189i, global1.x), vec2<i32>(-2290i, 0i)))), _wgslsmith_clamp_i32(global1.x, -1i, var_2.x));
}

fn func_2() -> Struct_1 {
    global0 = vec2<u32>(~global0.x, ~abs(global0.x));
    var var_0 = vec4<i32>(~global1.x, -global1.x, -2147483647i, select(_wgslsmith_dot_vec2_i32(select(func_3(), ~vec2<i32>(global1.x, global1.x), all(vec2<bool>(false, false))), vec2<i32>(countOneBits(-7503i), _wgslsmith_mult_i32(9189i, -30508i))), global1.x << ((u_input.a >> (abs(15567u) % 32u)) % 32u), true));
    var var_1 = ~1u;
    global1 = -(vec3<i32>(-2147483647i, -5625i, _wgslsmith_mult_i32(countOneBits(global1.x), firstLeadingBit(14630i))) | var_0.wyy);
    global1 = ~vec3<i32>(firstTrailingBit(1i) >> (~(~global0.x) % 32u), global1.x << ((20686u << (firstTrailingBit(3433u) % 32u)) % 32u), reverseBits(firstTrailingBit(1i)));
    return Struct_1(global0.x, global1.x);
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, _wgslsmith_clamp_u32(global0.x, 1u, 14876u << (u_input.a % 32u)), ~var_0.a), vec3<u32>(4294967295u, ~max(79382u, 68474u), global0.x)), ~u_input.a & 11546u);
    let var_2 = var_0;
    var var_3 = vec2<u32>(~global0.x, ~_wgslsmith_mod_u32(countOneBits(firstLeadingBit(61486u)), u_input.a));
    global0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~(~(~vec2<u32>(global0.x, var_0.a)))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, var_0.a), vec2<u32>(39241u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(39755u, var_1.x, var_0.a)))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 62957u)), select(vec2<u32>(global0.x, 17535u), reverseBits(vec2<u32>(var_3.x, var_2.a)), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)))));
    return -258f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 66652u;
    global1 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(~3368i, select(global1.x, global1.x, false), global1.x << (53890u % 32u)) ^ select(vec3<i32>(arg_1.b, arg_2.b, -24591i) ^ vec3<i32>(arg_1.b, arg_1.b, arg_2.b), vec3<i32>(2147483647i, arg_1.b, 61395i), arg_0 > arg_0)), _wgslsmith_div_vec3_i32(~vec3<i32>(global1.x, arg_2.b << (0u % 32u), -2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_1.b, global1.x, 0i), vec3<i32>(global1.x, -2147483647i, global1.x)), vec3<i32>(arg_2.b, global1.x, 16742i) & vec3<i32>(1i, -15894i, 2147483647i)), firstLeadingBit(-vec3<i32>(arg_1.b, arg_1.b, 2147483647i)))));
    var var_1 = _wgslsmith_add_u32(~(~1u), _wgslsmith_sub_u32(countOneBits(7360u), firstLeadingBit(~var_0)));
    let var_2 = ~(~func_2().a);
    global1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-arg_1.b >> (u_input.a % 32u), -22960i, ~arg_1.b), vec3<i32>(-(~arg_2.b), _wgslsmith_sub_i32(-1i, 57679i) & _wgslsmith_dot_vec4_i32(vec4<i32>(15306i, global1.x, 1i, global1.x), vec4<i32>(arg_1.b, arg_2.b, arg_2.b, 18026i)), _wgslsmith_clamp_i32(-17761i, min(1120i, 0i), -2147483647i)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    global1 = -vec3<i32>(-global1.x, max(~global1.x, arg_0.b) | -21241i, min(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, -35102i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(36694i, global1.x, -11152i, arg_0.b), vec4<i32>(0i, 34323i, arg_0.b, arg_0.b), vec4<i32>(-18902i, 2821i, arg_0.b, -256i)))));
    let var_0 = 199f;
    let var_1 = ~_wgslsmith_clamp_vec4_u32(countOneBits(~abs(vec4<u32>(global0.x, 4294967295u, 0u, 24865u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 1u, 0u, arg_0.a), ~vec4<u32>(u_input.a, arg_0.a, u_input.a, arg_0.a)), vec4<u32>(reverseBits(u_input.a), _wgslsmith_sub_u32(reverseBits(global0.x), 4294967295u), ~15924u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a, 47599u, arg_0.a), vec4<u32>(u_input.a, 35709u, 33957u, global0.x)), arg_0.a, 0u)));
    let var_2 = _wgslsmith_add_vec3_u32(~var_1.wxz, var_1.wyx);
    global1 = -firstLeadingBit(vec3<i32>(2147483647i, arg_0.b, -arg_0.b));
    return Struct_1(1u, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a, global1.x);
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(func_1()), Struct_1(4294967295u, -select(var_0.b, -9527i, false)), func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, 823f)) + _wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_div_f32(-761f, -862f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-891f - 1000f), _wgslsmith_f_op_f32(-488f + -1175f))))), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -606f), _wgslsmith_f_op_f32(trunc(-1253f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(356f + -567f)))));
    var var_2 = firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(global0.x, global0.x)), vec2<u32>(global0.x, var_1.a), vec2<u32>(u_input.a, var_1.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 5399u) ^ vec2<u32>(var_0.a, var_0.a), vec2<u32>(4294967295u, 1u) | vec2<u32>(var_1.a, global0.x), select(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_0.a, global0.x), vec2<bool>(false, true))))));
    global1 = _wgslsmith_clamp_vec3_i32(~(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, var_1.b, -2147483647i), vec3<i32>(global1.x, -6744i, global1.x)))), min(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, var_0.b, var_0.b) << (vec3<u32>(var_2.x, 44611u, 1697u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(global1.x, 2147483647i, global1.x), vec3<i32>(29863i, 11238i, global1.x)), -vec3<i32>(0i, -45321i, var_0.b))), vec3<i32>((-16357i << (u_input.a % 32u)) | var_1.b, ~var_0.b, firstTrailingBit(~1i))), -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-23809i, global1.x, -31234i) >> (vec3<u32>(11064u, var_1.a, var_2.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, -12876i), vec3<i32>(-2147483647i, global1.x, 1i)), all(vec2<bool>(true, true))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, var_0.b, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, var_1.b), vec3<i32>(37066i, 56404i, -17530i)), firstLeadingBit(vec3<i32>(15672i, var_0.b, global1.x))), vec3<i32>(-7853i, 18373i, var_0.b) >> (~vec3<u32>(u_input.a, 57148u, global0.x) % vec3<u32>(32u))));
    var_2 = select(vec2<u32>(var_1.a, firstTrailingBit(12331u)), ~(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 33840u)) | ~vec2<u32>(global0.x, 50231u)), false);
    let var_3 = Struct_1(func_4(_wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(abs(-808f))), func_4(_wgslsmith_f_op_f32(-463f - 1332f), func_5(var_1, -1982f, vec4<f32>(591f, 1618f, -323f, 1278f)), func_2()), var_1).a << (~4294967295u % 32u), ~var_1.b);
    var var_4 = func_5(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1669f), _wgslsmith_f_op_f32(141f * -100f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(564f + -584f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-192f, 430f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1314f, -2684f) - _wgslsmith_f_op_f32(ceil(-715f))), 1f, _wgslsmith_f_op_f32(-1f), 735f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, 1529f, -1000f, -1596f) * vec4<f32>(-365f, 646f, 1930f, 243f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(714f, -1338f, 247f, -1303f), vec4<f32>(2345f, -1390f, -531f, -1077f), vec4<bool>(true, false, false, false)))))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-144f, -165f, -239f), vec3<f32>(-541f, -1069f, 591f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, 134f, 327f)) * vec3<f32>(-1099f, 311f, -185f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-530f, -930f, 118f))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(310f, 452f, 1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1825f, _wgslsmith_f_op_f32(max(var_5.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) * _wgslsmith_f_op_f32(740f + var_5.x))))), countOneBits(~(func_4(492f, Struct_1(23362u, 17507i), var_1).b ^ var_3.b)));
}

