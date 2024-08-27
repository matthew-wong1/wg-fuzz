struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: f32 = 354f;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_0.a, 1238f);
    let var_1 = Struct_3(var_0.a.b, Struct_2(var_0.a, _wgslsmith_f_op_f32(min(-849f, 340f))));
    var_0 = Struct_2(var_0.a, -1170f);
    var var_2 = Struct_1(vec3<u32>(60831u, var_1.b.a.a.x, 95964u), arg_0.a.b || true, var_0.a.c, arg_0.a.d);
    global1 = var_1.b.b;
    return -1263f;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(reverseBits(vec3<u32>(30628u, 7878u, 9878u)), false, -1i, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) - arg_2)))));
    var var_1 = _wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yww, -u_input.a.yyz), vec3<i32>(abs(0i), ~(-2147483647i), _wgslsmith_add_i32(-2147483647i, arg_1.x))), ~(vec3<i32>(arg_0, u_input.a.x, u_input.a.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(56094u, 29966u, 67153u), vec3<u32>(1u, 1u, 33299u)) % vec3<u32>(32u))), true), firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0, -2147483647i), countOneBits(vec3<i32>(1i, arg_0, -3280i))), vec3<i32>(-20361i, arg_1.x, -2147483647i), u_input.a.xwz)));
    var var_2 = -225f;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(1u, 23780u, 39607u)), firstLeadingBit(~vec3<u32>(65243u, 11612u, 16990u)), true), ~(~vec3<u32>(1u, 1u, 0u))), !any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(true, global0.x, global0.x), false)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a << (~vec4<u32>(5496u, 4014u, 50640u, 15179u) % vec4<u32>(32u))), -1i), ~max(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1, u_input.a.wx), arg_1), _wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.x), abs(vec2<i32>(arg_0, 1i)))));
    let var_4 = ~reverseBits((_wgslsmith_sub_vec4_u32(vec4<u32>(21497u, 1u, 1u, var_3.a.x), vec4<u32>(var_3.a.x, 17657u, var_3.a.x, 0u)) >> (~vec4<u32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x) % vec4<u32>(32u))) >> (vec4<u32>(~var_3.a.x, firstLeadingBit(4294967295u), reverseBits(7673u), 31856u) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(trunc(-967f))) - 1379f);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_3(global0.x, Struct_2(Struct_1(vec3<u32>(11697u, ~33703u, 20633u), all(vec4<bool>(true, global0.x, true, true)) && false, u_input.a.x | reverseBits(u_input.a.x), vec2<i32>(countOneBits(0i), u_input.a.x >> (0u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(u_input.a.x, u_input.a.zz, arg_0)))) - arg_0)));
    var var_1 = _wgslsmith_mod_vec2_u32(var_0.b.a.a.xz, vec2<u32>(abs(~(var_0.b.a.a.x | 1u)), ~(_wgslsmith_mult_u32(57884u, 4724u) | abs(var_0.b.a.a.x))));
    var var_2 = Struct_4(Struct_2(Struct_1(~(~vec3<u32>(11262u, 4294967295u, 1u)), var_0.b.a.a.x >= _wgslsmith_mult_u32(var_0.b.a.a.x, var_1.x), var_0.b.a.d.x, u_input.a.xx), arg_1.x), arg_1, var_0);
    global0 = vec2<bool>(true, !(!(var_1.x >= var_2.a.a.a.x)) && any(select(select(vec3<bool>(false, false, var_2.a.a.b), vec3<bool>(var_0.b.a.b, var_0.a, false), vec3<bool>(var_2.a.a.b, true, false)), !vec3<bool>(global0.x, var_2.a.a.b, true), false)));
    let var_3 = vec3<bool>(var_2.c.a, true, !var_2.a.a.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(991f - 1784f)) + _wgslsmith_f_op_f32(trunc(var_2.a.b)));
}

fn func_1() -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<i32>(u_input.a.x, 16080i), -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-687f, 176f, -354f, -1163f), vec4<f32>(-1619f, -412f, -1264f, -614f), vec4<bool>(false, global0.x, false, true))))))));
    var var_0 = Struct_3(true, Struct_2(Struct_1(vec3<u32>(~56052u, firstTrailingBit(14743u), 1u), all(!vec3<bool>(false, global0.x, true)), firstLeadingBit(max(55225i, -2147483647i)), min(u_input.a.xw, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 8567i), u_input.a.ww))), _wgslsmith_f_op_f32(f32(-1f) * -189f)));
    var_0 = Struct_3(all(vec4<bool>(var_0.b.b > _wgslsmith_f_op_f32(-var_0.b.b), true, all(vec2<bool>(false, false)), true)), Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(50199u, 91304u, var_0.b.a.a.x), vec3<u32>(var_0.b.a.a.x, var_0.b.a.a.x, var_0.b.a.a.x)) << (vec3<u32>(1u, 31072u, 1u) % vec3<u32>(32u)), true, u_input.a.x, -(var_0.b.a.d ^ vec2<i32>(-2147483647i, u_input.a.x))), var_0.b.b));
    var var_1 = ~(~11900u);
    global1 = _wgslsmith_f_op_f32(trunc(var_0.b.b));
    return vec2<bool>(true, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(!(!(_wgslsmith_dot_vec2_u32(vec2<u32>(42278u, 0u), vec2<u32>(60123u, 4294967295u)) > 4294967295u)), true);
    global0 = vec2<bool>(any(select(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(global0.x, false, true, false), !vec4<bool>(false, false, global0.x, global0.x)), vec4<bool>(false, true, all(vec4<bool>(false, false, false, global0.x)), global0.x & global0.x), !vec4<bool>(global0.x, false, true, true))), false);
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -719f, -438f, _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(f32(-1f) * -1160f)))))));
    global0 = func_1();
    global1 = 1316f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a.yzx);
}

