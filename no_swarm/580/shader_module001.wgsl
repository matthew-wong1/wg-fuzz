struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 159f;

var<private> global1: vec3<i32> = vec3<i32>(1i, -49552i, -1i);

var<private> global2: array<vec2<u32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(global1.x, countOneBits(global1.x), i32(-1i) * -2147483647i) | (global1.x | -_wgslsmith_mult_i32(-40357i, -27891i)), _wgslsmith_div_u32(72418u, abs(~(~4294967295u))));
    let var_1 = ~54751u & var_0.b;
    let var_2 = arg_0.x;
    var var_3 = select(~vec3<i32>(_wgslsmith_dot_vec2_i32(~global1.zy, -vec2<i32>(-2147483647i, 46967i)), u_input.a, 27436i), _wgslsmith_mod_vec3_i32(max(~vec3<i32>(9993i, -1i, 4131i), _wgslsmith_mult_vec3_i32(vec3<i32>(2591i, var_0.a, u_input.a), vec3<i32>(0i, u_input.a, global1.x))) ^ vec3<i32>(min(var_0.a, 26027i), var_0.a, var_0.a | u_input.a), abs(-vec3<i32>(u_input.a, -22204i, u_input.a))), false);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1383f, arg_0.x)) * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(289f - arg_0.x), 760f, any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_2)) * -819f))));
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -8559i, global1.x, -23844i), abs(vec4<i32>(39183i, 2147483647i, -1i, global1.x))), var_0.a), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, global1.x), vec3<i32>(u_input.a, var_3.x, var_0.a)), ~vec3<i32>(-54151i, -6869i, var_3.x)) | (-vec3<i32>(-42392i, global1.x, var_3.x) ^ select(vec3<i32>(u_input.a, 0i, var_3.x), vec3<i32>(22509i, 2147483647i, -24455i), false)), select(vec3<bool>(all(vec3<bool>(false, false, true)), true, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)))), countOneBits(vec3<i32>(1i, firstTrailingBit(global1.x), _wgslsmith_mult_i32(var_0.a, -1i)) | -reverseBits(vec3<i32>(global1.x, 2147483647i, 1i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(i32(-1i) * -func_3(_wgslsmith_div_vec2_f32(vec2<f32>(2896f, -192f), vec2<f32>(298f, 814f))), 1u);
    global1 = vec3<i32>(1i, var_0.a, 17527i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1626f, 112f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -162f, 1645f) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-241f)), -1729f, -1539f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2040f, 884f, 1276f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(120f - -1282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2129f) + _wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(630f - 1014f))))));
    let var_2 = 334f;
    return vec2<i32>(~global1.x, min(_wgslsmith_add_i32(~(-arg_1.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(-10750i, arg_1.a, global1.x), ~vec3<i32>(arg_1.a, arg_1.a, 1i))), u_input.a));
}

fn func_1() -> u32 {
    var var_0 = ~1i;
    var var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(~(-15875i), global1.x)), -abs(-_wgslsmith_add_i32(2147483647i, global1.x)), min(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 2147483647i), func_2(vec4<u32>(1u, 56526u, 18258u, 0u), Struct_1(u_input.a, 67455u))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -30926i), global1.xx) ^ (vec2<i32>(u_input.a, u_input.a) & global1.zy)), global1.x), 6453i);
    let var_2 = Struct_1(global1.x, countOneBits(0u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(13476u, ~(~func_1() << (~countOneBits(1u) % 32u)), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(100696u, 19783u, 21000u), vec3<u32>(4294967295u, 25364u, 0u)), reverseBits(0u), _wgslsmith_clamp_u32(42117u, 1u, 0u))));
    var var_1 = Struct_1(6411i, ~var_0.x);
    var_1 = Struct_1(-1i, 1u ^ reverseBits(_wgslsmith_clamp_u32(0u, 60067u, 4294967295u) << (0u % 32u)));
    var var_2 = select(!vec3<bool>(select(false, true, true) && true, false, true), !vec3<bool>(any(vec3<bool>(false, false, true)), true, u_input.a <= -1i), !vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), true, any(vec2<bool>(true, true))));
    global2 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-global1.x), _wgslsmith_div_i32(~(-(~3147i)), _wgslsmith_sub_i32(func_2(~var_0, Struct_1(51750i, 4294967295u)).x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
}

