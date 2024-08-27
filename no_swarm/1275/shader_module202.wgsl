struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: bool;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-52751i, 13409i, -1i, -41668i), vec2<u32>(1u, 1u), vec3<i32>(-1i, -1i, -1i), -953f, vec2<i32>(-65691i, 18641i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = 35317u;
    let var_1 = arg_0;
    var var_2 = vec3<u32>(4294967295u, abs(global2.x), _wgslsmith_mod_u32(~(~0u) & ~(~global3.b.x), abs(select(global3.b.x, global2.x, true) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(128784u, global2.x, global3.b.x, global3.b.x), vec4<u32>(4294967295u, global2.x, 19032u, 1u)) % 32u))));
    var var_3 = vec2<bool>(_wgslsmith_dot_vec2_i32((global3.e | global3.a.ww) ^ (vec2<i32>(-1i, 79i) ^ vec2<i32>(global3.a.x, -1i)), vec2<i32>(global3.e.x, ~22785i)) > (-firstLeadingBit(u_input.a) | -u_input.a), all(!vec4<bool>(all(vec4<bool>(true, false, true, false)), true, var_2.x <= 0u, true)));
    global1 = var_3.x;
    return select(global3.b.x, 1u, any(vec2<bool>(var_3.x, any(vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = Struct_4(arg_2.a.a.xxz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)))));
    let var_1 = Struct_4(vec3<i32>(max(2147483647i, _wgslsmith_add_i32(select(arg_2.a.e.x, -46975i, arg_2.b.x), min(var_0.a.x, -1i))), _wgslsmith_mult_i32(1151i, -1i), arg_3.a.x), -1143f);
    var var_2 = ~reverseBits(~arg_2.a.b.x >> (countOneBits(~arg_2.e) % 32u));
    var var_3 = (~global3.a.x < _wgslsmith_mod_i32(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(-2147483647i, ~0i, ~14909i))) & (arg_2.b.x | (~_wgslsmith_mult_i32(1i, -26184i) != u_input.a));
    let var_4 = ~0i;
    return !(all(select(vec3<bool>(true, arg_2.c, arg_2.b.x), !vec3<bool>(true, arg_2.b.x, arg_2.b.x), select(vec3<bool>(arg_2.b.x, arg_2.b.x, false), vec3<bool>(arg_2.c, arg_2.b.x, false), vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)))) | true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = vec2<bool>(true & func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_0.x, -189f, arg_1.b) * vec4<f32>(-1044f, 2553f, -1442f, 580f))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, -396f, arg_0.x, arg_1.b) * vec4<f32>(238f, -902f, arg_1.b, 936f))), Struct_3(Struct_1(vec4<i32>(1i, 45187i, global3.e.x, 1i), vec2<u32>(global2.x, 37761u), arg_1.a, -520f, global3.a.ww), vec2<bool>(true, true), true, _wgslsmith_mult_u32(30315u, global2.x), func_3(Struct_2(vec4<f32>(global3.d, 372f, -2708f, arg_0.x)))), Struct_1(abs(global3.a), _wgslsmith_add_vec2_u32(global2.xy, vec2<u32>(global2.x, 1u)), vec3<i32>(-1i, 2147483647i, u_input.a), -1237f, global3.c.yx)), !(!all(vec4<bool>(true, true, true, true))));
    return vec4<f32>(159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(284f)), _wgslsmith_f_op_f32(trunc(1523f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-1643f * 1595f), var_0.x))), arg_1.b);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1524f - global3.d), 1602f, _wgslsmith_f_op_f32(exp2(global3.d)), _wgslsmith_f_op_f32(select(-620f, -581f, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d, 845f, global3.d, 1000f) + vec4<f32>(-180f, -1395f, -778f, 742f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.d, global3.d, global3.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(101f, -287f, global3.d, -119f) + vec4<f32>(-1000f, 1435f, 1379f, 1000f)) * vec4<f32>(1052f, global3.d, 419f, global3.d))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.d, global3.d, 179f, global3.d))), vec4<f32>(global3.d, -123f, -631f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, -226f, global3.d, global3.d))))));
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -299f, var_0.x, -1852f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_0.wz, Struct_4(vec3<i32>(2147483647i, 0i, -43128i), var_0.x), vec3<u32>(global2.x, 25772u, 48906u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global3.d, global3.d, global3.d)) + vec4<f32>(2903f, 1253f, var_0.x, -3241f)))));
    global0 = -_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.a, u_input.a, global3.a.x, global3.c.x)), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(-global3.c, global3.c), global3.a.x, -firstTrailingBit(u_input.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!(true & any(vec4<bool>(true, false, false, false))), false);
    var_0 = !select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))), vec2<bool>(all(vec3<bool>(true, var_0.x, var_0.x)) == false, func_1()), var_0.x);
    var_0 = select(select(select(vec2<bool>(!var_0.x, true), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), true), vec2<bool>(var_0.x, false), var_0.x), ~u_input.a < -u_input.a), select(vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(select(var_0.x, true, false), !var_0.x)), !vec2<bool>(-711f == global3.d, all(vec4<bool>(false, var_0.x, false, var_0.x)))), vec2<bool>(all(vec4<bool>(false, var_0.x, false, var_0.x)) | var_0.x, any(!vec2<bool>(true, var_0.x))), !(!vec2<bool>(true, !var_0.x)));
    var var_1 = vec2<bool>(all(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), false), vec2<bool>(var_0.x, var_0.x), true), !(!vec2<bool>(var_0.x, true)), !any(vec2<bool>(var_0.x, true)))), any(select(vec2<bool>(func_1(), var_0.x | var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x)), !vec2<bool>(true, var_0.x), func_1()), func_4(Struct_2(vec4<f32>(-949f, global3.d, global3.d, global3.d)), Struct_2(vec4<f32>(561f, 1330f, 1564f, global3.d)), Struct_3(Struct_1(global3.a, vec2<u32>(global2.x, global3.b.x), global3.c, global3.d, vec2<i32>(u_input.a, 4118i)), vec2<bool>(false, true), var_0.x, global3.b.x, 1u), Struct_1(vec4<i32>(u_input.a, 0i, u_input.a, -17085i), global3.b, vec3<i32>(-1870i, global3.a.x, 51150i), global3.d, vec2<i32>(40656i, u_input.a))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d, global3.d)) * global3.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d * 160f) + -1852f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1447f + global3.d)))) - vec3<f32>(global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d + 1059f)), global3.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.d)), _wgslsmith_f_op_f32(abs(-666f)), -1262f) * vec3<f32>(global3.d, _wgslsmith_f_op_f32(227f + global3.d), _wgslsmith_f_op_f32(exp2(global3.d)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.d, _wgslsmith_f_op_f32(global3.d - -615f), global3.d))))));
    let var_3 = Struct_3(Struct_1(vec4<i32>(abs(16679i) << ((global2.x >> (24451u % 32u)) % 32u), ~_wgslsmith_mult_i32(global3.a.x, 1i), ~(u_input.a | u_input.a), ~global3.e.x), vec2<u32>(select(select(64339u, 43856u, var_0.x), global2.x, var_0.x), ~4294967295u), select(global3.c, vec3<i32>(26846i, ~global3.e.x, abs(global3.e.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), var_2.x, global3.c.zz), select(select(select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_1.x, var_1.x), func_1()), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_0.x), var_0.x), vec2<bool>(true, true), var_0.x), !all(vec4<bool>(false, var_0.x, var_0.x, true))), vec2<bool>((global3.d > -795f) && (u_input.a > u_input.a), true), var_0.x), var_0.x, _wgslsmith_dot_vec2_u32(~global3.b, global2.yx), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-508f, -1388f);
}

