struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: vec4<f32>;

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 11>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_1(-379f, firstTrailingBit(min(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(7146i, -43936i, 17484i)), ~vec3<i32>(2147483647i, 0i, 14450i), min(vec3<i32>(30142i, -35445i, 2667i), vec3<i32>(-9291i, 2147483647i, -1i))), -vec3<i32>(32590i, -33633i, 1i))), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 0i, 54507i), vec3<i32>(1i, -2147483647i, 19213i) >> (arg_0 % vec3<u32>(32u)))), global1.yzz, vec4<bool>(!(!(8586u <= arg_0.x)), false, !all(vec2<bool>(true, false)), true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -504f);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1521f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1611f), _wgslsmith_f_op_f32(-1418f * 211f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1145f, var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(-global1.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(-736f + global1.x)))), -1266f, var_0.d.x, var_0.d.x));
    let var_2 = vec2<u32>(min(8566u, arg_0.x), arg_0.x);
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(401f, -932f) - -713f)));
    return var_0.b;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, -2147483647i);
    global2 = global1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1559f * global1.x));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(func_3(vec3<u32>(6831u, 4294967295u, 57100u)), ~vec3<i32>(-1i, var_0, var_0))), -(~(vec3<i32>(var_0, -59851i, 25301i) >> (vec3<u32>(u_input.a, 1u, u_input.b) % vec3<u32>(32u))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(42714i, -var_0, -2147483647i), vec3<i32>(0i, 38040i, _wgslsmith_sub_i32(var_0, 15002i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(51854i, -24210i)), var_0), func_3(~vec3<u32>(4294967295u, 0u, 4433u)))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(trunc(global1.x))), select(vec4<bool>(true, true, true, true), !vec4<bool>(u_input.a >= 29404u, true, true, all(vec2<bool>(false, true))), !(-1000f <= _wgslsmith_f_op_f32(568f * global1.x))));
    var_1 = var_2.e.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f)))) * -1280f));
}

fn func_1() -> vec3<u32> {
    global3 = array<vec2<bool>, 11>();
    let var_0 = _wgslsmith_clamp_vec2_i32(~(~(min(vec2<i32>(-1i, 4561i), vec2<i32>(-2147483647i, 40090i)) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), vec2<i32>(-1i) * -(min(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -1i)) << (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), vec2<i32>(reverseBits(1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, 0i), ~vec3<i32>(0i, 28954i, 1i)), -27046i)));
    let var_1 = -14911i;
    var var_2 = abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(15991u, abs(u_input.a)), u_input.a, _wgslsmith_div_u32(1u, ~0u)), vec4<u32>(~u_input.b & firstLeadingBit(u_input.a), u_input.a, u_input.a, u_input.a)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    return var_2.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -272f)))))));
    let var_0 = (((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.a)) & func_1()) >> (~firstTrailingBit(vec3<u32>(1u, 1u, u_input.a)) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.a, 1u, u_input.b) % vec3<u32>(32u))) ^ ~vec3<u32>(~(~44474u), func_1().x, _wgslsmith_mod_u32(~u_input.b, u_input.b));
    var var_1 = ~var_0;
    var_1 = vec3<u32>(var_1.x << (var_0.x % 32u), ~8447u, max(54244u, u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(global1.x, 725f))))), vec3<i32>(~(20816i >> (~var_1.x % 32u)), ~(-1i), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(26943i, 25810i), 1i))), ~(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 36914i, 1i), vec3<i32>(69093i, 0i, -6019i), vec3<i32>(-2147483647i, 38723i, 0i)) >> (vec3<u32>(35793u, u_input.b, 47900u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1f, _wgslsmith_f_op_f32(ceil(global1.x)))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)))));
    let var_3 = select(vec2<u32>(_wgslsmith_mult_u32(~19713u, _wgslsmith_dot_vec3_u32(var_0, var_0)), ~4294967295u >> (var_0.x % 32u)), ~abs(~var_1.xy), var_2.e.x != (-357f < _wgslsmith_f_op_f32(ceil(-799f)))) << (_wgslsmith_mult_vec2_u32(var_0.yx, select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, u_input.b), var_1.zz), firstLeadingBit(~var_1.zx), any(select(var_2.e.xww, vec3<bool>(false, true, true), var_2.e.x)))) % vec2<u32>(32u));
    global2 = var_2.e.x;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(floor(var_2.a))))), _wgslsmith_f_op_f32(exp2(global1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d.x)))), -677f, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(0u, -abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-7059i, var_2.c.x), var_2.c.yy), ~var_2.c.x)), (1i & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b.x, 1i, var_2.c.x, var_2.b.x)), firstTrailingBit(vec4<i32>(-1i, var_2.b.x, 2147483647i, 0i)))) >> (u_input.a % 32u), var_2.c.x);
}

