struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 25721u, 10759u), vec4<u32>(1u, 4294967295u, 40446u, 1u), vec4<u32>(0u, 32813u, 48661u, 1002u), vec4<u32>(86904u, 18336u, 4294967295u, 8290u), vec4<u32>(9202u, 1u, 30750u, 4294967295u), vec4<u32>(90514u, 4294967295u, 32085u, 1u), vec4<u32>(0u, 22779u, 27811u, 1u), vec4<u32>(4294967295u, 4294967295u, 18208u, 7603u), vec4<u32>(30868u, 0u, 1u, 4294967295u), vec4<u32>(64208u, 4294967295u, 8704u, 1u), vec4<u32>(0u, 83092u, 1u, 44900u), vec4<u32>(36245u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 6633u, 6187u), vec4<u32>(33010u, 69094u, 57951u, 36109u), vec4<u32>(34545u, 8302u, 47373u, 41084u), vec4<u32>(0u, 62724u, 0u, 4294967295u), vec4<u32>(45636u, 29949u, 0u, 27319u), vec4<u32>(1u, 33853u, 35979u, 4294967295u), vec4<u32>(2946u, 4294967295u, 0u, 26017u), vec4<u32>(4294967295u, 76400u, 4294967295u, 4294967295u), vec4<u32>(1u, 25712u, 38209u, 1u));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-938f, 1464f, 315f, -1458f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    return Struct_4(~_wgslsmith_div_u32(0u, 1u));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> vec3<u32> {
    let var_0 = -110f;
    global3 = !(!(!select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.c), 12u)], select(global1[_wgslsmith_index_u32(42079u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global3.x), !vec4<bool>(global3.x, global3.x, true, arg_0.x))));
    global1 = array<vec4<bool>, 12>();
    let var_1 = ~(~u_input.b);
    global2 = array<vec4<u32>, 22>();
    return max(firstLeadingBit(~(~vec3<u32>(60117u, u_input.b.x, var_1.x))), ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(59369u, var_1.x, var_1.x), vec3<u32>(0u, 4294967295u, 44067u))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1410f, arg_3));
    let var_1 = all(global1[_wgslsmith_index_u32(firstLeadingBit(~(~(arg_2.a | 54635u))), 12u)]);
    global3 = global1[_wgslsmith_index_u32(~(~(~(~15118u)) ^ arg_2.a), 12u)];
    var var_2 = select(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(arg_0.a, 22u)], global2[_wgslsmith_index_u32(14584u, 22u)]), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(22196u, arg_1.x, 6985u, 4294967295u), global2[_wgslsmith_index_u32(4294967295u, 22u)]), max(global2[_wgslsmith_index_u32(4294967295u, 22u)], vec4<u32>(arg_0.a, 0u, 4294967295u, 4294967295u))) & (~global2[_wgslsmith_index_u32(0u, 22u)] & ~vec4<u32>(arg_0.a, 15306u, 1u, 133811u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~arg_1.zx, u_input.b, global3.x), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(33518u, arg_2.a)), ~arg_1.zy)), 22u)]), select(!vec4<bool>(true, var_1, select(true, global3.x, var_1), var_1), global1[_wgslsmith_index_u32(arg_2.a, 12u)], select(global1[_wgslsmith_index_u32(func_2(vec2<bool>(global3.x, var_1), 807f).x, 12u)], !(!vec4<bool>(false, false, var_1, var_1)), false)));
    var var_3 = global4.a.xz;
    return abs(max(-2147483647i, -_wgslsmith_sub_i32(u_input.a.x, ~(-1539i))));
}

fn func_4(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = ~firstTrailingBit(1u << (u_input.b.x % 32u));
    let var_1 = Struct_5(global4.a, ~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_0, var_0)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(23115u, var_0)), countOneBits(u_input.b))), vec3<i32>(arg_0 | ~(15473i ^ u_input.a.x), max(_wgslsmith_mult_i32(u_input.a.x, -27520i & arg_0), _wgslsmith_sub_i32(-1i, 1i)), global0[_wgslsmith_index_u32(func_2(vec2<bool>(false, true), _wgslsmith_f_op_f32(f32(-1f) * -1160f)).x, 30u)]));
    var var_2 = Struct_2(Struct_1(var_1.a));
    let var_3 = Struct_3(u_input.b.x, var_2.a, u_input.b);
    global0 = array<i32, 30>();
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.a.x;
    global0 = array<i32, 30>();
    global4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_3(func_1(Struct_4(36046u), Struct_1(vec4<f32>(global4.a.x, -1000f, global4.a.x, global4.a.x)), global4.a.x), func_2(vec2<bool>(global3.x, global3.x), -961f), Struct_4(64073u), _wgslsmith_f_op_f32(-global4.a.x)), global3.x != (0i <= u_input.a.x))), _wgslsmith_f_op_vec4_f32(global4.a - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global4.a), vec4<f32>(-2062f, 518f, 1103f, -1750f))))));
    let var_1 = min(countOneBits(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(26952u, 4294967295u))), 34181u);
    var var_2 = 1362f;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(var_1, 30u)]), -u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~21897i), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) | global0[_wgslsmith_index_u32(var_1 | u_input.c, 30u)], global0[_wgslsmith_index_u32(countOneBits(57490u) | firstLeadingBit(u_input.c), 30u)]), u_input.a << (vec4<u32>(_wgslsmith_add_u32(u_input.d, var_1), countOneBits(var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 39068u), vec3<u32>(u_input.c, 4085u, var_1)), reverseBits(u_input.c)) % vec4<u32>(32u))), ~select(min(vec3<u32>(u_input.b.x, 0u, 1u) ^ vec3<u32>(var_1, var_1, 1u), ~vec3<u32>(var_1, 4294967295u, var_1)), vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(4294967295u, var_1), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), global3.ywy), _wgslsmith_f_op_vec4_f32(func_4(~2147483647i, select(false, -1i > -u_input.a.x, global3.x))));
}

