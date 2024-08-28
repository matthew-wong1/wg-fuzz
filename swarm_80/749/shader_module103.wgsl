struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 26238i, vec2<f32>(1448f, 1000f), -736f, 595f);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 51699i, 2147483647i, -61814i);

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 5688u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 7283u), vec2<u32>(0u, 4294967295u), vec2<u32>(145791u, 4294967295u), vec2<u32>(30374u, 70063u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(14038u, 27798u), vec2<u32>(57212u, 44618u), vec2<u32>(4294967295u, 31217u), vec2<u32>(16774u, 1u), vec2<u32>(47518u, 4294967295u), vec2<u32>(1u, 59471u), vec2<u32>(5876u, 2928u), vec2<u32>(64624u, 23086u), vec2<u32>(30774u, 30998u), vec2<u32>(10076u, 56328u), vec2<u32>(111516u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> u32 {
    return ~(~8062u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global0 = arg_0;
    let var_0 = arg_0;
    global1 = ~vec4<i32>(i32(-1i) * -global0.b, -_wgslsmith_mult_i32(global0.b | var_0.b, ~0i), -2147483647i, ~arg_2.b);
    let var_1 = u_input.b <= _wgslsmith_dot_vec3_u32(firstLeadingBit(min(reverseBits(u_input.c.zxw), u_input.c.ywx)), ~(vec3<u32>(1u, arg_0.a, arg_2.a) & u_input.c.zwx));
    global2 = array<vec2<u32>, 19>();
    return vec3<bool>(false || all(select(vec4<bool>(var_1, false, var_1, var_1), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, var_1, var_1), false), !vec4<bool>(true, false, var_1, var_1))), true, all(vec2<bool>(var_1, all(!vec3<bool>(var_1, var_1, var_1)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.zx;
    let var_1 = _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(f32(-1f) * -1758f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) + _wgslsmith_f_op_f32(495f * arg_1.c.x)), _wgslsmith_f_op_f32(round(arg_1.d)))));
    let var_2 = arg_1;
    var var_3 = global1.wxx;
    var var_4 = !(!(1u < var_2.a)) && false;
    return var_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = func_4(func_2(1u), Struct_1(867u, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(arg_0, -1i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.c.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.e, -1105f))), all(func_3(Struct_1(4294967295u, global0.b, vec2<f32>(-1022f, 3395f), -1017f, global0.e), -818f, Struct_1(4294967295u, global0.b, vec2<f32>(-553f, -504f), global0.d, 1000f))))), _wgslsmith_div_f32(-342f, global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f))));
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(18647u, ~0u, u_input.c.x, _wgslsmith_mod_u32(1u, u_input.c.x)) << (vec4<u32>(5810u, u_input.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), u_input.c), ~(-u_input.a.x >> (global0.a % 32u)), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e + global0.c.x)))), 1106f), global0.e);
    let var_1 = ~var_0.a;
    var_0 = func_4(func_4(firstTrailingBit(firstLeadingBit(~global0.a)), Struct_1(~_wgslsmith_add_u32(global0.a, 66685u), _wgslsmith_add_i32(global1.x, var_0.b) & _wgslsmith_sub_i32(var_0.b, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f + -186f)), -1041f)).a, func_4(22093u, Struct_1(1u, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(-40443i, global0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -645f) + vec2<f32>(2194f, var_0.d)), 1000f, _wgslsmith_f_op_f32(-var_0.d))));
    var var_2 = !any(vec3<bool>(true, u_input.c.x != var_1, false)) & (true & all(vec4<bool>(func_3(Struct_1(var_1, -2147483647i, var_0.c, global0.e, 1802f), -807f, Struct_1(var_1, 28253i, vec2<f32>(-486f, 1335f), 403f, 556f)).x, func_3(Struct_1(global0.a, var_0.b, var_0.c, -116f, var_0.d), 1327f, Struct_1(1u, 0i, global0.c, 547f, global0.e)).x, true, func_3(Struct_1(0u, 1i, vec2<f32>(-262f, -551f), 1690f, -301f), 137f, Struct_1(global0.a, global0.b, var_0.c, -283f, 1733f)).x)));
    return func_4(func_4(firstTrailingBit(~76251u | global0.a), func_4(select(global0.a, var_0.a, 183f >= global0.d), func_4(global0.a, func_4(global0.a, Struct_1(4294967295u, global1.x, vec2<f32>(162f, global0.e), var_0.c.x, global0.c.x))))).a, func_4(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 1u, global0.a), u_input.c << (vec4<u32>(4294967295u, 58084u, 0u, u_input.c.x) % vec4<u32>(32u)))), Struct_1(29864u, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), global1.zzz), arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1591f, -1925f))), var_0.c, select(vec2<bool>(true, true), vec2<bool>(false, false), false))), -311f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.e, var_0.c.x)), _wgslsmith_div_f32(global0.e, global0.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 19>();
    global2 = array<vec2<u32>, 19>();
    var var_0 = func_1(-_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.x, 2147483647i, -12286i, global1.x), vec4<i32>(u_input.a.x, global0.b, u_input.a.x, -1i), false), max(vec4<i32>(u_input.a.x, u_input.a.x, global1.x, 15887i), vec4<i32>(u_input.a.x, global0.b, 25024i, -744i)))));
    let var_1 = func_4(reverseBits(func_1(var_0.b).a | select(min(global0.a, 39090u), _wgslsmith_mult_u32(var_0.a, 55308u), true)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.zz), global0.b, vec2<f32>(-1000f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -427f))), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1748f))) + var_0.d)));
    var_0 = Struct_1(global0.a, func_1(_wgslsmith_mod_i32(max(func_1(1i).b, -1i | global0.b), global1.x)).b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(var_1.c))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_1(var_1.b).c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.c.x, global0.c.x)), _wgslsmith_f_op_f32(sign(-741f)))))) - _wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-161f, var_0.d))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.e))), var_0.c.x)));
    var var_2 = func_1(-1i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(586f))) * var_2.e) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-241f, _wgslsmith_f_op_f32(f32(-1f) * -1375f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f + 933f) * global0.e)))));
    var_2 = func_4(~(~4294967295u), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, u_input.b) << ((select(countOneBits(vec2<u32>(var_0.a, var_2.a)), u_input.c.xw | u_input.c.xz, vec2<bool>(true, true)) & vec2<u32>(_wgslsmith_add_u32(4294967295u, var_0.a), var_0.a)) % vec2<u32>(32u)), var_2.c.x, vec4<u32>(4294967295u, var_2.a >> ((1u ^ _wgslsmith_clamp_u32(var_1.a, u_input.b, var_1.a)) % 32u), var_1.a, ~((21773u ^ u_input.b) | global0.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.e, _wgslsmith_f_op_f32(157f * -703f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-3204f + 1546f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.c)), _wgslsmith_f_op_vec2_f32(-global0.c))))));
}

