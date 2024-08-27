struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> vec2<f32> {
    let var_0 = 0u;
    return arg_1.xz;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    global0 = Struct_2(vec3<u32>(select(arg_0.a, _wgslsmith_mult_u32(global0.a.x, arg_0.a) ^ ~109601u, true), u_input.b, ~_wgslsmith_clamp_u32(global0.a.x, _wgslsmith_clamp_u32(u_input.b, arg_0.a, arg_0.a), 34962u)), !global0.b | !(227f == _wgslsmith_f_op_f32(min(574f, arg_0.d))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.d)) - 1f);
    var var_1 = select(vec3<bool>(global0.b, -u_input.a >= (-1i | ~u_input.a), -539f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0))))), vec3<bool>(any(vec2<bool>(all(vec2<bool>(false, global0.b)), !global0.b)), any(!vec4<bool>(false, global0.b, global0.b, global0.b)), true), !global0.b);
    var var_2 = Struct_2(global0.a | (abs(vec3<u32>(4294967295u, global0.a.x, 4294967295u)) | ~(vec3<u32>(u_input.b, global0.a.x, 4294967295u) >> (global0.a % vec3<u32>(32u)))), var_1.x);
    let var_3 = Struct_2(var_2.a, false);
    return vec4<i32>(-_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, arg_0.c, -2147483647i, u_input.a), firstLeadingBit(vec4<i32>(arg_0.c, -22406i, 27585i, arg_0.c))), arg_1, ~0i, _wgslsmith_div_i32(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -1i, u_input.a), vec3<i32>(u_input.a, 1i, -1i))), arg_0.c)) ^ abs(vec4<i32>(~min(u_input.a, u_input.a), ~(8054i & arg_0.c), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, arg_0.c)), vec2<i32>(u_input.a, -7990i)), u_input.a));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(~global0.a.x & countOneBits(u_input.b), _wgslsmith_f_op_vec2_f32(func_2(~_wgslsmith_mult_i32(u_input.a, 1i), vec4<f32>(493f, -650f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(945f - 685f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f - 1219f) * _wgslsmith_f_op_f32(-833f - 837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)))), _wgslsmith_dot_vec4_i32(min(-func_3(Struct_1(0u, vec2<f32>(-386f, 730f), u_input.a, -836f), u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -33815i, -1i), countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), ~select(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -16583i)), countOneBits(vec4<i32>(-1302i, u_input.a, 32340i, u_input.a)), select(vec4<bool>(true, false, global0.b, false), vec4<bool>(true, false, true, global0.b), global0.b))), -1152f);
    var var_1 = vec2<i32>(var_0.c, _wgslsmith_sub_i32(u_input.a, min(select(~u_input.a, max(-50184i, -1i), false), var_0.c)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(var_2.a >> (~global0.a.x % 32u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, ~0u, 1u), _wgslsmith_sub_u32(~2027u, reverseBits(36329u)))), 0u, 11791u);
    var_1 = _wgslsmith_mult_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(12435i, var_1.x) & vec2<i32>(-1i, var_2.c), ~vec2<i32>(var_2.c, -1i))), func_3(Struct_1(4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1418f, var_0.d))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), ~var_2.c | var_1.x).xw);
    return Struct_2(~(~global0.a >> (~(~global0.a) % vec3<u32>(32u))), global0.b);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_2(select(~func_1().a, abs(vec3<u32>(arg_0, 1u, ~u_input.b)), !arg_1), true);
    let var_1 = Struct_2(select(vec3<u32>(abs(~37314u), 1u, select(firstTrailingBit(36440u), arg_0 | 0u, !global0.b)), ~vec3<u32>(~4294967295u, 4884u, _wgslsmith_add_u32(38402u, 1u)), all(select(vec4<bool>(global0.b, true, var_0.b, true), select(vec4<bool>(true, arg_1, false, var_0.b), vec4<bool>(arg_3.b, arg_1, true, true), false), u_input.a == -2147483647i))), any(vec4<bool>(all(vec4<bool>(true, global0.b, arg_1, arg_1)), true, !arg_2.x, true)) != select(global0.b, true, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1196f, 1225f, -477f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-798f, 233f, -1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, 1000f, 741f) * vec3<f32>(476f, 1000f, -732f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(798f, -219f, -971f)))), !(!var_1.b)));
    var var_3 = !select(!(!select(vec4<bool>(arg_1, var_1.b, false, false), vec4<bool>(true, arg_2.x, arg_3.b, var_0.b), arg_3.b)), select(vec4<bool>(var_1.b & arg_2.x, false, false, false), select(vec4<bool>(false, true, global0.b, true), !vec4<bool>(true, true, global0.b, var_0.b), !vec4<bool>(global0.b, false, true, true)), true), vec4<bool>(global0.b, any(select(arg_2.xy, vec2<bool>(var_1.b, true), global0.b)), ~arg_3.a.x > ~arg_0, all(!vec4<bool>(arg_3.b, arg_1, var_1.b, false))));
    var_3 = !select(select(!vec4<bool>(var_3.x, global0.b, var_1.b, true), !select(vec4<bool>(arg_2.x, var_0.b, global0.b, false), vec4<bool>(arg_3.b, false, var_3.x, var_1.b), vec4<bool>(false, false, false, true)), vec4<bool>(!arg_2.x, true, any(vec4<bool>(arg_1, var_0.b, var_1.b, arg_1)), true)), vec4<bool>(true, true | any(vec3<bool>(global0.b, var_1.b, true)), true, all(!arg_2)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_3.b, var_0.b, true, var_1.b), vec4<bool>(false, false, arg_2.x, false)), !vec4<bool>(false, false, arg_3.b, false), vec4<bool>(func_1().b, any(var_3.zwy), true, true)));
    return vec2<i32>(u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(~u_input.b, ~abs(global0.a.x) ^ 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - 264f)), _wgslsmith_f_op_f32(-969f * _wgslsmith_f_op_f32(-558f - 222f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_4(~0u, all(vec4<bool>(false, global0.b, global0.b, false)), vec3<bool>(true, global0.b, global0.b), func_1()), vec2<i32>(-23466i, u_input.a) << (global0.a.xy % vec2<u32>(32u))), abs(abs(abs(vec2<i32>(2147483647i, -2147483647i))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -196f))), 793f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(195f, _wgslsmith_f_op_f32(f32(-1f) * -1045f))))));
    global0 = Struct_2(global0.a, global0.b);
    global0 = Struct_2(vec3<u32>(24353u, u_input.b, 0u), false | (false || global0.b));
    let var_1 = Struct_1(abs(~1u), var_0.b, i32(-1i) * -u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))))));
    var var_2 = func_1();
    let var_3 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.b * var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, 769f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-688f, -444f), var_1.b) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, var_1.d), var_0.b))), var_0.b)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(15830i, -22309i, 0i, u_input.a), -vec4<i32>(-45850i, var_0.c, 45791i, var_0.c), reverseBits(vec4<i32>(var_1.c, u_input.a, 6443i, -7566i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, 1i, -2147483647i, 0i), vec4<i32>(var_1.c, var_0.c, 6331i, var_0.c))), u_input.a), _wgslsmith_f_op_f32(916f - var_0.d));
    var_2 = func_1();
    global0 = func_1();
    var var_4 = _wgslsmith_mult_u32(~17442u, global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-(~var_1.c) ^ u_input.a, _wgslsmith_clamp_i32(var_1.c, abs(_wgslsmith_add_i32(u_input.a, 1i)), -20257i << (_wgslsmith_dot_vec3_u32(vec3<u32>(21710u, 54724u, var_2.a.x), global0.a) % 32u))));
}

