struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<u32> {
    return ~max(_wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(23957u, 4294967295u, 43389u, 83107u), vec4<u32>(24233u, 80583u, 19403u, 0u), vec4<bool>(false, true, true, true))), ~vec4<u32>(122484u, 74050u, 17180u, 45660u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(49401u, 0u, 46017u, 0u))) & firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = select(vec2<bool>(false, true), !arg_1.a.zy, !arg_1.a.x == false);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1753f))), -352f)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_div_i32(-27104i, 2147483647i);
    let var_4 = -min(select(~abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, arg_2.c)), -(vec4<i32>(1i, 0i, arg_2.c, -74708i) ^ vec4<i32>(var_2.c, 18229i, arg_1.d.x, 31342i)), select(var_0.x, true, arg_2.b > 9866u)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-20206i, arg_2.d.x), var_2.c, ~var_2.d.x, reverseBits(2147483647i))));
    return _wgslsmith_add_u32(max(max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 37249u, arg_1.b, 18692u)), abs(vec4<u32>(arg_1.b, 53745u, var_2.b, var_2.b))), ~(arg_1.b << (0u % 32u))), countOneBits(0u)), 76492u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(arg_1), 44963u)), arg_0.b, countOneBits(0u) | ~func_3(vec3<u32>(1u, arg_0.b, arg_0.b), arg_3, Struct_1(arg_0.a, arg_3.b, 0i, arg_3.d)));
    var var_1 = -2147483647i;
    var_1 = firstTrailingBit(abs(-1i));
    let var_2 = ~(~_wgslsmith_div_vec3_u32(abs(var_0), vec3<u32>(arg_2.b, abs(37655u), 43788u)));
    var var_3 = true && arg_2.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - -832f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f))), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1279f, -571f))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = u_input.a;
    let var_1 = vec3<bool>((any(!vec4<bool>(arg_2, arg_2, true, false)) || true) || arg_2, any(vec3<bool>(!arg_2, false && any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)))), arg_2);
    var var_2 = -((select(vec3<i32>(1i, -1i, arg_3), vec3<i32>(10628i, u_input.a, 0i), arg_2) ^ ~vec3<i32>(u_input.a, arg_3, -2147483647i)) | _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(52585i, 8036i, arg_3), vec3<i32>(-1i, 28691i, 16405i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, 19715i), vec3<i32>(-33990i, u_input.a, -44934i)))) ^ ~min(vec3<i32>(arg_3 >> (1u % 32u), arg_3, 0i), -_wgslsmith_div_vec3_i32(vec3<i32>(5820i, var_0, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i)));
    var var_3 = 1u;
    let var_4 = -select(-(~vec4<i32>(1168i, var_2.x, arg_3, 0i)), firstTrailingBit(-(~vec4<i32>(-53516i, -1i, -2147483647i, var_0))), !select(all(vec3<bool>(var_1.x, true, true)), var_1.x, var_1.x));
    return 47133u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(true, true, true, true), !vec4<bool>(-2147483647i <= u_input.a, any(vec2<bool>(true, true)), true, false), !vec4<bool>(true, true, u_input.a >= u_input.a, true)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 30448u, 18936u), func_1(), vec4<bool>(true, true, true, true)), vec4<u32>(1u, 1u, 1u, 1u)), func_4(_wgslsmith_div_i32(u_input.a, u_input.a) >> (_wgslsmith_clamp_u32(1u, 4294967295u, 1u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(481f - 1000f), 1f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, false, false, false), 1u, u_input.a, vec2<i32>(u_input.a, u_input.a)), 5266u, Struct_1(vec4<bool>(true, true, true, true), 34252u, 1i, vec2<i32>(-3856i, -1i)), Struct_1(vec4<bool>(false, false, true, true), 1u, u_input.a, vec2<i32>(u_input.a, 0i)))), 761f), true, select(-u_input.a, u_input.a, true))), -10892i, -_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, u_input.a | u_input.a), vec2<i32>(~(-18191i), -u_input.a)));
    var_0 = Struct_1(select(var_0.a, var_0.a, var_0.a.x), select(firstTrailingBit(~(19614u & var_0.b)), _wgslsmith_clamp_u32(~var_0.b, ~26274u, var_0.b) >> (~abs(41240u) % 32u), false), _wgslsmith_div_i32(var_0.c, u_input.a), max(reverseBits(vec2<i32>(u_input.a, -u_input.a)), abs(var_0.d)));
    let var_1 = 1908f;
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(trunc(var_1)) >= 1f, var_0.a.x, false, !any(var_0.a.zx)), _wgslsmith_add_u32(firstLeadingBit(var_0.b), func_4(~(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -817f, var_1)), any(vec3<bool>(var_0.a.x, false, false)), 1288i)) >> (~(4294967295u & var_0.b) % 32u), -10765i, _wgslsmith_add_vec2_i32(max(-(var_0.d << (vec2<u32>(var_0.b, 101087u) % vec2<u32>(32u))), vec2<i32>(var_0.c, ~(-2147483647i))), (min(vec2<i32>(var_0.c, u_input.a), vec2<i32>(2147483647i, 1i)) ^ reverseBits(vec2<i32>(u_input.a, 7336i))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 11498u)), vec2<u32>(19717u, 1u) ^ vec2<u32>(var_0.b, 16369u)) % vec2<u32>(32u))));
    let var_3 = Struct_1(vec4<bool>(var_0.a.x, any(select(select(vec2<bool>(false, var_0.a.x), var_2.a.wx, false), !vec2<bool>(true, var_0.a.x), vec2<bool>(false, false))), false, !(!(!var_0.a.x))), 4294967295u, -2816i, max(var_2.d | _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, var_0.d.x), firstTrailingBit(var_0.d)), var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-821f)));
}

