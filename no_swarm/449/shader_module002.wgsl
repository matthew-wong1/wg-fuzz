struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = false;
    let var_2 = 40163u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) + 889f);
    var var_4 = 0u;
    return 84121u;
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = vec4<f32>(-789f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1425f)))) + 543f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(720f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1514f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1271f)))))))));
    let var_1 = vec2<u32>(~(~(~(~u_input.d.x))), 1u);
    var var_2 = u_input.e.zyz | max(_wgslsmith_add_vec3_i32(abs(u_input.c.yxy), -arg_0), vec3<i32>(-24242i, u_input.c.x, ~(u_input.e.x >> (1u % 32u))));
    var var_3 = -_wgslsmith_add_vec2_i32(vec2<i32>(abs(var_2.x), var_2.x), arg_0.zz);
    var_2 = select(~u_input.e.ywy, arg_0, vec3<bool>(true, true, true));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) - var_0.x), _wgslsmith_f_op_f32(trunc(1000f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(-4033i, _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(54163u, 1u)), ~u_input.b.zy) & ~countOneBits(u_input.b.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1197f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-103f - -329f), -313f))))), ~4294967295u);
    var var_1 = Struct_2(false, var_0.a, var_0.b.x, 114f, var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(var_1.e.a, -1i)) >> ((select(12512u, 4294967295u, var_1.a) & ~80914u) % 32u), _wgslsmith_clamp_i32(select(min(0i, -15439i), var_1.b, !var_1.a), 1409i, reverseBits(var_1.e.a) >> (abs(u_input.d.x) % 32u)), max(var_0.a, var_1.e.a))));
    let var_3 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_0.c)) * var_1.d));
    var_2 = _wgslsmith_f_op_vec2_f32(min(var_3, var_3));
    return Struct_2(true || any(vec3<bool>(true, var_1.a, true)), abs(-1i), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~firstLeadingBit(var_0.b.x), u_input.b.x), _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(29692u, var_1.e.b.x, 10277u, 4294967295u)), vec4<u32>(u_input.d.x, 69883u, var_0.b.x, 0u) & vec4<u32>(13523u, 4294967295u, var_1.e.b.x, u_input.d.x)), vec4<u32>(0u, 26823u, 1u, 80804u))), _wgslsmith_f_op_vec2_f32(func_3(select(-vec3<i32>(u_input.c.x, var_0.a, 0i) << (vec3<u32>(0u, var_1.e.b.x, 1u) % vec3<u32>(32u)), vec3<i32>(-15980i, 1i, var_1.e.a), false))).x, Struct_1(5558i, u_input.b.zz, _wgslsmith_f_op_f32(ceil(var_1.e.c)), 0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0.a;
    var_0 = !arg_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-228f)))), 878f, _wgslsmith_f_op_f32(trunc(-1000f))));
    var var_2 = all(!vec2<bool>(all(vec4<bool>(false, false, true, arg_1.a)), func_2().a));
    let var_3 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(269f)) * -341f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -255f)), arg_0.a), select(select(vec2<bool>(any(vec2<bool>(arg_0.a, arg_0.a)), arg_1.a | arg_0.a), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_0.a, true, arg_0.a)), arg_1.a)), select(vec2<bool>(all(vec3<bool>(true, arg_1.a, true)), func_2().a), vec2<bool>(all(vec3<bool>(arg_1.a, arg_0.a, arg_1.a)), true), false), arg_0.a), select(vec2<bool>(arg_0.a, all(!vec4<bool>(false, arg_1.a, arg_0.a, true))), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), select(vec2<bool>(arg_1.a, arg_0.a), vec2<bool>(arg_0.a, false), true)), select(vec2<bool>(false, false), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), arg_0.a), false), false), false));
    return max(min(u_input.e.x, -38778i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8405i;
    let var_1 = Struct_2(!(abs(func_1(-152f, u_input.e.wxx, Struct_2(true, u_input.e.x, 4294967295u, 758f, Struct_1(u_input.e.x, vec2<u32>(u_input.a, 0u), 1004f, 1u)), vec4<u32>(4294967295u, 1655u, u_input.b.x, u_input.a))) < u_input.b.x), ~(-u_input.c.x | (u_input.c.x & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, u_input.c.x, 2147483647i)))), ~14381u, _wgslsmith_div_f32(-1941f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f))))), Struct_1(func_4(Struct_2(true, _wgslsmith_clamp_i32(u_input.c.x, u_input.e.x, u_input.c.x), u_input.b.x, _wgslsmith_f_op_f32(-1000f - -1533f), Struct_1(u_input.e.x, u_input.b.xx, -1834f, 15303u)), func_2(), _wgslsmith_mod_i32(u_input.e.x ^ u_input.e.x, u_input.e.x), Struct_1(u_input.c.x, ~u_input.b.yx, _wgslsmith_f_op_f32(step(1496f, 450f)), 0u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 38567u), ~vec2<u32>(54236u, 0u)), countOneBits(func_2().e.b), vec2<bool>(true, u_input.c.x > u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-735f)), _wgslsmith_f_op_f32(f32(-1f) * -345f))), 16609u));
    var_0 = ~35682i;
    var var_2 = u_input.b;
    var_0 = func_4(Struct_2(~4294967295u < ~var_2.x, u_input.e.x, _wgslsmith_div_u32(81149u, var_2.x), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_vec3_i32(u_input.e.wwy, vec3<i32>(1i, u_input.e.x, var_1.b)))).x, var_1.e), Struct_2(false, var_1.b, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1148f)), var_1.d))), func_2().e), i32(-1i) * -14932i, func_2().e);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1383f, _wgslsmith_f_op_f32(floor(var_1.d)), _wgslsmith_f_op_f32(635f * 644f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_2.x, u_input.d.x) >> (~u_input.d % vec2<u32>(32u))), var_1.e.b, _wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, u_input.d.x) << (vec2<u32>(var_2.x, 0u) % vec2<u32>(32u))), var_1.e.b)));
}

