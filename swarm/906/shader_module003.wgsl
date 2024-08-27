struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(vec3<i32>(u_input.c, u_input.c, -1i));
    var var_1 = countOneBits(_wgslsmith_sub_vec2_u32(~u_input.a, u_input.a & vec2<u32>(firstTrailingBit(u_input.b), ~44063u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1296f, -937f))))), 1f);
    let var_3 = _wgslsmith_add_i32(firstTrailingBit(2147483647i) & (-max(u_input.c, -20838i) ^ ~_wgslsmith_mod_i32(u_input.c, var_0.a.x)), -1i);
    var var_4 = 1u;
    return ~reverseBits(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, u_input.a.x, 0u), vec4<u32>(0u, 12394u, 0u, var_1.x)), 39175u, _wgslsmith_div_u32(var_1.x, var_1.x)));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_4(Struct_1(9808i));
    var var_1 = ~(_wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 64620u, 1u), func_3()), _wgslsmith_div_vec3_u32(vec3<u32>(6718u, arg_0, u_input.b), vec3<u32>(u_input.b, 53634u, u_input.b)) & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 48467u))) & vec3<u32>(arg_0, abs(u_input.a.x), 68832u));
    var_0 = Struct_4(Struct_1(54411i));
    var var_2 = Struct_2(var_0.a, i32(-1i) * -firstLeadingBit(42939i));
    var_2 = Struct_2(var_2.a, i32(-1i) * -42817i);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(countOneBits(0u), min(43309u, arg_0) & 26625u), u_input.a);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> vec2<u32> {
    return ~(func_2(firstLeadingBit(_wgslsmith_mult_u32(10259u, 95680u))) & vec2<u32>(~u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(~select(firstLeadingBit(u_input.a), u_input.a, vec2<bool>(true, true)), vec2<u32>(32844u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(65030u, 22836u, 4294967295u), vec3<u32>(u_input.b, 62334u, u_input.a.x), vec3<bool>(true, false, false)), vec3<u32>(u_input.b, 20416u, 14165u)))) | firstLeadingBit(firstTrailingBit(func_1(Struct_2(Struct_1(-20653i), -6717i), Struct_4(Struct_1(-2147483647i)))));
    let var_1 = Struct_1(firstTrailingBit(-(~(-u_input.c))));
    var var_2 = vec4<bool>(all(vec2<bool>(true, false)), true, false, any(vec2<bool>(0u <= min(u_input.b, var_0.x), _wgslsmith_f_op_f32(sign(1037f)) == _wgslsmith_f_op_f32(abs(371f)))));
    var_2 = !vec4<bool>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 34415u), vec4<u32>(var_0.x, 94395u, u_input.b, 4613u))) < 0u, false, true, var_2.x);
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(_wgslsmith_sub_i32(var_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(51941i, var_1.a, -33455i), vec3<i32>(u_input.c, var_1.a, -1i)))), -var_1.a), vec3<i32>(var_1.a, _wgslsmith_div_i32(-1i, 0i & _wgslsmith_clamp_i32(-2766i, 50183i, var_1.a)), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(trunc(-735f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(536f, 615f, -465f))))))));
}

