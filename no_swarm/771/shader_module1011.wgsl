struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-470f, -563f, 734f, 274f), vec4<f32>(228f, 396f, 748f, 1709f), vec4<f32>(-695f, -262f, 323f, 1174f), vec4<f32>(-1035f, -687f, -575f, -1354f), vec4<f32>(-1513f, -1672f, 1502f, 1000f), vec4<f32>(290f, -208f, -900f, -1194f), vec4<f32>(-1000f, -1086f, 774f, -1922f), vec4<f32>(-2581f, 1494f, -671f, 929f), vec4<f32>(-1012f, -468f, -1000f, 1529f), vec4<f32>(176f, -915f, 879f, 1838f), vec4<f32>(1372f, 1372f, -182f, -1157f), vec4<f32>(591f, 202f, -490f, 1635f));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = arg_2;
    var var_1 = abs(~vec3<i32>(global1.a.x, 1053i, ~(~(-40386i))));
    return _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(global1.a, vec2<i32>(u_input.a, u_input.a)), -_wgslsmith_mod_vec2_i32(~global1.a, (var_1.yz & vec2<i32>(31055i, arg_2.x)) | vec2<i32>(-46199i, global1.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, -1i), max(vec2<i32>(-16877i, 47983i), vec2<i32>(-2147483647i, 0i))) << (u_input.b.xz % vec2<u32>(32u)), func_3(_wgslsmith_f_op_f32(floor(-671f)), Struct_2(vec2<bool>(true, false)), vec2<i32>(0i, 60062i) >> (vec2<u32>(1u, global1.b.x) % vec2<u32>(32u)), vec4<u32>(69545u, 0u, 0u, 11847u)) | global1.a), vec3<u32>(select(global1.c, max(arg_0.x, global1.c) >> (_wgslsmith_clamp_u32(arg_0.x, 8750u, 33086u) % 32u), !select(false, false, true)), arg_0.x >> (~0u % 32u), firstLeadingBit(13690u)), 15336u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.d.x)), _wgslsmith_f_op_f32(-global1.d.x)) - global1.d) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-614f, -647f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.d, global1.d)), false))), vec3<u32>(u_input.b.x, ~u_input.b.x, countOneBits(4294967295u)));
    global0 = array<vec4<f32>, 12>();
    return Struct_3(Struct_1(~firstTrailingBit(select(global1.a, vec2<i32>(global1.a.x, u_input.c), true)), reverseBits(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 54275u), 0u)), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d))), ~firstLeadingBit(global1.b) >> (vec3<u32>(0u, var_0.e.x, u_input.b.x) % vec3<u32>(32u))), select(var_0.a, abs(vec2<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -4590i), vec3<i32>(var_0.a.x, -2147483647i, global1.a.x)))), true), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(var_0.b, var_0.b)) ^ u_input.b.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_4(arg_1, Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, global1.a.x), global1.a), firstLeadingBit(vec2<i32>(global1.a.x, 30886i))), (global1.b >> (vec3<u32>(global1.c, global1.c, arg_2) % vec3<u32>(32u))) >> ((global1.b >> (u_input.b.zyz % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_sub_u32(51774u, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(global1.d.x - -1804f), _wgslsmith_div_f32(global1.d.x, global1.d.x)), vec3<u32>(u_input.b.x, global1.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_2), global1.b.zy))), select(~global1.a >> (vec2<u32>(13682u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), _wgslsmith_sub_vec2_i32(global1.a, arg_0.zz)), arg_1.a), ~(~u_input.b.x)), Struct_1(-vec2<i32>(min(arg_0.x, -55339i), _wgslsmith_sub_i32(-35081i, 42933i)), ~(~global1.b), u_input.b.x & ~_wgslsmith_sub_u32(12436u, 0u), _wgslsmith_f_op_vec2_f32(round(global1.d)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global1.b, vec3<u32>(1u, 1u, 0u)) << ((global1.e & global1.b) % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(3865u), arg_2, u_input.b.x))), func_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2, 34536u, u_input.b.x, global1.e.x), abs(vec4<u32>(4294967295u, arg_2, 8419u, 1u)), max(u_input.b, u_input.b >> (vec4<u32>(global1.e.x, global1.b.x, arg_2, 46627u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-280f, 1025f))));
    var var_1 = 73482u;
    let var_2 = arg_1.a.x;
    var var_3 = false;
    var_3 = select(true, var_2, arg_1.a.x);
    return _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b.zyz, vec3<u32>(u_input.b.x, 0u, 4294967295u)), u_input.b.wyz) << (min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(10346u, global1.c, 0u)), ~var_0.c.b) % vec3<u32>(32u)), ~u_input.b.zyx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-global1.a), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(func_1(firstLeadingBit(vec4<i32>(-37017i, -19798i, u_input.c, u_input.a)), Struct_2(vec2<bool>(true, false)), _wgslsmith_mod_u32(62611u, global1.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.e.x, u_input.b.x, global1.c), vec3<u32>(1u, global1.b.x, 14504u))), _wgslsmith_mod_vec3_u32(~(u_input.b.wwy & u_input.b.xwx), u_input.b.xyz)), u_input.b.x, global1.d, vec3<u32>(u_input.b.x, abs(10210u), u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1196f));
    let var_2 = true;
    let var_3 = Struct_2(select(!select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), true), select(!vec2<bool>(var_2, false), select(!vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), true), false), !select(select(vec2<bool>(var_2, var_2), vec2<bool>(false, var_2), vec2<bool>(var_2, var_2)), !vec2<bool>(var_2, var_2), vec2<bool>(true, true))));
    var var_4 = false;
    let var_5 = Struct_1(firstTrailingBit(global1.a), vec3<u32>(countOneBits(_wgslsmith_mult_u32(global1.e.x, global1.b.x)), ~(~0u), u_input.b.x) ^ abs(select(~var_0.b, global1.b, false)), ~var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.d))))))), select(global1.e, vec3<u32>(~global1.b.x | ~3960u, ~global1.b.x, ~(~6169u)), vec3<bool>(true | any(var_3.a), any(!var_3.a), true)));
    var_1 = _wgslsmith_div_f32(1148f, 1475f);
    var var_6 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_5.e.x, 42051u), 4294967295u);
    let var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.d.x * -323f) - -1574f));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.xz, func_2(vec4<u32>(1u, ~(~77074u), var_5.c, (13474u & var_5.c) ^ var_5.e.x), -1382f).b.x, var_0.e);
}

