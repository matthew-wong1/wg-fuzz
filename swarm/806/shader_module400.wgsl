struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(4294967295u, 1272u), -566f), vec3<f32>(398f, -255f, -575f));

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> bool {
    global2 = _wgslsmith_f_op_f32(-global1.b);
    let var_0 = true;
    var var_1 = -countOneBits(~vec3<i32>(1i, 1i, 1i));
    let var_2 = 374f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -2591f)), !var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.xz) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b, -1803f) - vec2<f32>(arg_1, 221f))))));
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_2(~vec2<u32>(~3903u, abs(0u)) << (global0.a.a % vec2<u32>(32u)), arg_0.b.x);
    let var_1 = (_wgslsmith_sub_vec3_i32(arg_2, abs(vec3<i32>(-1i, -1i, 13133i))) >> ((_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(global1.a.x, 0u, var_0.a.x)), u_input.a) >> (_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, global1.a.x, 7396u), vec3<u32>(1u, arg_0.a.a.x, 0u), global3.x), ~vec3<u32>(1u, 0u, var_0.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u));
    global0 = Struct_3(Struct_2(vec2<u32>(global1.a.x, abs(4294967295u)), _wgslsmith_f_op_f32(abs(-118f))), _wgslsmith_f_op_vec3_f32(-arg_0.b));
    let var_2 = Struct_1(arg_0.b, global1.a.x, all(!select(select(vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, true, true, global3.x)), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, global3.x, false, false), vec4<bool>(global3.x, false, false, false)), !vec4<bool>(global3.x, global3.x, true, true))), global1.b);
    var var_3 = ~vec3<u32>(var_0.a.x << (_wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(49011u, 1u, global0.a.a.x)) % 32u), u_input.b, _wgslsmith_sub_u32(select(18116u, _wgslsmith_clamp_u32(global0.a.a.x, arg_1, 35689u), global1.b >= arg_0.a.b), ~(~u_input.a.x)));
    return arg_0.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.a, _wgslsmith_f_op_vec3_f32(floor(global0.b)), select(arg_0.yxw, arg_0.zyx, true))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, global1.b, 2138f) * arg_1.a), global0.b))), any(arg_0))));
    var var_0 = _wgslsmith_f_op_f32(max(global0.a.b, global0.a.b));
    global0 = Struct_3(Struct_2(min(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.a.x), global1.a), firstTrailingBit(u_input.a.zx)), min(_wgslsmith_sub_vec2_u32(global0.a.a, vec2<u32>(0u, 4294967295u)), ~vec2<u32>(4294967295u, 4294967295u))), arg_1.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, global1.b, 660f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, arg_1.d, global1.b) - _wgslsmith_div_vec3_f32(global0.b, arg_1.a)), global0.b))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1614f - global0.b.x), arg_1.d, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(381f, 629f, arg_0.x)) + _wgslsmith_f_op_f32(ceil(1000f)))))), firstLeadingBit(57161u), false, arg_1.a.x);
    let var_2 = vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), ~(-2147483647i)), -15637i), firstLeadingBit(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), _wgslsmith_add_i32(~(-1i), select(3041i, 1i, global3.x)))), ~1i);
    return Struct_3(Struct_2(~max(u_input.a.yz, u_input.a.yz), arg_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.a.x) + -1689f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) - global0.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.d)), _wgslsmith_f_op_f32(-var_1.d)), -651f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    var var_0 = Struct_2(global1.a >> (vec2<u32>(~global0.a.a.x, ~51025u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.b, 1959f)))));
    let var_1 = !select(!vec2<bool>(global3.x, true), select(vec2<bool>(true, true), select(!vec2<bool>(false, global3.x), select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, global3.x), false), vec2<bool>(false, false)), false), vec2<bool>(true, true));
    var var_2 = arg_0.a.x | global0.a.a.x;
    var_2 = global1.a.x;
    global0 = func_4(vec4<bool>(var_1.x, global3.x, any(vec3<bool>(any(vec4<bool>(true, false, var_1.x, global3.x)), true, global3.x)), func_2(arg_0.b, -170f, _wgslsmith_div_vec3_u32(u_input.a ^ u_input.a, vec3<u32>(0u, global0.a.a.x, 8947u)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.b))), ~(var_0.a.x ^ var_0.a.x), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-738f - arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_0.a, arg_2), vec3<f32>(arg_2, -1000f, 1070f)), 3014u, arg_1.xxw)) - global0.b.x))), all(!select(select(vec4<bool>(true, false, global3.x, false), vec4<bool>(var_1.x, true, global3.x, true), true), !vec4<bool>(var_1.x, global3.x, var_1.x, true), true)));
    return ~(~var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.x;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2360f, _wgslsmith_f_op_f32(abs(global0.a.b)), global1.b, global0.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, global1.b, 945f, 126f) + vec4<f32>(global0.b.x, -1401f, global0.b.x, global1.b))))));
    var var_1 = vec3<bool>(60362u > abs(u_input.a.x), true, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(global1.b, 784f, true)), true)) != _wgslsmith_f_op_f32(-global1.b)));
    let var_2 = vec4<u32>(~u_input.a.x, func_1(global0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(5313i, 38325i, -20032i, 80527i), firstLeadingBit(vec4<i32>(24502i, 48165i, -2147483647i, 1i))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(global1.b)))), 4294967295u, _wgslsmith_sub_u32(global0.a.a.x, ~(global0.a.a.x << (global1.a.x % 32u)))) ^ vec4<u32>(_wgslsmith_div_u32(global1.a.x, 1u), u_input.b, 2902u, global1.a.x);
    var var_3 = Struct_1(vec3<f32>(361f, _wgslsmith_f_op_f32(-838f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.b)) + _wgslsmith_f_op_f32(-var_0.x))), global0.b.x), global0.a.a.x, all(vec2<bool>(any(vec4<bool>(var_1.x, true, global3.x, var_1.x)), !global3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global1.b)))));
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a), countOneBits(global0.a.a.x), true, -541f);
    var var_4 = ~1i;
    var_4 = 11062i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), var_3.b & 19192u, max(vec2<u32>(max(u_input.b, _wgslsmith_add_u32(u_input.a.x, 27657u)), _wgslsmith_mod_u32(global1.a.x, 4294967295u)), select(~(~vec2<u32>(global0.a.a.x, 52471u)), global0.a.a, !(!var_1.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.yy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2865f, _wgslsmith_f_op_f32(trunc(1335f))))), _wgslsmith_f_op_vec3_f32(max(var_3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)), 1662f, var_3.a.x))));
}

