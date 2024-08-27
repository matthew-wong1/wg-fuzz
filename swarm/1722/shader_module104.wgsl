struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_2, arg_1.x, 120123u)), 4294967295u >> (u_input.a.x % 32u)), func_2(false, Struct_3(vec2<f32>(-1242f, -200f), arg_0, vec2<f32>(-139f, 858f), true, arg_0), vec4<bool>(false, true, true, true)) << (abs(0u) % 32u)), 4294967295u, arg_1.x);
    return arg_0;
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, 757f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1167f, -451f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(357f, -1441f) + vec2<f32>(161f, -1074f)) - vec2<f32>(-1200f, -1532f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 193f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-210f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1589f, 1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1061f)), 1000f))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    global0 = Struct_2(~(-((global0.a ^ u_input.b) << (vec4<u32>(8604u, u_input.a.x, 0u, u_input.d) % vec4<u32>(32u)))));
    global0 = Struct_2(-max(abs(abs(vec4<i32>(2147483647i, arg_0.b.a.x, 5741i, global0.a.x))), u_input.b));
    let var_0 = -_wgslsmith_mod_vec2_i32(global0.a.zy ^ ~abs(vec2<i32>(arg_2.a.x, -10575i)), vec2<i32>(global0.a.x, _wgslsmith_clamp_i32(func_1(Struct_1(vec2<i32>(-7029i, -1i)), vec2<u32>(11021u, u_input.d), u_input.a.x).a.x, 0i, global0.a.x)));
    let var_1 = vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(7301u, 68042u, 4294967295u), min(min(vec3<u32>(6708u, 0u, 1u), vec3<u32>(0u, 4294967295u, 15510u)), countOneBits(vec3<u32>(u_input.d, u_input.c.x, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~reverseBits(1u), u_input.d, 1u), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(5819u, 4294967295u, 0u), u_input.a, min(u_input.a, u_input.a))));
    global0 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.a.x << (var_1.x % 32u), _wgslsmith_sub_i32(-arg_2.a.x, ~2147483647i), firstLeadingBit(-7453i), 1i), _wgslsmith_add_vec4_i32(-global0.a, _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, var_0.x, global0.a.x, -2147483647i), ~global0.a))));
    return Struct_2(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    global0 = Struct_2(u_input.b);
    global0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1697f, -838f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-284f, -2579f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1827f, 1892f)))), Struct_1(~firstTrailingBit(vec2<i32>(global0.a.x, 46968i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1326f * 1206f), 640f)), all(vec4<bool>(true, true, true, true)), func_1(Struct_1(reverseBits(global0.a.zz)), abs(u_input.a.yy), u_input.d)), !(true | (any(vec2<bool>(true, false)) | false)), func_1(Struct_1(firstTrailingBit(u_input.b.zz)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), firstLeadingBit(vec2<u32>(1u, 4294967295u))), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.d)) << ((vec2<u32>(u_input.c.x, u_input.d) << (vec2<u32>(28241u, 24632u) % vec2<u32>(32u))) % vec2<u32>(32u))), ~1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(1027f * 1111f), _wgslsmith_f_op_f32(round(720f)))) - _wgslsmith_f_op_vec2_f32(func_3())));
    global0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-639f, -270f), vec2<f32>(-1256f, 174f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-266f, 195f))), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), -610f))), Struct_1(vec2<i32>(reverseBits(global0.a.x), 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(562f, -240f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, 725f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1388f, -773f)))), select(true, true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), u_input.b.yyz) < firstTrailingBit(global0.a.x)), Struct_1(~global0.a.wz)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_1(Struct_1(vec2<i32>(9363i, 1i) >> ((u_input.c << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))), ~(~_wgslsmith_mod_vec2_u32(u_input.c, u_input.a.yz)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.d), ~4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(abs(282f)))), _wgslsmith_f_op_vec2_f32(func_3()).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(sign(-2279f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f - -524f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, -1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(944f, -1265f)))), ~firstLeadingBit(min(u_input.a, u_input.a)));
}

