struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14371i;

var<private> global1: f32 = -162f;

var<private> global2: Struct_3 = Struct_3(Struct_2(3187i), vec4<i32>(-7804i, -1i, 18611i, -1i), 1i, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_sub_vec3_i32(max(firstTrailingBit(vec3<i32>(~(-1i), 0i, -27347i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 1i, global2.a.a), vec3<i32>(0i, _wgslsmith_mult_i32(1677i, u_input.e), global2.c))), global2.b.xxx);
    global1 = _wgslsmith_f_op_f32(120f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1032f)))))));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1518f, 1990f) - vec2<f32>(842f, -644f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(758f, 744f), vec2<f32>(1249f, -2192f))), vec2<f32>(257f, -1000f), global2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, -1090f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1640f, 827f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, -1377f))))));
    global0 = ~(-_wgslsmith_dot_vec2_i32(~(~global2.b.xy), vec2<i32>(func_3(), -31175i)));
    let var_1 = 1u;
    var var_2 = select(global2.b, global2.b, any(select(vec4<bool>(global2.d, true, true, global2.d), !vec4<bool>(true, global2.d, false, global2.d), vec4<bool>(global2.d, true, global2.d, true))) | (any(!vec2<bool>(global2.d, true)) && (-u_input.d >= global2.c)));
    var var_3 = (~_wgslsmith_add_u32(var_1, ~var_1) >> (~(~(u_input.b << (0u % 32u))) % 32u)) | abs(4685u);
    return Struct_1(vec3<f32>(163f, _wgslsmith_f_op_f32(-1330f - 330f), 1047f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -150f, var_0.x)))))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -792f))), var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    var var_0 = -318f;
    global2 = Struct_3(global2.a, vec4<i32>(~(arg_1.c | u_input.d), firstTrailingBit(2147483647i), -4805i, u_input.d) | _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global2.b, vec4<i32>(-8507i, u_input.d, arg_1.c, 2147483647i)) << ((vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 15301u) >> (vec4<u32>(u_input.a.x, 4294967295u, 8170u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(u_input.e, _wgslsmith_sub_i32(-11046i, -22246i), 1i, i32(-1i) * -1i)), _wgslsmith_mult_i32(reverseBits(u_input.e ^ arg_1.c) & global2.c, i32(-1i) * -1i), u_input.b == u_input.b);
    let var_1 = Struct_3(global2.a, abs(abs(reverseBits(min(vec4<i32>(14627i, 0i, 0i, -26329i), global2.b)))), -1i, all(vec4<bool>(reverseBits(u_input.d) != (i32(-1i) * -2147483647i), false, false, 12600u != u_input.c.x)));
    var var_2 = !vec2<bool>(var_1.d, all(select(vec3<bool>(global2.d, var_1.d, var_1.d), vec3<bool>(true, true, false), var_1.d)) & true);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(400f, arg_1.a.a.x, -391f) - arg_1.b.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(235f, 1306f, _wgslsmith_f_op_f32(ceil(arg_0.b.x))) + arg_0.a)), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.a.x, arg_0.a.x, 1147f))) * arg_1.a.a))), -22936i);
    return u_input.d;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    return Struct_3(global2.a, vec4<i32>(func_4(func_2(), Struct_4(func_2(), Struct_1(vec3<f32>(812f, 2063f, -1876f), vec3<f32>(-2428f, 1000f, -632f)), global2.b.x)), u_input.d & global2.b.x, -(~select(u_input.e, -14308i, global2.d)), 0i), ~global2.c, global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_3(global2.a, max(-(vec4<i32>(21685i, global2.c, u_input.d, -24676i) & vec4<i32>(0i, -2147483647i, 0i, u_input.d)), vec4<i32>(0i, _wgslsmith_div_i32(-36372i, u_input.d), -9565i << (0u % 32u), 48224i & u_input.d)), firstLeadingBit(-34996i), true));
    let var_0 = abs(vec2<i32>(-1i, ~max(1i, global2.c ^ 2147483647i)));
    var var_1 = ~(~vec2<u32>(40289u << (0u % 32u), ~62653u)) | abs(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.a.x), global2.d), u_input.a.xx));
    var var_2 = func_1(func_1(Struct_3(Struct_2(-2147483647i), vec4<i32>(-15478i, -u_input.d, global2.a.a, abs(-2147483647i)), min(-46870i, -1i), func_1(func_1(Struct_3(global2.a, global2.b, 42488i, global2.d))).d)));
    var var_3 = Struct_4(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1593f, -1029f, -1308f))) - vec3<f32>(-409f, 288f, _wgslsmith_f_op_f32(max(120f, -499f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, -270f, 471f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-661f, 1807f, -677f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1279f, -263f, -488f)))))), var_0.x);
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.x, var_3.a.b.x, 1000f)) + _wgslsmith_f_op_vec3_f32(-var_3.a.a))), var_3.b.a), func_2(), -11417i);
    global2 = Struct_3(func_1(Struct_3(func_1(func_1(Struct_3(Struct_2(var_3.c), vec4<i32>(global2.c, 2147483647i, -14356i, 6758i), var_4.c, true))).a, vec4<i32>(-1i, 1i, -35565i, 2147483647i) & max(global2.b, global2.b), _wgslsmith_sub_i32(countOneBits(-2147483647i), u_input.d | -2147483647i), any(vec3<bool>(false, false, false)) || !global2.d)).a, ~vec4<i32>(global2.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-20453i, var_0.x), ~23746i), ~_wgslsmith_mod_i32(var_4.c, var_0.x), _wgslsmith_clamp_i32(-2147483647i, -1i, var_4.c)), reverseBits(firstTrailingBit(2147483647i)), any(vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, -2009f))))))), var_4.a.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.a.x, var_3.a.b.x, var_3.b.a.x, -1931f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1119f, var_4.b.a.x, var_4.b.b.x, var_4.a.b.x)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a.b.x, var_3.b.b.x, 1304f, var_3.b.b.x), vec4<f32>(809f, 430f, 112f, 205f))))))));
}

