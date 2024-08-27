struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(93433u, 32627u, 38337u), vec3<u32>(4438u, 1u, 1u), vec3<u32>(20985u, 8927u, 0u), vec3<u32>(41295u, 34717u, 16186u), vec3<u32>(0u, 88139u, 4155u), vec3<u32>(1u, 1u, 27821u), vec3<u32>(1u, 1851u, 40868u));

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = global1.a;
    var var_1 = select(vec3<bool>(all(vec3<bool>(global1.d.e, global1.d.e | global1.d.e, global1.d.e == global1.d.e)), any(select(vec2<bool>(global1.d.e, true), select(vec2<bool>(true, global1.d.e), vec2<bool>(false, false), vec2<bool>(global1.d.e, global1.d.e)), vec2<bool>(true, true))), !(!global1.d.e)), !(!vec3<bool>(any(vec3<bool>(false, global1.d.e, false)), false, true || global1.d.e)), global1.d.d == ~(~_wgslsmith_mult_i32(global1.d.d, global1.d.d)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global1.d.c.xy);
    var var_3 = Struct_1(global1.c.b, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1.e.a), ~vec2<u32>(var_0.a, 60444u))));
    let var_4 = global1.d;
    return reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(59699u, 76163u, var_0.a, 56158u)), max(vec4<u32>(64554u, 5263u, 4294967295u, 1u), vec4<u32>(u_input.b, 35971u, var_4.a.b, global1.e.b)) << (countOneBits(vec4<u32>(var_0.b, 37085u, 51316u, 4543u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_4.b.a, var_4.b.a, global1.d.b.a, 1u)), select(vec4<u32>(global1.b.x, u_input.b, 1u, var_3.a) ^ vec4<u32>(0u, 1u, var_0.a, var_3.b), vec4<u32>(var_4.b.a, u_input.b, 36282u, 0u) ^ vec4<u32>(global1.e.a, global1.d.a.a, 1u, var_0.a), select(vec4<bool>(true, global1.d.e, var_4.e, false), vec4<bool>(var_4.e, var_4.e, global1.d.e, var_4.e), vec4<bool>(var_4.e, var_1.x, var_4.e, global1.d.e))), countOneBits(vec4<u32>(var_0.a, 11590u, var_0.a, 11266u)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec2<u32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0)))) >> (_wgslsmith_clamp_u32(35439u, firstLeadingBit(global1.e.b), global1.e.b) % 32u), global1.e.b);
    let var_1 = firstLeadingBit(firstLeadingBit(global1.b.zy));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_dot_vec4_u32(abs(~(max(vec4<u32>(var_1.x, arg_2.x, arg_2.x, u_input.b), vec4<u32>(var_1.x, 5551u, var_0.x, var_0.x)) ^ ~vec4<u32>(4294967295u, var_1.x, 9993u, var_0.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(48648u >> (1u % 32u), global1.e.a, 67104u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), global1.b)), ~vec4<u32>(u_input.b, u_input.b, var_0.x, var_1.x), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.e.b, u_input.b, 1u), vec4<u32>(0u, arg_2.x, 1u, 21283u), vec4<u32>(u_input.b, 4294967295u, arg_2.x, 49768u)))), ~(~min(vec4<u32>(var_0.x, 11574u, u_input.b, 4772u), vec4<u32>(4294967295u, 0u, global1.c.b, global1.c.a)))));
    let var_4 = Struct_3(global1.e, global0[_wgslsmith_index_u32(~4294967295u, 7u)], Struct_1(func_3(vec2<f32>(arg_0.x, 1033f)) | u_input.b, 69616u), global1.d, Struct_1(72265u, ~(~0u)));
    return _wgslsmith_div_f32(arg_0.x, arg_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-554f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1982f)), _wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(func_2(vec2<f32>(global1.d.c.x, global1.d.c.x), global1.d.e, abs(global1.b.zz), !vec4<bool>(arg_1.x, true, false, false))))));
    global1 = Struct_3(global1.e, vec3<u32>(~arg_0.b, global1.b.x, _wgslsmith_sub_u32(1u & global1.b.x, 4294967295u)) >> (abs(_wgslsmith_add_vec3_u32(select(global0[_wgslsmith_index_u32(28518u, 7u)], vec3<u32>(global1.d.b.b, 1u, 4294967295u), false), global1.b)) % vec3<u32>(32u)), arg_0, Struct_2(arg_0, Struct_1(44856u, ~1u), var_0, ~_wgslsmith_div_i32(u_input.a & global1.d.d, u_input.a), arg_1.x), arg_0);
    var var_1 = Struct_3(global1.e, global1.b, Struct_1(firstTrailingBit(0u >> (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(select(arg_0.b, 40872u, true), u_input.b), vec2<u32>(47038u, 0u))), global1.d, Struct_1(global1.c.b, abs(~global1.b.x)));
    var var_2 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(countOneBits(2147483647i), _wgslsmith_sub_i32(u_input.a, global1.d.d), 0i) ^ vec3<i32>(19807i, global1.d.d | var_1.d.d, -44147i)), vec3<i32>(-1i) * -vec3<i32>(-50991i, -global1.d.d, countOneBits(global1.d.d)));
    var var_3 = firstLeadingBit(vec3<i32>(countOneBits(global1.d.d), _wgslsmith_clamp_i32(-1i, -1i << (0u % 32u), -1i), 2147483647i) & _wgslsmith_sub_vec3_i32(vec3<i32>(select(-2567i, global1.d.d, global1.d.e), 28530i, -var_1.d.d), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(31636i, 2147483647i, global1.d.d), vec3<i32>(u_input.a, var_1.d.d, -1i)), min(vec3<i32>(var_1.d.d, 1i, var_1.d.d), vec3<i32>(u_input.a, -1i, 1i)))));
    return Struct_2(Struct_1(firstLeadingBit(~select(1488u, 4294967295u, arg_1.x)), 0u), arg_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1812f * global1.d.c.x) * _wgslsmith_f_op_f32(var_0.x * 327f))), var_0.x, -1406f), global1.d.d, !select(all(vec3<bool>(global1.d.e, var_1.d.e, global1.d.e)), var_1.d.e, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = arg_1.x;
    let var_1 = -_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(arg_0.d, 2147483647i, -1i, global1.d.d)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a, -1i), vec4<i32>(arg_0.d, arg_0.d, u_input.a, u_input.a)) ^ ~select(vec4<i32>(-11675i, -2147483647i, 2147483647i, -34203i), vec4<i32>(global1.d.d, u_input.a, global1.d.d, -27963i), vec4<bool>(arg_0.e, false, arg_0.e, arg_0.e)));
    return StorageBuffer(u_input.a, ~arg_0.b.a, vec2<i32>(~(-(~2147483647i)), ~26103i), ~vec2<u32>(0u, arg_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(global1.e, !(!vec3<bool>(true, global1.d.e, true))), min(max((vec4<u32>(global1.d.a.b, 48322u, 31376u, u_input.b) | vec4<u32>(1u, 0u, u_input.b, u_input.b)) & select(vec4<u32>(43285u, 1u, 43772u, u_input.b), vec4<u32>(19574u, 0u, u_input.b, u_input.b), vec4<bool>(true, global1.d.e, false, global1.d.e)), vec4<u32>(1u, ~global1.c.b, _wgslsmith_div_u32(global1.c.a, u_input.b), ~1u)), ~vec4<u32>(global1.d.b.b, u_input.b, 31456u, global1.b.x) | vec4<u32>(global1.b.x, 42659u, 1u, 4294967295u)));
}

