struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4213i;

var<private> global1: Struct_4 = Struct_4(94376u, Struct_2(vec3<f32>(207f, -470f, 1384f), 11397i, -1381f));

var<private> global2: array<Struct_5, 14>;

var<private> global3: array<Struct_1, 24>;

var<private> global4: array<u32, 20> = array<u32, 20>(26526u, 4294967295u, 7035u, 0u, 1u, 4294967295u, 9867u, 82211u, 22206u, 14528u, 34688u, 0u, 2003u, 4294967295u, 1u, 16505u, 40939u, 0u, 0u, 83568u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = 53393u;
    var var_1 = global3[_wgslsmith_index_u32(var_0, 24u)];
    global1 = Struct_4((~(~26032u) << (abs(var_0) % 32u)) << (~u_input.a % 32u), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, _wgslsmith_f_op_f32(ceil(global1.b.c)), global1.b.c)), 22945i, _wgslsmith_div_f32(-757f, global1.b.a.x)));
    global3 = array<Struct_1, 24>();
    let var_2 = _wgslsmith_sub_vec4_u32(~var_1.b, abs(var_1.b) >> (~(~(var_1.b >> (var_1.b % vec4<u32>(32u)))) % vec4<u32>(32u)));
    return abs(vec2<i32>(-global1.b.b, 10464i) ^ ~(-vec2<i32>(u_input.b, 1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    var var_0 = select(vec2<bool>(true, true), !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(false, true, true))), !all(vec3<bool>(true, true, false))), vec2<bool>(any(vec2<bool>(true, false)), !(_wgslsmith_f_op_f32(-global1.b.c) > _wgslsmith_f_op_f32(-250f + -559f))));
    let var_1 = u_input.a;
    global1 = Struct_4(_wgslsmith_sub_u32(arg_1.a, ~13904u), global1.b);
    var_0 = !vec2<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_0.x, false)), select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)))), all(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, true, false, var_0.x), !var_0.x)));
    let var_2 = u_input.a;
    return 41577u;
}

fn func_2() -> vec2<u32> {
    let var_0 = -((_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.b), u_input.b) >> (_wgslsmith_div_u32(global4[_wgslsmith_index_u32(max(87951u, global4[_wgslsmith_index_u32(1u, 20u)]), 20u)], max(15143u, 4294967295u)) % 32u)) >> (17538u % 32u));
    let var_1 = global1.b;
    return vec2<u32>(~(_wgslsmith_mod_u32(global1.a, 0u) ^ global4[_wgslsmith_index_u32(u_input.a, 20u)]), func_4(select(func_3(), ~min(vec2<i32>(-50003i, var_0), vec2<i32>(2147483647i, 1i)), firstTrailingBit(52180u) <= ~1u), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(u_input.a & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.a, 20u)], 20u)]), global1.a >> (_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(0u, 20u)], 9817u) % 32u)), 24u)], reverseBits((vec4<u32>(1u, 38226u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16485u, 20u)], 20u)], 0u) | vec4<u32>(u_input.a, u_input.a, 74189u, 0u)) ^ vec4<u32>(u_input.a, 67630u, 4294967295u, global1.a))));
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> vec2<bool> {
    global3 = array<Struct_1, 24>();
    let var_0 = 0u;
    var var_1 = ~(~(~func_2()));
    global3 = array<Struct_1, 24>();
    global3 = array<Struct_1, 24>();
    return !select(vec2<bool>(arg_1.b.b.c >= _wgslsmith_f_op_f32(max(-224f, 349f)), true), select(!vec2<bool>(false, arg_0), vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, false)), all(vec2<bool>(false, true))), vec2<bool>(false, all(vec3<bool>(arg_0, false, false)))), vec2<bool>(arg_0, select(!arg_0, !arg_0, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1751f) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.a.x))), global2[_wgslsmith_index_u32(~global1.a, 14u)]), select(vec2<bool>(all(vec3<bool>(false, false, true)) || select(true, false, true), all(vec4<bool>(false, false, false, false))), !vec2<bool>(true, global1.b.b > 2147483647i), vec2<bool>(true, true)), true);
    let var_1 = select(true, false, var_0.x);
    let var_2 = vec3<bool>(global1.b.c == global1.b.a.x, false, global1.a >= 0u);
    let var_3 = Struct_4(86544u, Struct_2(global1.b.a, (u_input.b & u_input.b) << (abs(global1.a) % 32u), global1.b.a.x));
    let var_4 = _wgslsmith_add_vec4_i32(-vec4<i32>(var_3.b.b, 0i, var_3.b.b, 1i ^ u_input.b), _wgslsmith_div_vec4_i32(-(vec4<i32>(-2147483647i, u_input.b, global1.b.b, 0i) | vec4<i32>(var_3.b.b, var_3.b.b, var_3.b.b, u_input.b)), vec4<i32>(~global1.b.b, _wgslsmith_div_i32(2147483647i, -1i), reverseBits(0i), -7962i << (0u % 32u)))) | _wgslsmith_mult_vec4_i32(vec4<i32>(max(_wgslsmith_div_i32(global1.b.b, global1.b.b), u_input.b << (var_3.a % 32u)), firstLeadingBit(1i), -10835i, u_input.b), vec4<i32>(~(-1i), _wgslsmith_mult_i32(~7579i, u_input.b >> (47406u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 22942i), vec2<i32>(u_input.b, 2147483647i)), vec2<i32>(u_input.b, global1.b.b)), 2147483647i));
    global4 = array<u32, 20>();
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -1169f, 522f, var_3.b.c))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.b.c))), global1.b.c, -272f, _wgslsmith_f_op_f32(124f + 1753f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(-(~_wgslsmith_mod_vec4_i32(var_4, vec4<i32>(var_3.b.b, var_4.x, -2147483647i, 106642i)))));
}

