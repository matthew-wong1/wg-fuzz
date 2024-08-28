struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(48277i, 0i, 16050i, i32(-2147483648)), -1i, true, vec2<bool>(false, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec2<f32> {
    let var_0 = ~global1.a.a;
    global1 = Struct_2(global1.a);
    return _wgslsmith_f_op_vec2_f32(-arg_0.a);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> bool {
    let var_0 = min(4294967295u, firstTrailingBit(countOneBits(4294967295u)) >> (u_input.a % 32u));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(81491i, max(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.a.b, global1.a.a.x), 0i), arg_0.x), 13798i), max(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, global1.a.b), ~(-9943i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -1i), arg_1.b.a.zy), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, 2147483647i))), reverseBits(vec3<i32>(arg_1.d.c, arg_0.x, min(-32163i, -56699i)))));
    let var_1 = arg_1.e;
    global0 = _wgslsmith_clamp_i32(44058i, arg_1.b.a.x, 17229i) | 22888i;
    let var_2 = var_1.a.a.x << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(~firstLeadingBit(var_0), countOneBits(1u) ^ select(44294u, 4294967295u, true)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_1.a.yyz, arg_1.a.zww), _wgslsmith_div_u32(arg_1.a.x, _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(arg_1.a.x, u_input.a, 26638u, u_input.a))))) % 32u);
    return !all(!select(vec2<bool>(global1.a.c, true), select(arg_1.d.b.zz, global1.a.d, true), var_2 <= var_1.a.b));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-645f, -953f), vec2<f32>(-256f, 550f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(962f, 151f))) * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<f32>(-232f, 732f), vec3<bool>(true, true, global1.a.c), global1.a.b), false)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(340f, 451f), _wgslsmith_f_op_f32(f32(-1f) * -811f)))), func_3(firstTrailingBit(reverseBits(vec3<i32>(2147483647i, -23279i, global1.a.a.x))), Struct_4(~vec4<u32>(35749u, 16870u, 1u, 59743u), Struct_1(vec4<i32>(global1.a.a.x, 1i, 0i, -1i), 12255i, global1.a.d.x, global1.a.d), !global1.a.d.x, Struct_3(vec2<f32>(1112f, 844f), vec3<bool>(global1.a.d.x, true, true), global1.a.a.x), Struct_2(global1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1185f)) - vec2<f32>(2606f, 201f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1050f, 564f)) * vec2<f32>(1015f, -2126f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1294f + 1070f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1096f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(u_input.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1301f, 1250f)))));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.x));
    var var_2 = all(global1.a.d);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) > _wgslsmith_div_f32(var_0.x, var_0.x);
    var_3 = all(vec2<bool>(global1.a.c | !func_3(vec3<i32>(global1.a.a.x, global1.a.b, global1.a.b), Struct_4(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), global1.a, false, Struct_3(vec2<f32>(1061f, 356f), vec3<bool>(true, global1.a.d.x, global1.a.c), -2147483647i), Struct_2(global1.a))), true));
    var_3 = true;
    var var_4 = Struct_2(Struct_1(-global1.a.a, global1.a.b, global1.a.c, !(!vec2<bool>(global1.a.d.x, global1.a.c))));
    var_1 = var_0.x;
    let var_5 = vec2<bool>(!any(vec2<bool>(true, all(vec4<bool>(var_4.a.d.x, true, true, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 293f, 1873f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(-1241f, 1011f)), _wgslsmith_f_op_f32(abs(-382f))), !vec3<bool>(global1.a.d.x, global1.a.c, var_5.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -642f)))), var_4.a.d.x)));
}

