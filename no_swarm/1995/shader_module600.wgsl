struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: f32) -> bool {
    var var_0 = ~vec2<u32>(106888u, ~32495u ^ u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 0u, 50652u), ~vec4<u32>(u_input.a.x, 4294967295u, 1550u, u_input.a.x))), 4294967295u));
    let var_2 = Struct_1(30u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(898f * 1000f))), arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -153f), true)));
    var var_4 = var_1;
    return true;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> u32 {
    global0 = func_3(0i, -_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 39823i, -2147483647i, arg_1) >> (vec4<u32>(4294967295u, arg_3.x, 42218u, 0u) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(-2147483647i, arg_1, arg_1, -2147483647i))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(201f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -722f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) * -346f)))), -1000f);
    global0 = !(!func_3(~max(-29870i, -1i), firstTrailingBit(vec4<i32>(arg_1, arg_1, 23221i, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1296f, 172f, -866f, 913f))) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(select(-1362f, _wgslsmith_f_op_f32(1914f + -800f), any(vec2<bool>(true, true))))));
    let var_0 = ~firstLeadingBit(arg_3.x);
    global0 = false;
    var var_1 = Struct_1(55883u);
    return 4294967295u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(func_2(arg_0.a, ~(-2147483647i), ~vec2<u32>(u_input.a.x, u_input.a.x | u_input.a.x), reverseBits(firstTrailingBit(vec2<u32>(4294967295u, 80865u)) & ~vec2<u32>(9793u, arg_0.a))));
    var var_1 = select(max(2598i, 1i) >> (_wgslsmith_clamp_u32(1u | ~arg_0.a, firstLeadingBit(~4294967295u), _wgslsmith_clamp_u32(1u, 42790u, arg_0.a ^ 4294967295u)) % 32u), 27538i, true);
    global0 = !(!(~arg_0.a <= abs(arg_0.a))) & false;
    var_0 = Struct_1(1u);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<i32> {
    let var_0 = func_4(Struct_1(~(~func_2(0u, 2147483647i, u_input.a, u_input.a))));
    return vec3<i32>(-1i) * -vec3<i32>(-(~(-15075i)), -1i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i) ^ (vec3<i32>(-2147483647i, 32498i, -10825i) << (vec3<u32>(0u, u_input.a.x, 1u) % vec3<u32>(32u))), func_1(false, true)));
    var var_1 = vec4<u32>(u_input.a.x, 1u, ~(~u_input.a.x), ~firstLeadingBit(u_input.a.x));
    let var_2 = Struct_1(u_input.a.x);
    let var_3 = func_4(func_4(Struct_1(4294967295u)));
    let var_4 = Struct_1(23278u);
    var var_5 = vec3<f32>(1000f, 1887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) - -1000f))));
    var_1 = ~firstTrailingBit(~(~vec4<u32>(45376u, var_2.a, 10387u, 0u))) | (~vec4<u32>(abs(1u), ~4294967295u, _wgslsmith_div_u32(1u, var_2.a), 1u) | max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, var_4.a, var_4.a, 1u), vec4<u32>(16076u, u_input.a.x, var_4.a, 1u) ^ vec4<u32>(var_3.a, var_3.a, u_input.a.x, var_1.x)), select(vec4<u32>(37468u, var_2.a, 19269u, u_input.a.x), reverseBits(vec4<u32>(16080u, var_1.x, 5585u, 2378u)), all(vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, -_wgslsmith_mod_i32(i32(-1i) * -45102i, var_0.x), var_0.x, ~var_0.x), _wgslsmith_f_op_vec2_f32(floor(var_5.xx)), min(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, 1i), 49742i) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, 16563i), -52599i), var_0.x));
}

