struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(39095u, Struct_1(vec4<i32>(32333i, 0i, -1i, -42495i), vec3<bool>(false, false, false)), true);

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(1i, 2147483647i, 14297i, 0i), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, 11203i, 10415i, -34684i), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-32317i, i32(-2147483648), -24238i, 1i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, 45894i, 18677i, 41241i), vec3<bool>(true, true, true)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    global4 = array<Struct_1, 4>();
    var var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1620f, 280f, global2.c)))) != _wgslsmith_f_op_f32(trunc(-794f)));
    global3 = Struct_2(~abs(_wgslsmith_div_u32(1u, abs(global2.a))), Struct_1(~firstTrailingBit(-global2.b.a), select(!(!vec3<bool>(global3.b.b.x, global1.x, true)), select(global2.b.b, global2.b.b, true), select(!global3.b.b, select(vec3<bool>(global1.x, true, true), vec3<bool>(true, var_0.x, global3.c), true), select(vec3<bool>(false, global2.c, global1.x), global3.b.b, true)))), true);
    var var_1 = ~_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(-arg_0.yw, arg_0.wz ^ vec2<i32>(global2.b.a.x, -2184i), arg_0.xw), ~_wgslsmith_mod_vec2_i32(-vec2<i32>(39683i, global2.b.a.x), vec2<i32>(13051i, arg_0.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1537f, 511f) - vec2<f32>(-1088f, -2783f)) * vec2<f32>(-145f, -390f)))));
    return vec3<i32>(global3.b.a.x, -46712i, 2147483647i);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = min(select(global3.b.a.x, arg_1.b.a.x, true), _wgslsmith_div_i32(~(~var_0.b.a.x), _wgslsmith_div_i32(2147483647i, 1i)));
    global3 = arg_1;
    var var_2 = arg_1.a >= max(firstLeadingBit(abs(~arg_1.a)), global2.a);
    let var_3 = vec4<i32>(_wgslsmith_add_i32(2147483647i, global2.b.a.x), 0i, 0i, _wgslsmith_dot_vec3_i32(firstTrailingBit(func_3(~var_0.b.a)), ~arg_2.a.zyz));
    return abs(arg_1.a);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_1(vec4<i32>(global3.b.a.x & 1i, _wgslsmith_dot_vec4_i32(global2.b.a, global3.b.a) >> (func_2(vec2<u32>(global2.a, 1u), Struct_2(global2.a, Struct_1(vec4<i32>(global3.b.a.x, global2.b.a.x, global3.b.a.x, global2.b.a.x), global3.b.b), false), Struct_1(vec4<i32>(global2.b.a.x, 8468i, -37822i, -815i), global2.b.b), vec4<f32>(-1101f, -1092f, 286f, 864f)) % 32u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global3.b.a.x, global3.b.a.x, 1i, -15701i), global3.b.a, global2.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global2.b.a.x, u_input.a, u_input.a), global3.b.a)), _wgslsmith_clamp_i32(1i, firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.a.x, -13708i), global3.b.a.yz))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-12354i, _wgslsmith_div_i32(u_input.a, global2.b.a.x), -81962i, ~global2.b.a.x), global2.b.a, ~global2.b.a ^ select(vec4<i32>(global2.b.a.x, global3.b.a.x, 1346i, global2.b.a.x), global3.b.a, true)), !(!global3.b.b));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(87604u, global2.a), abs(vec2<u32>(global2.a, global3.a) ^ abs(vec2<u32>(global2.a, global2.a)))), global3.b, false);
    let var_2 = Struct_2(2430u, Struct_1(var_0.a & _wgslsmith_clamp_vec4_i32(-vec4<i32>(global2.b.a.x, u_input.a, global3.b.a.x, global3.b.a.x), ~vec4<i32>(var_0.a.x, -21807i, 1761i, global3.b.a.x), global3.b.a), !vec3<bool>(true, true, 750f >= arg_0.x)), true);
    let var_3 = ~(~global2.b.a);
    let var_4 = var_2;
    return abs(-(-(var_0.a.x | global3.b.a.x) << (var_1.a % 32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2535f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1592f, 113f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-650f * 559f)))), -793f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-917f + 1000f) - -508f)), -1299f, _wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-409f, -567f, global2.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1031f)))));
    var var_1 = 0i;
    var_1 = (arg_0.x & min(_wgslsmith_div_i32(~(-15662i), _wgslsmith_mod_i32(global2.b.a.x, u_input.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.a.x, u_input.a, global2.b.a.x, 10967i), vec4<i32>(2147483647i, u_input.a, -1i, 0i)))) << (73336u % 32u);
    let var_2 = 1496f;
    global4 = array<Struct_1, 4>();
    return Struct_1(global2.b.a, global3.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(-vec4<i32>(func_1(vec2<f32>(1079f, -420f)), global3.b.a.x, firstLeadingBit(0i), u_input.a)), ~(firstTrailingBit(vec4<u32>(83308u, 4294967295u, global2.a, global2.a) << (vec4<u32>(2761u, global2.a, global2.a, global2.a) % vec4<u32>(32u))) | ~(~vec4<u32>(global2.a, global3.a, global3.a, global3.a))));
    global0 = array<vec2<bool>, 13>();
    var var_1 = ~global2.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-777f)), _wgslsmith_f_op_f32(exp2(var_2)), 277f, var_2) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -351f), var_2) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1163f, var_2, 311f, var_2)))))));
}

