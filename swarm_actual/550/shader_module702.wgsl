struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -865f, -803f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)));
    return -vec4<i32>(-u_input.b, u_input.b, i32(-1i) * -_wgslsmith_add_i32(40173i, u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, 2147483647i, -1i), vec3<i32>(u_input.b, 2147483647i, u_input.b), true), -vec3<i32>(-2147483647i, 0i, 10202i)), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, -21389i, u_input.b), vec3<i32>(u_input.b, 59387i, u_input.b))));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 26316i) >> (vec4<u32>(24765u, 25704u, 17101u, u_input.a) % vec4<u32>(32u))), reverseBits(reverseBits(vec4<i32>(0i, u_input.b, u_input.b, -1488i)))) ^ select(firstTrailingBit(func_3(-560f)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-7357i, u_input.b, -15672i, -28552i) | vec4<i32>(-4968i, 1i, 32083i, 0i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), func_3(-2301f), false);
    var var_1 = vec3<u32>(u_input.a, u_input.a, 0u);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-119f, _wgslsmith_f_op_f32(440f * 322f))), global0.x, 173f)));
    return -_wgslsmith_mult_vec4_i32(firstTrailingBit(reverseBits(var_0 >> (vec4<u32>(4294967295u, 28701u, 4294967295u, var_1.x) % vec4<u32>(32u)))), var_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1393f), global0.x))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1273f))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1266f, global0.x, -472f), vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1896f))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true))), vec3<f32>(_wgslsmith_f_op_f32(-1109f + global0.x), 111f, 1000f), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(false, all(vec3<bool>(true, true, true)), u_input.a >= u_input.a), vec3<bool>(false, all(vec2<bool>(true, false)), true)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.zz, vec2<f32>(-1000f, global0.x))), _wgslsmith_f_op_vec2_f32(-global0.xy))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(1455f, global0.x))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.zx))));
    let var_1 = Struct_1(~reverseBits(firstLeadingBit(vec3<i32>(-1i, -1893i, 2147483647i))), -_wgslsmith_add_vec3_i32((vec3<i32>(-23265i, 25041i, u_input.b) ^ arg_0.zxw) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(15260u, 4294967295u, 1u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(arg_0.wyx >> (vec3<u32>(u_input.a, 42137u, 65332u) % vec3<u32>(32u)), arg_0.ywx ^ arg_0.zzw)), 704f, vec2<u32>(min(18535u, u_input.a), u_input.a), vec4<u32>(~1u << (0u % 32u), abs(~u_input.a), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 78913u)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 75158u, u_input.a), vec3<u32>(48876u, 35262u, 4294967295u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), 69838u));
    return Struct_1(select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i >> (u_input.a % 32u), arg_1, arg_0.x), ~min(vec3<i32>(arg_0.x, var_1.b.x, 56592i), arg_0.xxx)), -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, u_input.b, var_1.b.x), vec3<i32>(arg_1, arg_0.x, arg_1), var_1.b), arg_0.zyz), all(vec4<bool>(true, true, true, true))), -(~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.b, 1i, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.x, arg_1, arg_1), vec3<i32>(0i, 28222i, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), ~(~(max(var_1.e.wy, var_1.e.wx) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)))), vec4<u32>(10614u, 4294967295u, ~countOneBits(u_input.a), reverseBits(~27855u)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = u_input.a;
    let var_1 = ~select(firstLeadingBit(-func_2().zw), vec2<i32>(arg_1.b.x, _wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(-1i, u_input.b, arg_1.a.x)) & _wgslsmith_div_i32(arg_1.b.x, arg_1.a.x)), -2147483647i > ((1i & arg_1.a.x) >> (_wgslsmith_mult_u32(u_input.a, arg_1.d.x) % 32u)));
    var var_2 = !all(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    let var_3 = firstLeadingBit(min(arg_1.e, ~(arg_1.e << (vec4<u32>(0u, arg_1.e.x, u_input.a, arg_1.e.x) % vec4<u32>(32u))))) << (arg_1.e % vec4<u32>(32u));
    let var_4 = arg_1;
    return select(false, true, true);
}

