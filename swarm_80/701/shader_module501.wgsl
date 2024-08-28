struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1837f, _wgslsmith_f_op_f32(1153f * 1019f))))), 419f, true & !any(vec2<bool>(false, false)))), 1139f);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, max(102562u, 1u), ~27602u), vec3<u32>(reverseBits(~4u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33524u, 1u, 4294967295u), vec4<u32>(1u, 0u, 34149u, 32498u)), _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_sub_u32(2050u, 0u)))), _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(48062u, 17085u, 69181u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(96593u, 31187u, 52423u)), ~vec3<u32>(5306u, 98113u, 71266u)) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(36098u, 107965u, 4294967295u), firstTrailingBit(vec3<u32>(9919u, 31810u, 64489u)))));
    var var_2 = Struct_1(true);
    var_2 = arg_0;
    var_2 = Struct_1(all(vec4<bool>((u_input.b >= 20170i) || !arg_0.a, false, arg_0.a, !var_2.a)));
    return false;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> bool {
    return all(vec3<bool>(-_wgslsmith_sub_i32(-36374i, arg_2) == arg_2, !(true && func_3(Struct_1(true))), false));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_1(!(!(!func_2(arg_2.x, -1901f, 19412i))));
    var_0 = Struct_1(false);
    var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 18986i, -44803i), ~vec3<i32>(arg_0, -2147483647i, arg_0)), ~reverseBits(vec3<i32>(-27700i, u_input.a, 2147483647i))), abs(vec3<i32>(~_wgslsmith_mod_i32(23108i, 25663i), ~(-1i), 1i << (1u % 32u))));
    return vec3<i32>(min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), var_2.yz, vec2<i32>(1i, -2147483647i)), var_2.zz), -_wgslsmith_div_i32(-8975i, arg_0)), -_wgslsmith_clamp_i32(abs(arg_0), -var_2.x, abs(-4777i))), _wgslsmith_sub_i32(u_input.c << (max(_wgslsmith_div_u32(arg_2.x, arg_2.x), 4294967295u) % 32u), select(~(-u_input.c), u_input.c, var_1.a)), 29827i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-68233i, Struct_1(any(vec2<bool>(true, true))), vec4<u32>(~1u, ~33320u, 50427u, ~countOneBits(62532u)));
    var var_1 = ~_wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(193i, -u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1742f - 701f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 231f)) + 2599f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, 377f) * vec2<f32>(336f, -1159f))))))));
    var var_3 = Struct_1(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)));
    var_1 = reverseBits(-_wgslsmith_div_i32(i32(-1i) * -4086i, -var_0.x) >> (~(~0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 40206u), vec2<u32>(51427u, 4294967295u)), 1u), ~(~1u), -_wgslsmith_mod_i32(0i, 22751i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-119f, _wgslsmith_f_op_f32(-var_2.x)))), -vec4<i32>(~firstTrailingBit(u_input.c), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(-4360i, 22832i)), _wgslsmith_mult_i32(2147483647i, ~var_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-21137i, 0i, u_input.c, -2147483647i), vec4<i32>(-1i, var_0.x, var_0.x, u_input.b))));
}

