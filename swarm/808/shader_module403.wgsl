struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<f32> = vec3<f32>(-1787f, -200f, 3229f);

var<private> global1: vec4<bool>;

var<private> global2: array<vec2<bool>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = ~5233u;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, -5633i), vec4<i32>(60125i, arg_2.a, arg_2.a, arg_2.a)), countOneBits(abs(vec4<i32>(arg_0.a, 16247i, arg_2.a, 2147483647i)))) << (~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u));
    global2 = array<vec2<bool>, 15>();
    let var_2 = Struct_1(vec4<f32>(1313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), -784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), 937f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1304f)), 338f)), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(679f))))), vec4<f32>(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(global0.x * 560f)))), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -147f)))), _wgslsmith_f_op_f32(min(arg_1.b.x, -436f))));
    return _wgslsmith_f_op_vec4_f32(var_2.c * var_2.a);
}

fn func_3() -> vec4<f32> {
    let var_0 = ~countOneBits(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(17976u, u_input.a, u_input.a) % vec3<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(518f)), -1471f, global0.x, _wgslsmith_f_op_f32(sign(global0.x))), vec4<f32>(_wgslsmith_f_op_f32(global0.x + -692f), _wgslsmith_f_op_f32(max(global0.x, global0.x)), -886f, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(-54749i), Struct_1(vec4<f32>(-432f, 633f, 600f, -462f), vec3<f32>(global0.x, 1144f, global0.x), vec4<f32>(global0.x, global0.x, 611f, global0.x)), Struct_2(2147483647i))).x), vec4<bool>(global0.x >= -2220f, true, any(vec4<bool>(false, false, false, true)), global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-906f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2432f - global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(940f, -657f, global0.x, -402f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -504f, _wgslsmith_f_op_f32(ceil(1387f)), _wgslsmith_f_op_f32(round(463f))))));
    let var_2 = 29860i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.a.x, global0.x, var_1.b.x)))), var_1.c));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = all(vec4<bool>(true, all(global2[_wgslsmith_index_u32(~(~9486u), 15u)]), global1.x, !(false | (global1.x | true))));
    global1 = !vec4<bool>(!var_0, !global1.x, true, !(!global1.x));
    global0 = arg_1.c.wzz;
    global2 = array<vec2<bool>, 15>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)), _wgslsmith_f_op_vec4_f32(arg_1.c - vec4<f32>(-965f, 409f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_1.a.x)) - arg_1.a.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.a.x, global0.x)), 137f))))), arg_1.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x - 120f), -132f, -615f) * _wgslsmith_f_op_vec3_f32(-arg_1.b))), arg_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_i32(~(-2147483647i), -15128i << (min(firstLeadingBit(4294967295u), max(_wgslsmith_clamp_u32(arg_2, 4294967295u, arg_1), min(arg_2, 4294967295u))) % 32u));
    let var_1 = -_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(2147483647i, -11808i), _wgslsmith_div_i32(~var_0, _wgslsmith_clamp_i32(1i, 29973i, 2147483647i)), -2147483647i) << (~(~(arg_2 | arg_2)) % 32u);
    global2 = array<vec2<bool>, 15>();
    global1 = vec4<bool>(global1.x, arg_3, true, true);
    let var_2 = Struct_2(max(-35494i, _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 1i, var_1), vec3<i32>(var_1, var_1, var_1)), var_1)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - 379f), -1000f, _wgslsmith_f_op_f32(floor(-516f)), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, _wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(max(434f, global0.x)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(2147483647i), Struct_1(vec4<f32>(global0.x, 450f, global0.x, -359f), vec3<f32>(2494f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, -1226f, -312f)), Struct_2(-34002i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1864f, global0.x, -768f) * vec3<f32>(-415f, -263f, 1947f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(-397f, 1823f, global0.x, 396f))), global1.x), 1187u, _wgslsmith_dot_vec2_u32(vec2<u32>(54894u, 16940u), countOneBits(vec2<u32>(u_input.a, u_input.a))), any(global1.yxy) | (global0.x <= _wgslsmith_f_op_f32(-global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(441f, global0.x))), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f * 427f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), global0.x)) - -1542f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1590f) * vec4<f32>(-322f, 928f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, global0.x, global0.x, -692f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, global0.x, 548f, global0.x)))))));
    global1 = select(!vec4<bool>(!global1.x, _wgslsmith_f_op_f32(-global0.x) > -791f, global1.x, global1.x), !(!(!select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true)))), vec4<bool>(all(global1.yxz), all(select(!vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), true)), true, true));
    let var_1 = _wgslsmith_div_f32(732f, _wgslsmith_f_op_f32(global0.x - global0.x));
    global1 = !select(vec4<bool>(true, true, global1.x, !all(vec2<bool>(true, false))), vec4<bool>(true, all(global1.zz), all(global2[_wgslsmith_index_u32(4294967295u, 15u)]), any(!vec4<bool>(false, global1.x, global1.x, false))), true);
    let var_2 = !any(global1.wwz);
    let x = u_input.a;
    s_output = StorageBuffer(~54731u);
}