fn func_6(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(~vec4<i32>(func_4(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 33503i).a.x, _wgslsmith_mult_i32(15148i, u_input.b), _wgslsmith_clamp_i32(u_input.b, -2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b)), -(i32(-1i) * -9381i)), u_input.b).e.yyz;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, arg_0, _wgslsmith_f_op_f32(step(arg_0, -162f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -375f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1917f, global0.x, global0.x) * vec3<f32>(1630f, arg_0, global0.x))), vec3<f32>(1000f, 1103f, _wgslsmith_f_op_f32(select(-181f, 135f, false)))))));
    var var_1 = func_4(_wgslsmith_clamp_vec4_i32(~(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, -33581i), vec4<i32>(-2147483647i, -15773i, 1804i, u_input.b)) & _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 0i, 6331i), vec4<i32>(u_input.b, 34760i, 10453i, u_input.b))), (vec4<i32>(2147483647i, u_input.b, -69352i, 33499i) | select(vec4<i32>(u_input.b, -19625i, u_input.b, 15283i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(arg_1, false, false, arg_1))) | func_3(_wgslsmith_f_op_f32(trunc(-1037f))), func_2()), -(~u_input.b >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_0.x, 0u), ~vec3<u32>(var_0.x, u_input.a, 29986u)) % 32u)));
    var var_2 = func_4(vec4<i32>(firstTrailingBit(i32(-1i) * -46849i), select(-32541i >> (~u_input.a % 32u), var_1.a.x & -u_input.b, _wgslsmith_div_u32(1u, 1u) > ~var_1.e.x), firstLeadingBit(0i), u_input.b), select(reverseBits(43309i), max(-2147483647i, countOneBits(15362i)), !any(!vec4<bool>(false, true, true, arg_1))));
    var var_3 = func_4(vec4<i32>((var_1.b.x | 2147483647i) << (var_0.x % 32u), _wgslsmith_clamp_i32(select(var_2.a.x, 271i, false), abs(var_2.a.x), var_1.a.x), 1i, ~(-2147483647i)) | vec4<i32>(-var_1.b.x, ~(~var_1.a.x), 0i >> (_wgslsmith_div_u32(37794u, u_input.a) % 32u), i32(-1i) * -2147483647i), -23586i);
    return func_4(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 7079i, -27124i, 0i) << (vec4<u32>(4294967295u, var_2.d.x, 80456u, var_1.d.x) % vec4<u32>(32u)), abs(vec4<i32>(var_1.a.x, 22067i, 0i, 0i))) << (var_2.e % vec4<u32>(32u)), -1i);
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_1.c, arg_1.c))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1112f, -634f, -1000f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_0, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1163f, -1634f) * vec3<f32>(667f, arg_0, arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(877f))), arg_1.c, _wgslsmith_f_op_f32(arg_1.c + arg_1.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-623f, 1434f, arg_1.c))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.c, 753f, -1000f), vec3<f32>(arg_0, -1000f, -648f)))))))), false));
    let var_0 = arg_1;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f * arg_1.c) + 778f), false)) * _wgslsmith_f_op_f32(f32(-1f) * -527f)), _wgslsmith_f_op_f32(-arg_1.c), 424f);
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(23683u, abs(_wgslsmith_add_u32(max(1u, u_input.a), abs(1u))), ~5391u), vec3<u32>(6229u, func_6(_wgslsmith_f_op_f32(-690f * 1588f), true).d.x, max(1u, ~u_input.a)) << (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)));
    let var_2 = Struct_1(abs(arg_1.b), arg_1.b, _wgslsmith_f_op_f32(floor(var_0.c)), abs(~_wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.a, 6071u), arg_1.e.xw), vec2<u32>(u_input.a, 22334u))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 23761u, 66u, 1u), ~var_0.e) | ~select(vec4<u32>(1u, var_0.d.x, 11778u, 71633u), var_0.e, false), firstTrailingBit(select(vec4<u32>(arg_1.d.x, 15832u, 45954u, arg_1.d.x), var_0.e, vec4<bool>(true, true, true, true)))));
    return func_4(~firstLeadingBit(~(vec4<i32>(var_2.a.x, 6520i, arg_1.b.x, var_2.b.x) | vec4<i32>(var_0.a.x, var_0.b.x, u_input.b, 2147483647i))), arg_1.a.x ^ var_0.b.x);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_7(_wgslsmith_f_op_f32(-global0.x), func_6(_wgslsmith_f_op_f32(global0.x + global0.x), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * -2336f), func_4(func_2(), u_input.b))));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(648f, 588f, global0.x), vec3<f32>(global0.x, var_0.c, var_0.c)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2092f, 536f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1204f, -618f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - _wgslsmith_f_op_f32(-var_0.c))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1420f, -561f, _wgslsmith_f_op_f32(f32(-1f) * -1385f)), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(abs(var_0.c)), global0.x), !select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false))))));
    var_0 = Struct_1(vec3<i32>(u_input.b, max(_wgslsmith_mult_i32(firstTrailingBit(0i), func_2().x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(4465i, 28434i, var_0.a.x), _wgslsmith_mod_i32(var_0.b.x, var_0.b.x))), (firstLeadingBit(var_0.b.x) << (select(4294967295u, var_0.e.x, false) % 32u)) | 1i), vec3<i32>(-419i, u_input.b, 1i) & ~min(vec3<i32>(25865i, var_0.b.x, -2147483647i), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(464f, _wgslsmith_f_op_f32(trunc(func_6(337f, false).c)))), ~reverseBits(vec2<u32>(firstLeadingBit(23843u), var_0.d.x)), ~func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-33170i, 0i, -8709i, u_input.b)), select(vec4<i32>(2147483647i, -1i, 1i, var_0.b.x), vec4<i32>(-56850i, var_0.b.x, -2147483647i, 47989i), arg_0)), -u_input.b).e);
    var var_2 = var_1.x;
    return 43694i;
}

