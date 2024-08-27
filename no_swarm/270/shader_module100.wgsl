struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(555f, -1000f, 226f, 859f), vec4<f32>(-1414f, 2029f, -1285f, 1000f), vec3<u32>(38183u, 1u, 18739u), 9874i);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1000f, -536f, 1000f, 1273f), vec4<f32>(-165f, -100f, 442f, 733f), vec3<u32>(41230u, 16673u, 0u), 1i);

var<private> global2: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-759f, -1068f, -2540f, 520f), vec4<f32>(1000f, -511f, 1687f, -237f), vec3<u32>(15682u, 0u, 20241u), -8432i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec2<bool>(!(true || (_wgslsmith_div_i32(global4.d, global1.d) != 1i)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 1000f) * global1.a.yy);
    let var_2 = global2.x;
    var_0 = select(!select(!(!vec2<bool>(var_0.x, true)), select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x))), select(vec2<bool>(true, var_0.x), select(!select(vec2<bool>(var_0.x, false), vec2<bool>(false, true), true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false)), ~4184u > countOneBits(u_input.a.x)), vec2<bool>(var_0.x, true)), vec2<bool>(var_0.x, var_0.x));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1179f, -1000f, _wgslsmith_div_f32(-547f, var_1.x), -1000f))) - _wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global4.a.x, global4.b.x, 697f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1002f, global1.b.x, global1.b.x, 154f), vec4<f32>(-1451f, 1000f, global0.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(sign(global1.a))) - global4.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(var_1.x, -330f, -959f, global0.a.x)) - global0.a)))), vec3<u32>(68353u, ~_wgslsmith_mod_u32(countOneBits(0u), ~0u), 33610u), global4.d & 0i);
    return vec2<bool>(false, false);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.b))))), global1.b, vec3<u32>(1u, global0.c.x, ~1u) >> (~countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 19466u), vec3<u32>(global0.c.x, global1.c.x, global4.c.x), global4.c)) % vec3<u32>(32u)), max(global0.d, -1432i));
    let var_1 = all(func_3());
    global3 = array<vec2<u32>, 7>();
    let var_2 = vec3<i32>(global1.d, -1i, countOneBits(_wgslsmith_mult_i32(2147483647i, countOneBits(global1.d))) | firstTrailingBit(34595i));
    var var_3 = ~(~_wgslsmith_div_vec3_u32(global4.c >> (max(vec3<u32>(global1.c.x, 58815u, 17137u), global0.c) % vec3<u32>(32u)), vec3<u32>(0u, ~90967u, 1u)));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global3 = array<vec2<u32>, 7>();
    global1 = func_2(true, vec3<f32>(global1.a.x, 1f, -651f), -1i);
    var var_0 = -17297i;
    var var_1 = Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(select(-1376f, _wgslsmith_f_op_f32(f32(-1f) * -1753f), true)), -802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))))), countOneBits(firstLeadingBit(reverseBits(max(vec3<u32>(global0.c.x, 5971u, global1.c.x), vec3<u32>(u_input.a.x, global0.c.x, global1.c.x))))), _wgslsmith_mult_i32(1i, 1i) << (u_input.a.x % 32u));
    global2 = vec2<i32>(min(global1.d, 2147483647i | firstTrailingBit(-global1.d)), _wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(global2.x, global4.d)), -select(vec2<i32>(24247i, -11192i), vec2<i32>(global1.d, -1i), vec2<bool>(true, true))), ~vec2<i32>(1i, -2147483647i << (arg_0.c.x % 32u))));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, func_1(arg_0, global1.c).b.x, -805f, global0.b.x))) - _wgslsmith_f_op_vec4_f32(sign(global1.a)));
    var var_1 = 871f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2160f, global4.a.x)), global4.a.x)), -788f))));
    global3 = array<vec2<u32>, 7>();
    let var_3 = _wgslsmith_f_op_vec4_f32(global4.b - var_0);
    return Struct_1(vec4<f32>(-150f, global4.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f * global0.a.x)))), arg_0.b.x), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-418f, var_2) * var_2)), global4.a.x, _wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global4.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(215f, 1609f))))), _wgslsmith_clamp_vec3_u32(arg_0.c, select(vec3<u32>(31798u, 1u, _wgslsmith_clamp_u32(32649u, 0u, 26777u)), (global4.c | global0.c) | func_1(Struct_1(vec4<f32>(-533f, 365f, -269f, var_0.x), vec4<f32>(191f, -1304f, global1.a.x, global0.b.x), vec3<u32>(arg_0.c.x, global4.c.x, global1.c.x), 5052i), vec3<u32>(27808u, u_input.a.x, 33615u)).c, vec3<bool>(true, true, true)), ~vec3<u32>(~global0.c.x, _wgslsmith_add_u32(arg_0.c.x, global0.c.x), ~0u)), _wgslsmith_sub_i32(0i, -2147483647i << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c.x, 0u, 1u), vec3<u32>(arg_0.c.x, 1u, global0.c.x)), func_1(arg_0, vec3<u32>(22101u, global0.c.x, global0.c.x)).c) % 32u)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(func_3().x, true, false, global4.d == global1.d)), false);
    let var_1 = _wgslsmith_f_op_f32(1867f * _wgslsmith_f_op_f32(max(1120f, func_4(arg_1).a.x)));
    let var_2 = select(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.x, ~4294967295u, 4294967295u), ~firstLeadingBit(global4.c)), arg_1.c.x, var_0.x);
    let var_3 = vec4<bool>(var_0.x, true, true && select(var_0.x, true, !(291f > global1.b.x)), true);
    var var_4 = 68628i;
    return func_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.zzx)))), reverseBits(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.d, global2.x, arg_2, -2147483647i), vec4<i32>(global1.d, arg_1.d, -53909i, arg_3.x)), firstTrailingBit(-5978i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 7>();
    var var_0 = -global1.d;
    let var_1 = 35023i;
    let var_2 = 604f;
    global1 = func_5(_wgslsmith_div_vec3_f32(global4.a.yxw, _wgslsmith_f_op_vec3_f32(-global0.a.xyy)), func_4(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, 137f, -455f, -687f) + global0.b), global4.c, -global2.x), global0.c)), _wgslsmith_mod_i32(global4.d, ~0i), vec3<i32>(select(-88317i, abs(global0.d), true), _wgslsmith_add_i32(global2.x, _wgslsmith_mult_i32(0i, global4.d)), 9234i) << (~global1.c % vec3<u32>(32u)));
    var var_3 = vec4<i32>(func_1(Struct_1(vec4<f32>(-924f, global0.b.x, global4.a.x, -1433f), vec4<f32>(792f, global4.a.x, 1000f, -386f), global1.c >> (vec3<u32>(global1.c.x, global4.c.x, 99767u) % vec3<u32>(32u)), -var_1), ~vec3<u32>(global0.c.x, u_input.a.x, 5507u)).d >> (~u_input.a.x % 32u), 0i, ~global0.d, 2147483647i);
    global0 = Struct_1(vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(-307f * -115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.x * 916f), 744f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(Struct_1(global0.a, global1.a, vec3<u32>(42232u, global0.c.x, 29560u), -35747i), global0.c).a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * var_2))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) - _wgslsmith_f_op_f32(-global0.b.x)), -117f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1648f, 323f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1099f)) * var_2)))), func_4(Struct_1(global1.b, vec4<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(var_2 * -331f), -116f, global0.a.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 36953u, 1883u), _wgslsmith_add_vec3_u32(global1.c, vec3<u32>(0u, 32326u, 5536u)), vec3<u32>(u_input.a.x, 4294967295u, global1.c.x)), global0.d)).c, -1i);
    var var_4 = min(vec4<i32>(global4.d, 1651i, global0.d, (_wgslsmith_mult_i32(0i, global4.d) ^ ~(-25938i)) ^ 23579i), _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, global0.d, global1.d, -11329i), vec4<i32>(var_3.x, global2.x, 1i, -1i)), vec4<i32>(global1.d, ~var_3.x, reverseBits(-31625i), _wgslsmith_clamp_i32(var_1, 33344i, -1i)), -countOneBits(vec4<i32>(-58534i, 2147483647i, var_1, 22762i))) | (~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.d, global4.d, var_1), vec4<i32>(70251i, 0i, -1i, -1i)) ^ abs(vec4<i32>(0i, 12448i, 0i, global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global4.a.x)))), 34195i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2130f)), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-1529f * -836f)))), global0.b.x)), countOneBits(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 35700u, 29453u, 0u), vec4<u32>(19493u, 355u, u_input.a.x, global4.c.x), vec4<u32>(0u, global4.c.x, 0u, u_input.a.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 0u), vec4<u32>(global0.c.x, 93048u, global1.c.x, 3783u), vec4<u32>(1u, global1.c.x, 54036u, global4.c.x)) % vec4<u32>(32u)), ~(~vec4<u32>(global0.c.x, global0.c.x, u_input.a.x, u_input.a.x)))), _wgslsmith_sub_vec4_i32(~(~max(vec4<i32>(-1i, var_1, var_4.x, global4.d), vec4<i32>(var_3.x, -1i, 1i, 6821i))), countOneBits(vec4<i32>(global0.d, 2147483647i, ~global1.d, ~(-23343i)))));
}

