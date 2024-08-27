struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(30252u, 0u, 37408u);

var<private> global1: vec2<bool>;

var<private> global2: i32 = 8527i;

var<private> global3: array<f32, 23> = array<f32, 23>(-1000f, 686f, 706f, 921f, -635f, -1000f, 107f, 1300f, 386f, 778f, -1000f, 217f, -556f, 1158f, -1929f, 984f, -1731f, -1765f, 214f, -1054f, -321f, -1310f, -764f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> bool {
    global3 = array<f32, 23>();
    var var_0 = vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -(~u_input.a.x), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 16245i | u_input.a.x), select(u_input.a.x >> (0u % 32u), u_input.a.x, true))), 2147483647i, max(-1i, u_input.a.x) & ~_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_1 = !global1.x;
    global0 = vec3<u32>(~0u >> (_wgslsmith_mult_u32(1u, global0.x) % 32u), firstTrailingBit(21506u), global0.x);
    var var_2 = abs(~global0.x);
    return true;
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_mult_i32(~u_input.a.x, ~1i) & (_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) & -10722i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, global3[_wgslsmith_index_u32(global0.x, 23u)])))))), vec4<bool>(global1.x, true, any(vec2<bool>(func_3(1546f, vec3<f32>(global3[_wgslsmith_index_u32(16931u, 23u)], 552f, global3[_wgslsmith_index_u32(global0.x, 23u)])), false)), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(2858f, -1786f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(-316f, -1713f)))), !select(vec4<bool>(global1.x, global1.x, var_0.b.x, global1.x), vec4<bool>(global1.x, global1.x, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, global1.x, true))));
    global1 = func_2().b.xy;
    var var_2 = abs(select(global0.x, 0u, var_0.b.x));
    var var_3 = Struct_2(var_1.a);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 23>();
    global3 = array<f32, 23>();
    global2 = u_input.a.x;
    let var_0 = ~vec3<i32>(-(u_input.a.x & _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), countOneBits(34793i), _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(u_input.a, 0u, u_input.a.x), -42032i), countOneBits(~u_input.a.zy)));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(abs(11068i)), -var_0.x), max(u_input.a.xw, ~(~u_input.a.ww))) & vec2<i32>(countOneBits(50881i), var_0.x);
    global3 = array<f32, 23>();
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_add_u32(global0.x, _wgslsmith_sub_u32(0u, 0u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(9880u, global0.x, ~global0.x), global0.x, ~global0.x)));
}

