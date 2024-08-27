struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(524f, Struct_3(-927f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(1060f)), _wgslsmith_f_op_f32(f32(-1f) * -788f)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-314f, 923f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2675f), -766f)))));
    var var_1 = Struct_2(_wgslsmith_sub_i32(u_input.b, u_input.b), !(!select(true, true, true)));
    let var_2 = Struct_4(119f, Struct_3(var_0.b.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.x, -766f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.c.a)));
    global0 = array<vec4<u32>, 12>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.b.a.x))), _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-var_2.b.b.a.x))))), _wgslsmith_f_op_f32(round(1000f)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.b.a.x * _wgslsmith_f_op_f32(1000f + var_2.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(-var_2.c.a.x)))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    let var_0 = arg_1.a;
    var var_1 = arg_0.c;
    let var_2 = arg_0.b;
    let var_3 = var_2;
    return min(countOneBits(~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 14706u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~9034u, ~1u, 0u >> (u_input.c.x % 32u)), ~(~vec3<u32>(4294967295u, 2222u, 0u)), vec3<u32>(countOneBits(52019u), ~u_input.c.x, u_input.a.x | 1u)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(754f, -2187f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(444f, 2234f) * vec2<f32>(-824f, -1235f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, 578f))))))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(abs(func_2().a.x));
    var_2 = 625f;
    let var_3 = ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, ~u_input.a.x, min(u_input.c.x, u_input.c.x))), select(max(func_3(Struct_4(var_1.a.x, Struct_3(var_1.a.x, Struct_1(var_0)), Struct_1(vec2<f32>(-361f, 313f))), Struct_3(var_1.a.x, Struct_1(vec2<f32>(-1755f, -226f))), Struct_2(u_input.b, true), true), vec3<u32>(0u, 1u, 7641u)), max(~vec3<u32>(1u, u_input.c.x, 0u), abs(vec3<u32>(1u, 967u, 0u))), vec3<bool>(true, true, false)));
    return ~abs(-73060i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-938f, 349f)))) + vec2<f32>(801f, _wgslsmith_div_f32(-402f, 1000f)))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(19506u, 4294967295u), u_input.c.x);
    let var_2 = -(~func_1());
    var var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -2147483647i, _wgslsmith_sub_i32(-37047i, u_input.b)), firstLeadingBit(~vec3<i32>(0i, u_input.b, var_2)) << ((~vec3<u32>(u_input.c.x, 17676u, var_1) << (firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), countOneBits(_wgslsmith_mod_i32(51171i, u_input.b)), _wgslsmith_mod_i32(var_2, var_2));
    var var_4 = Struct_2(select(-36784i | -var_2, -2147483647i, true) | var_2, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, 1303f, true))) >= _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(step(var_0.a.x, 1482f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_0.a.x)), u_input.b, -24030i, var_2, 2147483647i);
}

