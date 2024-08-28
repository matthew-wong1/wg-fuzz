struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mult_i32(2147483647i, u_input.c.x)), _wgslsmith_mod_i32(0i, max(41351i, arg_1.x)))), ~global2.b);
    let var_1 = any(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false)));
    return Struct_2(global2.a, ~u_input.a.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_2 {
    global2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, 342f) * vec3<f32>(-1806f, -1000f, -591f)), vec3<f32>(arg_3, arg_3, arg_3))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-801f, arg_3, arg_3))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, 330f), vec3<f32>(-1000f, 531f, 188f))))), _wgslsmith_div_vec4_i32(max(vec4<i32>(arg_2, -1i, u_input.d, arg_1), u_input.c) & ~vec4<i32>(arg_2, -1i, 11048i, 1i), select(u_input.c, -(u_input.c | u_input.c), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), any(vec2<bool>(true, true))))));
    let var_0 = Struct_3(!(!(!all(vec4<bool>(false, false, false, false)))), global2.a, 0i, _wgslsmith_dot_vec2_i32(~global2.a.a, ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(global2.a.a, u_input.c.wy), vec2<i32>(-2147483647i, arg_1), min(global2.a.a, u_input.c.zw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(-353f, 1060f, -1223f), vec3<bool>(true, true, false))))));
    var var_1 = false;
    let var_2 = !var_0.a;
    let var_3 = !var_2;
    return func_2(_wgslsmith_f_op_vec3_f32(step(var_0.e, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3)))))), min(u_input.c, abs(u_input.c)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_3 {
    return Struct_3(-arg_1 > 2147483647i, func_1(firstTrailingBit(_wgslsmith_mult_u32(0u, firstLeadingBit(arg_0.b))), ~(~countOneBits(arg_3.x)), 1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f - -676f))))).a, -47066i, abs(-global2.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(948f + -1580f), -298f, _wgslsmith_f_op_f32(372f - -566f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 385f, 1225f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(172f, 385f, -889f), vec3<f32>(1480f, -1913f, 2388f), vec3<bool>(true, true, true)))), vec3<bool>(true, 1355u < u_input.b.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(func_1(u_input.a.x, 1i, min(countOneBits(global2.a.a.x) ^ select(0i, u_input.c.x, false), firstTrailingBit(18466i)), 1135f), -(~(-2147483647i & -u_input.d)), u_input.c.ww, ~u_input.c.wyw);
    let var_1 = -(var_0.b.a << (u_input.a % vec2<u32>(32u)));
    var var_2 = var_0.b;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 43488u), 21u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(620f, 547f)), _wgslsmith_f_op_f32(max(var_0.e.x, 783f)))))), var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1379f)), -1015f))), -846f);
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.e.zy), var_4.x, _wgslsmith_mod_i32(global2.a.a.x, var_2.a.x));
}

