struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(261f, vec3<bool>(true, false, true));

var<private> global1: f32 = -2287f;

var<private> global2: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-26776i, 0i, arg_1.x, arg_0), (_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-14360i, u_input.b.x, arg_1.x, arg_0)), vec4<i32>(global2.a, u_input.b.x, arg_0, 24341i)) >> (max(select(vec4<u32>(11747u, u_input.a.x, u_input.a.x, 45587u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<bool>(true, global0.b.x, false, true)), vec4<u32>(1u, 94222u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) >> ((_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(49125u, 1u, 0u, u_input.a.x), vec4<u32>(29291u, u_input.a.x, 4294967295u, 42680u)), ~vec4<u32>(u_input.a.x, 0u, 933u, u_input.a.x)) & vec4<u32>(0u << (u_input.a.x % 32u), _wgslsmith_mod_u32(34212u, u_input.a.x), abs(u_input.a.x), max(u_input.a.x, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = Struct_2(Struct_1(256f, global0.b));
    var var_2 = ~min(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(21172u, u_input.a.x, 0u), vec3<u32>(30800u, u_input.a.x, 0u))));
    let var_3 = u_input.a.x;
    var_0 = firstTrailingBit(vec4<i32>(-global2.a, 23181i, -var_0.x, -2147483647i));
    return select(var_3, 10421u, !global0.b.x);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    return ~countOneBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), global0.b.yz)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), ~u_input.a)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_mod_u32(~u_input.a.x, func_2(global2.a, abs(-min(vec3<i32>(-1i, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)))));
    global1 = _wgslsmith_f_op_f32(ceil(138f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1396f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 1302f))) * global0.a), global0.a)), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(f32(-1f) * -1364f)), 414f)))));
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 43975u, 13882u) | (~vec3<u32>(4294967295u, 1u, var_0) | _wgslsmith_clamp_vec3_u32(vec3<u32>(41667u, u_input.a.x, 11014u), vec3<u32>(var_0, 4294967295u, 38059u), vec3<u32>(var_0, var_0, 47897u))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) << (vec3<u32>(func_3(-933f, vec2<f32>(-1034f, global0.a)), ~var_0, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0, 31183u), 45392u | u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.a.x, u_input.a.x, 50507u), vec4<u32>(u_input.a.x, 35791u, 58391u, var_0))), ~(vec3<u32>(0u, 63525u, 1u) >> (vec3<u32>(var_0, u_input.a.x, var_0) % vec3<u32>(32u))))), _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_0, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, 29756u, 17960u), vec4<u32>(u_input.a.x, 86175u, 0u, 1u)), 0u)));
    global1 = _wgslsmith_f_op_f32(-arg_0);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(1109f * var_1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_div_f32(-1000f, global0.a))), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(trunc(1000f))))), global0.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = Struct_1(163f, vec3<bool>(any(select(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), select(vec4<bool>(true, true, global0.b.x, true), vec4<bool>(global0.b.x, true, false, global0.b.x), true), true)), any(!vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x)) & !global0.b.x, false));
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-100f)), vec3<bool>(global0.b.x, global0.b.x, any(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(189f, _wgslsmith_f_op_f32(f32(-1f) * -2407f))), global0.b)), ~vec2<u32>(~18519u, ~4294967295u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -320f)), select(select(global0.b, global0.b, global0.b), select(global0.b, vec3<bool>(global0.b.x, global0.b.x, true), global0.b), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-326f, _wgslsmith_f_op_f32(388f - -372f))))));
    let var_1 = Struct_4(26593i);
    global2 = var_1;
    var var_2 = select(select(vec4<bool>(false, !all(vec4<bool>(false, global0.b.x, var_0.b.a.b.x, var_0.b.a.b.x)), true, true), select(vec4<bool>(true, true, false, !global0.b.x), vec4<bool>(true, global0.b.x, arg_1.x != -808f, var_0.d.a.b.x | true), select(vec4<bool>(var_0.a.a.b.x, false, global0.b.x, var_0.d.a.b.x), vec4<bool>(false, true, true, global0.b.x), all(vec3<bool>(global0.b.x, global0.b.x, global0.b.x)))), !(any(vec2<bool>(global0.b.x, global0.b.x)) | true)), !(!vec4<bool>(true, var_0.d.a.b.x, true, var_0.d.a.b.x)), global0.b.x);
    return Struct_3(var_0.a, var_0.b, vec2<u32>(_wgslsmith_clamp_u32(var_0.c.x & ~70073u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.c.x, var_0.c.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, var_0.c.x, 3357u, 4294967295u)), reverseBits(vec4<u32>(u_input.a.x, 20202u, var_0.c.x, var_0.c.x))), var_0.c.x), ~_wgslsmith_mult_u32(u_input.a.x, 13374u)), Struct_2(var_0.b.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.wy) + vec2<f32>(_wgslsmith_f_op_f32(-245f - -846f), _wgslsmith_f_op_f32(var_0.b.a.a + -143f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1685f) + -280f), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1141f * _wgslsmith_f_op_f32(global0.a * 340f)))), 248f, _wgslsmith_f_op_f32(ceil(123f))), vec4<f32>(_wgslsmith_f_op_f32(select(-154f, 792f, any(global0.b.xy))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.a)), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(global0.a, global0.a)), global0.a, 147f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, 1139f, 1836f, var_0.d.a.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, var_0.e.x, -467f, 1000f) - vec4<f32>(global0.a, global0.a, 206f, -1792f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.a.a)), -750f, 262f, _wgslsmith_f_op_f32(round(587f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1000f, var_0.a.a.a) * vec3<f32>(1909f, global0.a, global0.a))).a.a.a, _wgslsmith_f_op_f32(ceil(-882f)))), !select(var_0.b.a.b, var_0.d.a.b, !global0.b));
    global2 = Struct_4(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-12011i, global2.a, u_input.b.x, 8919i)) ^ select(-vec4<i32>(-2005i, global2.a, u_input.b.x, global2.a), ~vec4<i32>(-2147483647i, 1i, -1i, 4605i), any(vec2<bool>(global0.b.x, true))), min(~vec4<i32>(global2.a, global2.a, global2.a, 0i), ~vec4<i32>(u_input.b.x, global2.a, 1i, global2.a)) & vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(global2.a, 0i), _wgslsmith_sub_i32(-52564i, -1i), select(-1i, 62551i, false))));
    var var_2 = vec3<u32>(~0u, firstTrailingBit(0u), max(59871u, u_input.a.x));
    var var_3 = min(25601i, (select(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), firstLeadingBit(-1i), all(global0.b.yx)) ^ _wgslsmith_add_i32(global2.a | u_input.b.x, u_input.b.x ^ global2.a)) >> (1u % 32u));
    var var_4 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, var_0.a.a.a, var_1.a, -558f)))) - vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_1(var_1.a))), _wgslsmith_f_op_f32(trunc(var_1.a)), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 889f, 1260f, -220f), vec4<f32>(var_1.a, -1143f, 440f, global0.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, 822f, -764f, -144f))), global0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-669f - var_0.e.x), _wgslsmith_f_op_f32(step(var_0.a.a.a, var_0.d.a.a)), var_0.a.a.a, _wgslsmith_f_op_f32(func_1(var_1.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -167f) - _wgslsmith_f_op_f32(var_1.a + 815f)), -714f, var_0.b.a.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, var_0.b.a.a, 1795f)))))).d.a;
    global2 = Struct_4(global2.a);
    var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-546f - -1000f))))), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-381f, ~_wgslsmith_mod_vec2_i32(-vec2<i32>(-15639i, u_input.b.x), _wgslsmith_div_vec2_i32(u_input.b, u_input.b | vec2<i32>(u_input.b.x, -1i))), ~_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, global2.a), u_input.b), max(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(0i, global2.a)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.a, global2.a), vec2<i32>(u_input.b.x, u_input.b.x)), -vec2<i32>(global2.a, -2147483647i))), var_1.a, _wgslsmith_clamp_vec4_i32(~(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 4956i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -20418i, global2.a, u_input.b.x)) >> ((vec4<u32>(21123u, 12376u, 4294967295u, var_2.x) >> (vec4<u32>(var_2.x, var_0.c.x, 22820u, 1653u) % vec4<u32>(32u))) % vec4<u32>(32u))), firstLeadingBit(reverseBits(vec4<i32>(-691i, u_input.b.x, u_input.b.x, 10874i) | vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 1i))), countOneBits(~_wgslsmith_add_vec4_i32(vec4<i32>(4150i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(1i, u_input.b.x, global2.a, -40925i)))));
}

