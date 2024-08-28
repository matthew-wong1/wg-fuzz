struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-26863i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(1i, 3551i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -5102i), vec2<i32>(9542i, i32(-2147483648)), vec2<i32>(4137i, 14087i), vec2<i32>(-42280i, 0i), vec2<i32>(0i, 24637i), vec2<i32>(-28936i, 35130i), vec2<i32>(38581i, -1i), vec2<i32>(0i, -48919i), vec2<i32>(-30634i, -22301i), vec2<i32>(0i, -23159i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -33986i), vec2<i32>(48523i, 1i), vec2<i32>(-3140i, -12816i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -18291i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    var var_0 = vec4<bool>(any(vec4<bool>(!global0.x, global0.x, _wgslsmith_dot_vec2_u32(u_input.e.zz, u_input.e.yx) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, 33305u, u_input.e.x), vec4<u32>(1u, 29944u, 31834u, 31124u)), any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))))), false, arg_0 <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-516f, -645f)))), false);
    var_0 = select(vec4<bool>(!select(var_0.x, all(vec4<bool>(true, false, true, true)), !global0.x), true, u_input.e.x < _wgslsmith_div_u32(_wgslsmith_mod_u32(23599u, 1u), ~0u), global0.x), !(!select(select(vec4<bool>(true, global0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), var_0.x | global0.x)), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, true, var_0.x, true), global0.x), true), all(vec4<bool>(true, true, global0.x, global0.x))), vec4<bool>(false, false || select(global0.x, false, var_0.x), !all(vec2<bool>(false, var_0.x)), any(!var_0.wyw)), global0.x));
    var var_1 = Struct_1(u_input.e.x);
    return vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(max(-_wgslsmith_add_i32(u_input.b.x, 9097i), _wgslsmith_clamp_i32(select(-27267i, 1i, true), _wgslsmith_clamp_i32(-1i, 2147483647i, 0i), i32(-1i) * -34902i)), _wgslsmith_mult_i32(25661i, i32(-1i) * -1i)), u_input.b.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.a, 1i, u_input.b.x), ~(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -66020i)))) | abs(firstLeadingBit(vec4<i32>(u_input.d, -18453i, u_input.d, 0i)) | func_3(969f));
    global1 = array<vec2<i32>, 22>();
    var var_1 = global0.x;
    var var_2 = Struct_2(Struct_1(~(max(1u, arg_1.x) & 78419u)), Struct_1(29878u), 2147483647i, Struct_1(~u_input.e.x), Struct_1(arg_1.x));
    global1 = array<vec2<i32>, 22>();
    return _wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), ~_wgslsmith_dot_vec3_i32(~(var_0.ywx | u_input.b), u_input.b));
}

fn func_1() -> vec4<bool> {
    global0 = select(vec2<bool>(u_input.b.x <= func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(113f, -2136f), vec2<f32>(1418f, 1000f))), vec3<u32>(u_input.e.x, u_input.e.x, 1u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), _wgslsmith_div_f32(-775f, -556f) > _wgslsmith_f_op_f32(round(950f))), select(vec2<bool>(!(!global0.x), !(false || global0.x)), select(!vec2<bool>(true, global0.x), !select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)), any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x)))), !vec2<bool>(true, any(vec4<bool>(false, true, global0.x, global0.x)))), !vec2<bool>(!select(global0.x, global0.x, global0.x), global0.x));
    let var_0 = ~select(select(vec4<u32>(~u_input.e.x, ~u_input.e.x, countOneBits(4294967295u), 12548u), abs(select(vec4<u32>(u_input.e.x, 4294967295u, 0u, 1u), vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x), true)), !vec4<bool>(global0.x, global0.x, true, true)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, 9671u, u_input.e.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.e.x, 4217u), vec4<u32>(78437u, 3219u, u_input.e.x, 8744u))), reverseBits(reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)))), !global0.x | (1i < u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2112f, _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(sign(-1228f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1842f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1213f, 1326f)) + _wgslsmith_f_op_f32(278f - 1178f)))));
    let var_2 = u_input.e.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1310f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1505f, -630f))))))) - 128f);
    return select(!select(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, false, false), global0.x), vec4<bool>(true, all(vec4<bool>(global0.x, false, true, global0.x)), all(vec4<bool>(global0.x, false, global0.x, global0.x)), any(vec3<bool>(global0.x, false, false))), any(vec3<bool>(false, false, false))), !select(vec4<bool>(global0.x && global0.x, global0.x || true, global0.x & global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, false), !(!vec4<bool>(false, false, false, global0.x))), true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_add_u32(~4294967295u, ~u_input.e.x))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.e.x, 1u, false), ~u_input.e.x, ~7880u, ~1u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x >> (23796u % 32u), 18911u))), u_input.b.x & ~u_input.c.x, Struct_1(u_input.e.x), Struct_1(u_input.e.x));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) - _wgslsmith_f_op_f32(f32(-1f) * -735f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -165f), 1537f)))))));
    global1 = array<vec2<i32>, 22>();
    global0 = func_1().yy;
    let var_2 = true;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1751f, -672f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))))), -1687f == _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-432f + var_1), _wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(740f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 22>();
    global1 = array<vec2<i32>, 22>();
    var var_0 = func_4(func_1());
    var var_1 = _wgslsmith_clamp_i32(0i, u_input.b.x, ~(-43082i));
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.e), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.zx, u_input.e.yy) | ~u_input.e.xx, vec2<u32>(select(44549u, 43274u, false), 9523u), vec2<u32>(13461u, reverseBits(28690u))), u_input.e.yy), -reverseBits(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-48284i, u_input.b.x, 3524i, -2147483647i), vec4<i32>(u_input.a, u_input.b.x, -46249i, 2147483647i)), firstLeadingBit(vec4<i32>(u_input.d, u_input.a, 68410i, 15825i)))), ~max(~1u, 10803u));
}

