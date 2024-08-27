struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 2633i, 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(~(~vec3<u32>(u_input.b.x, arg_0.a.a, 39729u)) | vec3<u32>(arg_0.a.a, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(14448u, 1792u), u_input.b)), vec4<u32>(_wgslsmith_mod_u32(32048u, 0u << (u_input.b.x % 32u)), abs(u_input.b.x >> (73944u % 32u)), firstTrailingBit(1u), ~(~arg_0.a.a)), any(vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, false)))), -1i), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), true), !vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, select(arg_0.b.x, 41215i, true) == 1i)), -(~(-50192i)) >= ~select(max(u_input.d, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(198f, 292f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(910f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1330f + 1027f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-439f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-346f)) * _wgslsmith_div_f32(-1366f, -167f)) * 1f), -2067f));
    global0 = vec4<i32>(u_input.d, -1i, u_input.a.x, global0.x);
    global0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(abs(-1i) << (u_input.b.x % 32u), global0.x, 2147483647i, -(~u_input.c)), vec4<i32>(~(~var_0.a.d), -(20154i >> (var_0.a.a.x % 32u)), arg_0.b.x, 29406i & arg_0.b.x) | ~(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, global0.x, global0.x, u_input.c), vec4<i32>(arg_0.b.x, u_input.d, 2147i, var_0.a.d)) | ~vec4<i32>(u_input.d, arg_0.b.x, 22647i, -2147483647i)));
    global0 = ~vec4<i32>(arg_0.b.x, arg_0.b.x, 97160i, firstTrailingBit(_wgslsmith_clamp_i32(global0.x, global0.x, 0i))) & (vec4<i32>(~abs(u_input.c), 0i, arg_0.b.x, _wgslsmith_sub_i32(global0.x, -44987i)) << (vec4<u32>(arg_0.a.a, 9264u, 0u, 4294967295u) % vec4<u32>(32u)));
    var var_1 = var_0;
    return select(select(vec3<bool>(true && all(vec4<bool>(false, false, var_0.c, var_0.a.c)), !all(vec2<bool>(var_1.a.c, true)), var_1.c), vec3<bool>(false, true, true), !select(vec3<bool>(var_1.a.c, var_0.c, var_1.c), !vec3<bool>(true, var_0.c, var_1.c), select(false, var_0.c, var_0.b.x))), select(select(!(!vec3<bool>(var_1.c, var_0.c, var_0.a.c)), vec3<bool>(var_1.b.x & false, true, any(vec4<bool>(true, true, var_0.b.x, var_1.c))), false), vec3<bool>(true, true, true), vec3<bool>(true, all(!vec2<bool>(false, var_0.b.x)), var_0.a.c)), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-746f, _wgslsmith_f_op_f32(1298f * -828f)))) != -1200f);
    let var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !(u_input.b.x >= u_input.b.x)), !select(func_3(Struct_5(Struct_3(u_input.b.x), vec2<i32>(u_input.a.x, -8308i))), vec3<bool>(true, true, true), func_3(Struct_5(Struct_3(u_input.b.x), u_input.a.zx))), !(!vec3<bool>(true, false, any(vec2<bool>(false, true)))));
    let var_2 = !(!(-1i >= -_wgslsmith_mult_i32(u_input.c, arg_1.x)));
    var_0 = _wgslsmith_add_i32(u_input.d, -26584i ^ _wgslsmith_dot_vec4_i32(arg_1, _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(arg_1.x, 30555i, arg_0.x, 23932i), arg_1))) == (u_input.d >> (~53892u % 32u));
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(arg_1.wxz & arg_1.wyw, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -38459i, 1i), -vec3<i32>(u_input.a.x, global0.x, arg_1.x)), min(_wgslsmith_div_vec3_i32(u_input.a, global0.ywz), max(global0.yyw, vec3<i32>(arg_0.x, -7496i, u_input.c))));
    return 1234f;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> vec3<u32> {
    global0 = firstLeadingBit(abs(vec4<i32>(global0.x, i32(-1i) * -12707i, global0.x, 1i)));
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1437f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1297f * 755f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) + _wgslsmith_f_op_f32(abs(-269f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-910f - -1187f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~arg_1.yw, vec4<i32>(u_input.c, arg_1.x, arg_1.x, 39961i))) - 1f))));
    var var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(arg_0, true), true)));
    var var_2 = arg_0;
    global0 = min(_wgslsmith_div_vec4_i32(-arg_1 | max(vec4<i32>(u_input.a.x, u_input.a.x, global0.x, -33172i), vec4<i32>(81418i, 17278i, global0.x, arg_1.x)), -arg_1), vec4<i32>(max(global0.x, -31698i), 40894i, _wgslsmith_dot_vec3_i32(vec3<i32>(21048i, 20549i, -1i), global0.xww ^ vec3<i32>(u_input.a.x, -5751i, -2147483647i)), global0.x)) << ((~(~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 34339u))) << (vec4<u32>(~0u, ~min(u_input.b.x, 4294967295u), firstTrailingBit(firstTrailingBit(u_input.b.x)), 15660u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(abs(~1u), abs(14237u), u_input.b.x << (1u % 32u)), ~(~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~(u_input.d | -33209i), (-2147483647i >> (u_input.b.x % 32u)) >> (1u % 32u)), ~func_1(all(vec2<bool>(true, true)), vec4<i32>(10819i, global0.x << (1u % 32u), global0.x, -7761i)), vec2<u32>(_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), func_1((-1i ^ u_input.a.x) <= 27902i, vec4<i32>(0i, -1i, u_input.c << (u_input.b.x % 32u), firstLeadingBit(-2147483647i))).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-13210i, -19905i, global0.x), vec3<i32>(-2147483647i, u_input.c, global0.x)), min(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 2147483647i, u_input.c), vec3<i32>(global0.x, -17192i, u_input.a.x)), abs(u_input.a))), global0.x, global0.x ^ -59203i));
}

