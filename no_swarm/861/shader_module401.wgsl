struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> u32 {
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-816f, arg_0.c)) + -1023f)) + 395f);
    var_0 = arg_0.c;
    global0 = array<Struct_4, 31>();
    return firstLeadingBit(~arg_0.b);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global0 = array<Struct_4, 31>();
    let var_0 = Struct_2(Struct_1(!all(vec2<bool>(false, true)) | true, func_3(Struct_1(any(vec3<bool>(false, true, true)), abs(13013u), -1023f, firstLeadingBit(u_input.b.x), vec3<bool>(true, true, true)), vec2<bool>(true, true), -u_input.b), _wgslsmith_f_op_f32(step(-1310f, -2838f)), 10123i, vec3<bool>(true, true, true)), Struct_1(!all(vec4<bool>(true, true, true, true)), ~min(1u, 25727u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(448f + -1673f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(872f, 882f) - 505f)), _wgslsmith_add_i32(arg_0.x, ~(u_input.b.x << (32881u % 32u))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), vec4<bool>(!(!select(false, true, false)), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), true), Struct_1(any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1689f, 1145f) + _wgslsmith_f_op_f32(ceil(-1169f))) + _wgslsmith_f_op_f32(ceil(1f))), arg_0.x & 7997i, vec3<bool>(true, 24869i >= (u_input.b.x | -11585i), !all(vec3<bool>(true, false, false)))));
    var var_1 = vec3<f32>(1f, -1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c)));
    var var_2 = min(arg_0.x, -7908i);
    let var_3 = arg_0.xwz;
    return 417f > var_1.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(43667u, ~23563u, ~abs(1u), firstTrailingBit(4294967295u)), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(14049u, 24685u, u_input.d.x, u_input.d.x), vec4<u32>(0u, 20780u, 63034u, u_input.c))));
    global0 = array<Struct_4, 31>();
    var var_1 = select(vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(true, func_2(u_input.b)), true), false);
    var var_2 = vec4<bool>(all(select(select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), !vec2<bool>(false, var_1.x)), !select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)), vec2<bool>(var_1.x, var_1.x != false))), !var_1.x, var_1.x, all(select(vec3<bool>(true != var_1.x, var_1.x, var_1.x), select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), select(false, var_1.x, true)), true)));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(5386u), 31u)];
    return Struct_1(!any(!select(var_3.a.c.zz, vec2<bool>(true, false), true)), var_3.b.a.b & 1u, _wgslsmith_f_op_f32(f32(-1f) * -202f), 14621i, var_2.wzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1666f, -102f))))), 246f);
    let var_1 = 0u >> (~(u_input.c ^ _wgslsmith_mod_u32(u_input.d.x, countOneBits(1u))) % 32u);
    var var_2 = Struct_2(func_1(), func_1(), vec3<bool>(true, true, true), !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), var_0.x >= _wgslsmith_f_op_f32(-var_0.x), any(vec2<bool>(false, false)), var_0.x == _wgslsmith_f_op_f32(648f + 1249f)), func_1());
    global0 = array<Struct_4, 31>();
    let var_3 = Struct_2(Struct_1(false, ~_wgslsmith_mult_u32(56927u, _wgslsmith_mod_u32(u_input.c, u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.c))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.a.c))))), var_2.b.d, select(var_2.d.yww, var_2.b.e, true)), func_1(), vec3<bool>(all(var_2.c.zx), false, true), vec4<bool>(any(func_1().e.yy), !(!func_2(vec4<i32>(u_input.b.x, -2147483647i, var_2.a.d, var_2.a.d))), true & var_2.d.x, var_2.d.x), Struct_1(true, _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_clamp_vec3_u32(u_input.d, ~vec3<u32>(0u, 1u, 0u), u_input.d & u_input.d)), _wgslsmith_f_op_f32(-var_0.x), var_2.a.d, vec3<bool>(true, func_1().e.x, true)));
    global0 = array<Struct_4, 31>();
    let var_4 = ~u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.e.d, 0u, _wgslsmith_f_op_f32(-var_0.x), -2693i);
}

