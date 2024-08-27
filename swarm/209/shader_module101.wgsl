struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-817f, -716f, 413f, -1145f), vec4<f32>(1518f, 106f, 277f, -336f), vec4<f32>(1087f, -283f, 350f, -198f), vec4<f32>(-456f, -528f, 2445f, -830f), vec4<f32>(-1000f, -1036f, -240f, 390f), vec4<f32>(-680f, 1090f, 552f, -1000f), vec4<f32>(418f, 1000f, 1273f, -813f), vec4<f32>(-666f, -1043f, 115f, 195f), vec4<f32>(489f, -2080f, -290f, -163f), vec4<f32>(-396f, -181f, 1420f, -1749f), vec4<f32>(195f, -1000f, 1000f, 727f), vec4<f32>(-615f, -631f, 187f, -1390f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global1 = array<vec4<f32>, 12>();
    return _wgslsmith_sub_vec3_u32(~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(20376u, 26674u, 30033u) & vec3<u32>(global0.x, u_input.a, global0.x), vec3<u32>(1u, 1u, 4294967295u) ^ vec3<u32>(u_input.b, 49571u, global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(0u, 1860u, u_input.b))), vec3<u32>(global0.x, 0u, 0u) & ~vec3<u32>(1u, global0.x, 4294967295u)), max(abs(min(vec3<u32>(6200u, global0.x, 41396u), vec3<u32>(32771u, 4294967295u, u_input.b))) | vec3<u32>(reverseBits(u_input.a), _wgslsmith_mult_u32(4294967295u, u_input.a), ~1u), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.x, 93007u), vec3<u32>(u_input.b, u_input.b, global0.x)) ^ vec3<u32>(global0.x, 80963u, 49779u))));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(arg_0.a, u_input.b, arg_0.c, vec3<i32>(arg_0.d.x, arg_0.d.x, (arg_0.d.x << (22570u % 32u)) & ~arg_0.a.d), vec3<u32>(abs(global0.x), arg_0.b, arg_0.a.a.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), arg_0.c);
    global1 = array<vec4<f32>, 12>();
    let var_2 = _wgslsmith_f_op_vec2_f32(min(var_1, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f * 371f) - arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(sign(308f))), var_0.a.b.x)), _wgslsmith_f_op_f32(select(2548f, -801f, var_0.a.b.x)))));
    global1 = array<vec4<f32>, 12>();
    return select(!vec4<bool>(!arg_0.a.b.x, false, var_0.c > _wgslsmith_f_op_f32(-var_2.x), true), vec4<bool>(arg_0.a.b.x, true, true, any(vec2<bool>(var_0.d.x >= 0i, true))), true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = func_4(Struct_2(Struct_1(func_3(_wgslsmith_add_i32(43617i, 1i)), vec3<bool>(all(arg_0.a.b.zy), any(arg_0.a.b), arg_0.a.b.x || arg_0.a.b.x), _wgslsmith_mod_u32(arg_1.x, 4294967295u) >> (0u % 32u), arg_0.d.x), _wgslsmith_mult_u32(0u, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 658f))), max(vec3<i32>(-26512i, arg_0.a.d, arg_0.d.x), vec3<i32>(-1i) * -vec3<i32>(arg_2, arg_0.d.x, 2147483647i)), (vec3<u32>(741u, global0.x, u_input.b) & vec3<u32>(arg_1.x, u_input.a, 23166u)) >> (countOneBits(~vec3<u32>(19520u, global0.x, global0.x)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.b, ~reverseBits(1u)), vec2<u32>(~arg_0.e.x, abs(arg_1.x)));
    var_0 = vec4<bool>(false, !var_0.x, !arg_0.a.b.x, true);
    var var_2 = Struct_1(arg_0.a.a, !var_0.xzy, u_input.b, _wgslsmith_clamp_i32(~arg_2 >> (~_wgslsmith_dot_vec3_u32(arg_1, arg_1) % 32u), arg_2, arg_2));
    global1 = array<vec4<f32>, 12>();
    return global0.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_1.e.xy;
    var var_0 = Struct_1(~(~arg_0.a.a), arg_1.a.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(37308u, 17624u), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.c, 37823u, 4294967295u, arg_0.e.x), vec4<u32>(48350u, arg_2.e.x, 42542u, 30475u))), max(vec4<u32>(41553u, 4294967295u, 4294967295u, global0.x), ~vec4<u32>(1u, arg_0.b, 1u, 20804u)))), arg_1.a.d);
    var var_1 = Struct_2(Struct_1(reverseBits(vec3<u32>(arg_2.b, arg_0.a.a.x, 1u) | vec3<u32>(0u, global0.x, global0.x)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.e, arg_1.a.a), ~arg_2.e) % vec3<u32>(32u)), !func_4(arg_2).wyy, arg_2.b, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_2.a.d, 2147483647i) >> (~global0.x % 32u), _wgslsmith_sub_i32(-2147483647i, arg_1.d.x) ^ abs(arg_2.a.d))), 5774u, -187f, select(arg_2.d, _wgslsmith_add_vec3_i32(min(arg_2.d, arg_2.d), vec3<i32>(var_0.d, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, arg_0.a.d, 41936i), vec3<i32>(arg_0.d.x, 0i, -2147483647i)))), arg_0.a.b), vec3<u32>(4294967295u, _wgslsmith_div_u32(97509u, ~19808u >> (countOneBits(50847u) % 32u)), 11978u));
    let var_2 = Struct_2(arg_0.a, max(~arg_0.a.c, firstLeadingBit(_wgslsmith_mult_u32(~global0.x, reverseBits(arg_1.e.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2.c, arg_0.c)))), 2581f)), countOneBits(reverseBits(~vec3<i32>(29976i, 1i, arg_2.a.d))) >> (vec3<u32>(var_0.a.x, 4294967295u, arg_1.b) % vec3<u32>(32u)), reverseBits(~reverseBits(vec3<u32>(var_0.c, arg_0.a.a.x, arg_0.e.x))));
    global0 = arg_1.a.a.zy;
    return Struct_1(var_0.a, func_4(arg_0).yzw, _wgslsmith_mult_u32(4294967295u, ~func_3(~(-29393i)).x), -2147483647i);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(vec3<u32>(45983u, ~firstTrailingBit(u_input.b), 0u), !vec3<bool>(false, true, all(vec3<bool>(false, arg_0.x, false))), global0.x, abs(arg_1.d));
    var_0 = func_5(Struct_2(arg_1, max(func_2(Struct_2(Struct_1(vec3<u32>(39058u, u_input.a, 0u), vec3<bool>(arg_0.x, arg_0.x, false), var_0.c, 1i), u_input.b, 505f, vec3<i32>(arg_1.d, arg_1.d, -44198i), var_0.a), arg_1.a, 42759i) | ~4294967295u, func_3(-var_0.d).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_add_vec3_i32(abs(countOneBits(vec3<i32>(var_0.d, arg_1.d, var_0.d))), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(arg_1.d, -1i, arg_1.d)), vec3<i32>(-10782i, var_0.d, 2147483647i))), var_0.a), Struct_2(arg_1, select(_wgslsmith_add_u32(~4294967295u, arg_1.c), _wgslsmith_add_u32(~var_0.a.x, 1u), true), -1393f, _wgslsmith_div_vec3_i32(abs(vec3<i32>(-20342i, 20017i, var_0.d) ^ vec3<i32>(97039i, -65220i, -1i)), select(vec3<i32>(2147483647i, -1i, -24590i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d, var_0.d, arg_1.d), vec3<i32>(var_0.d, -2147483647i, arg_1.d), vec3<i32>(arg_1.d, var_0.d, -1i)), u_input.a >= u_input.a)), vec3<u32>(~arg_1.a.x, arg_1.a.x, 24106u)), Struct_2(Struct_1(var_0.a, select(arg_1.b, !vec3<bool>(true, var_0.b.x, arg_0.x), !var_0.b), 1u | ~u_input.a, 16044i), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-838f))) + 1000f), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d, -50914i, arg_1.d), vec3<i32>(3272i, var_0.d, -29975i) >> (var_0.a % vec3<u32>(32u))), _wgslsmith_mod_i32(99825i >> (0u % 32u), ~var_0.d), -arg_1.d ^ 43921i), vec3<u32>(_wgslsmith_clamp_u32(~1u, 61068u ^ u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(2711u, 1u, u_input.b), vec3<u32>(7603u, var_0.c, arg_1.a.x))), 1u, ~var_0.a.x)));
    let var_1 = select(func_4(Struct_2(arg_1, _wgslsmith_mult_u32(u_input.b >> (global0.x % 32u), 105347u & arg_1.c), -566f, -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, arg_1.d, 20123i), vec3<i32>(arg_1.d, arg_1.d, -1i)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.a, var_0.a), var_0.a))), select(!vec4<bool>(arg_0.x, arg_0.x, var_0.a.x == arg_1.c, 477i == var_0.d), vec4<bool>(false, true & func_5(Struct_2(arg_1, global0.x, 1283f, vec3<i32>(-13621i, arg_1.d, 2147483647i), var_0.a), Struct_2(arg_1, var_0.a.x, -1700f, vec3<i32>(var_0.d, 2147483647i, 22204i), vec3<u32>(var_0.c, arg_1.a.x, arg_1.c)), Struct_2(arg_1, 1u, 182f, vec3<i32>(-47218i, arg_1.d, 38977i), var_0.a)).b.x, _wgslsmith_div_i32(arg_1.d, arg_1.d) <= ~7458i, true), any(vec3<bool>(any(vec3<bool>(var_0.b.x, false, false)), arg_1.b.x, !arg_1.b.x))), func_5(Struct_2(Struct_1(firstLeadingBit(vec3<u32>(arg_1.c, arg_1.a.x, arg_1.a.x)), !vec3<bool>(false, arg_1.b.x, false), u_input.a, 1i), var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-830f - 378f), -519f)), _wgslsmith_sub_vec3_i32(vec3<i32>(-19843i, var_0.d, 26376i), vec3<i32>(-35529i, -2147483647i, 0i)), vec3<u32>(arg_1.a.x << (var_0.c % 32u), 6351u, ~var_0.c)), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(35952u, 18991u, 4294967295u)), !var_0.b, 26584u, arg_1.d), select(1u, ~1u, var_0.b.x | var_0.b.x), -937f, ~(vec3<i32>(53555i, arg_1.d, 2147483647i) << (arg_1.a % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(arg_1.a, vec3<u32>(global0.x, var_0.c, var_0.a.x)) ^ abs(arg_1.a)), Struct_2(Struct_1(~vec3<u32>(8557u, 1u, var_0.c), vec3<bool>(true, arg_0.x, var_0.b.x), firstLeadingBit(var_0.a.x), ~(-2147483647i)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c, 28824u, arg_1.a.x), vec3<u32>(global0.x, arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), firstTrailingBit(~vec3<i32>(-2147483647i, -1i, -61287i)), ~arg_1.a)).b.x);
    global0 = abs(vec2<u32>(24584u, global0.x));
    return true;
}

