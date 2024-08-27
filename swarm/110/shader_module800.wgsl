struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<bool>, 21>;

var<private> global2: bool = true;

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = u_input.b.x;
    global4 = array<vec3<u32>, 5>();
    global4 = array<vec3<u32>, 5>();
    global2 = !arg_2.x;
    let var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(48266u, u_input.c), 0u) >> (reverseBits(global3.d.x) % 32u));
    return vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(91590u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), 0u, global3.d.x), select(~vec4<u32>(u_input.c, var_1, global3.d.x, 47540u), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.x, 4294967295u, global3.b.x, u_input.c), vec4<u32>(u_input.c, global3.b.x, 4294967295u, 0u)), select(arg_2, vec4<bool>(arg_2.x, true, false, true), arg_2))), var_1, _wgslsmith_add_u32(~(~global3.d.x), ~(~77329u))), _wgslsmith_mult_u32(19692u, max(_wgslsmith_clamp_u32(143982u, u_input.c, var_1), ~0u)) & ~_wgslsmith_sub_u32(34050u, 1u), 1u, 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = max(vec4<u32>(44429u, u_input.c, global3.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(~func_3(vec2<f32>(arg_1.x, -1000f), var_0.c.yzz, vec4<bool>(true, true, true, true), Struct_2(arg_1.x, arg_0, arg_1, arg_2.d)), vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3.d.x, global3.b.x, u_input.a)), vec3<u32>(u_input.c, u_input.a, global3.b.x)), ~1u, abs(4294967295u), ~firstLeadingBit(u_input.a))));
    var var_2 = Struct_1(global3.a, vec3<u32>(40726u, func_3(var_0.c.zw, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.a.x, arg_0, -1000f), var_0.c.yyy)), vec4<bool>(true, false, false, false), arg_2).x >> ((~u_input.a ^ 1u) % 32u), 4749u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1417f, arg_1.x)))))), _wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(1u, var_1.x))), ~var_1.xw));
    global1 = array<vec2<bool>, 21>();
    var var_3 = arg_2;
    return ~vec4<u32>(~_wgslsmith_sub_u32(var_2.d.x, 78329u >> (0u % 32u)), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(1u, 1u), func_3(vec2<f32>(1087f, -314f), vec3<f32>(1676f, 1000f, -707f), vec4<bool>(true, false, true, true), Struct_2(var_2.c.x, 1000f, var_3.c, vec4<i32>(-33420i, 2147483647i, -2147483647i, 1i))).x << (18397u % 32u), u_input.a), _wgslsmith_clamp_u32(firstTrailingBit(var_2.b.x & 0u), ~(~77400u), 1u), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.x, 1u), global3.d.x), ~_wgslsmith_dot_vec2_u32(global3.d, var_1.wy)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    global4 = array<vec3<u32>, 5>();
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(min(arg_1.a.x, -679f)), 234f))), firstTrailingBit(~(max(vec3<u32>(arg_1.b.x, 0u, arg_1.d.x), arg_1.b) & countOneBits(arg_1.b))), arg_3.c.ywy, vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d.x, 59942u, 1328u, arg_2), vec4<u32>(0u, arg_1.b.x, u_input.a, 4294967295u)), func_2(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -1525f, arg_3.c.x, arg_1.a.x)), Struct_2(-2279f, 2081f, vec4<f32>(global3.c.x, arg_1.a.x, arg_3.a, global3.a.x), vec4<i32>(1i, arg_3.d.x, arg_3.d.x, u_input.b.x)))), arg_2));
    let var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.b, max(arg_3.d, ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_3.d.x, 1i), vec4<i32>(0i, arg_3.d.x, arg_3.d.x, 38958i)))));
    let var_1 = vec2<bool>(arg_0.x, 0u > arg_1.d.x);
    global4 = array<vec3<u32>, 5>();
    return !any(select(arg_0.xxy, select(select(arg_0.wwy, vec3<bool>(false, var_1.x, var_1.x), var_1.x), !arg_0.xxw, all(arg_0.wxy)), select(arg_0.wxy, vec3<bool>(var_1.x, arg_0.x, true), !arg_0.zwx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(250f - -914f), 302f);
    let var_2 = _wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-868f)))), -574f)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global2 = !all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)) && any(vec3<bool>(select(false, global3.a.x == 1499f, true), true | select(true, true, true), func_1(vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(var_1.x, global3.a.x, global3.a.x), global4[_wgslsmith_index_u32(u_input.c, 5u)], var_2, vec2<u32>(global3.d.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, 4294967295u), vec4<u32>(0u, u_input.c, u_input.a, global3.d.x)), Struct_2(global3.a.x, var_2.x, vec4<f32>(var_1.x, var_2.x, -694f, var_2.x), vec4<i32>(var_0, var_0, var_0, 49813i)))));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_3(vec2<f32>(var_1.x, global3.c.x), var_1, vec4<bool>(false, false, true, true), Struct_2(-565f, 1432f, vec4<f32>(var_1.x, 1020f, -456f, var_1.x), u_input.b)).x & _wgslsmith_dot_vec2_u32(global3.b.zx, vec2<u32>(0u, u_input.a)), _wgslsmith_mult_u32(14351u, 45105u) >> (u_input.c % 32u)) << (global3.d.x % 32u), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x >> (13612u % 32u), abs(var_0)), i32(-1i) * -var_0));
}

