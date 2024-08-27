struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 59442u, 91726u), 16344i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global2 = Struct_1(global1.a.a, 0i);
    let var_0 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(max(global1.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c + global1.c)))))));
    global2 = var_0.a;
    let var_1 = -1000f;
    global0 = any(!(!vec3<bool>(false || global1.b, global1.b, !global1.b)));
    return global1.b;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> bool {
    global1 = Struct_3(global1.a, true, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1684f + -336f) - 717f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -309f))) - arg_1.c.x), u_input.e);
    global0 = func_3();
    var var_0 = 78232u;
    let var_1 = ~(global2.a.x & _wgslsmith_add_u32(u_input.c.x, 4294967295u));
    global1 = Struct_3(Struct_1((vec4<u32>(54073u, 30511u, 4294967295u, 1u) << (global2.a % vec4<u32>(32u))) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.e, u_input.c.x, 0u), global2.a), 0i), func_3() && global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -973f), arg_1.c)) + vec2<f32>(global1.c.x, global1.d)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d + global1.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, 637f)))))), _wgslsmith_add_u32(~20640u, _wgslsmith_mult_u32(58301u, global1.e << (var_1 % 32u))));
    return any(!(!select(select(vec2<bool>(global1.b, arg_1.b), vec2<bool>(global1.b, arg_1.b), false), vec2<bool>(true, true), true)));
}

