struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-640f, global1.x, 498f) - vec3<f32>(-1000f, 544f, -170f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 703f, global1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, -320f, 320f), vec3<f32>(-1000f, 186f, global1.x))), true)) * vec3<f32>(-768f, _wgslsmith_f_op_f32(-global1.x), 2211f))));
    let var_1 = Struct_2(~u_input.a);
    global0 = select(-33462i, select(~_wgslsmith_div_i32(u_input.b.x, ~20385i), firstLeadingBit(2147483647i), -56221i > (u_input.b.x << (_wgslsmith_sub_u32(var_1.a, 4294967295u) % 32u))), true);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy));
    var var_2 = global1.x;
    return Struct_2(~min(~(var_1.a >> (var_1.a % 32u)), ~(var_1.a >> (1u % 32u))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.x), min(0u, ~(~u_input.a)));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1897f, _wgslsmith_f_op_f32(step(1000f, var_0.a))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -504f))))))));
    var var_1 = func_2();
    let var_2 = Struct_2(103888u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_div_f32(-223f, var_0.a))) * global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * var_0.a))))));
    return _wgslsmith_f_op_f32(var_0.a - 1000f);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(789f, arg_1.a, true)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_1 = ~4294967295u;
    return select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, all(vec2<bool>(false, false))), true), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), !any(vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = countOneBits(_wgslsmith_mod_u32(~arg_0.b, arg_0.b));
    global0 = reverseBits(~reverseBits(2147483647i));
    global1 = vec2<f32>(578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)));
    var_0 = arg_0.b;
    var_0 = ~min(~u_input.a, _wgslsmith_div_u32(min(func_2().a, firstTrailingBit(u_input.a)), u_input.a));
    return vec4<i32>(-1i) * -firstLeadingBit(firstLeadingBit(abs(vec4<i32>(u_input.b.x, -2147483647i, -53774i, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1031f, global1.x)))))), u_input.a);
    global0 = 0i;
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, 440f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 609f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, 560f), vec2<f32>(1000f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -278f))))))));
    let var_1 = vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x ^ abs(_wgslsmith_dot_vec2_i32(u_input.b.yz, ~u_input.b.yz)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), global1.x);
    let var_3 = _wgslsmith_mult_vec4_i32(~(-_wgslsmith_add_vec4_i32(var_1, var_1)), ~func_4(Struct_1(235f, var_0.b), select(vec4<bool>(true, true, true, true), func_3(vec3<u32>(32776u, var_0.b, 16806u), var_0, vec4<f32>(global1.x, global1.x, var_0.a, var_0.a)), vec4<bool>(true, true, true, true))));
    let var_4 = !func_3(vec3<u32>(~14680u, _wgslsmith_div_u32(85256u, ~var_0.b), 1u), Struct_1(global1.x, _wgslsmith_add_u32(22666u, max(var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(884f, -479f, 420f, -553f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-832f, 1280f, 622f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(914f, 1073f, global1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1324f) + vec3<f32>(1000f, var_0.a, 402f)))))));
}

