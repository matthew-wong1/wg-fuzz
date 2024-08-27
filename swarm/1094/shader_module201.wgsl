struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<u32> {
    global0 = vec2<i32>(arg_1.a.b.x, 0i);
    global0 = -vec2<i32>(~abs(_wgslsmith_dot_vec3_i32(arg_1.a.b.zzy, arg_1.a.b.xzz)), -2147483647i);
    global0 = ~select(~(-min(vec2<i32>(-18574i, global0.x), arg_1.a.b.yz)), arg_1.a.b.wz, true);
    return vec4<u32>(~u_input.a, abs(select((arg_1.a.a.d | 1u) & (4294967295u >> (u_input.a % 32u)), _wgslsmith_sub_u32(1u, arg_0.a.x), arg_0.a.x == 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~u_input.a), vec2<u32>(arg_0.a.x, _wgslsmith_div_u32(5508u, 665u))) | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.a.a.d, 1u, _wgslsmith_mult_u32(0u | arg_1.a.a.d, 1u), 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.a.x, ~54701u), vec4<u32>(u_input.a | arg_1.a.a.d, arg_1.a.a.d, abs(44781u), arg_1.a.a.d >> (26927u % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, arg_0.a.x, arg_1.a.a.d, 16749u) ^ vec4<u32>(arg_0.a.x, arg_1.a.a.d, arg_0.a.x, arg_1.a.a.d)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_div_u32(1u, 1u) >= _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.a, 71187u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 56435u) >> (vec4<u32>(39638u, u_input.a, 17989u, u_input.a) % vec4<u32>(32u)), func_3(Struct_3(vec3<u32>(0u, u_input.a, u_input.a)), Struct_4(Struct_2(Struct_1(978f, -1133i, vec2<bool>(true, true), 51319u), vec4<i32>(global0.x, 2147483647i, 2147483647i, global0.x)))), false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 36784u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a))));
    let var_1 = ~(-15167i);
    let var_2 = Struct_2(Struct_1(-1561f, -1i, !select(vec2<bool>(true, false), !vec2<bool>(var_0, true), vec2<bool>(true, true)), u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(23890i, global0.x, -1i, global0.x)), -vec4<i32>(global0.x, var_1, 24761i, 2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, 29813i, global0.x) << (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), -vec4<i32>(global0.x, 0i, 0i, 0i))));
    let var_3 = var_2.a.c;
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a, var_2.a.a, -419f)))))));
    return var_2.b.xwx;
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec3_i32(-min(-_wgslsmith_sub_vec3_i32(vec3<i32>(-12716i, -2147483647i, 891i), vec3<i32>(global0.x, -37808i, global0.x)), vec3<i32>(global0.x, global0.x, ~(-26828i))), vec3<i32>(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, global0.x, -26385i), vec4<i32>(-26970i, global0.x, -33272i, global0.x)), (i32(-1i) * -2147483647i) >> (reverseBits(arg_0.x) % 32u)), ~global0.x, global0.x));
    var_0 = vec3<i32>(-2147483647i, global0.x, min(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0.x, -123i, var_0.x), -vec4<i32>(-1267i, -1i, var_0.x, -26606i)), 2147483647i & firstTrailingBit(global0.x)), var_0.x >> (firstTrailingBit(abs(4294967295u)) % 32u)));
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(15272i, global0.x, var_0.x), vec3<i32>(var_0.x, -22034i, var_0.x), vec3<i32>(global0.x, global0.x, var_0.x)), firstTrailingBit(vec3<i32>(var_0.x, 20497i, 39904i))), func_2()), ~abs(~vec3<i32>(var_0.x, -7222i, var_0.x)) >> (abs(~(~vec3<u32>(arg_0.x, u_input.a, 0u))) % vec3<u32>(32u)), vec3<i32>(25735i, ~countOneBits(var_0.x), 38810i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1238f, 1137f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(645f, 204f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, -184f) * vec2<f32>(106f, 1859f))))));
    global0 = firstLeadingBit(vec2<i32>(global0.x | ~1i, _wgslsmith_mult_i32(global0.x, func_2().x)) & (vec2<i32>(~var_0.x, var_0.x & global0.x) | var_0.yy));
    return ~(~(~abs(vec2<u32>(arg_0.x, arg_0.x)))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(~20843u, 4294967295u), ~select(vec2<u32>(82939u, u_input.a) & vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_0.x, arg_0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(global0.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(35683u, 4294967295u), vec2<u32>(71206u, 1u)), 57293u) % 32u), -_wgslsmith_sub_i32(-global0.x, global0.x));
    global0 = ~(~vec2<i32>(-global0.x, abs(-59072i)) >> (select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(67371u, 57775u), vec2<u32>(4294967295u, u_input.a)), ~4294967295u), ~func_1(vec2<u32>(876u, 4294967295u)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))) % vec2<u32>(32u)));
    global0 = _wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-1i, 1i)), -(vec2<i32>(81834i, global0.x) ^ vec2<i32>(2147483647i, global0.x)), func_2().xy | func_2().zy), max(countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(2147483647i, global0.x)), vec2<i32>(global0.x, global0.x) ^ vec2<i32>(0i, global0.x))), ~reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -12027i), vec2<i32>(global0.x, -28131i)))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(244f)), -397f)))));
    var var_1 = !all(vec2<bool>(any(vec3<bool>(true, true, true)), true));
    let var_2 = global0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2652f), var_0))), _wgslsmith_f_op_f32(-var_0)));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(91481u, 13240u, 1u)), ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1883f, var_3.x, -1250f, 144f) - vec4<f32>(1146f, -233f, -246f, var_3.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0, 1155f, -464f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(748f, var_3.x, var_0, var_0) * vec4<f32>(901f, 1195f, -198f, var_3.x))))), var_3.x);
}

