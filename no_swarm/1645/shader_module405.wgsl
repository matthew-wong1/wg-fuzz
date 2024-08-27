struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = 1u;
    let var_1 = ~80569u;
    let var_2 = Struct_2(abs(66812u), Struct_1(1u, arg_0.b), arg_0, Struct_1(u_input.d, -1000f));
    let var_3 = vec4<u32>(min(~var_0 & 0u, var_2.d.a), var_2.a, countOneBits(_wgslsmith_clamp_u32(35391u, ~var_0, _wgslsmith_add_u32(var_2.b.a, var_1) | 1u)), ~firstTrailingBit(24806u));
    var var_4 = any(vec4<bool>(_wgslsmith_div_f32(658f, arg_0.b) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - var_2.c.b), !select(true, all(vec4<bool>(true, false, false, true)), false), !(false & all(vec3<bool>(false, false, true))), false));
    return vec3<bool>(all(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(false, all(vec2<bool>(false, true)), true), true)), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), select(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false)), all(vec4<bool>(true, true, true, true)), false));
}

fn func_2() -> vec3<i32> {
    let var_0 = select(func_3(Struct_1(~max(4294967295u, u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 1058f)), _wgslsmith_f_op_f32(min(1326f, -313f))))), vec3<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)), true && any(vec2<bool>(false, true)), true), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2457f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(280f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(619f))));
    let var_2 = select(0u, abs(~(~u_input.d)), false);
    var var_3 = ~_wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.e.yy, u_input.e.xx), var_2));
    var var_4 = -select(_wgslsmith_mod_vec4_i32(vec4<i32>(max(-789i, u_input.a), u_input.a ^ -22041i, _wgslsmith_sub_i32(u_input.a, 31956i), u_input.a), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -23307i, u_input.a, u_input.a), vec4<i32>(66580i, 1i, u_input.a, 1i)))), _wgslsmith_div_vec4_i32(abs(~vec4<i32>(-35013i, u_input.a, u_input.a, u_input.a)), countOneBits(~vec4<i32>(-26728i, u_input.a, u_input.a, u_input.a))), select(!select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(-32175i == u_input.a, var_0.x && false, false, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false), !vec4<bool>(true, true, false, var_0.x), var_0.x)));
    return _wgslsmith_mult_vec3_i32(~(~vec3<i32>(-var_4.x, u_input.a << (71982u % 32u), 2147483647i)), vec3<i32>(((u_input.a ^ var_4.x) >> (1u % 32u)) | u_input.a, -(i32(-1i) * -22083i), i32(-1i) * -28850i));
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_add_u32(16827u, _wgslsmith_mod_u32(~u_input.e.x, u_input.e.x)), _wgslsmith_div_f32(1423f, 204f));
    var_0 = Struct_1(6730u, var_0.b);
    var_0 = Struct_1(var_0.a, -786f);
    let var_1 = any(select(vec2<bool>(true, !(var_0.b == var_0.b)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true))), true));
    var_0 = Struct_1(70881u, _wgslsmith_f_op_f32(1726f + _wgslsmith_f_op_f32(var_0.b + var_0.b)));
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, u_input.d) & u_input.c, _wgslsmith_add_u32(23609u, u_input.e.x ^ u_input.e.x)), _wgslsmith_mult_u32(var_0.a, firstLeadingBit(u_input.e.x))), Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.b, 71012u))), ~abs(vec4<u32>(3292u, var_0.a, u_input.d, 15052u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, 512f, var_1))))), Struct_1(6295u, 1000f), Struct_1(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1280f)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(select(0i, 0i, false) & select(-22098i, 38217i, true), u_input.a, u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.d.b)), _wgslsmith_f_op_f32(max(1012f, -567f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1))));
    var var_3 = u_input.a;
    let var_4 = Struct_2(u_input.e.x, func_4(-reverseBits(-var_0)).d, Struct_1(firstTrailingBit(_wgslsmith_mod_u32(1u, arg_0.b.a)), _wgslsmith_div_f32(var_2.x, -912f)), arg_0.c);
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    let var_0 = countOneBits(u_input.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(852f)) + _wgslsmith_f_op_f32(1353f - 1241f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1743f - 1160f)), 1206f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1017f, -618f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-942f, -125f)))) - vec2<f32>(_wgslsmith_div_f32(-1393f, 827f), _wgslsmith_f_op_f32(180f * -1747f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-474f, -860f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-204f, -533f)))))))));
    var var_2 = arg_2.x;
    var var_3 = Struct_1(var_0, -1372f);
    var var_4 = func_5(func_4(_wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, -20522i, -698i), vec3<i32>(u_input.a, u_input.a, 88688i)), func_2(), vec3<i32>(firstTrailingBit(arg_1), _wgslsmith_clamp_i32(20808i, arg_1, -27257i), firstLeadingBit(-2147483647i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.b, var_3.b)))));
    return -2402f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(select(all(vec2<bool>(false, true)) || true, all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true))), false, any(vec2<bool>(true, true)));
    var var_1 = Struct_2(~0u, Struct_1(_wgslsmith_add_u32(48663u, u_input.b), 2572f), Struct_1(u_input.e.x | 26029u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-793f)), _wgslsmith_f_op_f32(-398f - -386f)))), Struct_1(~(min(14355u, 1u) | select(u_input.c, u_input.c, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f + -133f) * _wgslsmith_f_op_f32(trunc(-323f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f * 852f)), _wgslsmith_f_op_f32(func_1(var_0, u_input.a, vec3<u32>(0u, 0u, 0u))) != _wgslsmith_f_op_f32(f32(-1f) * -916f)))));
    let var_2 = _wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, var_0.x)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a, -1i)), ~vec2<i32>(u_input.a, -1i), vec2<i32>(~6128i, u_input.a)), ~(~vec2<i32>(u_input.a, u_input.a)), false), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -28066i) >> (u_input.e.xz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), var_0.xz), -vec2<i32>(78169i, u_input.a))));
    var var_3 = vec2<u32>(var_1.b.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(min(u_input.b & var_1.b.a, _wgslsmith_clamp_u32(u_input.e.x, 0u, 342u)), var_1.d.a), u_input.e.x));
    let var_4 = u_input.e.zz;
    var_3 = firstLeadingBit(var_4);
    var var_5 = reverseBits(u_input.e.xy);
    var var_6 = ~(~1609u);
    var var_7 = Struct_1(func_4(reverseBits(firstTrailingBit(vec3<i32>(-9333i, var_2.x, u_input.a)))).b.a, _wgslsmith_f_op_f32(-var_1.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~(select(vec3<i32>(2147483647i, 7237i, 15834i), vec3<i32>(2147483647i, 2147483647i, -2147483647i), false) ^ select(vec3<i32>(var_2.x, 3236i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, false))), vec3<i32>(54847i ^ firstLeadingBit(u_input.a), ~var_2.x >> (u_input.c % 32u), _wgslsmith_div_i32(-44210i, -2147483647i))));
}

