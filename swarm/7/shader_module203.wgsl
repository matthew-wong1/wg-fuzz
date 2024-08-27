struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-130f, -1286f, 683f, -1451f), vec4<f32>(772f, -396f, 150f, -471f), vec4<f32>(2607f, -281f, 1086f, 1106f), vec4<f32>(1616f, -1150f, 381f, 543f), vec4<f32>(109f, 799f, -791f, 598f), vec4<f32>(-444f, 2497f, -309f, -797f), vec4<f32>(780f, 1786f, -595f, 732f), vec4<f32>(319f, -1009f, -1210f, 361f), vec4<f32>(-516f, 437f, 1955f, -267f), vec4<f32>(-616f, -362f, 1000f, -1126f), vec4<f32>(-444f, 831f, 787f, -351f));

var<private> global1: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<vec4<f32>, 11>();
    var var_0 = global1.a.d;
    let var_1 = vec2<bool>(global1.a.b.x, any(global1.a.b));
    var var_2 = -413f;
    return 51463u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<vec4<f32>, 11>();
    var var_0 = ~1u;
    var var_1 = -1257f;
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, arg_0.a), reverseBits(_wgslsmith_add_u32(arg_0.a, 1u))), _wgslsmith_mod_u32(~(~u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, u_input.a) | vec2<u32>(57308u, arg_0.a), ~vec2<u32>(arg_0.a, arg_0.a)) % 32u), func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -998f))))));
    global1 = arg_1;
    return !select(select(!(!vec4<bool>(false, global1.a.b.x, arg_1.a.c, false)), !(!global1.a.b), !global1.a.c), vec4<bool>(global1.a.b.x, any(global1.a.b.yw), global1.a.c, !(!arg_1.a.c)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1.a.d, global1.a.d), -14383i, -1i) > -8660i);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(-2147483647i, 5569i, ~2147483647i, global1.a.d))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, max(global1.a.d, arg_0.d), reverseBits(-16754i), arg_0.d)), _wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(arg_0.d, global1.a.d, 1921i, -14430i)), vec4<i32>(-1i, -1i, _wgslsmith_mod_i32(51198i, arg_0.d), ~arg_0.d))));
    return Struct_2(arg_0);
}

fn func_1() -> vec3<u32> {
    global0 = array<vec4<f32>, 11>();
    var var_0 = vec2<bool>(false, global1.a.b.x);
    global1 = func_4(Struct_1(_wgslsmith_f_op_f32(-global1.a.a), select(vec4<bool>(var_0.x, global1.a.c, var_0.x, all(vec2<bool>(var_0.x, false))), vec4<bool>(global1.a.c & global1.a.b.x, true, true, !global1.a.b.x), all(func_2(Struct_3(0u), Struct_2(global1.a)))), func_2(Struct_3(56635u), Struct_2(global1.a)).x, -15882i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.a.a), !func_4(global1.a).a.b, global1.a.b.x, 1i));
    var var_2 = vec2<i32>(global1.a.d, firstTrailingBit(2147483647i));
    return vec3<u32>(~reverseBits(~0u), ~((0u & u_input.a) ^ _wgslsmith_sub_u32(0u, u_input.a)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)), ~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(1u, 4294967295u, 1u)), (vec3<u32>(u_input.a, u_input.a, 39205u) & vec3<u32>(u_input.a, 1353u, u_input.a)) | vec3<u32>(u_input.a, 4639u, 1u)) % 32u), ~(~(~75678u) | ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), reverseBits(func_1()), abs(min(vec3<u32>(24454u, u_input.a, 52361u), vec3<u32>(u_input.a, 49700u, 70260u)))), ~(vec3<u32>(30637u, 0u, 11749u) & (vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(31814u, 0u, u_input.a) % vec3<u32>(32u))))));
    global0 = array<vec4<f32>, 11>();
    var var_1 = vec4<u32>(0u, 1u | _wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_0.x, ~0u), ~_wgslsmith_add_u32(46947u, 9341u)), _wgslsmith_mod_u32(~var_0.x, func_3(global1.a.a)), var_0.x);
    var var_2 = global1.a.a != _wgslsmith_f_op_f32(global1.a.a + _wgslsmith_f_op_f32(trunc(-1850f)));
    var var_3 = vec3<i32>(1i, global1.a.d, global1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(64734u)), vec4<i32>((2147483647i >> (var_0.x % 32u)) & -55372i, global1.a.d, -max(global1.a.d, global1.a.d), ~(i32(-1i) * -67709i)) << (~(~vec4<u32>(1u, 28247u, u_input.a, 1u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(~var_3.x, global1.a.d, 9416i), global1.a.d & select(firstTrailingBit(-1i), ~global1.a.d, true), var_3.x, 1i), global1.a.d, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, var_3.x, global1.a.d) >> (_wgslsmith_add_vec3_u32(vec3<u32>(54566u, var_1.x, 15295u), vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 19170i, 1i) | -vec3<i32>(global1.a.d, 2147483647i, 1i)), max(vec3<i32>(-34591i, _wgslsmith_mod_i32(14121i, -35875i), 0i | var_3.x), max(vec3<i32>(1i, global1.a.d, var_3.x), vec3<i32>(-23474i, var_3.x, 1i) | vec3<i32>(global1.a.d, global1.a.d, global1.a.d)))));
}

