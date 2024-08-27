struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = Struct_2(~((1u | (global0.a ^ 1u)) << (global0.a % 32u)), select(select(global0.b, !global0.b, true), !vec4<bool>(global0.a < global0.a, true, !global0.d, false), true & !(global0.b.x || global0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-1102f * _wgslsmith_f_op_f32(min(480f, -1647f))), _wgslsmith_f_op_f32(max(global0.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1972f, -459f)), _wgslsmith_f_op_f32(f32(-1f) * -202f))))), -1031f), true, vec2<f32>(global0.c.x, -266f));
    global0 = Struct_2(1u >> (max(_wgslsmith_mod_u32(~global0.a, 38968u >> (global0.a % 32u)), 85895u) % 32u), vec4<bool>(true, global0.b.x, !(!select(global0.d, global0.b.x, true)), any(!vec2<bool>(true, global0.b.x))), global0.c, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(45059i, u_input.a)), _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(0i, 0i)))) == -29189i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(global0.c.x + global0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.xz + vec2<f32>(944f, 498f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.e.x, -157f)))) + global0.e)));
    var var_0 = abs(reverseBits(177700u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(global0.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.e.x, 1666f, false)), global0.e.x))), _wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1183f, global0.e.x)), 233f) + _wgslsmith_f_op_f32(floor(global0.c.x)))));
    global0 = Struct_2(global0.a, !vec4<bool>(false, true, true, !global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-var_1.x))) - vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(1039f + global0.c.x), !global0.d)), _wgslsmith_f_op_f32(max(-110f, _wgslsmith_f_op_f32(global0.c.x * var_1.x))), _wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(-1278f - var_1.x)))), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-678f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, global0.e.x)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-676f, _wgslsmith_f_op_f32(-1984f - -1026f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.e.x, -152f))) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, -710f), vec2<f32>(621f, 1165f)))))));
    return global0.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = vec2<u32>(global0.a, ~reverseBits(func_3()));
    global0 = Struct_2(firstLeadingBit(global0.a | (abs(29648u) << (_wgslsmith_div_u32(30710u, global0.a) % 32u))), !global0.b, _wgslsmith_f_op_vec3_f32(-arg_2.ywx), firstTrailingBit(-1i << (global0.a % 32u)) != -countOneBits(-34702i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yx + vec2<f32>(2149f, -134f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(951f, 562f)))))));
    var_0 = vec2<u32>(~1u, var_0.x | (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(global0.a, global0.a, 1u)) << (_wgslsmith_div_u32(~34201u, 1u) % 32u)));
    var_0 = abs(vec2<u32>(4294967295u, global0.a));
    let var_1 = Struct_2(1u, global0.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(511f)), _wgslsmith_f_op_f32(sign(-1241f)), _wgslsmith_f_op_f32(f32(-1f) * -405f)), false | !(!global0.b.x == true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(global0.c.x - arg_2.x)) * vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(floor(arg_1))))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x - 1547f), -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1991f - global0.e.x)))), Struct_1(_wgslsmith_add_i32(i32(-1i) * -u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f + _wgslsmith_f_op_f32(select(arg_2.x, arg_1, var_1.b.x)))), var_0.x >> (_wgslsmith_mult_u32(~var_0.x, countOneBits(0u)) % 32u), true, global0.a >> (~(~var_0.x) % 32u)), Struct_1(_wgslsmith_clamp_i32(arg_0, _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), i32(-1i) * -1i), _wgslsmith_f_op_f32(f32(-1f) * -162f), ~max(18869u, _wgslsmith_clamp_u32(var_1.a, 0u, 28032u)), !global0.d, reverseBits(0u)), vec2<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-611f - _wgslsmith_f_op_f32(var_1.e.x + 486f)), _wgslsmith_f_op_f32(f32(-1f) * -859f))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1.b.c;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.c.b, arg_1.b.b)), arg_0.c.b));
    var_1 = 1434f;
    var_1 = -433f;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-171f, 2088f))));
    return Struct_2(global0.a, global0.b, global0.c, arg_1.b.a <= (abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.a, 43100i), vec2<i32>(13276i, -2147483647i))) ^ arg_1.c.a), vec2<f32>(-118f, _wgslsmith_f_op_f32(-arg_0.b.b)));
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(global0.c + arg_0.c)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.e.x, global0.c.x, global0.e.x))))) + _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, global0.c.x, global0.c.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -468f, global0.c.x)))))));
    let var_1 = func_2(reverseBits(~u_input.a), -543f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1557f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.c.x) - _wgslsmith_f_op_f32(arg_0.e.x - global0.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(415f)))), -1000f));
    let var_2 = firstTrailingBit(var_1.c.a);
    global0 = arg_0;
    let var_3 = Struct_2(firstTrailingBit(_wgslsmith_mod_u32(0u, ~(~4294967295u))), arg_0.b, vec3<f32>(-117f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(173f, var_1.b.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_4(Struct_3(3356f, Struct_1(2147483647i, var_0.x, var_1.c.c, true, var_1.b.e), Struct_1(5234i, 531f, 0u, true, 100734u), arg_0.c.yx), var_1).e.x)))), any(!vec4<bool>(func_2(21281i, arg_0.e.x, vec4<f32>(-1000f, -234f, 462f, var_1.d.x)).c.d, global0.d, false, true)), var_1.d);
    return any(vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(~4673u, global0.b, global0.c, true, global0.e);
    var var_1 = false;
    var_1 = func_5(func_4(func_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-6129i, arg_1.a, arg_2.a, u_input.a), vec4<i32>(-2147483647i, -2147483647i, arg_2.a, arg_1.a)), -28806i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1332f * 485f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, 525f, arg_2.b, 340f) + vec4<f32>(arg_0.b, arg_0.b, arg_1.b, 1485f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(405f, var_0.c.x, -773f, arg_3.e.x) * vec4<f32>(arg_0.b, -232f, -1174f, arg_3.e.x)))), func_2(~(-arg_2.a), 141f, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, arg_0.b, 1011f, -804f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(675f, 1114f, var_0.c.x, 327f))))));
    var_0 = Struct_2(_wgslsmith_mod_u32(arg_3.a, ~(abs(var_0.a) ^ func_2(arg_1.a, -696f, vec4<f32>(253f, -1000f, -106f, var_0.e.x)).c.c)), arg_3.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - arg_1.b)), _wgslsmith_f_op_f32(-492f + 1000f), global0.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e.x, global0.c.x, -825f) - var_0.c), func_4(Struct_3(arg_3.e.x, arg_0, arg_1, global0.e), Struct_3(1502f, arg_0, Struct_1(1i, -186f, arg_3.a, false, 4294967295u), global0.c.zx)).c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, 2237f, -464f)) * arg_3.c))), -1i > _wgslsmith_add_i32(-44006i, max(u_input.a, u_input.a) | arg_0.a), var_0.c.yz);
    global0 = func_4(func_2(-2147483647i, _wgslsmith_f_op_f32(-arg_3.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, -1454f, arg_2.b, -365f))) + vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * arg_3.c.x), -315f, _wgslsmith_f_op_f32(-global0.c.x), arg_0.b))), Struct_3(arg_2.b, arg_1, arg_2, var_0.e));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(func_2(-2147483647i, -1410f, vec4<f32>(arg_3.e.x, 211f, -278f, -216f)).d.x, _wgslsmith_f_op_f32(var_0.c.x + 1054f)), _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-arg_1.b))) * _wgslsmith_f_op_f32(min(-579f, _wgslsmith_f_op_f32(arg_2.b + arg_0.b)))), func_2(abs(arg_1.a), arg_3.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_0.b, _wgslsmith_f_op_f32(-arg_1.b), arg_1.b))).c, Struct_1(45421i, func_2(abs(u_input.a | arg_1.a), _wgslsmith_f_op_f32(min(-308f, arg_2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, arg_2.b, 1000f, -1042f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(536f, 575f, -2274f, arg_3.e.x) - vec4<f32>(-169f, arg_0.b, 591f, -1188f)))).c.b, ~max(arg_2.c, ~1u), !var_0.b.x, var_0.a), var_0.e);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = select(global0.b, !global0.b, true);
    global0 = func_4(arg_0, func_2(-_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(0i, 24743i)), _wgslsmith_f_op_f32(-502f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -1393f))), vec4<f32>(-644f, global0.c.x, arg_0.d.x, global0.c.x)));
    global0 = Struct_2(func_1(Struct_1(2147483647i, 949f, ~0u >> (firstTrailingBit(arg_1.x) % 32u), func_1(Struct_1(-52999i, global0.c.x, 0u, false, 1u), Struct_1(-5115i, arg_0.c.b, 4781u, true, 0u), func_2(59870i, global0.c.x, vec4<f32>(global0.e.x, arg_0.a, -101f, 2022f)).b, Struct_2(1u, vec4<bool>(true, true, true, var_0.x), vec3<f32>(-765f, 975f, -373f), true, arg_0.d)).c.d, arg_0.c.e), Struct_1((i32(-1i) * -19607i) & ~arg_0.c.a, -1118f, global0.a, any(var_0.zwx), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0.c.e, 1u, 54485u, 23323u)), ~vec4<u32>(4294967295u, 9643u, 1u, 1u))), arg_0.c, Struct_2(~_wgslsmith_div_u32(global0.a, 1439u), vec4<bool>(var_0.x, arg_0.b.a != u_input.a, !global0.d, true), vec3<f32>(_wgslsmith_f_op_f32(step(global0.c.x, arg_0.a)), -273f, _wgslsmith_f_op_f32(-1000f - 1760f)), !(!arg_0.b.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(1282f, -864f) * vec2<f32>(arg_0.a, global0.c.x)))).c.e, !(!global0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 420f, -1358f) + vec3<f32>(-820f, -1065f, -766f)), _wgslsmith_f_op_vec3_f32(step(global0.c, global0.c)), func_5(func_4(Struct_3(global0.c.x, Struct_1(-7322i, 948f, 42599u, var_0.x, arg_1.x), arg_0.c, global0.c.yz), arg_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(sign(global0.c))))), var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1216f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.x, -1377f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1079f))))));
    global0 = func_4(arg_0, func_2(~(-_wgslsmith_sub_i32(arg_0.b.a, 2147483647i)), -1000f, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.c.x - -467f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1361f))), global0.e.x)));
    var var_1 = ~_wgslsmith_div_u32(global0.a, 118812u) >= arg_1.x;
    return func_2(_wgslsmith_sub_i32(-1i, abs(-18829i)) >> (global0.a % 32u), global0.e.x, vec4<f32>(-947f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f * arg_0.c.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-113f * arg_0.a)))), -1087f)).b;
}

