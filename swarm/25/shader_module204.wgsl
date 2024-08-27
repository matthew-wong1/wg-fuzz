struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = ~min(countOneBits(_wgslsmith_dot_vec3_i32(arg_1.xxy, vec3<i32>(arg_1.x, arg_1.x, -7238i))), -(arg_0.x >> (u_input.d % 32u)));
    let var_1 = u_input.d;
    global0 = !vec4<bool>(!(false & !global1.x), false, global1.x, global1.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(343f, 394f, global2.a.b, global2.a.a.x) - vec4<f32>(1020f, 2100f, 1199f, 597f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global2.a.a.x), global2.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-670f)), 1065f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))))));
    let var_3 = global2.a;
    return var_1;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = select(~max(~0u, func_3(vec4<i32>(global2.a.c.x, 26178i, -2147483647i, u_input.a.x), u_input.a, global1.xw)), _wgslsmith_div_u32(_wgslsmith_div_u32(39810u | u_input.c.x, u_input.c.x ^ 1u), ~1u), select(true, global1.x, !global0.x) && global0.x) ^ ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.d), 1u), ~1u);
    let var_1 = false;
    global0 = vec4<bool>(all(select(!select(vec4<bool>(true, true, false, var_1), vec4<bool>(global1.x, false, true, global0.x), vec4<bool>(false, var_1, true, false)), vec4<bool>(false, select(true, var_1, var_1), true, true), all(select(vec4<bool>(global0.x, var_1, global1.x, global0.x), vec4<bool>(false, var_1, global0.x, global0.x), global0.x)))), true, true, true || any(select(!vec4<bool>(true, true, global1.x, true), vec4<bool>(false, false, true, var_1), select(vec4<bool>(false, var_1, false, global1.x), vec4<bool>(true, global1.x, global0.x, var_1), global0.x))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, firstTrailingBit(u_input.d), ~u_input.d, ~0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, u_input.d, 0u), vec4<u32>(u_input.c.x, u_input.d, 1u, u_input.d))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d, 12051u, 4294967295u, 4294967295u)), (vec4<u32>(7516u, u_input.d, 1u, u_input.d) ^ vec4<u32>(50202u, u_input.d, u_input.d, 21789u)) & select(vec4<u32>(18033u, u_input.c.x, 13534u, 4294967295u), vec4<u32>(29675u, 6718u, u_input.c.x, 0u), true), ~vec4<u32>(66194u, u_input.c.x, u_input.d, u_input.c.x) | ~vec4<u32>(u_input.c.x, 4294967295u, 0u, 4294967295u))), reverseBits(~min(~vec4<u32>(1u, u_input.d, 1u, 6430u), countOneBits(vec4<u32>(4294967295u, u_input.d, u_input.c.x, 1u)))));
    global0 = vec4<bool>(global0.x, true, var_1, all(select(!vec4<bool>(true, global0.x, false, false), select(vec4<bool>(global1.x, var_1, global0.x, global0.x), select(vec4<bool>(false, global1.x, var_1, true), vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, var_1, true, var_1)), false), any(global0.xyw))));
    return firstTrailingBit(global2.a.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.b, global2.a.a.x) + _wgslsmith_f_op_f32(-177f * 1490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.a.x), global2.a.b))), vec3<f32>(_wgslsmith_f_op_f32(469f - -559f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(trunc(-652f)))), _wgslsmith_f_op_f32(ceil(1022f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.a.x)))) * -689f), arg_0.a.x, arg_0.b), true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(826f * arg_0.a.x) - _wgslsmith_f_op_f32(-arg_0.b));
    let var_2 = vec4<i32>(~arg_0.c.x, u_input.a.x, 38277i, -1i);
    let var_3 = global2.a;
    var var_4 = 95397u;
    return Struct_2(arg_0);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), global2.a.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2494f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-arg_0)))), vec2<i32>(-36559i, -2147483647i)));
    let var_1 = func_4(Struct_1(global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -908f), _wgslsmith_f_op_f32(-global2.a.b)))), select(vec2<i32>(0i >> (0u % 32u), -u_input.e), _wgslsmith_clamp_vec2_i32(var_0.a.c | vec2<i32>(2147483647i, 6540i), func_2(-198f), vec2<i32>(0i, var_0.a.c.x)), any(global1.ywx))), u_input.b << (0u % 32u));
    var var_2 = Struct_2(global2.a);
    var var_3 = var_0.a.c.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2162f, -596f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b, -832f, var_0.a.b)), !vec3<bool>(false, false, global0.x)))))));
    return all(!select(!vec4<bool>(true, false, global0.x, false), !vec4<bool>(global0.x, global0.x, global1.x, true), false)) && !all(!select(vec4<bool>(global0.x, true, false, false), vec4<bool>(global1.x, global0.x, false, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!select(!select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, false)), vec4<bool>(global1.x | true, true, true, global1.x), func_1(_wgslsmith_f_op_f32(-global2.a.a.x))), select(select(vec4<bool>(true, true, !global0.x, global1.x), select(!vec4<bool>(global1.x, global0.x, global1.x, true), select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global1.x, global1.x, true, global0.x), true), vec4<bool>(true, global1.x, global0.x, global1.x)), !(!vec4<bool>(true, global1.x, true, true))), !select(select(vec4<bool>(false, global1.x, global0.x, global1.x), vec4<bool>(false, global0.x, global1.x, true), vec4<bool>(global1.x, global1.x, global0.x, global1.x)), !vec4<bool>(global0.x, global1.x, false, global1.x), global1.x), true), true);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.a.a * vec2<f32>(global2.a.a.x, global2.a.b)), vec2<f32>(global2.a.b, 480f), !vec2<bool>(global0.x, false))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), 756f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(741f - -2265f))))), vec2<i32>(global2.a.c.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, global2.a.c.x, -9401i), ~_wgslsmith_add_i32(global2.a.c.x, global2.a.c.x), min(global2.a.c.x, global2.a.c.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)) - var_0.a), var_0.a, !global1.x && true)), _wgslsmith_f_op_f32(floor(-1176f)), var_0.c));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.b, -1000f, global2.a.b, global2.a.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, _wgslsmith_f_op_f32(-var_0.b), global2.a.a.x, _wgslsmith_f_op_f32(max(global2.a.a.x, 457f)))), global0.x | false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_div_f32(var_0.b, -108f), _wgslsmith_f_op_f32(select(279f, var_0.b, global1.x)))))));
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-150f, var_0.a.x), _wgslsmith_f_op_vec2_f32(floor(var_1.a.a)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1576f))), _wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(1291f - -1623f)))), (~var_1.a.c | vec2<i32>(-1i, var_0.c.x)) ^ vec2<i32>(-2838i, var_1.a.c.x)), -2147483647i).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(min(var_0.c.x, var_1.a.c.x) & var_1.a.c.x, global2.a.c.x), firstLeadingBit(u_input.c.zy), _wgslsmith_f_op_f32(max(global2.a.a.x, var_2.x)));
}

