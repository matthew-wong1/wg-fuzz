struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1575u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    let var_0 = firstTrailingBit((arg_0.b.yz ^ (vec2<u32>(arg_1.b.x, arg_0.b.x) >> (_wgslsmith_sub_vec2_u32(arg_1.b.wz, vec2<u32>(arg_0.b.x, 1u)) % vec2<u32>(32u)))) << (arg_0.b.wx % vec2<u32>(32u)));
    let var_1 = _wgslsmith_div_i32(countOneBits(arg_3), u_input.b) >= _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-32261i, u_input.b), vec2<i32>(u_input.a, arg_3)), vec2<i32>(_wgslsmith_clamp_i32(18963i, -2147483647i, -3416i), abs(u_input.a))), firstLeadingBit(~vec2<i32>(u_input.a, u_input.b)));
    let var_2 = Struct_1(firstTrailingBit(firstTrailingBit(~(-2147483647i)) ^ u_input.b));
    global0 = 48534u;
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1250f)))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = ~(~(19800u | firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1.b, arg_1.b))));
    var var_0 = arg_1.b;
    let var_1 = -1145f;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(184f, arg_2.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(~arg_1.b.xwy, ~vec3<u32>(9092u, 4294967295u, arg_1.b.x)), _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(arg_1.b.x, 59618u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 5489u), vec2<u32>(61812u, 0u))), max(firstTrailingBit(arg_1.b.x), var_0.x), var_0.x) >> (_wgslsmith_sub_vec4_u32(arg_1.b, _wgslsmith_mod_vec4_u32(min(arg_1.b, vec4<u32>(var_0.x, 4294967295u, 30927u, 0u)), select(vec4<u32>(14598u, 4294967295u, arg_1.b.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, arg_1.b.x), false))) % vec4<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(994f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1849f), -381f))), firstTrailingBit(vec4<u32>(~(~0u), _wgslsmith_add_u32(59758u, abs(var_0.x)), ~reverseBits(arg_1.b.x), 1u)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, -632f) + vec2<f32>(var_3.a.x, var_3.a.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(477f, var_2.a.x), vec2<f32>(var_3.a.x, var_2.a.x), vec2<bool>(arg_3.a, arg_3.a))))))), !select(!select(vec2<bool>(true, arg_3.a), vec2<bool>(true, false), true), vec2<bool>(true, true), u_input.a != 1i)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(945f, Struct_3(vec2<f32>(-269f, 367f), arg_1), vec3<f32>(-371f, -318f, 801f), arg_2)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(329f, 345f) * vec2<f32>(-375f, -1401f))) * vec2<f32>(_wgslsmith_div_f32(-1015f, 1157f), _wgslsmith_f_op_f32(step(-1468f, 103f))))), ~countOneBits(reverseBits(~arg_1)));
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = Struct_2(all(select(!vec4<bool>(false, var_1.a, false, true), !(!vec4<bool>(false, var_1.a, arg_2.a, var_1.a)), !(var_0.a.x >= -961f))));
    var var_3 = vec2<bool>(true, false);
    return !select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, var_3.x, false), var_1.a), vec4<bool>(true, var_2.a, var_1.a, true), select(vec4<bool>(false, arg_2.a, true, false), vec4<bool>(false, var_1.a, false, var_2.a), vec4<bool>(var_1.a, var_2.a, arg_2.a, true))), !select(vec4<bool>(var_1.a, var_1.a, false, true), !vec4<bool>(var_2.a, var_2.a, var_3.x, false), !var_1.a), select(!vec4<bool>(arg_2.a, var_3.x, arg_2.a, true), vec4<bool>(var_3.x & false, var_1.a, !var_1.a, any(vec4<bool>(false, false, var_2.a, var_1.a))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), false)));
    let var_1 = Struct_2(var_0.x);
    var var_2 = vec4<bool>(_wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(floor(-1410f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec2<f32>(154f, -1000f), vec4<u32>(110100u, 4294967295u, 12174u, 35615u)), Struct_3(vec2<f32>(-1023f, -756f), vec4<u32>(1u, 15486u, 10175u, 30489u)), var_0.xx, firstLeadingBit(u_input.b)))), true, true, true);
    global0 = 1u;
    var var_3 = _wgslsmith_f_op_f32(949f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1509f, 1000f)) * _wgslsmith_f_op_f32(sign(-597f))), _wgslsmith_f_op_f32(2200f * -1910f))));
    let var_4 = func_2(u_input.b, vec4<u32>(reverseBits(0u) >> (0u % 32u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(32434u, 4294967295u, 1u, 0u), vec4<u32>(6648u, 4294967295u, 23660u, 29487u))), 1u, countOneBits(~43848u)) << ((vec4<u32>(1u, 1u, 1u, 1u) ^ firstTrailingBit(vec4<u32>(1u, 44001u, 14274u, 1u))) % vec4<u32>(32u)), var_1, Struct_1(-1i));
    var var_5 = countOneBits(vec2<i32>(u_input.a, ~countOneBits(-1i)));
    let var_6 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, _wgslsmith_f_op_f32(f32(-1f) * -1884f))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_7 = Struct_1(_wgslsmith_dot_vec2_i32(min(~firstLeadingBit(vec2<i32>(-17061i, -12755i)), vec2<i32>(i32(-1i) * -2147483647i, 2147483647i)), ~vec2<i32>(u_input.a ^ var_5.x, var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(firstTrailingBit(2147483647i) << (var_6.b.x % 32u)), 1i >> (~firstTrailingBit(57301u) % 32u)), ~(-(var_7.a ^ -27567i)));
}

