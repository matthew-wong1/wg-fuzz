struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: array<bool, 11> = array<bool, 11>(false, true, false, true, true, true, true, true, true, true, true);

var<private> global2: Struct_2 = Struct_2(Struct_1(283f, 1i, 7376i, -1i, vec2<i32>(-8510i, 1i)));

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    global1 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(263f, global2.a.a), vec2<f32>(global2.a.a, 1079f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.a.a, global2.a.a)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.a, global2.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, global2.a.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-895f, -681f), vec2<f32>(global2.a.a, global2.a.a)), vec2<f32>(global2.a.a, 216f), vec2<bool>(global1[_wgslsmith_index_u32(12399u, 11u)], global1[_wgslsmith_index_u32(56513u, 11u)])))))));
    let var_1 = global2.a;
    global0 = array<vec3<bool>, 4>();
    return _wgslsmith_clamp_u32(reverseBits(arg_2), arg_1.x, ~u_input.a) & arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_1 = ~vec4<u32>(~4294967295u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 39511u), firstLeadingBit(~vec3<u32>(u_input.a, 51256u, 1u))), 58645u);
    global2 = Struct_2(Struct_1(1106f, ~global2.a.b | ~global2.a.e.x, global2.a.c, -5838i, _wgslsmith_add_vec2_i32(-(~vec2<i32>(-5355i, arg_0.d)), firstLeadingBit(vec2<i32>(arg_0.c, arg_0.c)))));
    var var_2 = var_1;
    global3 = func_3(Struct_3(vec2<u32>(_wgslsmith_div_u32(var_2.x, ~1u), 60470u)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_2.x, 0u, var_2.x), var_1), vec4<u32>(38590u, var_1.x, var_1.x, 35368u)) << (vec4<u32>(_wgslsmith_mult_u32(~u_input.a, 0u), ~_wgslsmith_mult_u32(var_2.x, var_2.x), var_2.x ^ 0u, 0u) % vec4<u32>(32u)), var_1.x);
    return _wgslsmith_div_i32(reverseBits(global2.a.b), _wgslsmith_add_i32(-64557i, global2.a.e.x)) & -_wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), global2.a.e), vec2<i32>(firstTrailingBit(global2.a.d), arg_0.e.x));
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 11>();
    let var_0 = ~func_2(Struct_1(_wgslsmith_f_op_f32(sign(-765f)), _wgslsmith_clamp_i32(21579i, global2.a.d, global2.a.c), ~2147483647i, -50872i, global2.a.e), vec4<f32>(global2.a.a, global2.a.a, global2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -924f))) << (u_input.a % 32u);
    global1 = array<bool, 11>();
    global0 = array<vec3<bool>, 4>();
    let var_1 = global2.a.e;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 448f;
    var var_1 = func_1();
    let var_2 = func_1();
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 11u)];
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i << (u_input.a % 32u), global2.a.c, var_2.d, -1i) | -vec4<i32>(-73856i, _wgslsmith_mod_i32(var_2.b, -2147483647i), _wgslsmith_div_i32(1063i, var_1.c), -24786i), _wgslsmith_mult_vec4_i32(~countOneBits(reverseBits(vec4<i32>(var_1.d, 34478i, global2.a.e.x, global2.a.c))), ~(~(~vec4<i32>(-78962i, var_1.c, var_1.e.x, 40276i)))));
    global1 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(494f, max(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 0u)), firstTrailingBit(vec3<u32>(u_input.a, 88429u, 16318u)) & vec3<u32>(u_input.a, 4294967295u, 46872u), ~vec3<u32>(1u, 1u, u_input.a)), _wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(u_input.a, 0u, u_input.a)), countOneBits(~vec3<u32>(1u, 53661u, u_input.a)))));
}

