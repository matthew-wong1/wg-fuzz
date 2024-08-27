struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.d.x;
    var var_1 = var_0;
    var var_2 = -437f;
    let var_3 = Struct_1(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(true, false, true)), vec3<bool>(select(false, false, false), true, true), vec3<bool>(true, true, true)), true || !(var_0 >= -1i)), vec4<f32>(_wgslsmith_f_op_f32(-225f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2080f))))), -184f, _wgslsmith_f_op_f32(select(1046f, -209f, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-205f, -1639f), _wgslsmith_f_op_f32(f32(-1f) * -705f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-769f * -1546f), _wgslsmith_f_op_f32(435f * 973f))))), vec4<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false))), true, any(vec2<bool>(true, u_input.b.x > u_input.b.x)), true), false);
    let var_4 = vec4<u32>(abs(u_input.e), u_input.b.x, max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 33993u), vec4<u32>(1u, 27441u, 4294967295u, u_input.e))), 12554u), abs(u_input.e));
    return select(select(var_3.c.zyy, select(var_3.c.zxx, vec3<bool>(var_3.c.x, !var_3.c.x, all(var_3.c)), vec3<bool>(select(var_3.c.x, var_3.a.x, false), false, var_3.d && false)), var_3.a), !(!select(select(var_3.c.yxy, var_3.a, var_3.a), vec3<bool>(var_3.a.x, false, true), !vec3<bool>(var_3.a.x, true, true))), select(var_3.c.zxz, var_3.a, true));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.b;
    let var_1 = Struct_1(select(func_3(), select(func_3(), vec3<bool>(true, true, true), !func_3().x), select(select(all(vec3<bool>(false, false, true)), true, true), any(vec4<bool>(false, true, true, true)), !all(vec3<bool>(true, true, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(-631f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -810f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(152f, -1113f, -855f, 871f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(floor(383f)), -455f, -150f))), vec4<bool>(true, !(!select(true, false, true)), all(func_3()), true), true);
    let var_2 = 340f;
    let var_3 = var_1;
    var var_4 = select(true, !var_3.a.x, var_1.d | true);
    return ~(~_wgslsmith_clamp_u32(~49093u, var_0.x, firstTrailingBit(1u)));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec2<u32>(~(~(func_2(Struct_2(u_input.b.zy, u_input.b.x), -1i, Struct_2(vec2<u32>(109393u, u_input.e), 64605u), Struct_2(vec2<u32>(u_input.e, 4294967295u), 17560u)) << (~0u % 32u))), ~_wgslsmith_mult_u32(u_input.e, _wgslsmith_mult_u32(u_input.b.x, u_input.e)) >> (0u % 32u));
    let var_1 = Struct_1(func_3(), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1180f, 911f))), -1093f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1415f)), _wgslsmith_f_op_f32(1f + -611f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) - _wgslsmith_f_op_f32(319f * 1426f)))), select(vec4<bool>(true, (u_input.d.x < u_input.d.x) && all(vec4<bool>(false, true, true, false)), true, all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), all(vec4<bool>(true, false, false, true))), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec3<bool>(true, true, false)), false, true, true), vec4<bool>(true, true, true, true), select(false, true, true) || true)), true);
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_sub_vec4_u32(max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 30397u, u_input.b.x, u_input.e), vec4<u32>(1u, var_0.x, 66029u, 0u)), select(vec4<u32>(u_input.e, 55675u, u_input.e, 350u), vec4<u32>(134623u, 65688u, 6604u, 3536u), true)) | vec4<u32>(reverseBits(u_input.b.x), ~var_0.x, ~var_2.x, ~4294967295u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 63148u, var_0.x), vec4<u32>(26325u, 0u, u_input.e, 4294967295u) | vec4<u32>(var_0.x, 94489u, 35589u, 4294967295u), vec4<u32>(u_input.e, 56687u, u_input.e, 55592u) & vec4<u32>(var_0.x, u_input.e, u_input.b.x, 26825u))), _wgslsmith_sub_vec4_u32(~abs(abs(vec4<u32>(1u, var_2.x, u_input.b.x, var_2.x))), vec4<u32>(firstTrailingBit(0u), u_input.e, var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 4294967295u, 1u, var_2.x), reverseBits(vec4<u32>(1u, 1u, u_input.b.x, 0u))))));
    var_3 = max(_wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(u_input.b.x, var_2.x, 0u, u_input.e), vec4<u32>(u_input.e, u_input.e, var_0.x, var_3.x), false)), countOneBits(select(~vec4<u32>(168085u, 53851u, 21352u, 1u), vec4<u32>(24875u, var_0.x, 14871u, u_input.b.x) >> (vec4<u32>(var_2.x, var_2.x, u_input.b.x, var_2.x) % vec4<u32>(32u)), true))), vec4<u32>(var_2.x, 20038u, reverseBits(_wgslsmith_mult_u32(u_input.e | 0u, var_0.x)), func_2(Struct_2(countOneBits(var_0), u_input.e >> (var_2.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(21677i, 33813i), -u_input.c), Struct_2(var_2.xx, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, var_2.x, 51935u), vec4<u32>(46397u, u_input.e, var_2.x, var_2.x))), Struct_2(abs(vec2<u32>(1u, 37448u)), 25914u))));
    return vec3<bool>(func_3().x, true, !(var_1.c.x && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(797f, 789f, 262f, -240f), vec4<f32>(-781f, -812f, -459f, -1040f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-568f)), -2072f, -450f, _wgslsmith_f_op_f32(266f - -562f)))), !vec4<bool>(true, true, _wgslsmith_clamp_i32(0i, u_input.d.x, 17725i) <= -42970i, any(vec3<bool>(true, true, true))), any(select(func_1().yx, vec2<bool>(true, true), u_input.e > 53055u)));
    var var_1 = vec3<f32>(1333f, _wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -879f), var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1242f)), -354f)) - -1000f)));
    var var_2 = var_0.b.x;
    var var_3 = _wgslsmith_add_u32(~1u, u_input.b.x);
    let var_4 = Struct_1(select(func_3(), !vec3<bool>(true, !var_0.a.x, true), !select(true, false, var_0.c.x) && var_0.c.x), vec4<f32>(1311f, var_1.x, -917f, _wgslsmith_f_op_f32(-404f + var_1.x)), !select(vec4<bool>(u_input.c <= u_input.c, true, all(var_0.a.xx), var_0.d), !vec4<bool>(var_0.d, var_0.a.x, true, false), select(var_0.c, var_0.c, vec4<bool>(false, true, false, true))), var_0.d);
    var var_5 = Struct_2(~(u_input.b.xx ^ _wgslsmith_add_vec2_u32(~u_input.b.xx, u_input.b.zz)), _wgslsmith_dot_vec2_u32(vec2<u32>(~(4294967295u | u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41405u, 44116u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, 14901u, 0u), vec4<u32>(u_input.e, u_input.e, 4294967295u, 4294967295u)))), reverseBits(select(abs(vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(81460u, u_input.e), u_input.e > u_input.e))));
    var_0 = var_4;
    let var_6 = Struct_2(~(u_input.b.zx << (vec2<u32>(countOneBits(u_input.b.x), ~16122u) % vec2<u32>(32u))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.c, u_input.a.x, u_input.d.x, -27168i)), vec4<i32>(32692i, u_input.d.x, u_input.d.x, u_input.c)), -vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x) | firstTrailingBit(u_input.a)), -(u_input.c | (-28099i | u_input.d.x))), _wgslsmith_mult_i32(u_input.c, 3565i));
}

