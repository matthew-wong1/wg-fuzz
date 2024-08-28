struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0.x, -2147483647i, global0.x, -5569i)), abs(select(vec4<i32>(2147483647i, global0.x, u_input.a, global0.x), vec4<i32>(u_input.a, -2147483647i, 0i, global0.x), arg_1.x))), select(abs(-2147483647i), ~(u_input.a | select(-2147483647i, -4641i, true)), global0.x >= firstTrailingBit(0i)));
    var_0 = arg_1.xy;
    let var_2 = u_input.d;
    global0 = ~_wgslsmith_clamp_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(var_1, u_input.a)), vec2<i32>(-9482i, global0.x) | -vec2<i32>(2147483647i, u_input.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.x, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -49929i), vec2<i32>(-21136i, global0.x), vec2<i32>(var_1, u_input.a)), vec2<i32>(u_input.a, global0.x)) & -vec2<i32>(global0.x, global0.x), vec2<i32>(var_1 >> (var_2 % 32u), 1i) ^ countOneBits(firstLeadingBit(vec2<i32>(1i, u_input.a))));
    return _wgslsmith_div_i32(~0i, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(-u_input.a, ~var_1), max(global0.x, 5112i << (firstLeadingBit(var_2) % 32u))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global0 = _wgslsmith_add_vec2_i32(~max(abs(vec2<i32>(global0.x, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(18284i, global0.x))) << (vec2<u32>(11196u, ~(~u_input.e)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(select(select(select(vec2<i32>(1i, -45773i), vec2<i32>(global0.x, 1i), vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(7766i, -2147483647i)), vec2<bool>(true, true)), -vec2<i32>(1i, 1i), vec2<bool>(false, !arg_0)), vec2<i32>(abs(_wgslsmith_clamp_i32(8255i, u_input.a, u_input.a)), ~firstLeadingBit(u_input.a))));
    global0 = vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.a, -1i, 36633i)) ^ -vec2<i32>(func_3(_wgslsmith_div_f32(-581f, 1177f), !vec3<bool>(false, arg_0, arg_0)), ~64254i << ((7458u ^ u_input.c.x) % 32u));
    let var_0 = Struct_3(vec3<bool>(arg_0, (~u_input.d <= 16567u) & select(-64719i > global0.x, arg_0, true), any(vec2<bool>(false, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1812f, 2005f, 495f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1338f, 2168f, -262f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, -1000f, -1029f) - vec3<f32>(889f, 637f, -1791f)), vec3<bool>(true, false, false)))), u_input.a, -48576i), true, true, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1387f, 1115f, -574f)))))), countOneBits(-2147483647i), -global0.x));
    global0 = -vec2<i32>(-reverseBits(-22720i), 2147483647i);
    global0 = -reverseBits(reverseBits(vec2<i32>(1i, 1i)) & select(~vec2<i32>(1i, var_0.e.b), ~vec2<i32>(-23535i, var_0.e.c), false));
    return vec2<bool>(var_0.a.x, any(!var_0.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(select(vec3<bool>(true, arg_1.a.b > global0.x, _wgslsmith_f_op_f32(-arg_1.a.a.x) <= _wgslsmith_f_op_f32(-arg_1.a.a.x)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), arg_1.a, any(!select(func_2(false), vec2<bool>(true, true), vec2<bool>(true, true))), true, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a - arg_1.a.a), _wgslsmith_f_op_vec3_f32(exp2(arg_1.a.a))), arg_1.a.a), -(29979i & -u_input.a), arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1704f, var_0.b.a.x, arg_1.b)), ~abs(arg_0.x), func_3(_wgslsmith_f_op_f32(trunc(arg_1.a.a.x)), var_0.a)), Struct_3(vec3<bool>((false != var_0.a.x) && var_0.d, true, true), var_0.b, !var_0.a.x, all(vec4<bool>(var_0.a.x, true, false, true)) & (_wgslsmith_div_f32(1000f, var_0.e.a.x) != _wgslsmith_f_op_f32(-141f * -1507f)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.x, -1777f, var_0.e.a.x)))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, arg_1.a.c, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -4906i, u_input.a), arg_0)), ~(-22863i))));
    global0 = vec2<i32>((func_3(_wgslsmith_f_op_f32(round(158f)), vec3<bool>(true, true, var_2.b.c)) | ((2147483647i | u_input.a) ^ select(6096i, -1i, var_2.b.c))) | _wgslsmith_mult_i32(global0.x, min(-2147483647i & arg_0.x, -32912i)), -((global0.x | 0i) & countOneBits(var_2.b.e.b)));
    let var_3 = vec4<i32>(var_2.a.b, abs(u_input.a), _wgslsmith_dot_vec2_i32(~(countOneBits(vec2<i32>(global0.x, 8445i)) & vec2<i32>(var_2.a.b, -60885i)), vec2<i32>(~abs(25795i), _wgslsmith_add_i32(1i, arg_0.x & 12758i))), _wgslsmith_clamp_i32(global0.x, var_2.a.b, -1i));
    return var_2.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_add_vec2_i32(-reverseBits(vec2<i32>(func_1(vec3<i32>(-55742i, -2147483647i, -28042i), Struct_2(arg_1.e, arg_1.b.a.x, u_input.b)).b.b, ~global0.x)), vec2<i32>(-2147483647i, select(min(arg_1.b.b, 8918i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-35375i, global0.x, 0i), u_input.a << (71795u % 32u)), arg_0.x)));
    let var_1 = Struct_2(arg_1.e, -169f, reverseBits(_wgslsmith_mod_u32(u_input.b, ~77911u)));
    let var_2 = func_1(vec3<i32>(var_1.a.b, -_wgslsmith_mult_i32(-1i, global0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1.a.c, 0i, var_1.a.b), vec4<i32>(u_input.a, -2147483647i, 16367i, global0.x)), abs(vec4<i32>(var_1.a.b, global0.x, 26189i, -2147483647i)))) ^ -(vec3<i32>(-1i, -1i, arg_1.b.c) | ~vec3<i32>(11952i, -19845i, -1i)), Struct_2(var_1.a, -1385f, _wgslsmith_mod_u32(var_1.c, _wgslsmith_mult_u32(~u_input.e, u_input.b)))).e;
    let var_3 = 198f;
    return u_input.c.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(u_input.c.zx, func_4(vec4<bool>(false, true, false, true), func_1(vec3<i32>(global0.x, global0.x, u_input.a), Struct_2(Struct_1(vec3<f32>(-823f, -291f, 529f), 30820i, 31563i), -397f, u_input.d)), true, true)));
    global0 = ~_wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(1i, 4818i)), abs((vec2<i32>(-1i, global0.x) | vec2<i32>(global0.x, -16789i)) | _wgslsmith_add_vec2_i32(vec2<i32>(global0.x, -50937i), vec2<i32>(0i, global0.x))));
    var var_1 = -abs(vec3<i32>(_wgslsmith_add_i32(1i, -1i), 9731i, global0.x));
    var_1 = vec3<i32>(u_input.a, 1i, 2370i);
    global0 = vec2<i32>(-21865i, _wgslsmith_add_i32(reverseBits(~25650i), _wgslsmith_mult_i32(~global0.x, -2147483647i) & (abs(var_1.x) & _wgslsmith_mod_i32(global0.x, 44960i))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.x, 271f, -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(global0.x, var_1.x, 6967i)), -vec3<i32>(var_1.x, -1274i, -1i)), 35493u << (~(~(~u_input.b)) % 32u));
}

