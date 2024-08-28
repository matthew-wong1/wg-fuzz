struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -48316i, -1i, i32(-2147483648));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1612f, _wgslsmith_f_op_f32(f32(-1f) * -1954f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(768f)) + _wgslsmith_f_op_f32(-436f - 247f))))), _wgslsmith_dot_vec4_u32(u_input.b, ~(~select(u_input.b, u_input.b, true))), Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 9350u), 4294967295u << (arg_0.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.x), ~vec3<u32>(arg_0.x, 35936u, 1u)), 9742u)), _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_0.x, 1u), vec2<u32>(u_input.b.x & arg_0.x, _wgslsmith_sub_u32(u_input.c, u_input.a.x))) ^ (~vec2<u32>(79584u, u_input.c) & ~_wgslsmith_div_vec2_u32(vec2<u32>(77646u, arg_0.x), arg_0.yx)), Struct_1(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(55529u, 31966u, 6008u), vec3<u32>(4294967295u, arg_0.x, u_input.b.x), vec3<bool>(true, false, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(52062u, u_input.a.x, arg_0.x), arg_0))));
    let var_1 = var_0.e;
    let var_2 = select(vec3<bool>(false & all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(-var_0.a)), select(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), !vec3<bool>(false, true, any(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true));
    let var_3 = Struct_1(vec3<u32>(arg_0.x, ~0u, countOneBits(abs(u_input.c))));
    global0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(13124i, ~45223i, global0.x, abs(-38308i)) & ~_wgslsmith_add_vec4_i32(~vec4<i32>(1i, global0.x, global0.x, -47006i), -vec4<i32>(2147483647i, 1861i, 57273i, 3966i)), reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(23141i, -10426i, global0.x, -9766i), vec4<i32>(global0.x, -1i, global0.x, -30593i) | vec4<i32>(-2147483647i, global0.x, 1i, global0.x)), -select(vec4<i32>(global0.x, global0.x, 1i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x), var_2.x), var_2.x)));
    return _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2068f - 2368f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = Struct_1(arg_0.c.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0.d.x & var_0.a.x, arg_0.c.a.x >> (4294967295u % 32u), arg_1.a.x))), _wgslsmith_f_op_f32(-arg_2.a), -1967f));
    var var_2 = Struct_2(616f, 0u, arg_1, ~arg_0.c.a.xz, Struct_1(u_input.b.yxx));
    let var_3 = 1u;
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u >> (arg_0.e.a.x % 32u), ~6229u), 0u), arg_0.e, reverseBits(~_wgslsmith_add_vec2_u32(arg_2.e.a.zx | var_0.a.xz, var_0.a.yy)), arg_1);
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 743f) - _wgslsmith_f_op_f32(-arg_2.a)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -739f)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1301f))), var_1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = i32(-1i) * -global0.x;
    global0 = vec4<i32>(~35216i, -52995i, global0.x, ~global0.x);
    var var_1 = (127463u << (arg_3.a.x % 32u)) < _wgslsmith_add_u32(~countOneBits(24849u), arg_3.a.x);
    global0 = reverseBits(-countOneBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, -60868i), vec4<i32>(2147483647i, 1i, 0i, -28452i)), vec4<i32>(global0.x, 2147483647i, global0.x, global0.x) >> (u_input.b % vec4<u32>(32u)), !vec4<bool>(arg_0.x, arg_0.x, false, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.zz)) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 929f) - arg_1.x), -1125f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * arg_1.x)))));
    return firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, global0.x, global0.x, global0.x), ~countOneBits(vec4<i32>(global0.x, 2147483647i, -2147483647i, 0i))), -(vec4<i32>(global0.x, 1i, global0.x, global0.x) ^ vec4<i32>(global0.x, 1i, global0.x, -13056i)) & select(vec4<i32>(global0.x, 0i, global0.x, global0.x) ^ vec4<i32>(-24261i, global0.x, 2147483647i, global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, global0.x, -2147483647i), vec4<i32>(30467i, 2147483647i, global0.x, -30336i)), !arg_0.x)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = Struct_1(reverseBits(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(7543u, u_input.a.x, u_input.a.x), vec3<u32>(0u, 4294967295u, u_input.c), vec3<bool>(false, arg_0, arg_0)), ~u_input.b.xzz)));
    let var_1 = 1426f;
    let var_2 = 16474u >> (_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(u_input.b.xw, min(var_0.a.xz, var_0.a.xz))) % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f - -1096f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))))));
    global0 = ~vec4<i32>(_wgslsmith_mult_i32(global0.x, ~global0.x), _wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(-7518i, 1303i)) << (~4294967295u % 32u), _wgslsmith_add_i32(-global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), global0.zxy)), -_wgslsmith_clamp_i32(global0.x, 28900i, global0.x)) ^ func_4(vec4<bool>(true, select(func_2(Struct_2(var_1, u_input.c, Struct_1(var_0.a), vec2<u32>(var_0.a.x, 0u), Struct_1(vec3<u32>(4294967295u, 27308u, 11868u))), Struct_1(u_input.b.xyz), Struct_2(-120f, var_0.a.x, var_0, u_input.b.zx, Struct_1(vec3<u32>(39613u, 1u, var_0.a.x)))), !arg_0, true), arg_0 & arg_0, true | arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f + var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), -1825f), _wgslsmith_mod_vec3_u32(~u_input.b.yxz, var_0.a), var_0);
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b), vec4<u32>(abs(u_input.a.x), ~(~0u), _wgslsmith_dot_vec4_u32(abs(u_input.b >> (vec4<u32>(var_2, 38676u, var_0.a.x, u_input.b.x) % vec4<u32>(32u))), u_input.b), ~_wgslsmith_mod_u32(var_0.a.x, u_input.a.x & var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(3126f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1519f + _wgslsmith_f_op_f32(-703f - 1071f)))), func_1(max(~u_input.a.x, u_input.b.x) < reverseBits(~u_input.b.x)), Struct_1(vec3<u32>(~_wgslsmith_mod_u32(23879u, u_input.c), 4294967295u, _wgslsmith_dot_vec2_u32(~u_input.a, u_input.b.xx))), abs(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a))), Struct_1(u_input.b.zyz));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(-1807f * 610f)))), ~4294967295u, var_0.c, ~vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, var_0.d.x), u_input.b.zz)), Struct_1(u_input.b.zwz));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a + 1000f), reverseBits(23709u), Struct_1(~u_input.b.wzy), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.e.a.x, 149u), u_input.b.zwx)), u_input.c), var_0.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-167f, _wgslsmith_f_op_f32(floor(405f)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), 3332u, var_0.e, _wgslsmith_mult_vec2_u32((u_input.b.wy | vec2<u32>(33952u, u_input.a.x)) ^ ~var_0.c.a.xy, u_input.a) & countOneBits(u_input.a & ~var_0.c.a.zx), Struct_1(firstTrailingBit(vec3<u32>(countOneBits(1u), ~var_0.d.x, 35151u))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) * _wgslsmith_f_op_f32(var_1.x - 145f))))), -556f);
    var var_3 = ~u_input.b;
    let var_4 = Struct_1(vec3<u32>(reverseBits(1u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.c.a.x, var_3.x) >> (var_0.d % vec2<u32>(32u))), min(u_input.a, ~var_0.c.a.zz)), u_input.c));
    let var_5 = vec3<u32>(var_0.b, 8831u, ~_wgslsmith_mod_u32(max(var_0.b, ~var_0.e.a.x), _wgslsmith_div_u32(var_3.x | var_3.x, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0.x, 0u, _wgslsmith_f_op_f32(-292f + -551f));
}

