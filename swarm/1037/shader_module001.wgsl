struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<i32>(43746i, -69288i, 2147483647i), vec4<bool>(true, false, true, false), vec3<u32>(32406u, 8442u, 35039u), 4294967295u, i32(-2147483648)), Struct_2(vec3<i32>(2147483647i, 39470i, -28706i), vec4<bool>(true, false, false, true), vec3<u32>(22480u, 25095u, 1u), 31863u, 1i), Struct_2(vec3<i32>(-1i, -4029i, -4755i), vec4<bool>(true, true, true, false), vec3<u32>(23092u, 0u, 4294967295u), 41946u, 2147483647i), Struct_2(vec3<i32>(0i, 1i, 0i), vec4<bool>(false, false, false, true), vec3<u32>(12259u, 10897u, 15839u), 3224u, -16956i), Struct_2(vec3<i32>(23529i, 45260i, -22397i), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 1u, 1u), 1u, 4166i), Struct_2(vec3<i32>(7327i, 2147483647i, 0i), vec4<bool>(true, false, true, false), vec3<u32>(41995u, 4294967295u, 4294967295u), 75089u, -2016i), Struct_2(vec3<i32>(-48504i, -35675i, 544i), vec4<bool>(true, false, false, false), vec3<u32>(1u, 4294967295u, 0u), 4294967295u, 1i), Struct_2(vec3<i32>(i32(-2147483648), 0i, 60800i), vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 4294967295u, 1u), 4294967295u, -8683i), Struct_2(vec3<i32>(i32(-2147483648), -19746i, 5073i), vec4<bool>(false, false, true, false), vec3<u32>(0u, 15593u, 1u), 0u, i32(-2147483648)), Struct_2(vec3<i32>(58029i, 6203i, 2147483647i), vec4<bool>(false, true, true, true), vec3<u32>(20974u, 0u, 20635u), 114685u, 1i), Struct_2(vec3<i32>(-1i, -31652i, 0i), vec4<bool>(true, false, true, false), vec3<u32>(39247u, 76639u, 4294967295u), 4294967295u, 17870i), Struct_2(vec3<i32>(i32(-2147483648), -65587i, i32(-2147483648)), vec4<bool>(false, true, false, false), vec3<u32>(0u, 59422u, 40499u), 18800u, -1i), Struct_2(vec3<i32>(-43279i, 2780i, -2845i), vec4<bool>(true, true, false, true), vec3<u32>(1u, 1u, 1u), 0u, -1i), Struct_2(vec3<i32>(0i, 22971i, i32(-2147483648)), vec4<bool>(true, false, true, true), vec3<u32>(28063u, 18728u, 1u), 0u, -49877i), Struct_2(vec3<i32>(29240i, -1i, -5621i), vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 22559u, 4294967295u), 1u, 11696i), Struct_2(vec3<i32>(2147483647i, -28646i, 3092i), vec4<bool>(false, true, true, true), vec3<u32>(0u, 60046u, 0u), 18475u, 0i), Struct_2(vec3<i32>(-25050i, i32(-2147483648), -22718i), vec4<bool>(true, false, false, true), vec3<u32>(1u, 1u, 30021u), 21524u, 23796i), Struct_2(vec3<i32>(48724i, i32(-2147483648), -51633i), vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 15198u, 98467u), 0u, 30881i), Struct_2(vec3<i32>(1i, -1i, 29325i), vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 1u, 4294967295u), 1u, 1i));

var<private> global2: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(1i, 3899i), vec2<i32>(16999i, 3752i), vec2<i32>(-1523i, 0i), vec2<i32>(35747i, 11479i), vec2<i32>(-1i, 57570i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 19269i), vec2<i32>(i32(-2147483648), -12799i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 1i), vec2<i32>(22947i, -17302i));

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(true, vec2<f32>(579f, -1052f), 0u, false, vec2<i32>(41514i, -17008i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<i32> {
    global1 = array<Struct_2, 19>();
    var var_0 = Struct_2(-firstTrailingBit(-select(vec3<i32>(u_input.b, 19452i, -50744i), vec3<i32>(17752i, global4.e.x, global4.e.x), global4.a)), !vec4<bool>(!(global4.e.x <= u_input.b), false, any(select(vec3<bool>(global4.d, global4.a, true), vec3<bool>(true, global4.a, global4.d), vec3<bool>(true, global4.d, false))), true), ~_wgslsmith_sub_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(70902u, global4.c, global4.c), vec3<u32>(u_input.a, 0u, 4294967295u)), ~vec3<u32>(0u, global4.c, u_input.a), select(vec3<bool>(false, false, true), vec3<bool>(global4.a, false, global4.d), vec3<bool>(false, false, global4.a))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 155u), vec3<u32>(0u, 169u, global4.c))), _wgslsmith_dot_vec3_u32(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(26308u, 4294967295u, global4.c), vec3<u32>(55404u, 1u, u_input.c))), select(vec3<u32>(38004u | global4.c, 7980u, ~global4.c), ~vec3<u32>(u_input.a, u_input.a, u_input.c) ^ ~vec3<u32>(1u, global4.c, global4.c), global4.d)), -1i);
    let var_1 = ~(-1i);
    var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(0u)), 19u)];
    global2 = array<vec2<i32>, 12>();
    return vec3<i32>(27283i, 2147483647i, ~(-2147483647i));
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    global3 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(arg_0.a, vec3<i32>(1i, 0i, ~2147483647i)), abs(func_3()));
    global3 = -71892i;
    global3 = arg_0.e;
    let var_0 = -1295f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), var_0);
    return ~arg_0.c.yx;
}

fn func_1() -> i32 {
    var var_0 = select(vec2<u32>(u_input.a, ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(33135u, u_input.c))), func_2(global1[_wgslsmith_index_u32(~u_input.c, 19u)]), select(!vec2<bool>(all(vec2<bool>(false, global4.d)), global4.d), select(!select(vec2<bool>(global4.a, true), vec2<bool>(global4.d, true), vec2<bool>(global4.d, true)), select(select(vec2<bool>(global4.d, false), vec2<bool>(false, global4.d), vec2<bool>(global4.d, global4.a)), !vec2<bool>(global4.d, global4.a), true), true), vec2<bool>(true, _wgslsmith_div_u32(18815u, global4.c) < countOneBits(1u))));
    let var_1 = firstTrailingBit(~(-(~vec3<i32>(-2147483647i, u_input.d, u_input.b)) << (firstLeadingBit(vec3<u32>(4294967295u, u_input.c, 323u)) % vec3<u32>(32u))));
    let var_2 = (false | !(_wgslsmith_f_op_f32(abs(global4.b.x)) <= _wgslsmith_f_op_f32(ceil(2400f)))) | all(vec3<bool>(true, 4294967295u < global4.c, !select(false, true, global4.a)));
    var var_3 = ~(~abs(max(4294967295u, 0u)));
    var var_4 = vec3<u32>(~4628u & ~(~(1u | var_0.x)), u_input.a, ~1u);
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(560f, global4.b.x, 717f, global4.b.x))))), -(func_1() >> (46700u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 199f, -581f) * _wgslsmith_div_vec3_f32(vec3<f32>(global4.b.x, -409f, -926f), vec3<f32>(global4.b.x, -1369f, global4.b.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, -2696f, 181f) * vec3<f32>(global4.b.x, global4.b.x, global4.b.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.b.x, -367f, global4.b.x)))))))));
}

