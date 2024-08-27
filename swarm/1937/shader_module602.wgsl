struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25386u;

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = firstTrailingBit(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(54459u << (u_input.d % 32u), u_input.d), u_input.d)));
    let var_1 = max(~vec3<u32>(1u, 1u, 63658u), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1369f);
    let var_3 = Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(31109i, 1i), -u_input.a));
    var var_4 = var_0.x;
    return false;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.b.x, 4294967295u), ~vec3<u32>(~arg_3.x, 29830u, arg_0 >> (37532u % 32u))), vec3<u32>(min(_wgslsmith_sub_u32(u_input.d ^ 65323u, arg_2), arg_0), _wgslsmith_add_u32(~(~34308u), min(arg_2 & 6022u, ~arg_0)), arg_2));
    global2 = !(!arg_1.xyz);
    var var_1 = !(!vec4<bool>(func_3(_wgslsmith_f_op_f32(385f + -1049f), u_input.c), true, !select(false, arg_1.x, true), global2.x));
    global1 = array<Struct_2, 27>();
    return global1[_wgslsmith_index_u32(~4294967295u, 27u)];
}

fn func_1(arg_0: Struct_3) -> i32 {
    global1 = array<Struct_2, 27>();
    var var_0 = abs(~(u_input.b.x ^ u_input.b.x) >> (abs(~u_input.d) % 32u)) >> (~4294967295u % 32u);
    var var_1 = func_2(0u, vec4<bool>(true, false, !global2.x, false), ~u_input.d, vec4<u32>(u_input.b.x, 0u, 4294967295u, abs(79146u)));
    var_1 = Struct_2(func_2(firstLeadingBit(_wgslsmith_div_u32(~0u, abs(u_input.b.x))), vec4<bool>(!(!global2.x), !var_1.d, u_input.b.x >= u_input.b.x, global2.x), select(0u << (~u_input.d % 32u), u_input.b.x, all(vec4<bool>(true, false, var_1.d, false))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(29282u, 2319u, u_input.d, 1267u) >> (vec4<u32>(u_input.b.x, 28295u, 1u, u_input.d) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, u_input.d, 78282u), vec4<u32>(u_input.b.x, 88612u, 1u, u_input.d) | vec4<u32>(u_input.d, 6545u, 55132u, 24293u)))).a, select(-func_2(abs(u_input.d), select(vec4<bool>(false, var_1.d, true, false), vec4<bool>(false, false, global2.x, global2.x), var_1.c), u_input.d, ~vec4<u32>(4294967295u, 0u, 16496u, u_input.d)).a.a.yw, vec2<i32>(-25192i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -5612i), vec2<i32>(arg_0.a.x, -20398i)) | 42453i), true), _wgslsmith_sub_u32(u_input.d, ~u_input.d) == 0u, false);
    var var_2 = func_2(~(~_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zz)), !select(!(!vec4<bool>(global2.x, global2.x, false, true)), select(vec4<bool>(global2.x, true, true, false), !vec4<bool>(global2.x, var_1.d, var_1.d, false), func_3(597f, arg_0.a.x)), !select(vec4<bool>(false, var_1.d, true, global2.x), vec4<bool>(var_1.c, var_1.d, false, false), vec4<bool>(global2.x, global2.x, false, true))), _wgslsmith_mod_u32(u_input.b.x, u_input.d), select(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 30163u, u_input.d, u_input.b.x), vec4<u32>(29547u, u_input.b.x, u_input.b.x, 68770u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, u_input.b.x), vec4<u32>(38740u, u_input.d, 3678u, 48946u), vec4<u32>(0u, u_input.b.x, u_input.d, u_input.b.x))), firstLeadingBit(firstLeadingBit(vec4<u32>(37837u, 22862u, u_input.d, 0u))) ^ max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 27979u), _wgslsmith_sub_vec4_u32(vec4<u32>(43298u, 32560u, 1u, 1u), vec4<u32>(23850u, 13819u, 0u, u_input.b.x))), false)).a;
    return -abs(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(-max(reverseBits(-vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.a.x, 2147483647i)), select(u_input.a & u_input.a, u_input.a, vec2<bool>(global2.x, true)));
    global0 = _wgslsmith_dot_vec3_u32(~(~u_input.b) >> (~u_input.b % vec3<u32>(32u)), ~(~u_input.b));
    global1 = array<Struct_2, 27>();
    global0 = u_input.d << (_wgslsmith_mod_u32(~select(u_input.b.x >> (0u % 32u), ~u_input.d, false), u_input.d) % 32u);
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_1 = Struct_1(vec4<i32>(min(u_input.a.x, _wgslsmith_dot_vec2_i32(~u_input.a, u_input.a)), 1i, ~reverseBits(u_input.a.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2680i, var_0.x, -17186i), vec3<i32>(var_0.x, -2147483647i, u_input.c)), func_1(Struct_3(vec2<i32>(-16551i, 11925i)))) | var_0.x));
    let var_2 = ~vec3<u32>(11961u, select(u_input.d, _wgslsmith_add_u32(~u_input.d, ~u_input.d), true | all(global2.zy)), ~4294967295u);
    global2 = !vec3<bool>(global2.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b.x, ~u_input.b.x, 5437u, ~24259u) ^ vec4<u32>(39673u, abs(1u), 28510u, 0u), ~vec4<u32>(17619u, u_input.b.x, reverseBits(17628u), ~1u), ~vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, var_2.x), var_2.x, 57714u, _wgslsmith_mod_u32(u_input.b.x, 18444u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, 381f, 566f, 1000f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1081f), 729f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 778f), _wgslsmith_div_f32(-776f, -1810f)))));
}

