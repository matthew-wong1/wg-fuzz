struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<bool>;

var<private> global2: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> bool {
    let var_0 = true;
    var var_1 = Struct_4(vec3<bool>(arg_2 == -1154f, all(select(vec3<bool>(var_0, global1.x, true), select(vec3<bool>(false, var_0, global1.x), vec3<bool>(var_0, true, false), true), false)), true), vec3<bool>(all(vec4<bool>(false == global1.x, any(global1.xz), true, true)), true, true), var_0);
    var var_2 = 1064f;
    var_2 = _wgslsmith_f_op_f32(trunc(1000f));
    var var_3 = Struct_4(!(!select(var_1.b, !vec3<bool>(var_1.c, true, var_0), any(vec4<bool>(true, false, false, global1.x)))), !var_1.b, arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f * _wgslsmith_f_op_f32(-arg_1.x)) * -541f));
    return var_1.b.x;
}

fn func_2() -> vec4<i32> {
    global1 = !vec3<bool>(select(all(!vec3<bool>(false, global1.x, false)), global1.x, func_3(1u, vec3<f32>(629f, -466f, -2584f), -1000f) || global1.x), !(true && !global1.x), all(vec2<bool>(any(global1.zx), false)));
    global1 = !select(select(vec3<bool>(true, true, true), !(!vec3<bool>(global1.x, false, global1.x)), true), !(!(!vec3<bool>(global1.x, true, global1.x))), select(vec3<bool>(true, u_input.a < 1u, true), select(vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, true), false), select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, true, false), global1.x)), global1.x));
    global0 = select(vec2<u32>(4294967295u, u_input.a), reverseBits(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, 61534u)), ~vec2<u32>(global0.x, 14044u), all(vec3<bool>(global1.x, true, true)))) ^ vec2<u32>(abs(global0.x), 0u), !(true | !select(global1.x, true, true)));
    var var_0 = (vec2<i32>(select(1i, -2147483647i, true), _wgslsmith_clamp_i32(-22235i, 5662i, -1i) ^ ~0i) | vec2<i32>(0i >> (1u % 32u), 2147483647i)) | vec2<i32>(-14673i, 66480i);
    var var_1 = Struct_2(select(vec3<i32>(2147483647i, firstLeadingBit(1i), -1i), abs(min(-vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, 1i, var_0.x))), vec3<bool>(all(vec4<bool>(true, true, false, true)), global1.x, false)));
    return vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a.x, -4886i, 2147483647i, 14081i), vec4<i32>(292i, var_0.x, 2147483647i, var_1.a.x) << (vec4<u32>(u_input.a, 4798u, global0.x, global0.x) % vec4<u32>(32u))), ~(-2861i), min(35656i, max(_wgslsmith_div_i32(0i, 38358i) >> (0u % 32u), 2147483647i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x) & select(vec4<i32>(var_1.a.x, -38788i, -2147483647i, var_1.a.x), vec4<i32>(var_0.x, 0i, 1i, -28822i), vec4<bool>(global1.x, global1.x, global1.x, false)), countOneBits(max(vec4<i32>(9073i, 2147483647i, var_1.a.x, var_0.x), vec4<i32>(var_1.a.x, var_0.x, -1i, -11279i))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    let var_0 = func_2();
    global0 = ~firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9363u, global0.x, u_input.a), abs(vec3<u32>(0u, global0.x, 4294967295u))), ~u_input.a));
    global1 = select(arg_1.b, !vec3<bool>(arg_2.x <= arg_2.x, all(vec2<bool>(global1.x, global1.x)), false), all(select(vec4<bool>(true, false || global1.x, global1.x, arg_3 <= -1633f), select(!vec4<bool>(global1.x, arg_1.c, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_1.b.x, true, global1.x), !vec4<bool>(global1.x, true, false, true)), vec4<bool>(false, global1.x || true, true, all(vec2<bool>(arg_1.c, true))))));
    global1 = select(select(select(!(!arg_1.a), select(!arg_1.b, !vec3<bool>(false, true, arg_1.a.x), !arg_1.b.x), _wgslsmith_f_op_f32(max(arg_2.x, 1220f)) <= _wgslsmith_div_f32(-688f, 525f)), arg_1.b, arg_1.b), select(vec3<bool>(true, any(vec4<bool>(global1.x, false, arg_1.a.x, false)), true), select(arg_1.a, select(arg_1.b, select(arg_1.b, vec3<bool>(false, arg_1.b.x, arg_1.b.x), arg_1.a), false), !(!vec3<bool>(global1.x, arg_1.a.x, true))), _wgslsmith_div_u32(global0.x, select(45658u, global0.x, global1.x)) > (u_input.a ^ u_input.a)), !select(false | select(false, false, false), all(vec4<bool>(arg_1.a.x, arg_1.c, global1.x, true)), all(!vec2<bool>(global1.x, false))));
    global1 = select(arg_1.a, vec3<bool>(select(func_3(3540u, _wgslsmith_div_vec3_f32(vec3<f32>(-226f, arg_2.x, 1000f), vec3<f32>(arg_2.x, arg_3, -861f)), _wgslsmith_f_op_f32(floor(-828f))), any(select(vec3<bool>(true, false, arg_1.c), vec3<bool>(global1.x, arg_1.b.x, false), vec3<bool>(true, arg_1.b.x, true))), !func_3(u_input.a, arg_2, arg_2.x)), false, any(select(vec4<bool>(global1.x, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, true, false, arg_1.c), vec4<bool>(false, arg_1.a.x, false, true))) & (1u < ~u_input.a)), (arg_1.b.x & false) && global1.x);
    return -381f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-944f, -279f, global1.x)))) - _wgslsmith_div_f32(-1100f, -135f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) - _wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(52074i, -2147483647i, -2147483647i)), Struct_4(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, false), global1.x), vec3<f32>(-221f, -492f, -705f), 220f)))), -776f));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1418f, _wgslsmith_div_f32(557f, -289f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(756f)))), -853f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1632f)) + _wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(-2147483647i, 1062i, 3887i)), Struct_4(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, true), global1.x), vec3<f32>(602f, -1881f, 263f), 752f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-384f, -2792f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(982f * _wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(1i, 2147483647i, 18586i)), Struct_4(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true), vec3<f32>(-305f, 1889f, -1384f), 755f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f * -913f) * _wgslsmith_f_op_f32(select(925f, -727f, true))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-175f, 104f))), _wgslsmith_f_op_vec2_f32(-var_0.yx))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-477f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(475f, -1755f, var_1.a.x) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(249f, var_0.x, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(abs(var_1.a.x))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), -257f)));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.zx))));
    var var_3 = vec3<i32>(-_wgslsmith_clamp_i32(min(82917i >> (u_input.a % 32u), _wgslsmith_div_i32(-32799i, -32283i)), -51353i, _wgslsmith_clamp_i32(3765i, 13590i, 1i) | abs(-1i)), max(i32(-1i) * -2147483647i, 1i), select(_wgslsmith_mult_i32(~(-3324i), ~(-7788i)), 2147483647i, false));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.xy * vec2<f32>(var_0.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-var_2.yz))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_2.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_1.a, var_1.a)))), select(vec2<bool>(true, false), !vec2<bool>(global1.x, true), !global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-reverseBits(vec2<i32>(-2002i, -49561i))), vec4<u32>(u_input.a, 1u, ~u_input.a, u_input.a), (vec4<u32>(0u, u_input.a, 46157u, 35349u) & (vec4<u32>(4294967295u, 0u, 30610u, u_input.a) | ~vec4<u32>(global0.x, 4294967295u, u_input.a, u_input.a))) ^ min(~max(vec4<u32>(global0.x, 4294967295u, 54976u, 36382u), vec4<u32>(1925u, 51497u, 0u, 0u)), vec4<u32>(u_input.a, global0.x, 13010u, 1u)), _wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(var_3.x, -2147483647i, var_3.x) ^ vec3<i32>(var_3.x, var_3.x, 6492i)), Struct_4(!(!vec3<bool>(false, global1.x, false)), vec3<bool>(all(vec4<bool>(global1.x, global1.x, true, true)), true, true), global1.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, var_1.a.x, var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2057f))) + 941f))));
}

