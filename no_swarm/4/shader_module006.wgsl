struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-615f, 3255f);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_4, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = select(vec4<u32>(arg_0, 4294967295u, arg_0, ~arg_0) >> (vec4<u32>(max(37087u, u_input.a.x) ^ 341u, u_input.a.x, countOneBits(u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 16250u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 18331u, 0u, u_input.a.x))) % vec4<u32>(32u)), vec4<u32>(max(u_input.a.x, ~0u), 17455u, 36538u, arg_0), !select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, true, true, global1.x)), vec4<bool>(true, true, true, global1.x), true));
    var var_1 = _wgslsmith_clamp_u32(var_0.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x);
    let var_2 = abs(_wgslsmith_div_i32(-(~_wgslsmith_mult_i32(u_input.c, 2147483647i)), 0i));
    var var_3 = Struct_3(Struct_2(Struct_1(true, u_input.d, vec2<bool>(global1.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f - global0.x) * _wgslsmith_div_f32(global0.x, 844f))), abs(var_2 << (var_0.x % 32u)), arg_0, reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 21578u, arg_0), vec4<u32>(0u, 67362u, var_0.x, arg_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, global0.x, global0.x, -1241f))))), _wgslsmith_mult_i32(var_2, _wgslsmith_dot_vec3_i32(u_input.b, max(~u_input.b, u_input.b))), _wgslsmith_f_op_f32(ceil(-688f)) <= 998f);
    var var_4 = var_3.a.a;
    return _wgslsmith_f_op_f32(var_4.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1204f - var_4.d), _wgslsmith_f_op_f32(max(-1098f, -154f)))) * 1453f) - 480f));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = !select(select(vec2<bool>(true, true), arg_0.a.a.c, global1.x), !arg_0.a.a.c, !global1.x);
    let var_1 = Struct_2(arg_0.a.a, ~(~1i), ~u_input.a.x, abs(_wgslsmith_sub_vec4_u32(~arg_0.a.d, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d, 4294967295u, arg_3.x, u_input.a.x), arg_0.a.d))) ^ reverseBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, u_input.a.x, 0u, arg_3.x), vec4<u32>(arg_3.x, 39094u, arg_0.d, 3535u)))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-516f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1946f))), _wgslsmith_f_op_f32(-arg_0.a.a.d), _wgslsmith_f_op_f32(select(406f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2, arg_1.x)), 1f), var_0.x))));
    let var_2 = !select(arg_0.a.a.c, vec2<bool>(!(var_0.x || arg_0.a.a.a), !(!var_1.a.a)), vec2<bool>(var_1.a.c.x, _wgslsmith_div_u32(var_1.d.x, arg_3.x) <= _wgslsmith_mod_u32(var_1.c, 21842u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(733f + _wgslsmith_div_f32(-771f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, var_1.e.x))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1293f)))) * var_1.e);
    let var_4 = var_1;
    return select(vec2<bool>(var_4.a.a, arg_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - arg_1.x) * _wgslsmith_f_op_f32(-471f + 206f))), select(!select(vec2<bool>(true, true), vec2<bool>(false, var_2.x), !arg_0.a.a.c), select(select(select(var_0, vec2<bool>(var_1.a.c.x, arg_0.a.a.c.x), false), select(vec2<bool>(var_4.a.c.x, var_4.a.a), arg_0.a.a.c, vec2<bool>(true, false)), vec2<bool>(arg_0.a.a.c.x, true)), select(var_1.a.c, var_0, vec2<bool>(false, var_1.a.a)), false), var_0), !all(select(vec3<bool>(var_4.a.a, var_0.x, true), vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, global1.x))) & false);
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_4, 22>();
    global2 = array<Struct_4, 22>();
    global2 = array<Struct_4, 22>();
    let var_0 = Struct_1(u_input.b.x < (-_wgslsmith_dot_vec4_i32(vec4<i32>(2355i, u_input.e, u_input.c, 9301i), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c)) ^ ~abs(-2147483647i)), reverseBits(-8652i), func_4(Struct_4(Struct_2(Struct_1(true, u_input.b.x, vec2<bool>(global1.x, global1.x), global0.x), 2147483647i << (u_input.a.x % 32u), ~63740u, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 980u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, -810f, -137f)))), ~countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)), ~max(u_input.a.x, 1u), 360u, u_input.d), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(func_3(u_input.a.x)), global0.x), _wgslsmith_f_op_f32(-global0.x), ~vec3<u32>(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u), firstTrailingBit(u_input.a.x))), global0.x);
    let var_1 = global2[_wgslsmith_index_u32(~reverseBits(~(~131353u >> (u_input.a.x % 32u))), 22u)];
    return Struct_4(var_1.a, abs(~(~var_1.b)), min(var_1.b.x, 1u), u_input.a.x, var_0.b >> (_wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x) % 32u));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> f32 {
    var var_0 = 1u;
    var var_1 = ~(~firstLeadingBit(u_input.a.x)) << (0u % 32u);
    let var_2 = vec4<u32>(42171u, 31915u, ~1u, 23465u);
    var_0 = _wgslsmith_mult_u32(var_2.x, var_2.x);
    let var_3 = arg_1.a;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_1.a.e.x)))), !var_3.a.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(arg_0.a.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.d + arg_1.d)))), func_2())) - -925f);
    var var_2 = Struct_1((firstTrailingBit(~u_input.a.x) >= arg_2.x) && (arg_0.d.x >= max(arg_2.x & 31260u, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 4294967295u)))), func_2().e, select(!vec2<bool>(global1.x, true), func_2().a.a.c, true), _wgslsmith_f_op_f32(-arg_0.a.d));
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_f32(350f - 1510f);
    return !select(vec2<bool>(any(select(vec4<bool>(false, true, arg_1.c.x, var_2.a), vec4<bool>(false, var_3.a.a.c.x, true, false), false)), arg_1.a), arg_1.c, arg_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(-938f, global0.x)))) + vec2<f32>(138f, -454f));
    var var_0 = Struct_2(Struct_1(any(select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, true)), vec2<bool>(true, false), all(vec4<bool>(global1.x, false, true, global1.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, -u_input.b), -u_input.b), !(!func_1(Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, global1.x), -164f), u_input.b.x, 0u, vec4<u32>(14893u, u_input.a.x, 1u, 15013u), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), Struct_1(global1.x, u_input.d, vec2<bool>(global1.x, false), -848f), vec4<u32>(30763u, 4294967295u, 34660u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f - -748f)) - _wgslsmith_f_op_f32(-global0.x))), func_2().a.b, select(4294967295u, u_input.a.x, true), select(abs(reverseBits(vec4<u32>(u_input.a.x, 0u, 4294967295u, 61767u))), (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u) ^ vec4<u32>(68405u, 39630u, u_input.a.x, u_input.a.x)) >> (~(~vec4<u32>(4294967295u, 29884u, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, global1.x, false, false), all(vec4<bool>(global1.x, global1.x, global1.x, false))), vec4<bool>(true, global0.x == 1030f, func_1(Struct_2(Struct_1(global1.x, u_input.b.x, vec2<bool>(false, global1.x), global0.x), u_input.b.x, u_input.a.x, vec4<u32>(u_input.a.x, 0u, 104978u, u_input.a.x), vec4<f32>(global0.x, -1588f, global0.x, global0.x)), Struct_1(true, -2147483647i, vec2<bool>(global1.x, true), global0.x), vec4<u32>(u_input.a.x, 1u, 7920u, u_input.a.x)).x, u_input.d > u_input.e), global1.x)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_3(1u)), global0.x, global0.x));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(559f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -830f))))))), _wgslsmith_f_op_f32(1554f + 1514f));
    let var_1 = Struct_3(func_2().a, func_2().a.a.b, func_2().a.a.c.x);
    var var_2 = select(!(!vec4<bool>(func_2().a.a.c.x, var_1.a.a.a, select(global1.x, global1.x, true), u_input.a.x < var_0.d.x)), !vec4<bool>(!var_0.a.a, true, true, true), func_2().a.a.c.x);
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1150f)) * _wgslsmith_f_op_f32(func_3(max(1u, var_1.a.d.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d))))), -2162f);
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, var_1.b, ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(min(1u, u_input.a.x))), var_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)));
}

