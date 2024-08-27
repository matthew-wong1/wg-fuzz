struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-292f);

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(vec2<u32>(14845u, ~min(global1.x, ~global1.x)));
    global0 = Struct_1(172f);
    var var_1 = Struct_1(global0.a);
    let var_2 = firstTrailingBit(vec3<u32>(81351u, min(~global1.x, 63589u) << (abs(0u) % 32u), _wgslsmith_sub_u32(var_0.x, var_0.x)));
    var var_3 = ~max(var_0.x, 1u);
    return Struct_1(_wgslsmith_div_f32(149f, var_1.a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 2147483647i;
    var_0 = min(u_input.b, u_input.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1901f + _wgslsmith_f_op_f32(exp2(arg_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1027f)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(exp2(global0.a)))));
    global1 = ~select(_wgslsmith_mod_vec4_u32(min(vec4<u32>(76898u, 13295u, 17579u, 44796u), vec4<u32>(0u, 47365u, 1u, 4294967295u)), ~vec4<u32>(0u, global1.x, 12146u, global1.x)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(4294967295u, global1.x, 1u, global1.x)), ~vec4<u32>(22507u, 98017u, 1u, global1.x)), u_input.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(30534i, u_input.b, -1i), vec3<i32>(0i, -4298i, -2147483647i))) | _wgslsmith_mult_vec4_u32(vec4<u32>(~global1.x << (23636u % 32u), 4294967295u, 48775u, _wgslsmith_mod_u32(1u, ~10014u)), ~countOneBits(vec4<u32>(global1.x, global1.x, 0u, global1.x)));
    return func_2(Struct_1(715f));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(338f, 345f) * vec2<f32>(-718f, -831f))) * vec2<f32>(940f, _wgslsmith_f_op_f32(global0.a * global0.a))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, global0.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-446f, global0.a), vec2<f32>(-255f, -1150f), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-384f, -476f))))))), func_2(Struct_1(_wgslsmith_f_op_f32(-global0.a))));
    let var_1 = vec3<f32>(-768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a * var_0.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.a, var_0.a, true)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2(var_0).a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -125f) - _wgslsmith_f_op_f32(-var_0.a))), global0.a)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-477f, 1000f))) + -936f), global0.a, !(_wgslsmith_f_op_f32(var_1.x + 872f) < var_0.a))));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.a)));
    global1 = ~abs(max(_wgslsmith_sub_vec4_u32(~arg_1, firstTrailingBit(vec4<u32>(arg_0, global1.x, arg_1.x, arg_1.x))), ~vec4<u32>(4294967295u, arg_0, 32235u, 0u)));
    return 1f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = arg_1;
    global1 = select(vec4<u32>(19659u, ~_wgslsmith_sub_u32(~global1.x, firstTrailingBit(global1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, global1.x, _wgslsmith_div_u32(0u, global1.x)), global1.xzy), countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(66644u, global1.x))))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(51285u), global1.x << (global1.x % 32u), 9174u, _wgslsmith_clamp_u32(global1.x, global1.x, 6390u)), firstTrailingBit(vec4<u32>(global1.x, 0u, global1.x, global1.x)))), select(vec4<bool>(true, u_input.b < _wgslsmith_div_i32(u_input.a, u_input.a), true, true), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), true));
    var var_1 = func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a)))))), func_2(func_2(Struct_1(var_0.a))));
    var var_2 = any(vec4<bool>(true, select(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, true, true))), true, all(vec2<bool>(true, true))));
    let var_3 = Struct_1(func_2(var_0).a);
    return abs((vec2<i32>(-1i) * -vec2<i32>(u_input.a, -19823i)) << (_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global1.x) << (global1.yx % vec2<u32>(32u)), abs(vec2<u32>(global1.x, global1.x))) % vec2<u32>(32u))) << (global1.zw % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global1.x, global1.x), vec4<u32>(49976u, 25252u, global1.x, 4294967295u)), _wgslsmith_mult_u32(23337u, 9261u)), vec4<u32>(global1.x, 16282u, 4294967295u, global1.x) & (vec4<u32>(global1.x, 29627u, 1u, global1.x) & vec4<u32>(global1.x, global1.x, 1u, global1.x))))), Struct_1(_wgslsmith_f_op_f32(abs(global0.a))));
    var var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(63394u, global1.x), select(vec4<u32>(4294967295u, 49390u, global1.x, 1u), vec4<u32>(41762u, global1.x, global1.x, 23787u), false))))));
    let var_3 = global1.wwx;
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(max(var_2.a, -104f)), func_2(var_2).a)))));
    var var_5 = func_2(func_2(var_2));
    var var_6 = false | any(select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    var_0 = vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-25594i, u_input.b, var_0.x)), vec3<i32>(-1i, u_input.a, var_0.x)), vec3<i32>(max(u_input.a, -18324i), 1i, u_input.a))) >> (global1.xw % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(29824u);
}

