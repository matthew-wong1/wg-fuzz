struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-11642i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: i32) -> u32 {
    global0 = Struct_2(_wgslsmith_clamp_i32(-12083i, -(~_wgslsmith_add_i32(-15518i, u_input.a.x)), ~_wgslsmith_sub_i32(arg_3, u_input.a.x ^ -2147483647i)));
    global0 = Struct_2(-(~1i));
    global0 = Struct_2(~min(~u_input.a.x & u_input.a.x, global0.a));
    global0 = Struct_2(-2147483647i);
    global0 = Struct_2(countOneBits(-global0.a >> (u_input.b % 32u)) ^ firstTrailingBit(~(arg_0 ^ arg_3)));
    return 4294967295u;
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global0 = Struct_2(u_input.a.x);
    var var_0 = false;
    var var_1 = -_wgslsmith_mod_i32(1i, -2147483647i);
    var_0 = true;
    let var_2 = Struct_1(387f);
    return countOneBits(~vec3<u32>(~firstTrailingBit(1u), ~_wgslsmith_sub_u32(15123u, u_input.b), 1u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = ~vec3<u32>(~(~(u_input.b & 48388u)), u_input.b, firstTrailingBit(u_input.b));
    var var_1 = ~firstTrailingBit(select(~u_input.a ^ u_input.a, vec2<i32>(arg_0, min(u_input.a.x, -33408i)), true));
    var_0 = ~select(~vec3<u32>(~u_input.b, var_0.x, countOneBits(1u)), vec3<u32>(func_2(-20560i, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(744f + 554f), min(50242i, var_1.x)), 21693u, firstTrailingBit(4294967295u)), vec3<bool>(true, true, true));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_dot_vec3_u32(~(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.b, var_0.x), vec3<u32>(4294967295u, u_input.b, var_0.x)))), func_3(Struct_3(vec4<u32>(u_input.b | var_0.x, 52959u, _wgslsmith_add_u32(15291u, var_0.x), ~1u), _wgslsmith_f_op_f32(min(1946f, _wgslsmith_f_op_f32(floor(var_2.a)))))));
    return true;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<f32> {
    let var_0 = max(-1i, -arg_1.x);
    global0 = Struct_2(45174i);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_0.x, ~20413u), ~1u), func_2(~arg_1.x, -1748f, 510f, min(var_0, arg_3)) << (~u_input.b % 32u), u_input.b) << (0u % 32u);
    var var_2 = firstLeadingBit(u_input.b) | firstLeadingBit(u_input.b | 18028u);
    var var_3 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(881f, 582f))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-541f * -207f), -530f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(vec2<u32>(min(69663u, 8784u), countOneBits(_wgslsmith_mult_u32(25203u, u_input.b))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 32800i, 2147483647i, 16969i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(-7450i, global0.a, u_input.a.x, 2147483647i))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), func_1(global0.a, Struct_1(868f))), firstTrailingBit(-7502i))), _wgslsmith_f_op_vec2_f32(func_4(~abs(func_3(Struct_3(vec4<u32>(u_input.b, u_input.b, 69057u, 4294967295u), -169f)).zx), -vec4<i32>(global0.a, _wgslsmith_sub_i32(u_input.a.x, 0i), -239i, ~u_input.a.x), vec3<bool>(true, u_input.b <= u_input.b, func_1(~1i, Struct_1(930f))), firstLeadingBit(select(_wgslsmith_mult_i32(27123i, global0.a), 0i, select(false, false, false)))))));
    let var_1 = Struct_1(457f);
    let var_2 = Struct_3(~min(vec4<u32>(~42555u, ~4294967295u, 37355u, u_input.b | u_input.b), ~abs(vec4<u32>(u_input.b, u_input.b, 49706u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1183f * 1f) + _wgslsmith_f_op_f32(ceil(-764f))));
    global0 = Struct_2(countOneBits(~global0.a));
    let var_3 = _wgslsmith_div_u32(u_input.b, ~39288u);
    var var_4 = ~(~(~(~0u)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_5 = var_2.a.yz;
    var var_6 = !vec2<bool>(true, !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

