struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(774f, 1288f, -299f);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<u32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(0u, 24u)];
    return 29988u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = !arg_1.c;
    global2 = array<Struct_1, 27>();
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, -1152f, -1782f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1000f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1499f), global0.x, -1414f))));
    global1 = vec3<i32>(-(-1i & _wgslsmith_mod_i32(-1i, global1.x)) >> ((func_3(vec2<u32>(arg_0.a.x, var_1.a.x), countOneBits(u_input.a.yy), any(vec2<bool>(true, arg_1.c)), true | var_0) | u_input.c) % 32u), ~arg_0.b.x, -40712i);
    return -(-11027i | u_input.b);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: f32) -> Struct_1 {
    global1 = u_input.a.wxz;
    global1 = u_input.a.yxw;
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-20815i), func_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(32601u, 0u), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], 38062u), vec2<u32>(40939u, 0u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, u_input.b, 1i), vec3<i32>(global1.x, 0i, -27719i)), arg_1.x), Struct_1(vec2<u32>(0u, 19870u), u_input.a.yzy, true))), 34393i);
    var_0 = abs(-global1.x);
    let var_1 = Struct_1(abs(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(arg_0, 5027u)), ~reverseBits(vec2<u32>(52097u, 1u)), _wgslsmith_add_vec2_u32(max(vec2<u32>(0u, 3361u), vec2<u32>(u_input.c, 0u)), min(vec2<u32>(4294967295u, 30855u), vec2<u32>(arg_0, arg_0))))), _wgslsmith_mod_vec3_i32(max(u_input.a.yzy, _wgslsmith_mult_vec3_i32(u_input.a.yzz, vec3<i32>(global1.x, 19470i, -8569i)) | -u_input.a.wwy), ~_wgslsmith_sub_vec3_i32(u_input.a.wwy, vec3<i32>(global1.x, -2147483647i, u_input.a.x))), (((arg_1.x && true) != false) | !arg_1.x) && !arg_1.x);
    return Struct_1(var_1.a, vec3<i32>(34775i, var_1.b.x, _wgslsmith_clamp_i32(~u_input.b, -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.xz), 834i ^ global1.x)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(12209u, global3[_wgslsmith_index_u32(13925u, 24u)], 0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(56851u, 0u, 1u), ~vec3<u32>(72493u, 35588u, 48174u)), ~firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 24u)], 24u)]), global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(4294967295u, 24u)] ^ 61894u), 24u)])), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), true && (1u >= u_input.c)), _wgslsmith_f_op_f32(sign(global0.x)));
    let var_1 = var_0;
    let var_2 = global2[_wgslsmith_index_u32(1u, 27u)];
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(func_1(108044u, vec2<bool>(var_1.c, false), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).a.x, 1u, countOneBits(~0u)), var_2.a.x), -vec3<i32>(15691i, var_1.b.x, var_1.b.x << (var_0.a.x % 32u)), !all(select(vec4<bool>(var_2.c, false, var_1.c, var_1.c), !vec4<bool>(false, false, false, var_1.c), any(vec3<bool>(var_1.c, var_1.c, var_2.c)))));
    global1 = var_0.b;
    let var_4 = vec3<i32>(-2147483647i, global1.x, (~(i32(-1i) * -1i) << ((global3[_wgslsmith_index_u32(~0u, 24u)] ^ 0u) % 32u)) << (4294967295u % 32u));
    var var_5 = Struct_1(var_2.a, var_1.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.b.x, -8887i, abs(global1.x), u_input.a.x & -41123i) & (~(~u_input.a) | u_input.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.xz * global0.yz), global0.yy, var_3.c)), ~abs(_wgslsmith_clamp_vec2_u32(var_2.a, ~var_3.a, vec2<u32>(0u, 71725u) | var_3.a)), ~var_2.b.x);
}

