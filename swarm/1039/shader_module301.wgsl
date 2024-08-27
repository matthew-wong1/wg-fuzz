struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = !(!vec2<bool>(all(select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false))), any(!vec4<bool>(true, true, global0.x, false))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1282f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1806f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-502f, 754f, global0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(553f, 1335f))))))), 1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1779f * 1892f), _wgslsmith_f_op_f32(1724f + 696f)))));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -402i, -16419i, firstTrailingBit(1i), 1i), firstTrailingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(17645i, 34218i, -1i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))), global0.x, true);
    let var_2 = 39159u;
    global0 = select(!(!vec2<bool>(var_1.b, u_input.a.x != var_2)), select(vec2<bool>(true, true), vec2<bool>((global0.x & false) && true, _wgslsmith_f_op_f32(-1000f + -896f) == _wgslsmith_f_op_f32(max(966f, var_0.x))), !vec2<bool>(select(false, global0.x, true), var_0.x != var_0.x)), !select(select(vec2<bool>(true, var_1.b), vec2<bool>(true, var_1.b), true), vec2<bool>(!global0.x, true), select(select(vec2<bool>(false, var_1.c), vec2<bool>(global0.x, false), vec2<bool>(false, true)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, var_1.c), vec2<bool>(false, true)), 1250f > var_0.x)));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(~max(arg_0.a, vec4<i32>(-2147483647i, arg_0.a.x & arg_0.a.x, arg_0.a.x, arg_0.a.x)), arg_0.b, global0.x);
    let var_1 = Struct_1(var_0.a, global0.x, !global0.x);
    var_0 = var_1;
    var_0 = var_1;
    var_0 = Struct_1(vec4<i32>(abs(arg_0.a.x), -arg_0.a.x, 25381i, select(_wgslsmith_dot_vec3_i32(var_1.a.zzw, var_0.a.ywy), 1i, global0.x) << (_wgslsmith_add_u32(57463u | u_input.a.x, max(u_input.a.x, u_input.a.x)) % 32u)), !func_3(), ~0u <= ~u_input.a.x);
    return abs(reverseBits(var_1.a));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(func_2(Struct_1(reverseBits(vec4<i32>(-1i, 0i, 1i, 1i)), all(vec2<bool>(true, global0.x)), true)), vec4<i32>(i32(-1i) * -42548i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 27305i, -21548i), vec3<i32>(-3261i, 2147483647i, -2147483647i)), func_2(Struct_1(vec4<i32>(-2147483647i, -28633i, 53880i, 22986i), false, global0.x)).x, i32(-1i) * -1i) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, -29961i, -73723i, 2952i), -vec4<i32>(-7333i, -10457i, 1i, -1i))), global0.x, !any(vec2<bool>(true, true)));
    var var_1 = Struct_1(var_0.a, true, true);
    let var_2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, -countOneBits(var_0.a.x))), var_0.a.wy);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 513f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-693f, 223f, 897f) * vec3<f32>(632f, -1030f, -1326f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, 1040f, 1493f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, -1254f, -868f)))))))));
    var var_4 = Struct_1(var_1.a, func_3(), var_1.b);
    return select(!(!vec2<bool>(var_4.b, true)), select(!select(vec2<bool>(var_1.b, global0.x), vec2<bool>(global0.x, var_0.c), !vec2<bool>(var_0.b, false)), select(!vec2<bool>(global0.x, global0.x), select(!vec2<bool>(var_1.c, var_1.b), vec2<bool>(var_0.c, false), select(vec2<bool>(true, false), vec2<bool>(true, var_1.b), true)), !all(vec2<bool>(false, var_1.b))), select(vec2<bool>(true, !var_1.b), !(!vec2<bool>(var_4.c, var_1.c)), false)), select(!vec2<bool>(func_3(), true), vec2<bool>(global0.x & true, !all(vec3<bool>(true, global0.x, global0.x))), !(!vec2<bool>(var_0.b, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = any(select(vec4<bool>(!global0.x, !global0.x, any(func_1()), false), select(vec4<bool>(true, global0.x || global0.x, all(vec2<bool>(false, true)), select(true, global0.x, true)), vec4<bool>(global0.x, any(vec3<bool>(global0.x, true, global0.x)), global0.x, true), select(true, !global0.x, select(false, global0.x, global0.x))), !(!(!vec4<bool>(true, true, global0.x, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1277f), _wgslsmith_f_op_f32(-1000f * -239f), _wgslsmith_f_op_f32(ceil(-2479f))), vec3<f32>(2221f, -1000f, -1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(770f, -456f, var_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1349f, 290f, global0.x)))), -434f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(761f)), -1547f, _wgslsmith_f_op_f32(-136f * 125f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-416f, -313f, -643f)))))));
    let var_2 = ~abs(i32(-1i) * -39679i);
    global0 = vec2<bool>(true, !any(select(!vec4<bool>(global0.x, true, false, var_0), !vec4<bool>(global0.x, true, var_0, false), vec4<bool>(global0.x, true, global0.x, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1350f, -736f, var_1.x), vec3<f32>(var_1.x, var_1.x, -505f), vec3<bool>(var_0, false, false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 544f) - vec3<f32>(545f, -2325f, var_1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 664f, -419f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -553f) + vec3<f32>(var_1.x, -1000f, 1186f))))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2, reverseBits(var_2), -max(43626i, 1i), 39646i), func_2(Struct_1(vec4<i32>(var_2, 1i, 52909i, var_2), true, global0.x && true))), firstLeadingBit(abs(abs(~vec4<i32>(var_2, var_2, 11475i, 2147483647i)))));
}

