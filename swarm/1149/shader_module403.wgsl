struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<u32, 19> = array<u32, 19>(83826u, 61911u, 1u, 44680u, 1u, 11174u, 1u, 51739u, 3124u, 9333u, 4294967295u, 1u, 17634u, 4294967295u, 56056u, 29698u, 7835u, 67437u, 65673u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> i32 {
    global4 = array<u32, 19>();
    var var_0 = arg_0.d;
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-firstLeadingBit(~vec3<i32>(26619i, -41924i, u_input.a)), -vec3<i32>(1i, arg_0.c << (0u % 32u), ~arg_0.c)), reverseBits(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c, 34705i, -20654i) >> (arg_1.yyw % vec3<u32>(32u)), ~vec3<i32>(25167i, u_input.a, u_input.a))));
    global0 = Struct_4(global3.x);
    let var_2 = Struct_4(all(select(var_0.a, select(!var_0.a, vec4<bool>(global0.a, true, false, global3.x), global3.x || false), false)));
    return _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -33169i, arg_0.c & 30394i, firstTrailingBit(u_input.a))), -firstTrailingBit(-vec4<i32>(-23246i, -1i, var_1.x, arg_0.c)) >> (select(~arg_1, vec4<u32>(1u, ~4294967295u, firstTrailingBit(arg_1.x), min(4294967295u, 66091u)), select(select(vec4<bool>(true, true, false, global0.a), vec4<bool>(true, arg_0.d.a.x, global0.a, global0.a), var_0.a), vec4<bool>(global0.a, true, global0.a, false), true)) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_3(~(~4294967295u), all(!global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-u_input.a, u_input.a | 26986i, _wgslsmith_add_i32(16684i, 0i)), vec3<i32>(-2147483647i, 2147483647i, ~u_input.a), (global3.x & true) == select(global0.a, false, true)), vec3<i32>(2147483647i << ((19805u | arg_0) % 32u), func_3(Struct_3(arg_0, false, -57442i, Struct_1(vec4<bool>(false, global3.x, global0.a, true), 39501u), vec3<u32>(arg_0, 31927u, global4[_wgslsmith_index_u32(40513u, 19u)])), ~vec4<u32>(global4[_wgslsmith_index_u32(4169u, 19u)], 95089u, 4294967295u, global4[_wgslsmith_index_u32(arg_0, 19u)])), 1i)), Struct_1(!vec4<bool>(true, any(vec4<bool>(global3.x, false, true, global3.x)), true, all(vec2<bool>(global3.x, global0.a))), arg_0), _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], arg_0, arg_0), vec3<u32>(0u, 4294967295u, 80391u)), firstTrailingBit(arg_0) & global4[_wgslsmith_index_u32(~arg_0, 19u)], _wgslsmith_add_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58381u, arg_0, 99414u, arg_0), vec4<u32>(global4[_wgslsmith_index_u32(1u, 19u)], 10069u, 4294967295u, 91558u)), 19u)], 15967u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(select(vec3<u32>(1u, global4[_wgslsmith_index_u32(4294967295u, 19u)], arg_0), vec3<u32>(arg_0, 0u, 1u), vec3<bool>(false, true, global3.x))), ~select(vec3<u32>(1u, arg_0, 1u), vec3<u32>(0u, arg_0, 9418u), vec3<bool>(false, global3.x, false)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2080f * -136f)), _wgslsmith_f_op_f32(f32(-1f) * -1601f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(f32(-1f) * -443f))), var_0.e, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(346f, _wgslsmith_f_op_f32(f32(-1f) * -1368f))))), firstTrailingBit(~15132u));
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, -629f, 763f, 369f))) * vec4<f32>(180f, -1092f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_1.c.x, -1000f, 824f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(273f * 1000f), _wgslsmith_div_f32(1865f, var_2.x), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(floor(var_2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 990f)) + vec4<f32>(1527f, -1546f, var_2.x, 769f))));
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -14364i) | vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_0.c, u_input.a)), reverseBits(var_0.c), -1i, u_input.a) | firstTrailingBit(countOneBits(vec4<i32>(13817i, var_0.c, -2147483647i, 0i))), vec4<i32>(_wgslsmith_add_i32(58528i, 4830i), ~(-6244i), 6432i, -1i));
    return 9097i;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1593f - -295f)));
    let var_2 = func_2(_wgslsmith_sub_u32(arg_0 | arg_0, arg_0));
    global1 = array<vec2<bool>, 19>();
    var var_3 = any(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(64036u, 19u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global4[_wgslsmith_index_u32(19979u, 19u)]) >> (vec4<u32>(arg_0, global4[_wgslsmith_index_u32(arg_0, 19u)], 8982u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]) % vec4<u32>(32u)), vec4<u32>(arg_0, 0u, 4294967295u, arg_0) << (vec4<u32>(arg_0, 1u, global4[_wgslsmith_index_u32(14915u, 19u)], 29671u) % vec4<u32>(32u))) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, global4[_wgslsmith_index_u32(35299u, 19u)], arg_0), vec4<u32>(0u, 1u, 1u, 0u)) << (arg_0 % 32u))), 19u)], 19u)]);
    return var_2 ^ -u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(true, false, func_1(0u) != _wgslsmith_add_i32(0i, 17834i), global0.a && true), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30291u, 19u)], 19u)], 19u)], 19u)]), 0u ^ global4[_wgslsmith_index_u32(~6582u, 19u)]), (select(vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(59111u, 19u)], 19u)], 19u)]), vec2<u32>(global4[_wgslsmith_index_u32(45517u, 19u)], 78884u), false) & vec2<u32>(25481u, 4294967295u)) ^ (vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32074u, 19u)], 19u)], 19u)], 19u)]) >> (reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(86347u, 19u)], 0u)) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1592f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2477f))))), -732f));
}

