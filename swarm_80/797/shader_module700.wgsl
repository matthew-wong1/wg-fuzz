struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = vec2<bool>(all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))), !(!(-1i != global1.x)) != any(vec3<bool>(true, true, true)));
    var var_1 = abs(global1.x);
    return var_0.x;
}

fn func_2() -> Struct_4 {
    var var_0 = select(vec4<bool>(!(!all(vec3<bool>(false, true, false))), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true)), false, !(!any(vec4<bool>(true, true, true, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(any(vec3<bool>(true, true, true)), func_3(), false, any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, false, false), true), !select(false, false, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-724f, 1422f, -481f, -229f))))))), var_0.yz, -571f, vec4<bool>(var_0.x, !(!var_0.x), all(select(!vec4<bool>(true, true, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, true))), var_0.x), 11874i);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, _wgslsmith_f_op_f32(-505f - 1292f), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(abs(-178f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_div_vec4_f32(vec4<f32>(553f, 528f, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, -1000f, 452f, var_1.a.x))))))), vec2<bool>(any(vec4<bool>(any(var_1.d.xyz), false, var_0.x, global1.x >= 9789i)), var_1.d.x), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-var_1.c)), var_1.d, 30347i);
    global0 = array<i32, 13>();
    let var_3 = var_2.d.xw;
    return Struct_4(45502u, var_2);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    let var_0 = -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2 & vec2<i32>(-10020i, u_input.a.x), ~u_input.a), -arg_2.x), vec2<i32>(global1.x, -1i));
    var var_1 = var_0.x;
    let var_2 = func_2();
    let var_3 = arg_1.a;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1423f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -726f) + vec2<f32>(-814f, 642f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1371f), vec2<f32>(988f, 1033f)))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-420f, -349f)), _wgslsmith_f_op_f32(1845f * -1190f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(605f, 806f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, true, false), Struct_4(76190u, Struct_3(vec4<f32>(1382f, -841f, -1031f, 1000f), vec2<bool>(false, true), 607f, vec4<bool>(false, true, false, false), u_input.a.x)), u_input.a))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f) * _wgslsmith_f_op_f32(max(1000f, -959f)))), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, all(vec4<bool>(false, false, true, true)), func_2().b.b.x, false), Struct_4(~69201u, Struct_3(vec4<f32>(-923f, 1000f, 1000f, -1639f), vec2<bool>(false, false), -544f, vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(4625u, 13u)])), -u_input.a))), func_2().b.d.yy));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(firstLeadingBit(0u))), vec2<u32>(1u, 1u), ~firstLeadingBit(~vec2<u32>(1u, 0u))));
    global0 = array<i32, 13>();
    let var_2 = (_wgslsmith_mult_i32(1i, func_2().b.e) & global1.x) <= u_input.a.x;
    var var_3 = func_2().b.d.zzy;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.a, 1073f, var_2)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(475f + var_1.a)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + vec2<f32>(var_1.a, var_1.a))))));
    var var_5 = 8377i >> (_wgslsmith_mod_u32(22724u << (1u % 32u), ~select(var_1.b.x, var_1.b.x, select(var_3.x, false, var_2))) % 32u);
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(439f, -1854f, 527f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_4, var_0)) - vec2<f32>(var_1.a, -809f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4), var_4), vec2<f32>(_wgslsmith_f_op_f32(-648f * var_1.a), _wgslsmith_f_op_f32(var_0.x + -1000f)))));
}

