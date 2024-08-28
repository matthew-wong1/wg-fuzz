struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-535f, -322f, 1000f) + vec3<f32>(-264f, -253f, -1909f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1105f, -444f, -651f) * vec3<f32>(244f, -1000f, -456f)) - vec3<f32>(343f, 798f, -303f)))), select(!vec3<bool>(any(vec2<bool>(false, arg_1)), any(vec3<bool>(true, false, arg_1)), any(vec4<bool>(true, arg_1, arg_1, arg_1))), select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, false)), !select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, false, false)), !(!vec3<bool>(true, arg_1, arg_1))), !arg_1)));
    let var_1 = Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_2.a, arg_0.a, arg_2.a), u_input.c), -u_input.c), firstLeadingBit(countOneBits(u_input.c))));
    let var_2 = any(select(!(!select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1))), select(vec4<bool>(!arg_1, var_0.x <= 532f, true, arg_1), vec4<bool>(arg_1, false, var_0.x < var_0.x, true), select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, true), arg_1), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !arg_1)), true));
    let var_3 = arg_3;
    let var_4 = 1737f;
    return select(var_2, arg_1, true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !select(select(vec4<bool>(arg_0.a <= 8049i, func_3(arg_0, true, arg_0, Struct_1(0i)), all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true))), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true));
    var var_1 = 24168i;
    var_1 = 2147483647i;
    var var_2 = countOneBits(arg_0.a);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(-1526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-392f)), _wgslsmith_f_op_f32(sign(-510f)))) - _wgslsmith_div_f32(2617f, 2038f))), _wgslsmith_div_f32(676f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-484f + 881f), -843f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 1498f), _wgslsmith_f_op_f32(-948f * -646f), any(var_0.zx))))) + _wgslsmith_f_op_f32(-1475f + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -444f)))));
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(-2147483647i);
    var var_1 = func_2(func_2(Struct_1(2147483647i)));
    var var_2 = -634f;
    var var_3 = false;
    var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, _wgslsmith_f_op_f32(f32(-1f) * -515f), 221f, _wgslsmith_f_op_f32(f32(-1f) * -1614f))));
    var var_1 = true;
    var var_2 = Struct_1(-u_input.a);
    let var_3 = Struct_1(3477i);
    var var_4 = !select(vec4<bool>(abs(var_3.a) >= var_3.a, true, true, !all(vec4<bool>(true, false, true, false))), vec4<bool>(true, select(true, true, true), func_4(_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), true, vec2<bool>(true, true), func_2(Struct_1(0i))), true), vec4<bool>(true, true, true, true));
    return Struct_1(429i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-325f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-431f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f * 587f))))), true | (-12952i != ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-41811i, -24778i)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1268f))))))));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(~max(vec4<u32>(1u, 1378u, 4294967295u, 0u), vec4<u32>(33017u, 4294967295u, 4294967295u, 1537u))), _wgslsmith_sub_vec4_u32(~max(vec4<u32>(1u, 1u, 0u, 19944u), vec4<u32>(0u, 0u, 67767u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(2641u, 27077u, 0u, 0u), vec4<u32>(19804u, 0u, 4294967295u, 1u), false)))), ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(31595u, 28252u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = Struct_1(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 48859i, -20724i, 28340i), u_input.c) & _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_0.a, var_0.a, 2147483647i, 1367i)), u_input.c), ((vec4<i32>(u_input.a, u_input.b.x, u_input.a, -2147483647i) ^ vec4<i32>(var_0.a, 30283i, var_0.a, 1i)) | firstTrailingBit(u_input.c)) | _wgslsmith_mod_vec4_i32(-u_input.c, reverseBits(vec4<i32>(-29264i, -13466i, -5607i, var_0.a)))));
}

