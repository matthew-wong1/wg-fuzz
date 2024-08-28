struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.b;
    var var_1 = var_0.d.xz;
    var var_2 = vec2<f32>(arg_2, 1072f);
    global0 = array<Struct_4, 18>();
    var var_3 = var_0.a.yxz;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(var_0.e, arg_3.a.e) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-19289i, -3492i), vec2<i32>(arg_3.b.e, 0i))) | (vec2<i32>(-1i) * -vec2<i32>(var_0.e, -1i)), vec2<i32>(var_0.e, ~(~31256i))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~select(vec2<i32>(32314i, var_0.e), vec2<i32>(arg_3.b.e, var_0.e), arg_3.b.a.zx), vec2<i32>(-var_0.e, var_0.e ^ var_0.e)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.e, 0i), -vec2<i32>(arg_3.b.e, -2147483647i))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    global0 = array<Struct_4, 18>();
    let var_0 = arg_3;
    let var_1 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.wz), ~_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(4294967295u, arg_0, u_input.a.x, u_input.a.x)));
    let var_2 = Struct_4(~(~0i), ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_1, u_input.a.x) & vec2<u32>(21739u, 0u), select(u_input.a.yw, u_input.a.zx, vec2<bool>(true, true)))), arg_2);
    global0 = array<Struct_4, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-arg_3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2183f * 867f)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(u_input.a.x, func_3(vec3<bool>(true, !arg_0, true), select(!vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, true, arg_0, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1794f, 1110f) - _wgslsmith_f_op_f32(trunc(2800f))), Struct_2(Struct_1(vec4<bool>(arg_0, true, arg_0, true), 0u, u_input.a.x, u_input.a.wxz, 0i), Struct_1(vec4<bool>(arg_0, false, arg_0, true), u_input.a.x, u_input.a.x, vec3<u32>(28182u, u_input.a.x, 0u), 0i), u_input.a.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-60117i, 29182i, 2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-954f, 1282f), _wgslsmith_f_op_f32(-1302f * -415f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f))))));
    global0 = array<Struct_4, 18>();
    let var_1 = global0[_wgslsmith_index_u32(45739u, 18u)];
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, var_0, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~var_1.b.x, _wgslsmith_clamp_i32(20544i, var_1.a, 19561i), var_1.c, _wgslsmith_div_vec2_f32(vec2<f32>(-102f, -1541f), vec2<f32>(var_0, 817f))))), var_0));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_2.x, -849f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 717f, 1336f), vec3<f32>(var_0, var_2.x, 1249f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, -2058f) + vec3<f32>(-630f, var_2.x, var_2.x)))) * vec3<f32>(1f, _wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), 1425f))) + vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(step(-398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -956f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(795f)))));
    return abs(34556u);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = u_input.a.wzw;
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    var var_1 = ~firstTrailingBit(-vec3<i32>(1i, 1i, 1i));
    return any(vec3<bool>(4294967295u < func_2(true), -1546f <= arg_0, true)) | (all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))) && true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(false, !func_1(503f)), vec2<bool>(true, true), all(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true, func_1(_wgslsmith_f_op_f32(trunc(-1004f))))));
    let var_1 = 38485u;
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1838f, 2310f)), vec4<u32>(u_input.a.x, 87597u, u_input.a.x, countOneBits(1u)), ~_wgslsmith_dot_vec3_u32(u_input.a.zzw, min(_wgslsmith_add_vec3_u32(u_input.a.xyy, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), u_input.a.zzy)));
}

