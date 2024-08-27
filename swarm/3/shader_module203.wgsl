struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = arg_1;
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f));
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    global0 = u_input.c.zz;
    return ~(~(~4294967295u));
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(vec2<f32>(-512f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(select(-834f, -1929f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-305f, -772f, true))))), 47341u > ~abs(_wgslsmith_sub_u32(13561u, u_input.a))), 32u)];
    global0 = abs(-max(u_input.b, u_input.b));
    global0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.c.x) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(~vec2<i32>(global0.x, u_input.c.x), vec2<i32>(u_input.b.x, global0.x))), 2147483647i);
    let var_1 = select(!vec3<bool>(var_0.a.a, var_0.a.c.x, any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.a, var_0.a.c.x, true), var_0.a.c.x))), select(!vec3<bool>(var_0.a.c.x, true, select(var_0.a.a, true, true)), select(vec3<bool>(!var_0.a.a, !var_0.a.c.x, false), !(!vec3<bool>(true, true, var_0.a.c.x)), false), !vec3<bool>(select(false, var_0.a.c.x, true), all(vec3<bool>(false, var_0.a.c.x, var_0.a.a)), var_0.a.a)), !((min(0u, u_input.a) < 44111u) & false));
    global1 = array<Struct_2, 32>();
    return Struct_1(!(-2147483647i <= u_input.c.x), var_0.c.x, var_1.zy, vec3<f32>(-452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.e, -836f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1183f, var_0.a.e.x, var_0.b.x)) + var_0.b.xwy))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_2, 32>();
    global0 = u_input.c.zx & ~vec2<i32>(2147483647i, 24198i);
    var var_0 = reverseBits(_wgslsmith_div_i32(u_input.b.x, global0.x));
    global0 = vec2<i32>(23012i, -2147483647i);
    global1 = array<Struct_2, 32>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = true;
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(step(-499f, 725f)), arg_0.c, vec3<f32>(arg_0.e.x, 1852f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -401f))), _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(88535u, arg_1.x >> (0u % 32u))).d * vec3<f32>(arg_0.e.x, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * -545f) + _wgslsmith_f_op_f32(arg_0.b * arg_0.b)))));
    let var_2 = vec4<bool>(var_1.a, (i32(-1i) * -u_input.c.x) < firstLeadingBit(52020i), any(!(!select(vec4<bool>(var_0, arg_0.a, var_0, var_1.a), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), vec4<bool>(true, true, false, var_0)))), true);
    return Struct_1(var_0, _wgslsmith_f_op_f32(-arg_0.b), !var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d - _wgslsmith_f_op_vec3_f32(-arg_0.e))), vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) + _wgslsmith_f_op_f32(-arg_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)))), ~vec3<u32>(~u_input.a, u_input.a, ~select(u_input.a, 27169u, false)), u_input.c.wz);
    global1 = array<Struct_2, 32>();
    let var_1 = var_0.e.x;
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x)))))), select(vec2<bool>(var_0.c.x, true), !select(!var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_0.c.x, false)), false), _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(u_input.a, 4294967295u)).e - vec3<f32>(-691f, var_0.e.x, func_1(~vec2<u32>(4294967295u, 1u)).e.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-392f + 1180f), _wgslsmith_f_op_f32(ceil(-1186f)), var_0.d.x))))));
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    var_0 = var_2;
    global0 = -vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.c.yyz, u_input.c.wxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, 548f, var_0.d.x, 237f), vec4<f32>(-1000f, var_2.b, var_0.b, var_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1063f, var_0.e.x, var_0.e.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-616f, var_2.b, -414f, -1316f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_0.b, var_0.b, var_0.b) * vec4<f32>(-1933f, 650f, var_0.e.x, 486f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.e.x) - _wgslsmith_f_op_f32(648f - 1212f)), 582f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.e.x)) + _wgslsmith_f_op_f32(var_0.d.x - 352f)))), vec3<f32>(-496f, -1000f, var_2.e.x), _wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(~global0.x, max(global0.x, -1i)) | u_input.b));
}

