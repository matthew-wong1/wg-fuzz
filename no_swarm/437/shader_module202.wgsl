struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(-1441f, false), Struct_4(1070f, false), Struct_4(-1000f, false), Struct_4(744f, true), Struct_4(1051f, true), Struct_4(-330f, false), Struct_4(1599f, true), Struct_4(-1797f, false), Struct_4(-579f, false), Struct_4(784f, false), Struct_4(-415f, true));

var<private> global1: i32 = -1744i;

var<private> global2: Struct_1 = Struct_1(-1210f, 2147483647i);

var<private> global3: Struct_4 = Struct_4(-823f, true);

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    var var_0 = global4[_wgslsmith_index_u32(~17422u, 23u)];
    return _wgslsmith_mod_i32(-(~(~global2.b)), global2.b >> (max(14167u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(9918u, 64097u), vec2<u32>(82265u, 0u))) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = vec4<i32>(countOneBits(global2.b), _wgslsmith_clamp_i32(4174i, 1i ^ u_input.b.x, firstTrailingBit(-_wgslsmith_mult_i32(-9972i, u_input.a))), i32(-1i) * -func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 1440f))), -_wgslsmith_add_i32(arg_0.b, arg_0.b));
    let var_1 = ~abs(-2147483647i);
    global0 = array<Struct_4, 11>();
    global3 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1312f, _wgslsmith_f_op_f32(-global3.a))) + _wgslsmith_f_op_f32(floor(-258f))))), global3.b);
    global0 = array<Struct_4, 11>();
    return !(!(!(!select(vec3<bool>(global3.b, global3.b, arg_1.b), vec3<bool>(global3.b, arg_1.b, true), vec3<bool>(false, arg_1.b, arg_1.b)))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = u_input.b.x <= global2.b;
    global4 = array<Struct_2, 23>();
    var var_1 = global4[_wgslsmith_index_u32(arg_0.x, 23u)];
    var var_2 = min(~u_input.b.yx, u_input.b.wz);
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2060f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-266f)), _wgslsmith_f_op_f32(select(990f, global3.a, var_1.a.x)))))), -25415i);
    return !vec4<bool>(var_0, select(all(func_2(Struct_1(global3.a, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 11u)])), true, var_0), true, var_1.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mod_u32(1u, abs(~0u));
    let var_2 = _wgslsmith_add_u32(~32062u, 1832u);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1223f * global2.a), _wgslsmith_f_op_f32(trunc(1278f)), true))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2013f, _wgslsmith_div_f32(global3.a, 2118f))))));
    var var_4 = select(!(2147483647i == u_input.a), true, true) | global3.b;
    return vec3<u32>(_wgslsmith_mod_u32(38033u, var_2), 40604u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.b, true, global3.b, false), false), func_1(vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<bool>(1741f != global3.a, any(vec4<bool>(false, false, true, global3.b)), !global3.b, true), vec4<bool>(!global3.b, global3.b, global3.b & true, true), select(!vec4<bool>(global3.b, false, false, true), select(vec4<bool>(false, global3.b, true, true), vec4<bool>(false, true, global3.b, global3.b), true), !vec4<bool>(global3.b, global3.b, false, global3.b)))), !any(select(vec3<bool>(true, true, true), vec3<bool>(global3.b, true, true), all(vec2<bool>(false, global3.b)))));
    let var_1 = var_0.xx;
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_0.x, 1u, var_0.x), vec4<u32>(29187u, 4294967295u, var_1.x, 66655u)) | vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(_wgslsmith_mult_u32(0u, var_1.x), abs(0u), _wgslsmith_add_u32(54454u, var_1.x), var_1.x)), ~(select(vec4<u32>(72161u, var_0.x, 25808u, 3232u), vec4<u32>(0u, var_1.x, 1u, var_0.x), false) & select(vec4<u32>(20612u, 1u, var_1.x, 59585u), vec4<u32>(4560u, var_0.x, 1u, var_0.x), vec4<bool>(false, true, true, true)))), 11u)];
    var var_2 = Struct_4(global2.a, !(_wgslsmith_sub_i32(global2.b, ~(-1i)) > ~_wgslsmith_add_i32(-20791i, 2147483647i)));
    var var_3 = Struct_1(1215f, -2147483647i);
    let var_4 = Struct_4(var_2.a, -33552i == _wgslsmith_div_i32(u_input.a, ~(~(-22151i))));
    var var_5 = vec2<u32>(var_1.x << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, reverseBits(4294967295u), 1u), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, var_0.x, 69954u)) >> (13477u % 32u), 1u) % 32u), countOneBits(abs(59172u) >> (select(~24745u, var_0.x >> (4294967295u % 32u), global3.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-410f, global2.a, var_3.a, global2.a))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a, 699f, var_3.a, 229f)))) * vec4<f32>(var_2.a, 495f, global3.a, _wgslsmith_f_op_f32(-var_2.a)))));
}

