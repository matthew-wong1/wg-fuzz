struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 983f;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = all(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(vec2<bool>(arg_0.x > arg_0.x, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), vec2<bool>(true, true)));
    let var_1 = vec2<bool>(any(!vec4<bool>(true, true, true, any(vec2<bool>(false, false)))), all(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_div_f32(1755f, arg_0.x) > _wgslsmith_f_op_f32(-arg_0.x), !all(vec3<bool>(false, false, false)))));
    let var_2 = Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u) & ~vec2<u32>(99945u, u_input.a), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(25530u, u_input.a)))), Struct_1(72356u, 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.xx))))), Struct_1(35525u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 9059u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(19936u, 1u, u_input.a), vec3<u32>(46364u, 4294967295u, u_input.a)), firstLeadingBit(select(vec3<u32>(1u, 32635u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), var_1.x))), arg_0.yx), 854f, arg_0.xwy);
    var_0 = var_1.x;
    let var_3 = Struct_3(775f, !(!var_1));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(412f, -416f, 645f), vec3<f32>(1000f, 1618f, 521f), true))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(278f)) + _wgslsmith_f_op_f32(847f - var_0.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1014f), var_0.x, !all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))));
    let var_1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, arg_0, u_input.b)), vec3<i32>(arg_0, u_input.b, 2147483647i)) | select(arg_0, ~2147483647i, 37699u >= u_input.a), -2147483647i & -func_3(vec4<f32>(-183f, var_0.x, 738f, var_0.x)));
    let var_2 = -421f;
    let var_3 = 0i;
    return arg_1.x;
}

fn func_1() -> f32 {
    let var_0 = vec4<bool>(min(~u_input.a, _wgslsmith_add_u32(select(44393u, u_input.a, false), u_input.a)) <= 4294967295u, func_2(u_input.b, select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !any(vec4<bool>(false, true, true, true)))), u_input.b < ~(-265i), func_2(u_input.b, !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))));
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 24859u, 0u), abs(vec3<u32>(u_input.a, 0u, u_input.a))), 22759u), Struct_1(42736u, abs(~u_input.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-688f, 651f), vec2<f32>(1229f, 990f))), vec2<f32>(1000f, 658f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(641f, 1753f) - vec2<f32>(-326f, 272f)), vec2<f32>(1082f, -496f))))), Struct_1(~(u_input.a ^ u_input.a), firstLeadingBit(countOneBits(~u_input.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-331f, 1295f), vec2<f32>(-288f, -879f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f * -1234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1009f)))) - _wgslsmith_f_op_f32(round(1617f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1950f, 604f, -2290f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1630f, -3151f, -344f), vec3<f32>(-269f, 341f, 990f))))))));
    var_1 = Struct_2(var_1.a, Struct_1(_wgslsmith_add_u32(min(var_1.b.a, 0u), u_input.a | var_1.b.a) << (0u % 32u), 1u, var_1.c.c), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1451f, 587f))), 579f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f) + -904f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.e, vec3<f32>(_wgslsmith_f_op_f32(step(-459f, var_1.d)), _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(sign(170f))))) - _wgslsmith_f_op_vec3_f32(var_1.e - var_1.e)));
    var_1 = Struct_2(var_1.a, Struct_1(0u, _wgslsmith_mult_u32(43375u, ~var_1.c.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(591f, _wgslsmith_f_op_f32(var_1.e.x + 559f)) + vec2<f32>(var_1.b.c.x, 455f))), Struct_1(abs(77552u & reverseBits(var_1.b.a)), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c.x, var_1.b.c.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.c - vec2<f32>(-1463f, 1150f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.c.x - _wgslsmith_f_op_f32(floor(-901f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.c.x, var_1.b.c.x), _wgslsmith_f_op_f32(var_1.b.c.x * 373f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e * vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-1000f)), var_1.c.c.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(abs(888f))) - var_1.e.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, var_2)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.c.x * -416f), _wgslsmith_div_f32(var_2, 790f))))) - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f - _wgslsmith_f_op_f32(round(var_2)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1748f * _wgslsmith_f_op_f32(round(308f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))))));
    var var_0 = -745f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f * _wgslsmith_f_op_f32(f32(-1f) * -848f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(367f, -935f, 388f, -1122f), vec4<f32>(-532f, 1039f, -529f, 737f)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), 1849f, -879f, -1767f))));
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, firstLeadingBit(~4294967295u)), u_input.a), Struct_1(47541u, 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) * _wgslsmith_f_op_f32(-192f * -1553f)), _wgslsmith_f_op_f32(-var_1.x))), Struct_1(~_wgslsmith_clamp_u32(~32397u, ~u_input.a, 1u), ~(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), -292f, _wgslsmith_f_op_vec3_f32(-var_1.xyx));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.zz, var_1.x);
}

