struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 7>;

var<private> global3: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<f32>(-1000f, -1000f), Struct_1(-25819i, vec4<i32>(-35290i, -44663i, 0i, -1i), vec3<bool>(true, false, true))), Struct_2(vec2<f32>(1362f, 1370f), Struct_1(i32(-2147483648), vec4<i32>(-2731i, -5384i, i32(-2147483648), -7983i), vec3<bool>(false, false, false))), Struct_2(vec2<f32>(-676f, -593f), Struct_1(0i, vec4<i32>(0i, 58930i, -1i, 0i), vec3<bool>(true, false, false))), Struct_2(vec2<f32>(2591f, -479f), Struct_1(2147483647i, vec4<i32>(0i, -1i, i32(-2147483648), -6114i), vec3<bool>(false, false, true))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global1 = arg_0.b.c.x;
    global3 = array<vec2<bool>, 8>();
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(589f)), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)), global2[_wgslsmith_index_u32(15420u, 7u)]);
    let var_1 = global2[_wgslsmith_index_u32(1u, 7u)];
    var_0 = global4[_wgslsmith_index_u32(u_input.a, 4u)];
    return 80049u;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> bool {
    var var_0 = -(~(-2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-252f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-378f, 995f)) + _wgslsmith_f_op_f32(trunc(2372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -430f)))))));
    let var_2 = arg_0;
    var var_3 = all(vec3<bool>(!arg_1, arg_1, arg_1));
    var var_4 = global2[_wgslsmith_index_u32(func_2(global4[_wgslsmith_index_u32(23208u, 4u)]), 7u)];
    return all(select(vec2<bool>(all(var_2), arg_1), !select(var_4.c.xx, arg_0.zy, all(vec3<bool>(true, false, arg_0.x))), true));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> f32 {
    global4 = array<Struct_2, 4>();
    global1 = arg_2.c.x & (arg_2.c.x || (arg_0 == -2147483647i));
    let var_0 = !select(vec4<bool>(true && !arg_2.c.x, arg_1, false, true), vec4<bool>(arg_1 || arg_2.c.x, any(vec3<bool>(arg_2.c.x, arg_2.c.x, true)), true, false), select(vec4<bool>(true, true, !arg_2.c.x, false), !vec4<bool>(arg_1, arg_2.c.x, arg_2.c.x, arg_2.c.x), false));
    global2 = array<Struct_1, 7>();
    let var_1 = vec4<u32>(0u, 21788u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(16815u, 1u)), firstLeadingBit(~vec2<u32>(u_input.a, 0u))), ~abs(vec2<u32>(u_input.c, u_input.b) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mult_u32(u_input.b, ~(~(~u_input.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1929f * -1084f), -2022f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-841f, 358f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f * 831f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-756f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 58020i, 1i), vec3<i32>(-13533i, 24191i, -16731i)), firstLeadingBit(-1i), firstLeadingBit(-1i), min(2147483647i, -16490i)), ~(~vec4<i32>(-46848i, 2147483647i, -16533i, -6387i))), -6932i, true), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13809i, -10586i), vec3<i32>(0i, 0i, -30471i)), -1i) << (u_input.a % 32u), ~(~2147483647i), -firstTrailingBit(countOneBits(-14236i)), 1i), select(!vec3<bool>(any(vec2<bool>(true, true)), false, all(global3[_wgslsmith_index_u32(0u, 8u)])), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), u_input.a == u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(649f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(531f + 1002f), _wgslsmith_f_op_f32(-989f - -932f), false))), -1401f, _wgslsmith_f_op_f32(func_3(94963i, func_1(select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c, vec3<bool>(var_0.c.x, false, false)), !var_0.c.x), Struct_1(-1i, -var_0.b, !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1041f, 986f, -261f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, -391f, 337f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-121f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 582f) * _wgslsmith_f_op_f32(step(-1000f, var_1.x))))), var_0);
    let var_3 = Struct_1(var_0.b.x, var_0.b, vec3<bool>(!var_0.c.x, any(var_0.c.xx), !var_0.c.x));
    let var_4 = vec4<bool>(var_3.c.x, false, !var_0.c.x, !func_1(select(var_0.c, !var_2.b.c, !var_2.b.c.x), any(vec3<bool>(true, true, false))));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_2.a.x - var_1.x), 545f, _wgslsmith_f_op_f32(sign(1525f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.x, var_2.a.x, 441f, -548f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_1.x, -957f, -1132f), vec4<f32>(var_2.a.x, 1000f, var_1.x, var_2.a.x), var_4.x))))))) + vec4<f32>(768f, _wgslsmith_f_op_f32(trunc(-1609f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, var_5.x, _wgslsmith_f_op_f32(var_2.a.x * var_1.x), _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(497f, _wgslsmith_f_op_f32(func_3(-50746i, var_2.b.c.x, Struct_1(var_3.a, var_0.b, vec3<bool>(var_3.c.x, var_4.x, false)))), _wgslsmith_f_op_f32(abs(var_5.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_5) + _wgslsmith_f_op_vec4_f32(var_5 - vec4<f32>(var_2.a.x, 539f, var_2.a.x, -636f))))), vec3<f32>(125f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) * _wgslsmith_f_op_f32(func_3(25084i, var_0.c.x, var_3))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1567f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_5.xyy)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)));
}

