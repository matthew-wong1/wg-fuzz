struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<f32>(1884f, -1000f, 1311f)), true, 1u, vec4<i32>(2971i, -1i, 18198i, -15773i));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(40972u, 0u), vec2<u32>(23450u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(26276u, 4294967295u), vec2<u32>(1u, 4055u), vec2<u32>(1u, 35911u), vec2<u32>(6957u, 66124u), vec2<u32>(4271u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 22620u), vec2<u32>(45982u, 1u), vec2<u32>(51004u, 32898u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(88999u, 49713u), vec2<u32>(12907u, 25682u), vec2<u32>(27880u, 1u), vec2<u32>(33402u, 4294967295u), vec2<u32>(4294967295u, 5606u), vec2<u32>(16477u, 0u), vec2<u32>(27508u, 101837u), vec2<u32>(34922u, 39368u), vec2<u32>(21951u, 0u));

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = global0.d.yyw;
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(29398u, 4294967295u)), global0.c), 32u)];
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -global0.d.yyw, global0.d.xzz);
    var var_3 = abs(abs(27510i));
    let var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-197f * 821f), global0.a.a.x)), global0.a.a.x, _wgslsmith_f_op_f32(-var_1.a.x), global0.a.a.x), !(firstTrailingBit(~u_input.c) <= (u_input.c ^ firstLeadingBit(var_0.x))), Struct_1(_wgslsmith_clamp_u32(~1u, ~37816u, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, global0.a.a.x, 166f, var_1.a.x)))) * vec4<f32>(var_1.a.x, global0.a.a.x, global0.a.a.x, 1454f)), u_input.c, -abs(i32(-1i) * -57996i)));
    return !any(vec3<bool>(!global0.b, all(!vec2<bool>(global0.b, var_4.b)), global0.b));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = all(!vec3<bool>(false, true, countOneBits(global0.c) > global0.c));
    global3 = array<Struct_3, 32>();
    global3 = array<Struct_3, 32>();
    global0 = Struct_4(global0.a, true | all(vec4<bool>(false, var_0, true, func_3())), ~(~50040u), firstTrailingBit(global0.d));
    global2 = array<vec2<u32>, 22>();
    return -2220f;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> vec4<bool> {
    let var_0 = abs(global0.d.zy);
    var var_1 = 4294967295u;
    var var_2 = true;
    let var_3 = 36446i;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(max(global0.a.a.x, global0.a.a.x)), arg_1, _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.x, vec4<f32>(-756f, arg_1, 894f, -1913f), global0.d.x, -2147483647i), arg_0.x, global0.d.wzx, vec2<u32>(u_input.a.x, 15301u)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, -242f, -359f, -704f)))))), !global0.b, Struct_1(u_input.b, vec4<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.x + -336f), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) - _wgslsmith_f_op_f32(arg_1 - global0.a.a.x)), _wgslsmith_f_op_f32(ceil(-912f))), u_input.c, countOneBits(-2147483647i)));
    return !select(!select(!vec4<bool>(var_4.b, true, true, false), !vec4<bool>(global0.b, true, true, global0.b), select(global0.b, false, false)), !select(vec4<bool>(global0.b, var_4.b, true, true), select(vec4<bool>(false, global0.b, false, false), vec4<bool>(true, var_4.b, var_4.b, false), vec4<bool>(global0.b, global0.b, global0.b, var_4.b)), select(vec4<bool>(global0.b, var_4.b, var_4.b, global0.b), vec4<bool>(var_4.b, var_4.b, var_4.b, global0.b), vec4<bool>(global0.b, var_4.b, true, global0.b))), select(!(!vec4<bool>(true, var_4.b, var_4.b, true)), select(select(vec4<bool>(true, true, false, global0.b), vec4<bool>(false, true, true, false), vec4<bool>(false, var_4.b, var_4.b, false)), vec4<bool>(true, false, true, var_4.b), vec4<bool>(var_4.b, true, false, true)), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(~(~vec4<u32>(48875u, global0.c, 126691u, u_input.b)), global0.a.a.x);
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), ~u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(752f))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(288f, var_2)) - _wgslsmith_f_op_f32(floor(global0.a.a.x))))), global0.a.a.x));
    var var_4 = ~firstTrailingBit(abs(global0.c));
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(710f, global0.a.a.x, false)))))));
    var var_6 = select(vec2<u32>(global0.c << (1u % 32u), 22701u & global0.c), select(~global2[_wgslsmith_index_u32(4294967295u, 22u)], vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(25205u, var_1.x), var_1), ~1u), var_0.yw), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(360f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1068f, 320f))), 450f)), select((_wgslsmith_div_vec2_u32(vec2<u32>(68656u, 58917u), u_input.a) ^ ~vec2<u32>(69511u, 4294967295u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_6.x, global0.c), u_input.a) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_6.x, global0.c), vec3<u32>(var_6.x, 65091u, 4294967295u)), vec3<u32>(global0.c, 4294967295u, var_1.x) << (vec3<u32>(var_6.x, global0.c, 4294967295u) % vec3<u32>(32u))), 56351u), func_3()), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3, _wgslsmith_f_op_f32(f32(-1f) * -550f)))), global0.d.x);
}

