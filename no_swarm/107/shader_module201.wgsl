struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_5 = Struct_5(0i, Struct_3(vec3<bool>(true, false, true), 32922u, vec4<bool>(false, true, false, false)), Struct_2(i32(-2147483648), true, -144f, 4294967295u), 28652u);

var<private> global2: vec2<f32>;

var<private> global3: bool = false;

var<private> global4: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = true;
    global0 = global1.b.a.x;
    var var_1 = arg_0;
    var_1 = Struct_2(arg_0.a, false && select(all(global1.b.c.zyw), true, true), global2.x, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~36132u, ~u_input.a.x), ~_wgslsmith_div_u32(0u, var_1.d)), 1u));
    let var_2 = arg_1;
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -141f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1559f)) + -532f)))));
}

fn func_2() -> bool {
    var var_0 = 2147483647i;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, global2.x)), vec2<f32>(global2.x, 700f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, global4.c.c) * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global1.c.a, false, 865f, global1.d), Struct_4(Struct_1(global4.b.a.x, vec4<i32>(global1.c.a, global4.c.a, 4030i, 61886i)), Struct_1(global1.c.b, vec4<i32>(-97998i, 2147483647i, global1.c.a, 16899i)), global4.c.d, Struct_2(-1i, false, -338f, 1u)), vec4<bool>(false, global1.c.b, global4.c.b, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 386f) * vec2<f32>(1129f, -1379f)))) + _wgslsmith_f_op_vec2_f32(func_3(global4.c, Struct_4(Struct_1(false, vec4<i32>(global1.a, global1.a, global1.c.a, 10055i)), Struct_1(global1.b.c.x, vec4<i32>(-2147483647i, -18021i, global4.a, global4.a)), 84136u, global4.c), vec4<bool>(true, global1.c.b, false, global1.b.c.x))))));
    var var_1 = _wgslsmith_clamp_u32(~abs(~firstLeadingBit(4294967295u)), global4.b.b, 40477u);
    let var_2 = Struct_4(Struct_1(!(!(!global4.c.b)), countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, 0i, 0i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, global1.c.a, 8578i, global4.c.a), vec4<i32>(-2147483647i, -1i, 1i, 1i))))), Struct_1(!global1.b.c.x, countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.a, global4.c.a, 27756i) >> (vec4<u32>(82695u, u_input.a.x, 4294967295u, global4.c.d) % vec4<u32>(32u)), ~vec4<i32>(global4.a, global4.a, global1.c.a, -3866i)))), 0u, Struct_2(-reverseBits(global1.c.a) ^ abs(0i), global4.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.c) * global2.x), u_input.a.x));
    let var_3 = Struct_4(Struct_1(all(global1.b.a), _wgslsmith_div_vec4_i32(countOneBits(var_2.b.b), var_2.a.b) | ~vec4<i32>(0i, var_2.d.a, 0i, global4.a)), Struct_1(true, vec4<i32>(_wgslsmith_mod_i32(min(-3205i, var_2.a.b.x), abs(0i)), ~global4.a, 0i, _wgslsmith_dot_vec3_i32(abs(var_2.a.b.xyz), var_2.b.b.yxz))), _wgslsmith_add_u32(~85756u, 33588u & ~global4.c.d), Struct_2(global1.c.a, false && var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.c)), ~(~0u)));
    return _wgslsmith_div_f32(191f, global4.c.c) <= _wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.c)) * -674f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) + 640f)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> bool {
    global3 = false;
    var var_0 = _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 39709u, 1u) & ~vec4<u32>(global1.d, 54086u, arg_1.x, u_input.a.x)), vec4<u32>(4294967295u, ~(~(~1u)), ~(~4307u) << (~global1.d % 32u), 131429u), ~vec4<u32>(~u_input.a.x, 4294967295u, min(_wgslsmith_add_u32(arg_1.x, 77403u), ~4294967295u), _wgslsmith_mod_u32(max(arg_1.x, 85323u), 47269u)));
    let var_1 = _wgslsmith_clamp_i32(-42130i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-global1.c.a), _wgslsmith_sub_i32(-13382i, global1.c.a)), -27827i, ((global1.a << (21437u % 32u)) ^ abs(global1.a)) | global4.c.a), global4.c.a);
    global4 = Struct_5(0i, global1.b, Struct_2(-3025i, all(global4.b.c.wz), _wgslsmith_f_op_f32(-939f * global1.c.c), 6992u), reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.d, reverseBits(22787u)), _wgslsmith_clamp_u32(u_input.a.x, global1.c.d, var_0.x) ^ 0u)));
    var var_2 = Struct_5(var_1, Struct_3(vec3<bool>((global4.b.c.x | global4.b.a.x) & false, global1.c.b, (arg_0 | global1.b.c.x) | false), ~(u_input.a.x | 86852u), global4.b.c), Struct_2(-global1.c.a, !any(select(vec4<bool>(false, global4.c.b, false, false), global4.b.c, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1294f * _wgslsmith_f_op_f32(select(global1.c.c, 267f, global4.b.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), func_2()))), _wgslsmith_mod_u32(countOneBits(var_0.x | var_0.x), global1.c.d)), 799u);
    return any(vec3<bool>(all(vec3<bool>(var_2.b.c.x, any(vec4<bool>(arg_0, global1.c.b, arg_0, false)), global1.c.b != var_2.c.b)), any(select(vec4<bool>(global4.b.a.x, false, true, arg_0), !vec4<bool>(global1.c.b, false, true, true), vec4<bool>(false, true, false, arg_0))), (any(var_2.b.c) & !global1.c.b) || true));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = !select(vec4<bool>(all(vec2<bool>(false, global1.b.c.x)), all(global1.b.c) && true, global1.b.a.x && global1.b.a.x, !(!global4.c.b)), select(vec4<bool>(all(vec4<bool>(false, false, global4.b.a.x, false)), !global4.c.b, global4.b.c.x, any(global1.b.a.xz)), vec4<bool>(global4.b.a.x, global1.b.a.x | true, false, global1.b.c.x), !vec4<bool>(false, global4.c.b, global4.b.c.x, false)), true);
    var var_1 = Struct_2(global1.a, func_4(func_2(), ~(select(u_input.a, vec3<u32>(0u, 49442u, 10155u), true) & (arg_0 | vec3<u32>(u_input.a.x, arg_0.x, global1.b.b)))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2526f, 1260f, false))))), abs(((global1.d << (8868u % 32u)) >> (~4294967295u % 32u)) ^ ~31071u));
    let var_2 = Struct_4(Struct_1(global4.c.b, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-60378i, 0i), -2147483647i, 2147483647i, _wgslsmith_sub_i32(var_1.a, global1.a)), vec4<i32>(abs(global1.c.a), 64752i, global4.a, 0i))), Struct_1(countOneBits(~global1.c.a) > _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.a, global1.c.a, 20799i), firstTrailingBit(vec3<i32>(0i, 0i, global1.c.a))), countOneBits(countOneBits(abs(vec4<i32>(-1i, -28967i, var_1.a, global1.c.a))))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 1u, 44945u, 1u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 13198u, global1.b.b, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(9899u, u_input.a.x, 1u, global4.d), vec4<u32>(5498u, 21739u, global1.b.b, 0u)))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, 63974u, var_1.d, global1.b.b)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, global1.c.d), vec4<u32>(global4.d, 49401u, 4294967295u, 4294967295u))) | ~(~vec4<u32>(global1.b.b, 975u, 0u, 0u))), Struct_2(var_1.a, true, global2.x, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)));
    var_1 = var_2.d;
    global1 = Struct_5(~global4.a, global4.b, global4.c, 36200u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(0u, ~_wgslsmith_div_u32(43528u, global1.c.d), min(0u, u_input.a.x)) & select(u_input.a, abs(_wgslsmith_add_vec3_u32(vec3<u32>(global4.c.d, 37149u, 1u), vec3<u32>(1u, u_input.a.x, 9809u))), global4.c.b));
    var var_1 = reverseBits(func_1(u_input.a | u_input.a).c);
    global1 = Struct_5(-58173i, Struct_3(vec3<bool>(!(310f >= var_0.d.c), !any(vec4<bool>(false, global4.b.c.x, global1.c.b, global4.c.b)), true), var_0.c, !(!global4.b.c)), func_1(vec3<u32>(714u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(11193u, 4294967295u)), firstTrailingBit(_wgslsmith_sub_u32(global1.d, global4.d)))).d, _wgslsmith_mult_u32(1u >> (~global4.d % 32u), abs(global1.d)));
    var var_2 = var_0.b.b.xw;
    var var_3 = global4.b;
    global4 = Struct_5(global1.a, Struct_3(global4.b.a, _wgslsmith_add_u32(~select(0u, 89095u, false), 42529u), global1.b.c), func_1(~u_input.a).d, ~_wgslsmith_clamp_u32(~48460u, global4.c.d, var_0.d.d));
    let var_4 = vec2<i32>(var_0.b.b.x, -1i & abs(min(-45069i, var_2.x))) << (vec2<u32>(firstTrailingBit(~(0u ^ u_input.a.x)), var_3.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, ~firstTrailingBit(9516u), 0u, _wgslsmith_mod_u32(abs(var_0.c), ~4294967295u)), _wgslsmith_dot_vec3_i32(var_0.a.b.zwz << (u_input.a % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(var_0.b.b.xzz, var_0.a.b.zzy) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d.d, 1u, global4.d) >> (vec3<u32>(37891u, 0u, 72275u) % vec3<u32>(32u)), vec3<u32>(0u, 4294967295u, 48227u) ^ vec3<u32>(4294967295u, 0u, u_input.a.x)) % vec3<u32>(32u))), var_0.a.b);
}

