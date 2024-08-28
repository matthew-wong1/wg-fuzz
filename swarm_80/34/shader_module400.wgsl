struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec3<i32>(min(u_input.a, 9619i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-(vec3<i32>(32288i, u_input.a, 0i) << (vec3<u32>(1u, arg_0.a.x, arg_0.a.x) % vec3<u32>(32u))), ~vec3<i32>(-69558i, 1i, 8069i)), ~max(~vec3<i32>(0i, u_input.a, -42266i), abs(vec3<i32>(u_input.a, u_input.a, 0i)))), ~(-2147483647i >> (arg_1.a.x % 32u)));
    let var_1 = arg_0;
    var var_2 = select(-(min(select(vec4<i32>(1i, 0i, var_0.x, var_0.x), vec4<i32>(var_0.x, u_input.a, -1i, u_input.a), vec4<bool>(true, false, false, false)), select(vec4<i32>(var_0.x, u_input.a, u_input.a, -21358i), vec4<i32>(32679i, -6901i, var_0.x, -13448i), vec4<bool>(false, false, true, true))) | _wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(-2147483647i, 0i, 33969i, u_input.a))), vec4<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a), vec2<i32>(var_0.x, -2147483647i)), -2168i, max(1i, var_0.x), u_input.a), ~(~vec4<i32>(0i, var_0.x, 0i, -48764i))), u_input.a, ~2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)) | true, true, false, false), !(~arg_1.a.x > ~arg_1.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(124f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f - _wgslsmith_f_op_f32(1049f + 975f)) - 425f), _wgslsmith_f_op_f32(min(664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = Struct_1(arg_1.a);
    let var_2 = Struct_1(arg_3.a);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-741f + -1019f), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a), Struct_1(arg_3.a))), true)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_0, Struct_1(vec4<u32>(40536u, 1u, var_1.a.x, 1u))))))))), -932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1664f, -996f)))));
    var var_4 = select(~vec2<u32>(~4294967295u, ~abs(86504u)), arg_1.a.yw, select(select(vec2<bool>(true, true), vec2<bool>(true, true), !(arg_2.x >= -2147483647i)), select(vec2<bool>(var_3.x >= var_3.x, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = ~abs(5310u);
    let var_1 = ~(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, var_0, var_0, 65879u), firstTrailingBit(vec4<u32>(4294967295u, var_0, 15258u, 17273u))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, var_0, var_0, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 6552u, 75799u, 4294967295u), vec4<u32>(var_0, var_0, 6338u, var_0))) % vec4<u32>(32u))) & ~(~vec4<u32>(_wgslsmith_add_u32(var_0, var_0), 1u, _wgslsmith_mult_u32(var_0, var_0), var_0));
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0, var_0, var_1.x, var_0)), var_1), vec4<u32>(var_1.x, 12762u, ~firstTrailingBit(1u), _wgslsmith_mult_u32(var_1.x, var_0) >> (_wgslsmith_dot_vec2_u32(var_1.wx, var_1.xx) % 32u))));
    global0 = true;
    var var_3 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(34773u, 43968u, ~21456u, func_2(52433u, Struct_1(vec4<u32>(0u, var_1.x, var_0, var_0)), vec3<i32>(-1i, u_input.a, u_input.a), var_2)), (vec4<u32>(0u, var_0, 4294967295u, 18409u) & vec4<u32>(0u, var_2.a.x, var_2.a.x, var_1.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 1u, var_0, var_2.a.x), vec4<u32>(0u, var_1.x, var_1.x, 95290u)) % vec4<u32>(32u))));
    return var_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1100f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1155f)), -221f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(1186f - 495f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -2258f), _wgslsmith_f_op_f32(f32(-1f) * -564f))))) < _wgslsmith_f_op_f32(trunc(1f));
    var var_0 = arg_1.a;
    let var_1 = var_0.x;
    var var_2 = vec3<u32>(~var_0.x, _wgslsmith_clamp_u32(~(~(~arg_1.a.x)), 1u, 1u), 65809u);
    var var_3 = var_2.x;
    return 1460f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), func_1(347f), -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, -36949i), vec3<i32>(u_input.a, u_input.a, 1863i) << (vec3<u32>(51483u, 1u, 26534u) % vec3<u32>(32u))), vec3<i32>(~1i, -36014i, ~(-32533i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, -3239i, u_input.a), abs(vec3<i32>(-38769i, 2147483647i, 7328i))))));
    var var_1 = false || select(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), select(_wgslsmith_f_op_f32(round(141f)) == 103f, u_input.a <= -10066i, true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_i32(u_input.a >> (firstTrailingBit(~83369u) % 32u), u_input.a), abs(~vec2<u32>(1u, 4294967295u)));
}

