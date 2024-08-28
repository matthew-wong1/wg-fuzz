struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~global1.b, -_wgslsmith_add_i32(abs(1i), -global1.b), global1.b), ~(~(~(~u_input.b.x))));
    global2 = array<Struct_3, 13>();
    global1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, global1.a)), _wgslsmith_div_f32(global1.a, 808f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(select(-476f, _wgslsmith_div_f32(global1.a, global1.a), global1.c.x >= 1192f))), global1.e.x)), firstLeadingBit(25078i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c - global1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) - _wgslsmith_f_op_vec2_f32(min(global1.c, vec2<f32>(1002f, -1000f))))))), global1.d, !global1.e);
    var var_0 = Struct_1(vec3<u32>(countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a, u_input.a), vec3<u32>(9527u, arg_0.x, 0u)), ~global1.d.x)), u_input.a, 1u), global1.e.x, global1.e.x & any(global1.e.zx), firstTrailingBit(-u_input.b.yx));
    var var_1 = abs(select((max(vec4<u32>(arg_0.x, global1.d.x, 62322u, 4294967295u), vec4<u32>(7419u, 8887u, 4294967295u, 1u)) | (vec4<u32>(12658u, 4294967295u, arg_0.x, var_0.a.x) ^ vec4<u32>(1u, 0u, u_input.a, 0u))) & firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 24695u, global1.d.x, 76640u), vec4<u32>(arg_0.x, var_0.a.x, 21286u, var_0.a.x))), vec4<u32>(0u, arg_0.x, var_0.a.x, ~823u), var_0.c));
    return global1.e.zz;
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(true, true, !global1.e.x, all(vec4<bool>(true, !(global1.d.x < 4294967295u), all(vec3<bool>(global1.e.x, true, global1.e.x)) | global1.e.x, global1.e.x)));
    let var_1 = Struct_4(select(vec2<bool>(var_0.x, any(global1.e.zx)), select(func_3(_wgslsmith_clamp_vec2_u32(global1.d, global1.d, vec2<u32>(39442u, 1u))), global1.e.yz, vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true)), global1.e.zz), global1.d.x, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f * _wgslsmith_f_op_f32(min(global1.a, 164f)))), u_input.b.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.c, vec2<f32>(global1.a, -225f)))), _wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(-global1.c)))), vec2<u32>(0u, 1u), select(select(!var_0.zxy, !global1.e, true), !vec3<bool>(global1.e.x, global1.e.x, var_0.x), var_0.x || true)));
    global0 = ~(~(~1i));
    let var_2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_mod_u32(global1.d.x, 15681u), u_input.a, 38322u) << ((~vec3<u32>(u_input.a, u_input.a, 61966u) | _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.b, 1288u), vec3<u32>(var_1.c.d.x, 66446u, 0u))) % vec3<u32>(32u)), true, -236f == global1.a, vec2<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, -62518i, 1i))), 7404i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c.a, -999f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.x)))), !select(select(!global1.e.yx, var_0.zy, !var_1.c.e.zy), vec2<bool>(any(vec4<bool>(global1.e.x, global1.e.x, var_2.a.c, false)), all(global1.e)), vec2<bool>(false, var_0.x))));
    return ~11408u << (var_1.c.d.x % 32u);
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_1(vec3<u32>(~global1.d.x, ~36705u, _wgslsmith_sub_u32(func_2(), u_input.a)), global1.e.x, true, select(select(abs(vec2<i32>(global1.b, arg_0)), -vec2<i32>(arg_0, global1.b), any(vec4<bool>(global1.e.x, true, global1.e.x, true))) | _wgslsmith_mod_vec2_i32(~vec2<i32>(global1.b, u_input.b.x), vec2<i32>(arg_0, arg_0)), firstLeadingBit(select(u_input.b.xx, u_input.b.xy, global1.e.xx)) & u_input.b.xy, true));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(min(vec3<u32>(var_0.a.x, arg_1, 22362u), vec3<u32>(arg_1, u_input.a, 90999u)) >> (~(~vec3<u32>(var_0.a.x, global1.d.x, u_input.a)) % vec3<u32>(32u)), ~abs(abs(var_0.a))), all(select(vec4<bool>(global1.e.x, all(vec2<bool>(true, true)), 31227i <= var_0.d.x, true), select(!vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(global1.e.x, true, false, true), true), true)), 56686u <= (u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 47662u, 0u) >> (vec3<u32>(0u, var_0.a.x, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(arg_1, arg_1, global1.d.x)))), var_0.d);
    let var_2 = var_1.c || any(select(vec2<bool>(var_0.b, var_1.c), select(global1.e.yx, !vec2<bool>(var_1.c, true), vec2<bool>(false, false)), true));
    var_0 = Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.x, arg_1, var_0.a.x, 26026u), vec4<u32>(u_input.a, 22540u, 16527u, u_input.a)), countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, u_input.a))), 119340u, ~1u & u_input.a), true, false, abs(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b, 1i), var_1.d), firstTrailingBit(var_1.d))) << (max(_wgslsmith_add_vec2_u32(~var_0.a.xy, vec2<u32>(u_input.a, global1.d.x)), vec2<u32>(global1.d.x, ~5208u)) % vec2<u32>(32u)));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_div_u32(reverseBits(20374u), _wgslsmith_clamp_u32(0u, min(arg_1, arg_1), 0u)), reverseBits(countOneBits(33556u)), var_1.a.x & (~arg_1 >> (34968u % 32u))), true, any(vec2<bool>(false, var_0.b)), _wgslsmith_div_vec2_i32(var_1.d, vec2<i32>(-8104i, ~(-2147483647i))));
    return ~vec3<u32>(1u, _wgslsmith_div_u32(1u, min(_wgslsmith_mod_u32(56612u, 48592u), _wgslsmith_add_u32(u_input.a, 1u))), min(countOneBits(51366u), ~_wgslsmith_dot_vec2_u32(var_1.a.yx, var_1.a.yz)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    global0 = 30297i;
    var var_0 = Struct_2(Struct_1(arg_0, u_input.a >= min(u_input.a, 54278u), any(func_3(vec2<u32>(7418u, global1.d.x))), vec2<i32>(min(1i, -global1.b), _wgslsmith_clamp_i32(select(u_input.b.x, global1.b, global1.e.x), -1i, 19418i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(1206f * -1000f))))));
    global0 = -var_0.a.d.x;
    var_0 = Struct_2(var_0.a);
    return Struct_3(-118f, _wgslsmith_mult_i32(_wgslsmith_add_i32(9855i, -1i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.b, 40352i)), vec2<i32>(-4917i, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.a)), 403f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c + global1.c))))), select(firstLeadingBit(vec2<u32>(u_input.a, 8482u) | arg_0.zz), ~(var_0.a.a.yx & var_0.a.a.xx), select(global1.e.x, !var_0.a.c, var_0.a.c && var_0.a.b)) >> (global1.d % vec2<u32>(32u)), select(select(select(!vec3<bool>(true, var_0.a.b, false), global1.e, true), global1.e, select(global1.e, select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.a.c, true), true), global1.e)), select(select(global1.e, global1.e, vec3<bool>(global1.e.x, false, false)), global1.e, vec3<bool>(false, any(vec4<bool>(var_0.a.b, global1.e.x, global1.e.x, var_0.a.b)), true)), !(!global1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, 0u), abs(1u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, 34485u, 1u) << (vec3<u32>(4294967295u, u_input.a, 24327u) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(func_1(global1.b, 88587u), max(vec3<u32>(53753u, u_input.a, 25950u), vec3<u32>(4294967295u, global1.d.x, 1u))) ^ max(~vec3<u32>(7471u, 0u, u_input.a), ~vec3<u32>(4294967295u, 20876u, 0u))), global1.d.x);
    global0 = var_0.b;
    var var_1 = Struct_4(var_0.e.zz, ~((0u >> (1u % 32u)) | var_0.d.x) ^ ~_wgslsmith_mult_u32(78283u, u_input.a), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_div_f32(508f, var_0.c.x))), global1.a), ~var_0.b, _wgslsmith_f_op_vec2_f32(ceil(var_0.c)), vec2<u32>(reverseBits(0u), ~(~global1.d.x)), !vec3<bool>(true, global1.e.x && global1.e.x, global1.e.x)));
    let var_2 = true;
    var_0 = func_4(select(vec3<u32>(~(7240u << (var_1.c.d.x % 32u)), _wgslsmith_dot_vec2_u32(min(var_0.d, vec2<u32>(9585u, global1.d.x)), var_1.c.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, 47513u), vec2<u32>(4294967295u, u_input.a))), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, var_0.d.x), vec2<u32>(var_0.d.x, var_0.d.x)), ~u_input.a, var_1.b), !func_4(select(vec3<u32>(var_1.c.d.x, 0u, 4294967295u), vec3<u32>(var_1.b, u_input.a, 29888u), global1.e), _wgslsmith_div_u32(0u, var_0.d.x)).e), _wgslsmith_add_u32(select(4294967295u, firstTrailingBit(_wgslsmith_mult_u32(0u, 0u)), false), ~(~_wgslsmith_sub_u32(0u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.c.x, var_1.c.a)))), -947f);
}

