struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: i32;

var<private> global1: array<u32, 27>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    global0 = -u_input.a.x;
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    let var_0 = 690f;
    global0 = _wgslsmith_dot_vec3_i32(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(23507i, -1i, 63988i), vec3<i32>(u_input.a.x, -27547i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, abs(u_input.a.x), -2147483647i | u_input.a.x), min(firstLeadingBit(vec3<i32>(u_input.a.x, 0i, -13350i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -423i), vec3<i32>(0i, u_input.a.x, 14625i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 5102i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 2147483647i))), !(true && arg_0.x) | false), -select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 37346i), vec2<i32>(-1095i, 0i)), 1i, -1i), vec3<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-29094i, 0i, u_input.a.x), vec3<i32>(-11591i, u_input.a.x, -9135i))), vec3<bool>(false, false, true)));
    return var_0;
}

fn func_2() -> bool {
    global1 = array<u32, 27>();
    var var_0 = vec3<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x);
    var_0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-29680i, _wgslsmith_mod_i32(u_input.a.x, 5211i), u_input.a.x), vec3<i32>(i32(-1i) * -(~(-14070i)), -4629i, abs(24212i)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1413f, -751f, 1616f)) * vec3<f32>(645f, 1269f, -584f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, -818f, 395f))))), Struct_2(Struct_1(_wgslsmith_div_f32(763f, -448f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false), Struct_1(-1502f))) - _wgslsmith_div_f32(185f, -1374f))), (1u & global1[_wgslsmith_index_u32(14325u, 27u)]) == (u_input.c.x >> (~33944u % 32u))));
    global1 = array<u32, 27>();
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = select(true && (true && select(any(vec2<bool>(false, false)), true, true)), all(!vec2<bool>(true, any(vec4<bool>(false, true, false, true)))), true);
    global0 = -(~u_input.a.x << (_wgslsmith_dot_vec4_u32(u_input.c, firstLeadingBit(u_input.c) | u_input.c) % 32u));
    let var_1 = select(!(!select(!vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, false, false, var_0))), vec4<bool>(u_input.a.x <= -abs(0i), var_0, true && select(true, true, true), 1i != countOneBits(_wgslsmith_div_i32(u_input.a.x, 0i))), func_2());
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(612f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1839f)), 236f, all(var_1.xy))), !var_1.x | !var_1.x))), Struct_1(-705f), true);
    var_2 = Struct_2(Struct_1(989f), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1119f - 1801f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1574f)) - -1063f));
    return Struct_3(vec3<f32>(-137f, 1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a))), var_2.b, true));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global1 = array<u32, 27>();
    var var_0 = 2147483647i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.a)) - -168f)), -581f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -157f);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), func_1().b);
    return func_1().b.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = arg_1.b;
    var var_1 = ~u_input.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1005f, 584f)))) + 370f);
    var_1 = vec4<u32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)] | var_1.x, 27u)])), 27u)], var_1.x);
    var var_3 = var_1.x;
    return StorageBuffer(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(true, func_1(), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), any(vec2<bool>(false, true)))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1761f, -1000f, 1391f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, 820f, -692f))), Struct_2(Struct_1(1120f), func_1().b.a, true))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1518f - -1000f) * -721f), func_1().a.x, -266f), func_1().b), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, -739f, 611f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1757f, 597f, -1211f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-473f, 2887f, -1124f), vec3<f32>(1000f, -1518f, 901f), vec3<bool>(true, true, true))))), Struct_2(func_4(false, Struct_3(vec3<f32>(-611f, -1255f, -901f), Struct_2(Struct_1(-2348f), Struct_1(-1754f), true)), true, Struct_3(vec3<f32>(-490f, 1474f, -1549f), Struct_2(Struct_1(610f), Struct_1(-1056f), true))), Struct_1(_wgslsmith_f_op_f32(trunc(-1000f))), true)));
}