fn func_4(arg_0: bool) -> i32 {
    global0 = arg_0;
    global0 = !(!any(vec2<bool>(true, arg_0)));
    var var_0 = ~(~31257i);
    var var_1 = Struct_1(vec4<u32>(u_input.e, 1u, global1.e, 0u), ~u_input.d);
    return firstTrailingBit(12204i);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = 483f;
    let var_1 = 81870u;
    global2 = arg_0;
    let var_2 = true;
    global0 = arg_0.b == _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-(vec2<i32>(0i, global2.b) & vec2<i32>(-13364i, global1.a.b)), vec2<i32>(arg_0.b, global1.a.b)), -67359i);
    return max(-func_4(func_2(_wgslsmith_f_op_f32(select(-190f, 423f, false)), Struct_3(global1.a, var_2, vec2<f32>(global1.d, -456f), 302f, 45282u))), firstTrailingBit(_wgslsmith_mod_i32(global2.b, u_input.b)) | -2147483647i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> Struct_4 {
    global1 = Struct_3(Struct_1(global2.a, i32(-1i) * -global2.b), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -830f), global1.d)), global1.c), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_dot_vec3_u32(global1.a.a.ywy, ~global2.a.zzy & (firstLeadingBit(vec3<u32>(38886u, arg_1.d, arg_1.a)) | (u_input.c << (global2.a.zww % vec3<u32>(32u))))));
    global0 = false;
    var var_0 = ~max(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 2147483647i, u_input.d, u_input.b), vec4<i32>(48447i, 9457i, 1i, -49232i)) >> (select(vec4<u32>(u_input.e, 0u, 1u, 0u), ~global2.a, !vec4<bool>(global1.b, arg_1.b.x, true, true)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(-1i, u_input.b, -37135i, arg_3.c.x)), -vec4<i32>(-7261i, arg_0.x, 2147483647i, arg_3.c.x)));
    let var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.c, reverseBits(vec3<u32>(38463u, global1.e, u_input.c.x))), global2.a.xyy & _wgslsmith_clamp_vec3_u32(global1.a.a.wwz, u_input.a, global1.a.a.yzy)) << (~_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.e, arg_2, 93606u) << (reverseBits(global2.a.zyw) % vec3<u32>(32u)), ~vec3<u32>(1u, 105626u, u_input.a.x)) % vec3<u32>(32u));
    return Struct_4(firstTrailingBit(~1u), vec3<bool>(true, false, global2.b >= -17938i), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, select(-2147483647i, arg_1.c.x, false), -1i, 1i), arg_1.c), -(reverseBits(arg_3.c) & arg_3.c), select(max(-arg_3.c, vec4<i32>(arg_3.c.x, -5663i, global1.a.b, u_input.b)), _wgslsmith_clamp_vec4_i32(select(arg_1.c, vec4<i32>(-10553i, u_input.b, 41085i, global2.b), vec4<bool>(true, false, false, false)), vec4<i32>(-2147483647i, 0i, 2147483647i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 3580i, arg_3.c.x, global2.b), vec4<i32>(2147483647i, 0i, arg_0.x, -53825i))), all(vec2<bool>(arg_1.b.x, true)) | !arg_1.b.x)), abs(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(Struct_1(global1.a.a, (_wgslsmith_sub_i32(u_input.d, global1.a.b) & ~18787i) | _wgslsmith_clamp_i32(global2.b, -global1.a.b, global1.a.b)), !all(!(!vec3<bool>(global1.b, global1.b, false))), global1.c, 1000f, reverseBits(abs(~(global2.a.x >> (global2.a.x % 32u)))));
    global0 = true;
    let var_0 = func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-func_1(global1.a), global1.a.b >> (_wgslsmith_dot_vec2_u32(u_input.c.xz, global1.a.a.wz) % 32u), firstLeadingBit(~global1.a.b)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, global1.a.b, global1.a.b), select(vec3<i32>(global1.a.b, -35701i, global1.a.b) | vec3<i32>(22964i, u_input.b, global1.a.b), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.b, 24872i, 2700i), vec3<i32>(global2.b, global2.b, u_input.b)), false))), Struct_4(max(~global1.a.a.x, ~0u | u_input.e), !vec3<bool>(global1.b, select(true, global1.b, global1.b), global1.b), vec4<i32>(i32(-1i) * -8679i, ~59971i, firstTrailingBit(-2147483647i), 0i), u_input.c.x), 1u, Struct_4(4294967295u, vec3<bool>(false, global1.b, true), -vec4<i32>(-1i, 29273i, u_input.d, -1i) | vec4<i32>(i32(-1i) * -1i, ~u_input.d, _wgslsmith_mult_i32(global1.a.b, global2.b), _wgslsmith_clamp_i32(u_input.d, global1.a.b, u_input.d)), global2.a.x >> ((~global2.a.x | 104113u) % 32u)));
    var var_1 = -vec2<i32>(var_0.c.x << (~_wgslsmith_mod_u32(global1.e, 1u) % 32u), min(_wgslsmith_div_i32(-var_0.c.x, ~20954i), max(abs(-2147483647i), i32(-1i) * -1i)));
    let var_2 = countOneBits(select(vec2<i32>(~global1.a.b, -27454i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 40842i) >> (global1.a.a.yy % vec2<u32>(32u)), var_0.c.yx << (global1.a.a.zz % vec2<u32>(32u))), -var_0.c.zx), select(var_0.b.yy, vec2<bool>(var_0.b.x, true), !(global1.b && global1.b))));
    var var_3 = Struct_1(global2.a, -10949i);
    global2 = Struct_1(~select(~_wgslsmith_mult_vec4_u32(global1.a.a, vec4<u32>(7701u, var_3.a.x, global2.a.x, var_3.a.x)), ~reverseBits(global1.a.a), !(!vec4<bool>(var_0.b.x, false, global1.b, true))), var_1.x);
    let var_4 = Struct_2(global1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.c, global1.c)), _wgslsmith_f_op_vec2_f32(step(global1.c, global1.c))) * vec2<f32>(global1.d, 817f)), vec2<f32>(1557f, 690f)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.wzz >> (var_4.a.a.xxy % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, -246f, global1.c.x)) - vec3<f32>(506f, -440f, global1.c.x))))), vec3<i32>(_wgslsmith_add_i32(var_3.b, ~(-1i)), 19113i, select(func_4(!var_0.b.x), 23487i, func_2(var_4.b.x, Struct_3(Struct_1(global1.a.a, var_2.x), var_0.b.x, vec2<f32>(1248f, var_4.b.x), var_4.b.x, 68850u)))), abs(max(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 32820u), _wgslsmith_dot_vec2_u32(var_4.a.a.zy, global1.a.a.wx), ~global2.a.x, _wgslsmith_sub_u32(1u, var_4.a.a.x)), ~_wgslsmith_clamp_vec4_u32(var_4.a.a, var_4.a.a, vec4<u32>(var_0.a, var_3.a.x, var_3.a.x, 0u)))));
}

