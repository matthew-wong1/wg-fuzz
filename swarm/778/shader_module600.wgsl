struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: vec4<i32> = vec4<i32>(8457i, 0i, -45409i, 14568i);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = ~max(u_input.a, _wgslsmith_div_u32(u_input.e, ~u_input.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-623f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_2), arg_2)));
    global1 = vec4<i32>(min(-57025i, 0i), min(global1.x, ~(~arg_3.a)), ~(-global1.x) ^ _wgslsmith_div_i32(arg_3.a, countOneBits(arg_3.a)), i32(-1i) * -arg_3.b.x) << (~(~(~vec4<u32>(50992u, 1u, u_input.d, u_input.c) | (vec4<u32>(4294967295u, u_input.b, 1u, u_input.e) ^ vec4<u32>(0u, u_input.d, u_input.b, 34070u)))) % vec4<u32>(32u));
    var_0 = u_input.e;
    let var_2 = -arg_3.b.xx;
    return global2.a.a;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(global2.a);
    let var_1 = Struct_3(abs(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, 1i), (arg_2.c >> (4294967295u % 32u)) | (2147483647i & arg_0))), -_wgslsmith_div_vec3_i32(abs(arg_2.b), arg_2.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.a, (-3900i | arg_2.a) & 28560i), -(2147483647i >> (1u % 32u))));
    let var_2 = max(arg_0, ~_wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1i, -57734i, 11062i), vec3<i32>(arg_2.b.x, arg_2.b.x, -27076i), vec3<bool>(true, false, true)), vec3<i32>(global1.x, -global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -56897i, 5677i, -48110i), vec4<i32>(arg_2.a, global1.x, var_1.c, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(148f, _wgslsmith_f_op_f32(f32(-1f) * -115f), true)), _wgslsmith_f_op_f32(step(431f, -202f)))))));
    var var_4 = Struct_3(i32(-1i) * -global1.x, vec3<i32>(-1i) * -firstTrailingBit(abs(global1.zww)), -var_2 >> (~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 62770u, u_input.c, u_input.e), vec4<u32>(u_input.d, u_input.a, u_input.e, 21282u)), ~1u) % 32u));
    return ~vec4<u32>(~(u_input.e >> (u_input.c % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.a, 0u)), u_input.a, _wgslsmith_add_u32(max(0u, u_input.a), _wgslsmith_mod_u32(1u, 1u))) ^ countOneBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 0u, 0u, u_input.e), vec4<u32>(1u, u_input.a, u_input.a, u_input.d)), ~vec4<u32>(u_input.e, u_input.a, u_input.d, 0u), select(arg_1, vec4<bool>(false, arg_3.a, false, var_0.a.a), false)) & select(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c), vec4<u32>(u_input.d, 4294967295u, 1u, u_input.c), global2.a.a));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = 11832u;
    global0 = array<vec3<u32>, 4>();
    var var_1 = vec3<bool>(any(!(!(!vec2<bool>(false, global2.a.a)))), global1.x != -global1.x, false);
    let var_2 = !(!vec4<bool>(false, global2.a.a, func_2(Struct_2(Struct_1(false)), global2.a, -161f, Struct_3(40556i, global1.zzz, global1.x)) & !global2.a.a, global2.a.a));
    global0 = array<vec3<u32>, 4>();
    return ((func_3(31844i, select(var_2, vec4<bool>(true, var_2.x, var_1.x, false), vec4<bool>(false, true, global2.a.a, true)), Struct_3(global1.x, global1.yyw, global1.x), Struct_1(true)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, 0u, 1u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 21427u, var_0, 12757u), vec4<u32>(u_input.c, var_0, 1u, 54001u), vec4<u32>(1u, 4294967295u, 29129u, 0u)))) | vec4<u32>(max(max(1u, 22453u), 0u ^ u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(92123u, var_0), vec2<u32>(u_input.a, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4852u, 1u))), 10984u >> ((var_0 >> (42783u % 32u)) % 32u), max(u_input.c, var_0) | ~u_input.b)) >> (firstTrailingBit(vec4<u32>(firstLeadingBit(var_0), ~var_0, 59831u, reverseBits(var_0)) << (_wgslsmith_sub_vec4_u32(func_3(global1.x, var_2, Struct_3(19675i, global1.yxz, 1i), global2.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, u_input.d), vec4<u32>(u_input.a, 32996u, u_input.b, u_input.d))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_1(982f) << (~arg_1 % vec4<u32>(32u));
    global2 = arg_2;
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = global2.a.a;
    let var_3 = Struct_2(Struct_1(true));
    return Struct_2(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 4>();
    let var_0 = func_4(_wgslsmith_mult_u32(~u_input.d, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 20780u, 72324u, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 21361u, u_input.b, 0u), vec4<u32>(1u, u_input.e, 3888u, u_input.b))), ~func_1(1000f))), select(((vec4<u32>(u_input.e, u_input.b, u_input.a, 1u) ^ vec4<u32>(u_input.b, u_input.d, u_input.d, 4294967295u)) & ~vec4<u32>(41063u, 40379u, 62948u, u_input.e)) >> (vec4<u32>(_wgslsmith_add_u32(u_input.c, 52410u), _wgslsmith_mod_u32(u_input.a, u_input.b), u_input.b, u_input.e) % vec4<u32>(32u)), abs(min(countOneBits(vec4<u32>(160414u, 4294967295u, 55426u, u_input.c)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.c) << (vec4<u32>(u_input.e, 81485u, u_input.a, u_input.a) % vec4<u32>(32u)))), false), Struct_2(global2.a), global2.a);
    global0 = array<vec3<u32>, 4>();
    var var_1 = all(!vec3<bool>(true, (u_input.b & u_input.a) != func_3(24160i, vec4<bool>(false, global2.a.a, global2.a.a, false), Struct_3(global1.x, global1.xxy, 13377i), Struct_1(false)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(25620i, global1.x, global1.x), vec3<i32>(43775i, -53879i, global1.x)) < global1.x));
    global2 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(1083f, countOneBits(vec3<u32>(1u, ~u_input.b, func_3(global1.x, vec4<bool>(true, false, true, global2.a.a), Struct_3(global1.x, global1.yxy, global1.x), Struct_1(true)).x)) ^ max(~(~vec3<u32>(37677u, 17074u, 7531u)), firstTrailingBit(~vec3<u32>(u_input.c, u_input.d, 1u))), vec4<u32>(~52730u, ~u_input.b, _wgslsmith_sub_u32(abs(~19916u), _wgslsmith_clamp_u32(0u, 1u, 1u) << (_wgslsmith_div_u32(9248u, u_input.c) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.b, 32821u, 1u), reverseBits(vec4<u32>(u_input.a, 1u, u_input.e, u_input.e) << (vec4<u32>(u_input.e, 76167u, u_input.e, 15221u) % vec4<u32>(32u))))));
}