fn func_7(arg_0: Struct_1) -> bool {
    let var_0 = ~select(_wgslsmith_sub_vec4_u32(max(firstTrailingBit(vec4<u32>(arg_0.e, 4294967295u, global0.a, arg_0.c)), ~vec4<u32>(1u, arg_0.c, 0u, 1u)), ~select(vec4<u32>(arg_0.c, arg_0.e, global0.a, 1u), vec4<u32>(arg_0.e, 96571u, 26992u, arg_0.c), global0.b)), ~(max(vec4<u32>(1u, arg_0.e, 4294967295u, 1u), vec4<u32>(arg_0.c, 35382u, 1u, 95406u)) & vec4<u32>(4294967295u, 46919u, global0.a, global0.a)), !(!vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d)));
    var var_1 = (-max(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-1i, u_input.a) & vec2<i32>(15365i, 2147483647i)) & (vec2<i32>(arg_0.a, 1i) << (~var_0.zx % vec2<u32>(32u)))) & vec2<i32>(16347i, ~(-arg_0.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(794f)) * _wgslsmith_f_op_f32(max(-645f, 1473f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.c.zx)))));
    var var_3 = global0.c.x;
    var_3 = -736f;
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, 52218u, 0u), vec4<u32>(0u, 0u, global0.a, global0.a)) << (18236u % 32u), firstTrailingBit(global0.a | 82638u)), vec4<bool>(!any(vec4<bool>(true, true, true, false)), false, func_7(func_6(func_1(Struct_1(-2147483647i, 467f, global0.a, global0.b.x, global0.a), Struct_1(73553i, -901f, 70110u, true, global0.a), Struct_1(u_input.a, global0.e.x, global0.a, global0.b.x, 19849u), Struct_2(1u, vec4<bool>(false, global0.d, true, global0.d), global0.c, global0.b.x, vec2<f32>(963f, 101f))), vec3<u32>(global0.a, 4294967295u, 4294967295u))), true), global0.c, u_input.a > -2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_1(Struct_1(-56789i, global0.c.x, 3332u, true, global0.a), Struct_1(u_input.a, global0.c.x, 23037u, false, 35294u), Struct_1(u_input.a, -1672f, global0.a, true, global0.a), Struct_2(32941u, global0.b, global0.c, global0.d, vec2<f32>(global0.c.x, global0.c.x))).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - global0.e.x)))));
    var var_0 = _wgslsmith_add_u32(func_2(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(648f, -1068f)), _wgslsmith_f_op_f32(-global0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(-743f * -519f), _wgslsmith_f_op_f32(f32(-1f) * -1950f))).c.c, (global0.a >> ((min(45241u, global0.a) << (_wgslsmith_mod_u32(56605u, 11213u) % 32u)) % 32u)) << (~global0.a % 32u));
    let var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.a, 1263u, global0.a, 0u) | (vec4<u32>(global0.a, 57104u, 85335u, global0.a) >> (vec4<u32>(global0.a, 33225u, global0.a, 1u) % vec4<u32>(32u))), select(vec4<u32>(1u, global0.a, global0.a, 0u), vec4<u32>(26173u, 4294967295u, global0.a, global0.a), true) | firstTrailingBit(vec4<u32>(global0.a, 77252u, 0u, global0.a)), firstLeadingBit(vec4<u32>(0u, 21409u, global0.a, 17771u))), min(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 59410u, 44958u, 0u), vec4<u32>(global0.a, global0.a, global0.a, global0.a)), ~vec4<u32>(1u, 99898u, global0.a, 9529u)), ~(vec4<u32>(global0.a, 4294967295u, global0.a, 15105u) << (vec4<u32>(25109u, 0u, 33782u, 9431u) % vec4<u32>(32u)))), ~(~firstLeadingBit(vec4<u32>(4294967295u, 1u, 0u, global0.a)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(429f)))) + 539f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f) * _wgslsmith_f_op_f32(select(global0.c.x, 110f, !global0.b.x))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, countOneBits(max(~u_input.a, -2147483647i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(-(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) << (vec4<u32>(global0.a, var_1.x, 1u, var_1.x) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(firstTrailingBit(min(vec4<i32>(-20924i, -2147483647i, u_input.a, u_input.a), vec4<i32>(-21003i, u_input.a, u_input.a, u_input.a))), vec4<i32>(min(u_input.a, u_input.a), ~24223i, _wgslsmith_sub_i32(u_input.a, 17429i), -2147483647i))), 1612f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-127f - 1846f))), var_2, var_2));
}

