struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(30401i), Struct_1(-12558i), Struct_1(0i), Struct_1(22621i), Struct_1(64300i), Struct_1(-31053i), Struct_1(1i), Struct_1(2147483647i), Struct_1(56266i), Struct_1(-12787i), Struct_1(-9245i), Struct_1(-24708i), Struct_1(i32(-2147483648)), Struct_1(-7969i), Struct_1(0i), Struct_1(15409i), Struct_1(41113i), Struct_1(39082i), Struct_1(41189i), Struct_1(-1i), Struct_1(2147483647i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_1(reverseBits(-select(i32(-1i) * -2147483647i, arg_3.a, false)));
    let var_1 = Struct_1(1i);
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.a, abs(arg_2.a >> (arg_0 % 32u))), _wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, arg_1.x, var_0.a), arg_1.www)))), arg_1.x, firstLeadingBit(~min(arg_3.a, var_1.a) ^ 15180i), -var_0.a >> (_wgslsmith_add_u32(abs(1u), max(1u, min(4294967295u, 1u))) % 32u));
    let var_3 = Struct_1(arg_3.a);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(arg_2.a, 56893i)), min(vec2<i32>(arg_1.x, arg_2.a), vec2<i32>(-2147483647i, 2147483647i))), ~(vec2<i32>(var_2.x, arg_2.a) ^ var_2.yx)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, arg_2.a) ^ vec2<i32>(var_1.a, -2147483647i), vec2<i32>(60999i, 1i)) ^ abs(vec2<i32>(-23043i, -19084i))), 2147483647i, 2147483647i);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = arg_0.x;
    global0 = array<vec3<bool>, 21>();
    let var_1 = ~_wgslsmith_dot_vec3_i32(select(~(~vec3<i32>(-1i, -70106i, 8513i)), ~vec3<i32>(1i, 1i, 1i), global0[_wgslsmith_index_u32(~4294967295u, 21u)]), _wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(-30606i, 0i, 53083i)), vec3<i32>(5812i, 41948i, 28250i), true), func_3(firstLeadingBit(30144u), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 9295i, -2147483647i, 0i), vec4<i32>(0i, -2147483647i, 4389i, 24426i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, arg_2.x), 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])));
    var var_2 = !vec2<bool>(true, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -43600i, var_1, 1i), vec4<i32>(var_1, var_1, 31156i, 21368i)) <= func_3(_wgslsmith_clamp_u32(u_input.c, arg_2.x, 29796u), _wgslsmith_mod_vec4_i32(vec4<i32>(-26777i, var_1, -12764i, var_1), vec4<i32>(45419i, -1i, 8575i, 936i)), Struct_1(-1i), global1[_wgslsmith_index_u32(firstLeadingBit(4400u), 21u)]).x);
    var var_3 = select(abs(~(~vec4<u32>(arg_2.x, arg_1, 0u, arg_1))), ~vec4<u32>(arg_1 ^ u_input.c, ~8138u, arg_1, ~(~1u)), var_2.x);
    return ~func_3(_wgslsmith_sub_u32(abs(var_3.x >> (1u % 32u)), 1u), _wgslsmith_add_vec4_i32(-vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(var_1, 43933i, var_1, -1i)) ^ reverseBits(firstLeadingBit(vec4<i32>(11369i, -1i, 2147483647i, var_1))), global1[_wgslsmith_index_u32(34856u, 21u)], global1[_wgslsmith_index_u32(min(max(arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, var_3.x), vec2<u32>(var_3.x, u_input.d))), ~0u), 21u)]).yy;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -772f), 906f, -1709f, _wgslsmith_f_op_f32(-256f * -1176f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-442f, 157f, -165f, -924f), vec4<f32>(-358f, -684f, -371f, -1000f), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, -720f, 219f, 2768f) * vec4<f32>(173f, -337f, -508f, -595f)))), vec4<bool>(0u == u_input.c, true, select(false, false, true), true))), !vec4<bool>(true, all(vec4<bool>(false, false, true, false)), all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true))))), u_input.c, u_input.b.wz, select(vec3<bool>(true, !all(vec2<bool>(true, true)), true), select(global0[_wgslsmith_index_u32(u_input.e.x & ~u_input.c, 21u)], vec3<bool>(true, true, true), false), true));
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    let var_1 = !(!vec3<bool>(!all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), all(global0[_wgslsmith_index_u32(0u & u_input.e.x, 21u)])));
    global0 = array<vec3<bool>, 21>();
    return StorageBuffer(u_input.d, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1103f, -268f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2111f - _wgslsmith_f_op_f32(floor(-100f))), _wgslsmith_f_op_f32(sign(-1811f)), true)), abs(vec3<u32>(u_input.e.x, 1u, ~u_input.d) & min(~vec3<u32>(u_input.b.x, u_input.c, 4294967295u), firstTrailingBit(u_input.b.yyy))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a ^ ~1u, 21u)];
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = func_1();
}

