struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(4294967295u, arg_0.a.b), true);
    global0 = !vec4<bool>(true, arg_1.b, true, any(select(global0.zxx, !global0.wzw, select(global0.yzy, vec3<bool>(arg_1.b, global0.x, true), global0.yww))));
    global1 = var_1.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1054f, var_1.a.b.x)));
    return all(select(select(!vec2<bool>(global0.x, global0.x), !global0.zw, var_1.b & false), global0.wy, select(true, true, !var_1.b))) && true;
}

fn func_2() -> bool {
    global0 = !vec4<bool>(true, true, firstTrailingBit(32833u) >= _wgslsmith_mult_u32(1u, ~130169u), !all(vec4<bool>(false, global0.x, false, true)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(311u, 0u, 4294967295u), vec3<u32>(48603u, 1u, 40023u)) >> (23107u % 32u), ~_wgslsmith_clamp_u32(40205u, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(831f, -1000f, -1000f))))), func_3(Struct_3(Struct_1(~1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(859f, 1603f, 1245f), vec3<f32>(1029f, -1392f, -1000f), global0.x))), 43462u), Struct_2(Struct_1(4294967295u, vec3<f32>(-455f, 1245f, 674f)), -618f >= _wgslsmith_f_op_f32(select(1000f, 1915f, true)))));
    var_0 = Struct_2(Struct_1(29326u, var_0.a.b), global0.x);
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_0.a.a, var_0.a.a)), min(vec2<u32>(79383u, var_0.a.a), vec2<u32>(1u, 0u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(16826u, var_0.a.a), vec2<u32>(1u, var_0.a.a))), vec3<f32>(_wgslsmith_f_op_f32(select(-316f, -1529f, u_input.a == u_input.b)), var_0.a.b.x, -1533f)), var_0.a.a);
    let var_2 = ~0u;
    return all(!(!(!vec4<bool>(var_0.b, global0.x, false, false))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = -23063i;
    global1 = func_2();
    global1 = true;
    var var_1 = 2147483647i;
    let var_2 = all(select(!global0.yyz, select(vec3<bool>(false, global0.x | true, global0.x), vec3<bool>(any(vec4<bool>(false, global0.x, true, global0.x)), global0.x, global0.x), !global0.x), !select(!vec3<bool>(global0.x, global0.x, global0.x), global0.wyx, select(global0.wzz, vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, global0.x)))));
    return Struct_2(Struct_1(reverseBits(1u), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-456f, arg_0)), arg_0)), 222f, _wgslsmith_f_op_f32(exp2(arg_0)))), func_3(Struct_3(Struct_1(~43235u, vec3<f32>(arg_0, 315f, -418f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 66887u, 13535u, 90226u), ~vec4<u32>(4294967295u, 11140u, 0u, 1u))), Struct_2(Struct_1(18655u, _wgslsmith_div_vec3_f32(vec3<f32>(217f, arg_0, -2350f), vec3<f32>(arg_0, -1401f, 740f))), var_0 != (u_input.a << (9536u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(global0.x, global0.x, false, false), global0.x)) | true, true, !(!global0.x), !global0.x), vec4<bool>(global0.x, global0.x, true, !(!global0.x & true)), true);
    var var_0 = func_1(-538f);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.b)), vec3<f32>(965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1011f + var_0.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(197f, var_0.a.b.x)))))));
    global1 = !all(select(select(!global0.ywx, select(vec3<bool>(false, global0.x, true), global0.wwy, vec3<bool>(var_0.b, global0.x, global0.x)), var_1.x <= var_1.x), select(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, false), var_0.b), !vec3<bool>(global0.x, true, true), global0.xzy), vec3<bool>(func_2(), var_1.x <= var_1.x, global0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2091f, var_0.a.b.x, var_0.a.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-923f * var_1.x), var_1.x, _wgslsmith_f_op_f32(step(945f, 578f)), 658f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(600f, var_0.a.b.x, 166f, var_0.a.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1070f, var_1.x, var_1.x, var_1.x))), vec4<f32>(var_0.a.b.x, var_1.x, var_1.x, 1245f), select(!vec4<bool>(false, false, false, global0.x), select(select(vec4<bool>(var_0.b, global0.x, var_0.b, false), vec4<bool>(var_0.b, false, global0.x, false), vec4<bool>(global0.x, true, global0.x, true)), select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(var_0.b, global0.x, global0.x, var_0.b), true), false), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), select(vec4<bool>(false, true, false, false), vec4<bool>(global0.x, true, global0.x, var_0.b), vec4<bool>(true, var_0.b, false, true)), all(vec3<bool>(true, var_0.b, false)))))), !vec4<bool>(select(u_input.a != u_input.b, var_0.b, var_0.b), all(global0.wwy), func_3(Struct_3(var_0.a, 113668u), Struct_2(var_0.a, global0.x)), func_3(Struct_3(Struct_1(var_0.a.a, vec3<f32>(var_1.x, var_0.a.b.x, var_1.x)), 43974u), Struct_2(var_0.a, var_0.b)))));
    var var_3 = 239f;
    global1 = any(!select(select(vec2<bool>(global0.x, false), global0.yz, vec2<bool>(false, var_0.b)), select(!global0.wx, global0.wx, select(vec2<bool>(false, true), vec2<bool>(true, false), var_0.b)), select(vec2<bool>(global0.x, false), global0.wy, global0.zz)));
    let var_4 = countOneBits(firstLeadingBit(var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xx);
}