fn func_6(arg_0: vec4<bool>, arg_1: u32) -> vec2<u32> {
    let var_0 = func_5(Struct_2(Struct_1(vec3<u32>(4294967295u & arg_1, 1u, global0.x), !select(arg_0.yzy, vec3<bool>(arg_0.x, arg_0.x, false), true), arg_1 ^ _wgslsmith_div_u32(u_input.a, u_input.b), _wgslsmith_mult_i32(~10790i, i32(-1i) * -1i)), func_5(Struct_2(Struct_1(vec3<u32>(18836u, arg_1, 0u), vec3<bool>(arg_0.x, arg_0.x, false), global0.x, -1i), 1u, -498f, vec3<i32>(-8318i, -43511i, -45086i), vec3<u32>(global0.x, global0.x, 1u)), Struct_2(Struct_1(vec3<u32>(u_input.a, global0.x, 0u), vec3<bool>(false, false, arg_0.x), global0.x, -25408i), global0.x, -173f, vec3<i32>(-26750i, 27537i, 24714i), vec3<u32>(5410u, u_input.b, 37705u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 50012u, arg_1), arg_0.zwy, 25287u, -2147483647i), arg_1, 480f, vec3<i32>(-8860i, 29454i, -7836i), vec3<u32>(58874u, arg_1, 0u))).c & global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(877f - -457f), -412f), _wgslsmith_sub_vec3_i32(vec3<i32>(max(516i, -1i), 1i, -1i), vec3<i32>(1i, 25167i, 1i) >> (reverseBits(vec3<u32>(4294967295u, global0.x, 68134u)) % vec3<u32>(32u))), ~vec3<u32>(~global0.x, _wgslsmith_sub_u32(arg_1, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 50752u), vec3<u32>(58757u, 90426u, u_input.b)))), Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 9404u), vec3<u32>(u_input.b, u_input.b, 36480u)), vec3<bool>(true, !arg_0.x, any(arg_0.wxy)), 49988u, 0i), _wgslsmith_sub_u32(67020u, firstTrailingBit(_wgslsmith_div_u32(global0.x, global0.x))), 713f, abs(max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2454i, 2147483647i), vec3<i32>(-1i, 0i, -1i)), vec3<i32>(0i, -31749i, 21156i))), ~_wgslsmith_div_vec3_u32(func_3(54606i), ~vec3<u32>(61763u, global0.x, global0.x))), Struct_2(Struct_1(~(~vec3<u32>(15674u, 14054u, 76095u)), !vec3<bool>(arg_0.x, true, arg_0.x), ~(47637u & global0.x), _wgslsmith_mod_i32(-37652i >> (u_input.b % 32u), ~1i)), arg_1, _wgslsmith_f_op_f32(-1f), max(vec3<i32>(10211i, 1i, 1234i), vec3<i32>(0i, 0i, -48706i)) ^ select(vec3<i32>(-2989i, 10537i, -28201i) >> (vec3<u32>(u_input.a, arg_1, u_input.b) % vec3<u32>(32u)), -vec3<i32>(-81451i, 41394i, -46670i), !vec3<bool>(arg_0.x, arg_0.x, false)), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1, global0.x, 37672u)), _wgslsmith_mult_vec3_u32(vec3<u32>(15622u, 0u, 18299u), vec3<u32>(35228u, 8706u, 0u)))));
    let var_1 = Struct_1(~max(vec3<u32>(reverseBits(0u), global0.x, func_5(Struct_2(var_0, 80532u, 1000f, vec3<i32>(var_0.d, -2147483647i, 2147483647i), vec3<u32>(arg_1, global0.x, u_input.a)), Struct_2(Struct_1(vec3<u32>(1431u, var_0.c, 0u), var_0.b, 12862u, -1i), 35167u, 1566f, vec3<i32>(-7088i, -46229i, -2147483647i), vec3<u32>(global0.x, 1u, arg_1)), Struct_2(var_0, var_0.c, 136f, vec3<i32>(3135i, var_0.d, 0i), vec3<u32>(var_0.c, 1u, u_input.a))).a.x), _wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(var_0.c, 4452u, 1u)) >> (firstLeadingBit(var_0.a) % vec3<u32>(32u))), var_0.b, 1u, -2147483647i);
    let var_2 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_add_u32(81905u, arg_1), reverseBits(firstTrailingBit(arg_1)), _wgslsmith_dot_vec4_u32(vec4<u32>(12224u, var_0.c, 0u, 77255u) ^ vec4<u32>(0u, 0u, 39035u, 12154u), countOneBits(vec4<u32>(0u, 83976u, arg_1, 0u))), _wgslsmith_mult_u32(17560u, u_input.b))), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, 52788u, global0.x, global0.x)), vec4<u32>(0u, arg_1, 4294967295u, 4294967295u) << ((vec4<u32>(global0.x, 21494u, 446u, var_1.c) << (vec4<u32>(8334u, arg_1, arg_1, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(var_1.d, -23329i), 2147483647i, -67145i, min(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 0i, var_0.d), vec3<i32>(var_1.d, 1i, 0i), vec3<i32>(-1i, var_1.d, -1i)), vec3<i32>(-1i, var_1.d, var_1.d) ^ vec3<i32>(var_1.d, 7511i, var_0.d))) & ~var_0.d);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(995f * _wgslsmith_f_op_f32(f32(-1f) * -920f)))))));
    return var_2.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 12>();
    global0 = firstTrailingBit(func_6(vec4<bool>(!(u_input.a > u_input.b), true, select(true, false, func_1(vec2<bool>(false, false), Struct_1(vec3<u32>(1u, global0.x, global0.x), vec3<bool>(false, false, true), 4294967295u, 2147483647i))), 4294967295u >= select(0u, 1u, true)), ~(~u_input.a)));
    var var_0 = Struct_2(Struct_1(~(~vec3<u32>(u_input.b, u_input.b, 4294967295u)), !vec3<bool>(func_5(Struct_2(Struct_1(vec3<u32>(0u, u_input.a, 56980u), vec3<bool>(true, true, false), global0.x, -1i), 43306u, 572f, vec3<i32>(1i, 6071i, 9132i), vec3<u32>(u_input.b, global0.x, 64917u)), Struct_2(Struct_1(vec3<u32>(31529u, u_input.a, global0.x), vec3<bool>(true, false, false), 12352u, 60109i), u_input.a, -126f, vec3<i32>(-1i, 0i, 2147483647i), vec3<u32>(88020u, u_input.a, global0.x)), Struct_2(Struct_1(vec3<u32>(u_input.b, global0.x, u_input.b), vec3<bool>(false, false, true), 0u, 35778i), 47814u, 652f, vec3<i32>(-3672i, 1i, -2147483647i), vec3<u32>(global0.x, 0u, u_input.b))).b.x, true, true), ~21499u, -(~2147483647i)), 1u, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f + -2304f)), 1147f)), ~abs(vec3<i32>(1i, -1i, ~(-20866i))), ~func_5(Struct_2(func_5(Struct_2(Struct_1(vec3<u32>(22400u, u_input.b, 0u), vec3<bool>(false, false, false), u_input.a, 0i), 4294967295u, -716f, vec3<i32>(-5578i, -28764i, -4425i), vec3<u32>(global0.x, u_input.b, 0u)), Struct_2(Struct_1(vec3<u32>(5375u, global0.x, 95496u), vec3<bool>(false, true, true), global0.x, -32909i), global0.x, -592f, vec3<i32>(-1i, 5163i, 2147483647i), vec3<u32>(global0.x, 4294967295u, 1u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 2188u, u_input.a), vec3<bool>(false, false, true), global0.x, 1i), u_input.a, 591f, vec3<i32>(2147483647i, 18269i, 30342i), vec3<u32>(u_input.b, 102376u, 64032u))), global0.x, _wgslsmith_f_op_f32(687f - 490f), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, -31447i, -1i)), abs(vec3<u32>(u_input.b, global0.x, global0.x))), Struct_2(func_5(Struct_2(Struct_1(vec3<u32>(1u, global0.x, 39504u), vec3<bool>(true, false, false), u_input.a, 0i), 4956u, 926f, vec3<i32>(-1328i, -16757i, -2147483647i), vec3<u32>(global0.x, u_input.a, 54392u)), Struct_2(Struct_1(vec3<u32>(0u, 79338u, u_input.a), vec3<bool>(false, true, true), global0.x, 1i), global0.x, 787f, vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<u32>(global0.x, 4294967295u, 11570u)), Struct_2(Struct_1(vec3<u32>(u_input.b, 0u, 82485u), vec3<bool>(false, true, false), 2297u, 7000i), u_input.b, 992f, vec3<i32>(-31104i, -4152i, 1i), vec3<u32>(31262u, global0.x, global0.x))), _wgslsmith_sub_u32(4294967295u, 4294967295u), -858f, -vec3<i32>(6028i, 2147483647i, -1i), vec3<u32>(u_input.a, 42796u, u_input.a)), Struct_2(func_5(Struct_2(Struct_1(vec3<u32>(global0.x, 28110u, u_input.b), vec3<bool>(false, true, true), 46448u, -1i), u_input.b, 1153f, vec3<i32>(892i, -45033i, 2543i), vec3<u32>(1u, 44089u, u_input.b)), Struct_2(Struct_1(vec3<u32>(global0.x, u_input.b, global0.x), vec3<bool>(false, false, false), global0.x, 5463i), 44827u, -446f, vec3<i32>(2147483647i, -35251i, 2147483647i), vec3<u32>(1u, global0.x, u_input.a)), Struct_2(Struct_1(vec3<u32>(0u, u_input.b, global0.x), vec3<bool>(false, false, false), global0.x, -22437i), u_input.a, -304f, vec3<i32>(2502i, -1i, 38301i), vec3<u32>(13056u, u_input.a, 0u))), u_input.b, _wgslsmith_f_op_f32(min(-599f, -379f)), vec3<i32>(1i, 1i, 1i), ~vec3<u32>(6395u, u_input.a, 4294967295u))).a);
    global0 = _wgslsmith_clamp_vec2_u32(~func_5(Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.e.x, -2541i), max(var_0.b, u_input.a), var_0.c, var_0.d, vec3<u32>(15165u, u_input.a, 22965u)), Struct_2(func_5(Struct_2(Struct_1(var_0.e, var_0.a.b, u_input.b, var_0.a.d), 107635u, -1000f, var_0.d, vec3<u32>(107949u, 31968u, global0.x)), Struct_2(Struct_1(vec3<u32>(var_0.b, 55250u, 0u), var_0.a.b, global0.x, var_0.a.d), 4294967295u, -972f, vec3<i32>(var_0.d.x, 1i, var_0.d.x), vec3<u32>(53370u, var_0.b, 30192u)), Struct_2(var_0.a, var_0.a.c, var_0.c, var_0.d, var_0.e)), var_0.e.x, _wgslsmith_f_op_f32(var_0.c * var_0.c), ~vec3<i32>(var_0.d.x, -1i, var_0.d.x), var_0.e), Struct_2(Struct_1(var_0.e, vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), u_input.a, var_0.d.x), ~4294967295u, 1f, abs(vec3<i32>(13133i, var_0.a.d, var_0.a.d)), var_0.e)).a.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(global0.x, var_0.b)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(4294967295u, 68464u))), ~(~(~var_0.a.a.zz))), ~vec2<u32>(abs(~var_0.a.a.x), u_input.a));
    var var_1 = var_0.b;
    var var_2 = Struct_1(select(_wgslsmith_clamp_vec3_u32(var_0.a.a, max(select(vec3<u32>(20993u, 12002u, global0.x), var_0.a.a, vec3<bool>(var_0.a.b.x, var_0.a.b.x, true)), var_0.e), ~vec3<u32>(4294967295u, global0.x, var_0.b)), var_0.a.a ^ max(~vec3<u32>(var_0.b, global0.x, global0.x), func_3(var_0.a.d)), !var_0.a.b), var_0.a.b, _wgslsmith_sub_u32(global0.x, ~(~(~u_input.a))), 0i);
    global1 = array<vec4<f32>, 12>();
    var var_3 = false;
    let var_4 = func_5(Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 23398u), var_2.a), vec3<u32>(1u, 7546u, global0.x)), var_2.b, 49964u, select(-1i, var_0.a.d, false)), abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.a, 1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4592u, global0.x, 56511u, 0u), vec4<u32>(global0.x, 58196u, 4294967295u, 4294967295u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c) * -227f))), var_0.d, ~var_0.e), Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.a.x, var_2.c, u_input.a, var_2.c), vec4<u32>(var_0.b, var_2.a.x, 0u, var_2.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 50000u, var_2.a.x, 36907u), vec4<u32>(global0.x, u_input.b, 0u, var_2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(f32(-1f) * -567f))), countOneBits(~var_0.d), firstTrailingBit(max(~var_0.a.a, var_0.e))), Struct_2(Struct_1(var_2.a, var_0.a.b, _wgslsmith_div_u32(11595u, global0.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d, var_0.a.d, 22855i), vec3<i32>(var_2.d, var_2.d, var_0.a.d)))), _wgslsmith_div_u32(countOneBits(var_2.c), _wgslsmith_mod_u32(~40776u, u_input.b)), -370f, var_0.d, var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_2.a, var_4.a) >> (~var_2.c % 32u), var_2.a.x), 1u), (vec4<u32>(global0.x, 506u, var_2.c, var_2.c) & ~(vec4<u32>(1u, var_2.a.x, var_4.c, var_0.a.a.x) ^ vec4<u32>(u_input.a, global0.x, 20144u, 1u))) & max(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(13855u, 0u, var_2.c, u_input.b), vec4<u32>(102583u, global0.x, global0.x, 10390u))), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, 4294967295u, u_input.b, u_input.b), vec4<u32>(1u, global0.x, 0u, 23274u)))), 5958i);
}