fn func_8(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    return StorageBuffer(vec2<i32>(arg_2.b.x, 21010i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = (any(vec2<bool>(true, true)) && ((u_input.b > _wgslsmith_mod_i32(u_input.b, u_input.b)) && true)) || ((~u_input.a & _wgslsmith_mult_u32(~u_input.a, 0u)) > (_wgslsmith_mod_u32(36337u, select(u_input.a, 116066u, true)) >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)));
    let var_4 = Struct_1(countOneBits(min(vec3<i32>(u_input.b & -3467i, _wgslsmith_mult_i32(u_input.b, u_input.b), 60882i | u_input.b), -abs(vec3<i32>(u_input.b, 2147483647i, 1i)))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -44176i, 35747i) << (vec3<u32>(u_input.a, u_input.a, 46543u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(75279i, 0i, u_input.b))) | (firstTrailingBit(vec3<i32>(1i, u_input.b, -71189i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b)) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, 1i)), -1i, abs(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1284f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + -674f), 1000f))), vec2<u32>(0u, 1924u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 20434u)), ~vec4<u32>(1u, u_input.a, 16866u, 66009u)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(32187u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(1u, u_input.a, 31134u, 54519u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 1u, 0u, 24970u)))));
    let x = u_input.a;
    s_output = func_8(vec3<bool>((-2147483647i >> (u_input.a % 32u)) < (i32(-1i) * -var_4.a.x), true, true), Struct_1(var_4.a, vec3<i32>(-func_1(false), u_input.b, ~min(-1i, var_4.b.x)), -1360f, ~var_4.d, abs(var_4.e)), Struct_1(abs(var_4.b), var_4.a, _wgslsmith_f_op_f32(max(-1000f, 780f)), ~var_4.e.yw, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(105763u, u_input.a), 31508u, u_input.a, 1u), func_4(vec4<i32>(-11152i, var_4.b.x, var_4.a.x, u_input.b), 2147483647i).e)));
}

