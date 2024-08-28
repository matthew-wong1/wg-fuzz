struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-10813i, -1784i);

var<private> global1: Struct_2 = Struct_2(Struct_1(0u, false, 42281u, 1000f), vec3<i32>(0i, 2147483647i, 48261i), Struct_1(39723u, false, 31643u, -456f), vec4<i32>(2147483647i, -75688i, 2478i, 9113i), Struct_1(0u, true, 39075u, 1074f));

var<private> global2: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1192f, -1028f, 780f), vec3<f32>(-227f, 913f, -159f), vec3<f32>(-256f, -684f, 857f), vec3<f32>(-1355f, 1000f, -268f), vec3<f32>(-1130f, -178f, -503f), vec3<f32>(-1383f, 997f, -416f), vec3<f32>(-246f, 1153f, -832f), vec3<f32>(-558f, -1472f, 369f), vec3<f32>(-818f, 1595f, -2138f), vec3<f32>(-475f, 1000f, -582f), vec3<f32>(1577f, 1057f, -1539f), vec3<f32>(-1252f, -561f, -574f), vec3<f32>(339f, -394f, -2231f), vec3<f32>(414f, 644f, 910f), vec3<f32>(-2452f, -657f, 523f), vec3<f32>(-1017f, -1765f, -113f), vec3<f32>(1590f, -358f, 1624f));

var<private> global3: f32;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    global1 = Struct_2(Struct_1(~(~(~39951u)), !(!global1.c.b != all(vec2<bool>(global1.a.b, false))), ~(~global1.e.a & abs(global1.a.c)), _wgslsmith_f_op_f32(max(762f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.d), _wgslsmith_f_op_f32(max(global1.a.d, 490f)))))), -global1.b & max(global1.d.yzy, global1.d.yzw ^ ~global1.d.zwz), Struct_1(global1.c.a, true, global1.e.c, -407f), ~vec4<i32>(_wgslsmith_mod_i32(global0.x, ~1i), ~global0.x, global0.x, global0.x), Struct_1(_wgslsmith_add_u32(50880u, 1u) >> (~4294967295u % 32u), !all(vec2<bool>(global1.c.b, true)), ~abs(u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -366f)));
    return select(min(~vec4<i32>(~global1.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(global1.b.x, 1i, 1i)), reverseBits(2147483647i), 1i & global0.x), select(global1.d, vec4<i32>(-3664i, -37203i, global1.d.x, 57592i), select(vec4<bool>(true, false, true, global1.e.b), vec4<bool>(true, global1.e.b, global1.c.b, false), vec4<bool>(global1.e.b, true, true, true))) ^ global1.d), max(abs(global1.d), global1.d), global1.e.b);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(arg_3, ~(~_wgslsmith_div_u32(~arg_1, max(u_input.a.x, arg_1))));
    var var_1 = arg_0;
    let var_2 = Struct_2(global4[_wgslsmith_index_u32(~12409u, 24u)], vec3<i32>(-1i, min(-(~(-1i)), -2147483647i), -2147483647i), Struct_1(~reverseBits(arg_1), arg_1 <= u_input.a.x, ~var_0, arg_0), func_3(), global4[_wgslsmith_index_u32(0u, 24u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, arg_1), 17u)]));
    let var_4 = ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.xz), vec2<u32>(23945u, arg_1), u_input.a.xy & vec2<u32>(var_0, arg_3)) << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(~(~25314u), ~(arg_1 << (4294967295u % 32u))));
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(max(arg_3, u_input.a.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(16197u, arg_1, var_0), vec3<u32>(var_0, 0u, 0u))), abs(0u)), 24u)];
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = global1.a.d;
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.d, global1.e.d)) * 140f)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, ~0u) ^ abs(1u), max(~global1.a.a, arg_0.x) >> (arg_0.x % 32u)), -2147483647i, _wgslsmith_add_u32(77785u, ~_wgslsmith_mult_u32(~global1.e.a, _wgslsmith_add_u32(110871u, 27983u))));
    global4 = array<Struct_1, 24>();
    let var_2 = vec4<bool>(!((i32(-1i) * -7938i) > -(~global1.b.x)), any(!vec3<bool>(global1.c.b, select(global1.c.b, false, global1.a.b), 576f <= var_1.d)), global1.c.b, !var_1.b);
    global4 = array<Struct_1, 24>();
    return vec3<i32>(-2147483647i, global1.d.x, -14063i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~(vec4<u32>(25697u, 0u, 4294967295u, u_input.a.x) >> (u_input.a % vec4<u32>(32u)))), u_input.a, vec4<u32>(~u_input.a.x, 0u, ~global1.e.c, abs(~42688u))));
    var var_1 = ~(vec4<u32>(global1.c.c, global1.e.a, firstLeadingBit(12057u), _wgslsmith_clamp_u32(u_input.a.x, global1.c.a >> (16929u % 32u), 4294967295u)) << ((max(vec4<u32>(29769u, u_input.a.x, 0u, 0u) >> (vec4<u32>(u_input.a.x, global1.e.c, 36203u, global1.a.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.a, 102050u, 0u, u_input.a.x), vec4<u32>(4294967295u, global1.c.c, global1.c.c, 1u), u_input.a)) | (u_input.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4704u, 1u, global1.c.c), vec4<u32>(global1.c.c, u_input.a.x, global1.c.a, u_input.a.x)) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_2 = Struct_2(Struct_1(select(~4294967295u ^ firstTrailingBit(global1.c.c), 3854u, global1.e.b), true, abs(4294967295u), global1.c.d), _wgslsmith_div_vec3_i32(select(global1.d.xxy, vec3<i32>(global1.b.x, func_3().x, _wgslsmith_mult_i32(-528i, global0.x)), global1.e.b), -(vec3<i32>(2147483647i, global1.b.x, global1.d.x) & _wgslsmith_div_vec3_i32(global1.d.xxx, vec3<i32>(var_0.x, var_0.x, var_0.x)))), func_2(_wgslsmith_f_op_f32(global1.e.d + _wgslsmith_f_op_f32(min(1110f, _wgslsmith_f_op_f32(max(global1.e.d, global1.c.d))))), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1.e.c, var_1.x), var_1.wwy), 37450u ^ _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~func_3().x, 11216u), global1.d, global4[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    var var_3 = vec2<f32>(-1619f, var_2.a.d);
    var_1 = ~vec4<u32>(~45446u, ~(~select(var_2.a.c, 38852u, var_2.e.b)), var_1.x, reverseBits(1u));
    let var_4 = var_2;
    let var_5 = global1.e.b;
    global3 = 401f;
    var var_6 = ~firstLeadingBit(u_input.a | _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_2.a.c, 4294967295u, u_input.a.x, 6145u) & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1717f);
}

