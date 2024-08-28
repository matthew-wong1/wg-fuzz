struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<i32, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(495f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -212f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, var_0.x, var_0.x) - vec3<f32>(var_0.x, -676f, -961f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1478f) * vec3<f32>(var_0.x, var_0.x, -224f)))))));
    var var_2 = 1335f;
    global1 = array<i32, 15>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(1871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 1016f))) + -422f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1949f + -276f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-975f - 214f), 1416f)))) * _wgslsmith_f_op_f32(-1f)));
    return u_input.a >> (39786u % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(~max(vec4<u32>(1553u, 19205u, 0u, 7976u), vec4<u32>(34958u, 31325u, 0u, 28431u))), select(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), arg_1.c)) << (~53480u % 32u), 15u)];
    var var_1 = 130f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~1u, ~(~66926u)), select(21008u, _wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(0u, 1u)), ~20861u), !select(true, true, true))), 28u)];
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), countOneBits(~1u)), 28u)];
    global1 = array<i32, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a + 1000f))))))));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(Struct_1(150f, true, vec4<bool>(false, false, true, true), -1851f), Struct_1(_wgslsmith_f_op_f32(284f + -1100f), true, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), arg_0), func_3())))), false, vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
    let var_1 = !(!var_0.c);
    let var_2 = -_wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12753u, 1u), vec3<u32>(0u, 0u, 4294967295u)), 15u)]), select(vec2<i32>(9761i, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(13605u, 15u)], -42199i), true) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(32842i, -45648i))) >> (~vec2<u32>(~4294967295u << (countOneBits(27574u) % 32u), 24188u >> (1u % 32u)) % vec2<u32>(32u));
    global0 = array<Struct_1, 28>();
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(317u, _wgslsmith_clamp_u32(~(~(~7886u)), _wgslsmith_mult_u32(77612u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 4294967295u, 0u, 14541u))), min(_wgslsmith_mod_u32(1u, countOneBits(4294967295u)), ~reverseBits(1u))), 32842u), 28u)];
    return -vec2<i32>(0i, max(min(-12519i ^ var_2.x, -global1[_wgslsmith_index_u32(0u, 15u)]), 1i >> (~4294967295u % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-19133i, global1[_wgslsmith_index_u32(27998u, 15u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.a, 0i), vec2<i32>(150i, -1i)))), abs(select(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a), func_2(arg_1.a), arg_1.b))), countOneBits(~(-vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -17804i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.a, arg_0.a)), arg_0.d), _wgslsmith_f_op_f32(-1000f * 511f)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.d)))), _wgslsmith_f_op_f32(f32(-1f) * -151f), arg_1.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1000f, arg_1.a)))))));
    let var_2 = vec3<bool>(!arg_0.b, any(select(arg_0.c.wxx, arg_1.c.zzx, !any(vec4<bool>(arg_1.c.x, false, false, arg_1.b)))), arg_0.b);
    var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(-397f, arg_1.b, arg_0.c, arg_0.d), Struct_1(-219f, false, vec4<bool>(arg_1.c.x, arg_0.c.x, false, arg_1.b), -995f), -30336i)), _wgslsmith_f_op_f32(-arg_1.d))))), _wgslsmith_f_op_f32(sign(-186f)));
    return max(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 7832i, global1[_wgslsmith_index_u32(10686u, 15u)], -3465i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -15133i, 22116i, 25081i))), vec4<i32>(-72928i, 1i, u_input.a, abs(-87208i))) | -(~(-vec4<i32>(u_input.a, var_0, 2147483647i, -14528i))), countOneBits(countOneBits(vec4<i32>(-4107i, abs(61900i), 10069i, -global1[_wgslsmith_index_u32(67257u, 15u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    global1 = array<i32, 15>();
    let var_0 = ~(-_wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.a, -1i, 5962i) << (vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u))), ~(vec3<i32>(u_input.a, 0i, 27415i) << (vec3<u32>(0u, 0u, 17692u) % vec3<u32>(32u)))));
    var var_1 = var_0.zy;
    global1 = array<i32, 15>();
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(Struct_1(_wgslsmith_f_op_f32(select(840f, 247f, var_2)), true, vec4<bool>(false, false, false, var_2), 1f), Struct_1(_wgslsmith_f_op_f32(-562f + 239f), !var_2, vec4<bool>(var_2, var_2, var_2, var_2), -829f)));
}

