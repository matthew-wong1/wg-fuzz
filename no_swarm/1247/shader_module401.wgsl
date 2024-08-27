struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(530f, 1109f, -606f, -676f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1774f) * _wgslsmith_f_op_f32(-arg_0.x)) - 327f), arg_0.x, arg_0.x, -118f) + vec4<f32>(arg_0.x, -741f, -367f, 1119f));
    return arg_2;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -425f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, 304f, -1301f), vec4<f32>(global0.x, 274f, 1024f, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(global0.x)), 1062f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(132f, global0.x, -609f, 1029f)))))));
    return global0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = global0.x;
    let var_1 = arg_2;
    var var_2 = arg_1;
    let var_3 = arg_1;
    global0 = vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d, arg_0.x))) * _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(min(arg_0.x, -732f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_1(vec2<f32>(arg_2.d, var_1.d), vec2<bool>(arg_1, arg_1), Struct_1(arg_2.a, vec2<i32>(3080i, arg_2.c.x), arg_2.c, -1264f, vec3<u32>(59747u, 1u, var_1.a.x))).d), _wgslsmith_f_op_f32(min(global0.x, arg_0.x))))), _wgslsmith_f_op_f32(-1000f - 1595f), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(func_3())));
    return _wgslsmith_mult_u32(firstLeadingBit(abs(var_1.e.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, u_input.a, arg_2.e.x)), ~vec4<u32>(u_input.a, 56104u, 0u, 0u)), firstLeadingBit(vec4<u32>(var_1.e.x, u_input.a, u_input.a, 14396u)) << (vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u))), countOneBits(abs(arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, 50118u), vec3<u32>(1u, u_input.a, 0u)), u_input.a, func_2(_wgslsmith_f_op_vec2_f32(global0.yx - vec2<f32>(-1630f, global0.x)), true, func_1(global0.wy, vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 22347u), vec2<i32>(u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, -2147483647i, -26896i), -268f, vec3<u32>(13752u, u_input.a, u_input.a)))), ~(~64421u)), -(u_input.b.zz | vec2<i32>(-u_input.b.x, -23929i | u_input.b.x)), firstTrailingBit(abs(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-2147483647i, u_input.b.x, -56748i)))) & func_1(_wgslsmith_div_vec2_f32(global0.yw, global0.wx), select(vec2<bool>(true, true), vec2<bool>(false, false), false), func_1(_wgslsmith_div_vec2_f32(global0.yy, vec2<f32>(-307f, global0.x)), vec2<bool>(true, true), func_1(vec2<f32>(global0.x, global0.x), vec2<bool>(false, true), Struct_1(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), u_input.b.yx, u_input.b, global0.x, vec3<u32>(14569u, 4294967295u, 0u))))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-260f, -280f), global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -629f))), ~vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(63702u, u_input.a))), ~u_input.a, u_input.a));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(global0.x))), 2023f, var_0.d)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-726f - global0.x), _wgslsmith_f_op_f32(min(1973f, _wgslsmith_f_op_f32(f32(-1f) * -1164f))), -321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1385f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -444f, -1903f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 181f), vec4<f32>(-1647f, var_0.d, var_0.d, 359f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0.d, var_0.d, 142f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, var_0.d, 679f, global0.x), vec4<f32>(global0.x, global0.x, -1064f, -494f)))) * vec4<f32>(1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(global0.x * 463f)), 314f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d))))));
    let var_1 = all(select(vec2<bool>(true, u_input.b.x > u_input.b.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    var var_2 = var_1 || var_1;
    let var_3 = !(!select(select(select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), false), select(vec2<bool>(true, false), vec2<bool>(var_1, false), vec2<bool>(true, false)), select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), var_1)), select(vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(false, false)), vec2<bool>(true, true)), !var_1 & var_1));
    var_2 = !((var_3.x & (global0.x >= _wgslsmith_f_op_f32(f32(-1f) * -1482f))) | var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global0.wy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.wz)))))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, 4294967295u, min(var_0.a.x, var_0.e.x), func_2(vec2<f32>(global0.x, -703f), var_1, var_0)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 21320u, 62145u, 15958u), vec4<u32>(u_input.a, 1u, 30168u, u_input.a)), firstLeadingBit(var_0.a), ~var_0.a) % vec4<u32>(32u)), (_wgslsmith_mod_vec4_u32(var_0.a, var_0.a) << (vec4<u32>(u_input.a, var_0.e.x, 0u, var_0.a.x) % vec4<u32>(32u))) ^ ~(vec4<u32>(4294967295u, u_input.a, 19272u, var_0.e.x) << (var_0.a % vec4<u32>(32u)))), global0.x, _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_0.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-49922i, var_0.b.x, u_input.b.x, 1i)), -2147483647i, i32(-1i) * -1i), _wgslsmith_mult_vec4_i32(~(vec4<i32>(u_input.b.x, -2147483647i, var_0.c.x, var_0.b.x) << (var_0.a % vec4<u32>(32u))), vec4<i32>(0i, abs(var_0.c.x), 1i, var_0.c.x))), ~(~var_0.e.x));
}

