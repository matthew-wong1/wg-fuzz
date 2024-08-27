struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = vec2<u32>(arg_3.a, 48388u);
    global0 = array<u32, 27>();
    var var_1 = arg_3.a;
    var var_2 = arg_3.b;
    let var_3 = arg_1.c;
    return _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), reverseBits(vec2<i32>(~arg_2.x, 1i)) | vec2<i32>(15079i, ~u_input.c));
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return vec2<bool>(select(!select(false, false, true), !all(vec4<bool>(false, false, true, true)), global0[_wgslsmith_index_u32(86462u, 27u)] < 1u) && !(true | all(vec4<bool>(true, true, false, false))), !(!(true || any(vec3<bool>(true, true, false)))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 27>();
    var var_0 = ~abs(select(func_2(_wgslsmith_f_op_f32(926f * arg_3), Struct_1(4294967295u, arg_2.x, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 0u)), vec3<i32>(arg_0, arg_1.x, -2147483647i) | vec3<i32>(arg_0, -7987i, -2147483647i), Struct_1(global0[_wgslsmith_index_u32(49640u, 27u)], arg_2.x, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2809u, 27u)], 27u)], 27u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8706u, 27u)], 27u)], 27u)]))), ~(-arg_1), func_3()));
    var_0 = ~vec2<i32>(var_0.x, abs(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(var_0.x, 15597i))));
    let var_1 = _wgslsmith_sub_i32(min(-u_input.b, arg_0), firstTrailingBit(~var_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-588f)) - _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -964f))))) * -465f);
    return Struct_1(~abs(~min(61560u, 1u)), true, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75314u, 27u)], 27u)], 27u)], 27u)], 27u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51009u, 27u)], 27u)], 27u)], 27u)]) >> (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 75659u) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86162u, 27u)], 27u)], 27u)], 1u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27280u, 27u)], 27u)], global0[_wgslsmith_index_u32(35614u, 27u)], 15764u))), vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63803u, 27u)], 27u)], 27u)]), vec3<u32>(74709u, 0u, 63550u)), 4294967295u), countOneBits(global0[_wgslsmith_index_u32(1u, 27u)]) << (countOneBits(global0[_wgslsmith_index_u32(1u, 27u)]) % 32u), global0[_wgslsmith_index_u32(45532u, 27u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    global0 = array<u32, 27>();
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(abs(arg_0.c.zy), _wgslsmith_add_vec2_u32(arg_0.c.yx, vec2<u32>(arg_1.x, 9369u))) | (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.c.x, 27u)], 4294967295u, 1u, 10033u), vec4<u32>(arg_0.a, 31173u, arg_1.x, 56863u))) << (81190u % 32u)), arg_3 == arg_3, func_1(firstTrailingBit(-u_input.c), vec2<i32>(~(i32(-1i) * -15579i), 1i), select(vec4<bool>(true & arg_0.b, !arg_0.b, false, func_3().x), !select(vec4<bool>(arg_0.b, false, arg_0.b, true), vec4<bool>(true, false, arg_0.b, arg_0.b), arg_0.b), select(!vec4<bool>(false, true, arg_0.b, arg_0.b), !vec4<bool>(arg_0.b, false, arg_0.b, true), any(vec3<bool>(arg_0.b, true, true)))), _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -827f)))).c);
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return _wgslsmith_div_f32(arg_3, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(abs(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 4294967295u) >> (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23136u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(18917u, 27u)]) % vec2<u32>(32u)))));
    var var_1 = Struct_1(1u, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)), ~vec3<u32>(63104u, ~(~var_0.x), var_0.x >> (1u % 32u)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1023f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(1153f * -817f))))), -1003f), vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_4(func_1(-1611i, vec2<i32>(-2147483647i, 27048i), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), 1000f), select(vec2<u32>(24887u, var_1.a), vec2<u32>(var_0.x, 4294967295u), vec2<bool>(var_1.b, false)), vec3<i32>(1i, u_input.b, u_input.a.x), _wgslsmith_f_op_f32(abs(-1011f))))), 1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(911f, 309f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-706f, -391f)) - _wgslsmith_f_op_f32(773f - -1000f)))));
    var_1 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_1.c.x, ~0u, global0[_wgslsmith_index_u32(~var_0.x, 27u)]), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(var_1.a, 27u)], var_0.x, var_0.x, 1u), ~vec4<u32>(1u, 6060u, 1u, global0[_wgslsmith_index_u32(var_1.c.x, 27u)]), select(vec4<u32>(53321u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 57695u), vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 27u)], 4294967295u, 42364u, global0[_wgslsmith_index_u32(10324u, 27u)]), false))), !func_1(-min(u_input.c, 0i), _wgslsmith_mod_vec2_i32(abs(u_input.a.yx), _wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.xz)), !(!vec4<bool>(true, var_1.b, false, var_1.b)), -1170f).b, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_mult_u32(min(2889u, 4294967295u), 50958u), _wgslsmith_mod_u32(~var_0.x, ~var_0.x)), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(firstLeadingBit(~var_0.x), 27u)], ~global0[_wgslsmith_index_u32(35587u, 27u)] & firstLeadingBit(0u))));
    var_2 = vec4<f32>(972f, -392f, _wgslsmith_f_op_f32(-1546f + 359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1363f * 448f), -918f) + var_2.x)));
    let var_3 = true;
    let var_4 = var_2.x;
    var_0 = var_1.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(-59372i, var_2.x);
}

