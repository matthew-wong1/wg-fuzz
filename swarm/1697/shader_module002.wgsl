struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(-1298f);

var<private> global3: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(875f, -1000f, 923f), vec3<f32>(224f, 1997f, -1024f), vec3<f32>(644f, -835f, 161f), vec3<f32>(-1391f, -315f, -1281f), vec3<f32>(-506f, 109f, -1674f));

var<private> global4: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = 0u <= ~(~min(u_input.d, 19112u));
    var var_1 = -1167f;
    var var_2 = vec3<u32>(11519u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, 8781u), _wgslsmith_mod_u32(u_input.d, 1u)) & (~vec2<u32>(arg_0, 1u) << ((vec2<u32>(12080u, arg_0) & vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))), vec2<u32>(u_input.d, countOneBits(arg_0))), ~(~reverseBits(~arg_0)));
    let var_3 = abs(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_2.x, arg_0, 4294967295u)), ~vec4<u32>(arg_0, var_2.x, 642u, var_2.x)) & 36396u);
    var_1 = -379f;
    return var_0;
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-266f * -1884f)), _wgslsmith_f_op_f32(sign(-219f))) + 1507f));
    global4 = ~(~select(_wgslsmith_mod_u32(~u_input.d, ~0u), ~u_input.d << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<u32>(0u, u_input.d, u_input.d, u_input.d)) % 32u), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.xz) == -2147483647i));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(~(~2147483647i), u_input.c.x | u_input.a.x)), u_input.c);
    let var_2 = Struct_1(global0.x);
    let var_3 = ~(~firstLeadingBit(vec2<u32>(u_input.d, 8009u)) | (~min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 38329u)) & (vec2<u32>(48216u, u_input.d) & _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 62291u), vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.d, 4294967295u)))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(57749u, 84607u, ~u_input.d, 22442u), ~vec4<u32>(firstLeadingBit(var_3.x), 27371u << (u_input.d % 32u), _wgslsmith_div_u32(var_3.x, 46276u), var_3.x) >> (vec4<u32>(var_3.x, (u_input.d << (var_3.x % 32u)) >> (2432u % 32u), firstLeadingBit(u_input.d), _wgslsmith_div_u32(~0u, 28331u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 74646u, 72802u), vec3<u32>(56930u, arg_1, u_input.d)), vec3<u32>(arg_1, arg_1, 1u)), u_input.d, ~(~94485u), 1u) ^ func_3(), max((vec4<u32>(arg_1, u_input.d, u_input.d, u_input.d) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(10789u, u_input.d, 3286u, 1u), vec4<u32>(u_input.d, u_input.d, 37450u, 1u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(max(vec4<u32>(26672u, 1u, u_input.d, arg_1), vec4<u32>(arg_1, arg_1, u_input.d, 0u)), ~vec4<u32>(0u, 0u, arg_1, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, arg_1, u_input.d, 0u)) ^ abs(vec4<u32>(0u, u_input.d, 8921u, u_input.d)), vec4<u32>(arg_1, arg_1, 0u, 4294967295u) >> (select(vec4<u32>(arg_1, 1u, 62441u, u_input.d), vec4<u32>(arg_1, u_input.d, 31865u, 67075u), false) % vec4<u32>(32u)))));
    var var_1 = vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(firstTrailingBit(-13445i), firstLeadingBit(u_input.b), -u_input.b, u_input.c.x), firstLeadingBit(vec4<i32>(firstTrailingBit(1i), -1i, 2147483647i, 43127i))));
    var var_2 = ~u_input.c.x;
    var var_3 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(741f, 1000f)), 1285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 1517f) + _wgslsmith_f_op_f32(var_3.a - 2383f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global2.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, global1.a, -299f, 772f) - vec4<f32>(global2.a, 928f, 1282f, -419f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, global2.a, -1492f, global2.a) * vec4<f32>(1581f, 570f, -1775f, var_3.a)), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, arg_0.a, arg_0.a, global0.x), vec4<f32>(arg_0.a, arg_0.a, var_3.a, 566f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, 433f, -1165f, var_3.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 740f, -690f, arg_0.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, 370f, -537f, var_3.a) + vec4<f32>(579f, global0.x, 1113f, 1584f)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-128f, arg_0.a)) - _wgslsmith_div_f32(-1108f, global0.x)), _wgslsmith_f_op_f32(round(global2.a)), -1491f)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global2.a)) * global0.x)));
    let var_1 = func_1(u_input.d, 1i);
    var var_2 = vec4<u32>(func_2(var_0, u_input.d), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), ~vec3<u32>(69068u, u_input.d, u_input.d))), u_input.d, max(u_input.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d << (u_input.d % 32u), 1u), ~(u_input.d ^ 747u))));
    let var_3 = Struct_1(-1000f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -386f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_div_vec3_u32(var_2.wzz, vec3<u32>(1u, 1u, ~(~108043u))), ~(~(~4572u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1521f - 1000f))), vec4<f32>(1041f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-636f)))), _wgslsmith_f_op_f32(abs(var_4.a)), -790f));
}

