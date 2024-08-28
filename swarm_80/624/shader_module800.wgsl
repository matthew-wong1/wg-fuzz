struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, -51085i, vec2<u32>(51049u, 1u));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(2147483647i, Struct_1(0i, -34959i, vec2<u32>(40779u, 55292u)), vec4<i32>(6803i, i32(-2147483648), -12082i, 0i)), Struct_2(i32(-2147483648), Struct_1(1i, 17261i, vec2<u32>(3455u, 44827u)), vec4<i32>(19196i, -70077i, i32(-2147483648), 2147483647i)), Struct_2(-49503i, Struct_1(i32(-2147483648), 1i, vec2<u32>(4996u, 7836u)), vec4<i32>(11532i, 18444i, -1i, -8918i)));

var<private> global2: bool = false;

var<private> global3: f32 = 1036f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = select(vec4<u32>(u_input.c, ~(~_wgslsmith_clamp_u32(4294967295u, arg_0.c.x, 106919u)), abs(_wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(0u, arg_0.c.x, u_input.b.x))), arg_0.c.x ^ abs(arg_0.c.x | global0.c.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(8535u, u_input.c, 26878u, 1u), vec4<u32>(1u, 0u, u_input.b.x, 4294967295u)) ^ 1u, ~(~_wgslsmith_add_u32(arg_0.c.x, global0.c.x)), 0u, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.b)), !select(vec4<bool>(true, any(vec3<bool>(true, false, true)), any(vec3<bool>(false, false, false)), false), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec3<bool>(false, true, true)), true), true));
    global2 = true;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1050f - 168f), 860f, true))))), 737f));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(391f, arg_1.x), arg_1.x)))));
    return -1059f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = -453f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f - _wgslsmith_f_op_f32(func_3(Struct_1(u_input.d, 26412i, vec2<u32>(0u, 40259u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-340f, 1033f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(abs(2136f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(206f * 250f), _wgslsmith_div_f32(622f, -217f)))));
    global1 = array<Struct_2, 3>();
    let var_0 = 65176u;
    global2 = !any(vec4<bool>(false, true, false, false)) & false;
    let var_1 = Struct_2(~(_wgslsmith_mod_i32(u_input.d, ~u_input.e.x) << (u_input.b.x % 32u)), Struct_1(_wgslsmith_clamp_i32(global0.b, firstLeadingBit(global0.a) ^ -6298i, -_wgslsmith_add_i32(0i, 1i)), -1i & _wgslsmith_mod_i32(-global0.a, firstTrailingBit(u_input.d)), vec2<u32>(firstLeadingBit(u_input.a.x), u_input.a.x)), firstTrailingBit(~(~reverseBits(vec4<i32>(7525i, u_input.e.x, u_input.e.x, -2147483647i)))));
    return Struct_1(global0.b >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 1u) >> (min(arg_0, arg_0) % 32u), u_input.c) % 32u), var_1.a, min(abs((u_input.b.yz >> (var_1.b.c % vec2<u32>(32u))) ^ var_1.b.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, var_0) << (var_1.b.c % vec2<u32>(32u)), var_1.b.c, ~global0.c >> (~var_1.b.c % vec2<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = vec3<f32>(arg_0, 471f, _wgslsmith_f_op_f32(func_3(func_2(u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, arg_0) + vec2<f32>(1912f, _wgslsmith_f_op_f32(round(arg_0)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_1.b, var_0.xx)), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))))));
    var var_1 = u_input.d;
    let var_2 = func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.c.x, u_input.c, arg_1.b.c.x), u_input.a)), arg_2.c));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, arg_2.c.x), u_input.a.x) & arg_1.b.c.x, arg_1.b.c.x) | max(91562u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(86875u, 55917u), u_input.a.x), reverseBits(global0.c.x)));
    return _wgslsmith_f_op_f32(round(253f));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(464f - arg_0.x), -1283f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1094f)))), global1[_wgslsmith_index_u32(global0.c.x, 3u)], func_2(firstLeadingBit(u_input.b.x)))), -1838f);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~abs(_wgslsmith_clamp_u32(u_input.c, 6751u, global0.c.x))), global0.c.x), 3u)];
    let var_2 = -9402i;
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(u_input.d, -30648i), _wgslsmith_dot_vec2_i32(var_1.c.ww, ~firstLeadingBit(u_input.e)), _wgslsmith_add_i32(arg_1 ^ abs(-11162i), -2147483647i), ~(-38623i) ^ _wgslsmith_dot_vec3_i32(var_1.c.yxz, var_1.c.wzw)) >> (~vec4<u32>(abs(118282u), var_1.b.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, var_1.b.c.x, global0.c.x), vec4<u32>(27102u, 42689u, 41901u, u_input.c)), _wgslsmith_mod_u32(73295u, 1u)) % vec4<u32>(32u));
    global0 = func_2(_wgslsmith_add_u32(5276u, select(var_1.b.c.x, firstLeadingBit(~var_1.b.c.x), true)));
    return func_2(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false))), vec3<bool>(!(!all(vec3<bool>(true, false, false))), true, true), true);
    let var_1 = Struct_2(1i, func_1(vec2<f32>(-296f, -763f), 9204i), -(_wgslsmith_mod_vec4_i32(vec4<i32>(31616i, u_input.d, -1394i, global0.b), abs(vec4<i32>(36250i, 45909i, 18658i, 29189i))) | (-vec4<i32>(global0.a, global0.a, global0.a, 0i) | select(vec4<i32>(12654i, u_input.d, 8206i, -61532i), vec4<i32>(10180i, global0.a, global0.b, global0.a), vec4<bool>(var_0.x, true, true, var_0.x)))));
    global1 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(max(firstLeadingBit(22833u), 23668u), var_1.b.c.x >> (21620u % 32u)), ~78098u), vec3<u32>(53813u ^ global0.c.x, _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.a), firstTrailingBit(vec3<u32>(global0.c.x, global0.c.x, global0.c.x))), global0.c.x));
    let var_3 = ~(-3517i);
    var var_4 = Struct_2(var_3, Struct_1(u_input.e.x, i32(-1i) * -2147483647i, ~vec2<u32>(~global0.c.x, 1u)), ~vec4<i32>(reverseBits(_wgslsmith_mod_i32(global0.a, 40568i)), -2147483647i, ~(-global0.a), _wgslsmith_div_i32(var_1.b.a, abs(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(-308f, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.c.yw, var_4.c.yx), firstLeadingBit(u_input.e)) << (_wgslsmith_div_vec2_u32(select(var_1.b.c, vec2<u32>(u_input.b.x, global0.c.x), var_0.zx), _wgslsmith_sub_vec2_u32(vec2<u32>(var_4.b.c.x, var_1.b.c.x), u_input.b.zy)) % vec2<u32>(32u)), vec2<i32>(-26714i, abs(firstTrailingBit(-13386i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-1280f * -450f), global1[_wgslsmith_index_u32(~45661u, 3u)], func_2(1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-812f, -474f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-280f * -410f), 2055f)))));
}

