struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(-375f, 531f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mod_i32(-28804i, abs(i32(-1i) * -2042i)) << (u_input.a % 32u);
    global0 = -6264i;
    global1 = !(!any(vec2<bool>(true, true)));
    global1 = _wgslsmith_mult_i32(u_input.b, u_input.b) != _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -30700i), ~vec2<i32>(u_input.b, -1i)), vec2<i32>(-u_input.b, -u_input.b)), 2147483647i);
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, ~(-4327i)) & vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b)), ~1i, 0i), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2147483647i), reverseBits(vec3<i32>(u_input.b, u_input.b, 26008i)) | select(-vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(u_input.b, u_input.b, u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    return _wgslsmith_dot_vec3_u32(~(~select(~vec3<u32>(u_input.d, u_input.c.x, 0u), ~vec3<u32>(1u, u_input.c.x, 0u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), vec3<u32>(u_input.a, 4294967295u, u_input.d));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = abs(vec2<u32>(~func_3(), 45195u));
    var var_1 = Struct_1(0i, false, all(vec4<bool>((-421f == global2.x) & any(vec4<bool>(true, false, false, false)), true, true, any(vec3<bool>(true, false, false)))), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_2 = vec2<i32>(abs(2147483647i), ~(-_wgslsmith_sub_i32(u_input.b, var_1.a)) >> (u_input.d % 32u));
    let var_3 = arg_1.a.xzw;
    var_0 = ~u_input.c;
    return ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_2, u_input.c.x), (_wgslsmith_mod_u32(1u, 1u) ^ (var_0.x << (arg_0 % 32u))) << (1u % 32u), 1u);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = -58730i;
    let var_1 = arg_2.x;
    var var_2 = ~(-select(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, 6741i), -u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(0i, 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i) << (vec3<u32>(4294967295u, 60259u, 1u) % vec3<u32>(32u)), select(vec3<i32>(-23804i, -1i, -1i), vec3<i32>(1i, 11097i, u_input.b), vec3<bool>(false, true, true))), true));
    global0 = -2147483647i;
    var var_3 = ~select(vec4<i32>(40479i >> (u_input.c.x % 32u), 0i, -757i, u_input.b), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, var_2.x, var_2.x, var_2.x), abs(vec4<i32>(u_input.b, u_input.b, 17163i, u_input.b))), vec4<bool>(true, true, true, true)) & -vec4<i32>(var_2.x, -1i, countOneBits(abs(-2147483647i)), min(u_input.b & u_input.b, u_input.b));
    return Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1357f, -1399f, arg_0, global2.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), 696f, _wgslsmith_f_op_f32(-arg_1.x), arg_0))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 675f, 903f), vec3<f32>(global2.x, global2.x, 311f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(417f, global2.x, global2.x) - vec3<f32>(-130f, global2.x, -1245f)))))), ~_wgslsmith_add_vec3_u32(vec3<u32>(abs(17343u), func_2(u_input.d, Struct_3(vec4<f32>(871f, 1977f, global2.x, 1000f)), u_input.d), ~u_input.c.x), vec3<u32>(41802u << (u_input.d % 32u), u_input.d, reverseBits(55996u))));
    return arg_0.c == all(vec4<bool>(!all(vec2<bool>(arg_0.c, false)), true, _wgslsmith_div_f32(var_0.a.x, var_0.a.x) < _wgslsmith_f_op_f32(abs(var_0.a.x)), arg_0.c));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    global1 = all(select(vec2<bool>(527f < global2.x, true), !vec2<bool>(true, arg_1), vec2<bool>(!arg_2.a.b, select(arg_2.a.d, false, arg_2.a.c)))) && !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global2.x, -875f)))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)))), func_4(global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3326f, 645f, -194f))), firstTrailingBit(~vec3<u32>(62532u, 39420u, arg_0.x))).a.x));
    let var_0 = true || arg_2.a.c;
    let var_1 = !all(select(select(!vec3<bool>(arg_1, arg_2.a.d, arg_2.a.c), select(vec3<bool>(arg_2.a.d, arg_1, arg_2.a.b), vec3<bool>(false, true, arg_2.a.c), vec3<bool>(arg_1, true, arg_2.a.c)), var_0), !vec3<bool>(true, arg_1, true), !(!arg_2.a.b)));
    global1 = arg_1;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (u_input.b ^ -1i) >> (1u % 32u);
    let var_0 = min(_wgslsmith_dot_vec3_u32(~vec3<u32>(4720u, 9651u, u_input.c.x), ~abs(vec3<u32>(u_input.a, u_input.c.x, u_input.a))), min(abs(_wgslsmith_div_u32(13251u, 22796u)), _wgslsmith_div_u32(32568u, u_input.c.x))) & ~abs(14550u);
    var var_1 = func_5(~select(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 21387u), vec2<u32>(u_input.d, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(15442u, 4294967295u) | vec2<u32>(u_input.d, 98348u), ~vec2<u32>(1u, 16069u), max(u_input.c, vec2<u32>(u_input.d, 62310u))), select(u_input.a >= u_input.c.x, global2.x == -555f, u_input.b >= -1i)), func_1(Struct_1(-27059i, any(vec4<bool>(true, true, true, true)), -u_input.b <= _wgslsmith_clamp_i32(-1i, u_input.b, 44401i), true)), Struct_2(Struct_1(abs(_wgslsmith_div_i32(u_input.b, u_input.b)), !any(vec2<bool>(false, false)), true, true)));
    var_1 = 68806u;
    var var_2 = (vec4<u32>(func_3(), abs(_wgslsmith_clamp_u32(37947u, 0u, u_input.a)), abs(37903u), max(42350u, u_input.d)) ^ ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, u_input.d, 4294967295u), vec4<u32>(var_0, 4294967295u, var_0, u_input.c.x)), abs(vec4<u32>(16174u, var_0, u_input.d, var_0)))) & reverseBits(vec4<u32>(21842u, u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 57905u, 38086u, u_input.d), vec4<u32>(1u, var_0, 34145u, 62876u)), 114699u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -31239i)) ^ (vec2<i32>(0i, -2801i) >> (var_2.yx % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(1i, 0i))), all(vec2<bool>(true, true)), !(_wgslsmith_mult_i32(-16696i, u_input.b) < 41887i), (any(vec2<bool>(true, true)) || true) & true));
    var var_4 = vec3<bool>(select(var_3.a.b, var_3.a.d, var_3.a.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a, u_input.d), vec4<u32>(u_input.c.x, var_2.x, 4294967295u, 0u)) >= _wgslsmith_mod_u32(min(~46893u, ~35466u), select(var_0, 49622u, true)), func_1(var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wy, min(select(abs(var_0), ~46118u, var_4.x), _wgslsmith_mod_u32(var_0 & var_2.x, 1u)) >> ((_wgslsmith_clamp_u32(abs(var_0), 58275u, u_input.a) | _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, 1u), ~var_0, var_0 & u_input.a)) % 32u));
}

