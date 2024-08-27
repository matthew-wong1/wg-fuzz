struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23572u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = ~vec3<u32>(firstTrailingBit(3732u), reverseBits(~u_input.b | ~4294967295u), firstTrailingBit(_wgslsmith_mult_u32(countOneBits(4294967295u), u_input.b)));
    global0 = u_input.b;
    global0 = _wgslsmith_add_u32(56377u, u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1644f, -624f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-589f, 464f), vec2<f32>(1156f, -484f)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1820f - -1160f), _wgslsmith_f_op_f32(step(-584f, -758f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(728f, 501f))))));
    var var_2 = Struct_2(-u_input.a.x, Struct_1(_wgslsmith_clamp_i32(~(~u_input.a.x), u_input.a.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_mod_i32(u_input.a.x, reverseBits(_wgslsmith_clamp_i32(u_input.a.x, 3702i, 16206i)))), vec3<i32>(0i, firstLeadingBit(firstTrailingBit(u_input.a.x)), 2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-754f, 199f, true)) - 620f);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_3(Struct_2(-1i, Struct_1(0i, _wgslsmith_f_op_f32(func_3()), -30117i), vec3<i32>(1i, -12047i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-906i, 2147483647i)), u_input.a.yy))), Struct_1(~45520i, arg_2.d.b.b, arg_2.a.c.x), firstLeadingBit(u_input.a.x), Struct_2(2147483647i, Struct_1(-2147483647i, arg_2.c.b.b, arg_2.a.b.c), vec3<i32>(-u_input.a.x, arg_2.c.b.c, ~(75917i ^ u_input.a.x))), arg_1.x);
    var var_1 = arg_2;
    var_0 = Struct_3(var_1.c, var_1.d.b, -31848i, Struct_2(select(-u_input.a.x, min(-var_0.d.a, 2147483647i), _wgslsmith_f_op_f32(-arg_2.d.b.b) != 1f), var_1.a.b, abs(countOneBits(var_1.a.c))), var_1.c.b.b);
    let var_2 = var_1.d.c << (countOneBits(~firstLeadingBit(_wgslsmith_add_vec3_u32(var_1.e.wzy, vec3<u32>(61441u, 1u, var_1.e.x)))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(var_1.e.x << (arg_2.b.x % 32u), arg_2.e.x), max(u_input.b, 21126u), ~(~arg_2.b.x >> (41665u % 32u))), arg_2.e.xxy);
    return any(!vec4<bool>(arg_0, arg_0, all(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, true))), any(select(vec2<bool>(false, arg_0), vec2<bool>(true, false), true))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x, !(6632u > u_input.b), true))), arg_0);
    let var_1 = Struct_2(-u_input.a.x, Struct_1(2147483647i, arg_0.x, ~(-35782i)), vec3<i32>(u_input.a.x, i32(-1i) * -u_input.a.x, (14798i << ((u_input.b | u_input.b) % 32u)) | (abs(-37998i) >> (firstTrailingBit(8233u) % 32u))));
    var var_2 = vec2<bool>(true, false);
    let var_3 = select(!select(select(select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, false, false), vec3<bool>(var_2.x, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(!var_2.x, func_2(false, vec2<f32>(-1234f, 227f), Struct_4(var_1, vec2<u32>(u_input.b, u_input.b), var_1, Struct_2(var_1.c.x, var_1.b, var_1.c), vec4<u32>(4294967295u, 39085u, 4294967295u, 24169u))), false), vec3<bool>(u_input.b <= u_input.b, true, -1000f <= arg_0.x)), vec3<bool>(var_2.x, all(vec3<bool>(func_2(var_2.x, vec2<f32>(var_0.x, arg_0.x), Struct_4(Struct_2(0i, var_1.b, var_1.c), vec2<u32>(u_input.b, u_input.b), Struct_2(var_1.a, var_1.b, vec3<i32>(u_input.a.x, 0i, 0i)), var_1, vec4<u32>(52950u, 8954u, 6533u, 65621u))), all(vec3<bool>(var_2.x, var_2.x, var_2.x)), false)), var_2.x), var_2.x);
    global0 = firstTrailingBit(~(~u_input.b));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.b, 10742u), abs(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b), vec4<u32>(50407u, 1u, 11906u, 0u)) | vec4<u32>(73558u, u_input.b, func_1(vec3<f32>(254f, -1000f, -881f)), 1u)), _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 5230i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(35073i, u_input.a.x, u_input.a.x), u_input.a) | _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -3313i, firstTrailingBit(u_input.a.x), min(max(-1i, u_input.a.x), firstTrailingBit(u_input.a.x)))), ~(~vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.yx), _wgslsmith_mult_i32(41459i, u_input.a.x))));
}

