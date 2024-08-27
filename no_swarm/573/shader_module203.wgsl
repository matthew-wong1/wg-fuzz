struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(108f));
    global0 = Struct_4(_wgslsmith_dot_vec2_u32(~(~reverseBits(u_input.b)), reverseBits(_wgslsmith_clamp_vec2_u32(~u_input.c, u_input.b, ~vec2<u32>(global0.a, u_input.b.x)))), select(any(select(!vec2<bool>(false, global0.b), select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, true), false), select(vec2<bool>(true, global0.b), vec2<bool>(true, false), vec2<bool>(true, global0.b)))), any(select(!vec2<bool>(global0.b, false), select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true)), !global0.b)), false), -173f);
    let var_1 = Struct_2(Struct_1(-2147483647i), Struct_1(u_input.a), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, global0.a), u_input.c)) >> (u_input.c % vec2<u32>(32u)), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, u_input.d.x, arg_1.x, u_input.d.x), u_input.d)), reverseBits(vec4<i32>(-17297i, 1i, 2147483647i, 33570i)) ^ u_input.d)), _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec3_u32(~(vec3<u32>(global0.a, u_input.b.x, global0.a) << (vec3<u32>(84007u, 52418u, 62516u) % vec3<u32>(32u))), min(~vec3<u32>(global0.a, u_input.b.x, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global0.a, 0u), vec3<u32>(4294967295u, u_input.c.x, u_input.b.x))))));
    global0 = Struct_4(var_1.e, !(!all(vec2<bool>(global0.b, true)) | all(vec3<bool>(true, false, true))), global0.c);
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(0u, global0.a, 65626u)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, arg_0, 15350u, arg_0), vec4<u32>(0u, 0u, 35623u, 71487u)), _wgslsmith_add_u32(4294967295u, u_input.b.x), global0.a), vec3<u32>(14907u, firstLeadingBit(1u), abs(arg_0)))), _wgslsmith_clamp_u32(firstTrailingBit(func_3(886f, u_input.d.wx)), ~max(23718u, u_input.b.x), reverseBits(~46616u)) >> (1u % 32u));
    global1 = all(select(!(!vec3<bool>(false, global0.b, false)), select(select(!vec3<bool>(true, global0.b, global0.b), select(vec3<bool>(true, global0.b, false), vec3<bool>(true, global0.b, false), global0.b), global0.b), vec3<bool>(all(vec2<bool>(global0.b, global0.b)), true, 19655i != arg_2.a), !global0.b), !select(!vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, global0.b, false), global0.b)));
    global1 = !all(select(!select(vec2<bool>(false, global0.b), vec2<bool>(true, false), global0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, global0.b), global0.b), global0.b));
    var var_1 = ~u_input.d.zw;
    let var_2 = Struct_4(firstTrailingBit(60943u), false, -1864f);
    return any(!(!vec4<bool>(false, true, var_2.b, false))) && var_2.b;
}

fn func_1() -> vec3<u32> {
    let var_0 = !vec3<bool>(all(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b))), all(!vec2<bool>(false, global0.b)), (global0.b & func_2(28310u, vec4<f32>(1167f, global0.c, -472f, 757f), Struct_1(u_input.e.x))) | select(global0.b, true, false));
    global1 = all(!vec4<bool>(false, global0.b || (2147483647i != u_input.e.x), select(u_input.d.x, 2147483647i, false) <= ~u_input.d.x, !all(var_0.xy)));
    var var_1 = !global0.b;
    global1 = !(!(2147483647i < u_input.e.x));
    var_1 = var_0.x || true;
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(max(60309u, u_input.c.x), u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68622u, u_input.b.x), countOneBits(vec3<u32>(1u, 13636u, global0.a)))), ~_wgslsmith_add_u32(global0.a, 4294967295u), _wgslsmith_sub_u32(global0.a, max(1u, global0.a))), abs(vec3<u32>(global0.a, 1u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(0i, 2147483647i));
    global0 = Struct_4(~1u, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(607f - -831f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-637f, -272f)), _wgslsmith_f_op_f32(-1000f - global0.c)))))));
    let var_1 = ~(~(abs(func_1()) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(global0.a, 0u, 81066u)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(select(var_1, select(vec3<u32>(29156u, global0.a, 1u), var_1, vec3<bool>(true, global0.b, false)), global0.c >= global0.c), ~vec3<u32>(0u, 5283u, global0.a), ~vec3<u32>(0u, global0.a, var_1.x)), ~(~var_1)), ~(vec3<u32>(var_1.x ^ global0.a, ~u_input.c.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u)) & vec3<u32>(countOneBits(0u), ~u_input.c.x, global0.a)));
    let var_3 = _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(global0.a ^ _wgslsmith_add_u32(~56301u, 0u), ~global0.a, ~(~73982u)));
    global0 = Struct_4(0u, !global0.b, _wgslsmith_f_op_f32(527f - _wgslsmith_f_op_f32(round(global0.c))));
    var_2 = vec3<u32>(~_wgslsmith_mod_u32(var_3, _wgslsmith_mod_u32(4294967295u, var_1.x) >> (~1u % 32u)), ~(~(30535u & ~global0.a)), 0u);
    var var_4 = u_input.d.yyy;
    let var_5 = Struct_2(Struct_1(2147483647i), Struct_1(45763i | _wgslsmith_dot_vec2_i32(u_input.e | vec2<i32>(u_input.d.x, var_4.x), vec2<i32>(var_0.a, -3556i) >> (u_input.b % vec2<u32>(32u)))), vec2<u32>(~u_input.b.x >> (4294967295u % 32u), (var_3 & (global0.a ^ 1u)) << (func_1().x % 32u)), Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-1i), max(3936i, -1i)), firstTrailingBit(~(-42262i)))), _wgslsmith_mult_u32(1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.xy, global0.a, _wgslsmith_mod_u32(var_5.e, 4294967295u), 0u);
}

