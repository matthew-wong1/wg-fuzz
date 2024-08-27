struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_2(global0.a, 1i, global0.c);
    var var_0 = vec3<i32>(reverseBits(~u_input.a.x), -39298i, 1i);
    global0 = Struct_2(global0.a, ~_wgslsmith_mult_i32(global0.a.a.x, -22863i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + 771f) * global0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(961f - 965f), global0.c.x), _wgslsmith_div_f32(279f, global0.c.x), global0.c.x), global0.c, false)));
    var var_1 = -arg_0.x;
    var var_2 = -(~global0.a.a);
    return global0.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = func_2(select(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, global0.a.a.x)), u_input.a.x, _wgslsmith_dot_vec3_i32(~arg_1.a, max(global0.a.a, global0.a.a)), firstTrailingBit(-1i)), ~((vec4<i32>(global0.a.a.x, 53522i, u_input.a.x, 1i) | vec4<i32>(u_input.a.x, 11103i, 2147483647i, arg_1.a.x)) ^ firstLeadingBit(vec4<i32>(-1i, u_input.a.x, -63753i, 22475i))), arg_1.b)).b.xw;
    global0 = Struct_2(Struct_1(global0.a.a, !arg_1.b, global0.a.b.x), -1i, _wgslsmith_f_op_vec4_f32(-global0.c));
    let var_1 = Struct_2(global0.a, -16057i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.c))) - _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(-global0.c))));
    let var_2 = u_input.a.x;
    global0 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_div_f32(1704f, arg_0.x))) - 1847f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.x, 1120f))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = Struct_2(func_2(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 25902i, global0.a.a.x), vec4<i32>(global0.b, 29855i, u_input.a.x, -45981i))), 44646i ^ func_2(vec4<i32>(~(-15478i), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), max(0i, u_input.a.x))).a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1073f - 1235f) * global0.c.x) * global0.c.x), _wgslsmith_f_op_f32(abs(arg_0)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, 264f, global0.c.x), global0.a)) - _wgslsmith_f_op_f32(-arg_0))));
    global0 = Struct_2(Struct_1(func_2(vec4<i32>(global0.a.a.x, u_input.a.x, -2147483647i, -u_input.a.x)).a, vec4<bool>(global0.a.b.x, false, !(global0.a.a.x > u_input.a.x), all(global0.a.b.yx)), true), -min(24710i, ~(-42530i)), _wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(global0.c)), global0.c, vec4<bool>(global0.a.b.x, global0.a.c, true, !global0.a.c)))));
    return Struct_3(_wgslsmith_mult_vec2_i32(u_input.a, global0.a.a.zx), Struct_2(Struct_1(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(global0.b, 2147483647i, global0.b)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.a.x, u_input.a.x, u_input.a.x), global0.a.a)), func_2(max(vec4<i32>(global0.a.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(global0.a.a.x, u_input.a.x, global0.a.a.x, -33218i))).b, !any(vec2<bool>(true, global0.a.c))), _wgslsmith_mult_i32(-19042i, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(10741i, -45116i), firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_vec4_f32(-global0.c)), Struct_2(Struct_1(global0.a.a, vec4<bool>(global0.a.c, any(vec2<bool>(false, global0.a.b.x)), false, true), true), firstLeadingBit(global0.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, -1387f), _wgslsmith_f_op_f32(-1252f - global0.c.x), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(global0.c.x + 628f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, 785f, 2251f), vec4<f32>(412f, -620f, 1301f, global0.c.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global0 = Struct_2(func_1(_wgslsmith_f_op_f32(global0.c.x - 1f)).c.a, 6068i, vec4<f32>(_wgslsmith_f_op_f32(sign(-551f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - arg_0.d.x) + func_1(global0.c.x).c.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, arg_1.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - -586f) * _wgslsmith_f_op_f32(-global0.c.x))), arg_1.b.c.x));
    let var_0 = arg_0.b;
    var var_1 = vec4<bool>(!all(vec4<bool>(arg_0.b.a.c, false, arg_0.b.a.c, arg_0.c.a.b.x)) | global0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(852f - arg_0.d.x) + var_0.c.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) * _wgslsmith_div_f32(-895f, arg_1.d.x))), any(select(select(vec3<bool>(arg_1.b.a.c, true, arg_0.c.a.b.x), func_1(arg_1.b.c.x).c.a.b.wwx, true), !arg_1.c.a.b.zxx, !func_2(vec4<i32>(u_input.a.x, arg_1.c.a.a.x, -29792i, var_0.b)).c)), var_0.a.b.x);
    global0 = func_1(-1180f).c;
    let var_2 = any(!select(select(vec2<bool>(global0.a.b.x, arg_0.b.a.c), arg_1.b.a.b.wy, vec2<bool>(global0.a.b.x, false)), var_0.a.b.zw, arg_0.c.a.b.xy));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1270f, 459f)))))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.c.x)), -618f)), firstTrailingBit(u_input.b.x) >> (~4294967295u % 32u));
    global0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x << (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(global0.a.a.yz, vec2<i32>(u_input.a.x, global0.a.a.x))), global0.b, max(-1i, 2147483647i) << (0u % 32u)), global0.a.b, !(!(!global0.a.c))), -59273i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - global0.c)) * vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(-3475f)))) * global0.c));
    var var_0 = global0.c.x;
    var var_1 = vec4<i32>(12701i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.a.x, global0.a.a.x), abs(u_input.a)), -22690i, abs(~global0.a.a.x), func_2(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(global0.b, u_input.a.x, global0.a.a.x, 3639i)), (vec4<i32>(u_input.a.x, u_input.a.x, -7537i, -99733i) | vec4<i32>(global0.b, u_input.a.x, u_input.a.x, 42157i)) << (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 31630u) % vec4<u32>(32u)))).a.x);
    var_1 = _wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(-vec4<i32>(var_1.x, var_1.x, -30666i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(22628i, u_input.a.x, global0.a.a.x, 23578i), vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.a.x), vec4<i32>(global0.a.a.x, var_1.x, var_1.x, u_input.a.x)), vec4<i32>(14979i, global0.a.a.x, 2147483647i, -1i) >> (vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), ~firstLeadingBit(vec4<i32>(u_input.a.x, 1i, var_1.x, var_1.x)), select(countOneBits(vec4<i32>(-46307i, -15562i, u_input.a.x, -1i)), firstLeadingBit(vec4<i32>(-1i, var_1.x, 2147483647i, global0.a.a.x)), !vec4<bool>(global0.a.c, global0.a.b.x, global0.a.c, false)))) & -(firstTrailingBit(vec4<i32>(-2147483647i, -8528i, 25987i, 0i) | vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)) | vec4<i32>(~global0.b, var_1.x, global0.a.a.x, 58126i));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, global0.c.wxx, ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x, 65028u, u_input.b.x) >> (vec4<u32>(abs(u_input.b.x) >> (0u % 32u), u_input.b.x, ~(u_input.b.x ^ 4294967295u), u_input.b.x) % vec4<u32>(32u)), 473f);
}

