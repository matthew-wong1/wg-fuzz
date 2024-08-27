struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-868f, 423f);

var<private> global1: array<i32, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    return Struct_4(1165f);
}

fn func_1() -> bool {
    global1 = array<i32, 6>();
    var var_0 = func_2(0u);
    let var_1 = !vec3<bool>(global0.x != _wgslsmith_f_op_f32(abs(699f)), (all(vec2<bool>(false, true)) && false) || any(vec3<bool>(true, false, true)), true);
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(min(1u, ~0u), countOneBits(~14825u)), vec2<u32>(~firstTrailingBit(4294967295u), 4294967295u));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) - -1423f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-949f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-325f)))) + global0.x)));
    return select(any(var_1), false, !all(vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), 4769u > var_2.x, all(vec3<bool>(false, true, var_1.x)))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_5 {
    global1 = array<i32, 6>();
    let var_0 = _wgslsmith_f_op_f32(-441f * _wgslsmith_f_op_f32(f32(-1f) * -174f));
    global1 = array<i32, 6>();
    var var_1 = vec2<u32>(4294967295u, max(11828u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 67225u), vec2<u32>(1u, 1u)), 0u)));
    let var_2 = Struct_4(-356f);
    return Struct_5(!(!all(select(vec4<bool>(false, arg_2.x, true, arg_1.a.a.x), vec4<bool>(true, false, arg_0, arg_0), arg_1.a.a))), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], max(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 6u)], u_input.a.x, 37788i), vec3<i32>(u_input.b.x, 47398i, global1[_wgslsmith_index_u32(8299u, 6u)])), _wgslsmith_sub_i32(~0i, 1i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1157f, -223f))), var_0));
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    let var_0 = Struct_4(409f);
    global1 = array<i32, 6>();
    global0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, 257f)));
    return func_3(any(vec2<bool>(true, true)), Struct_3(Struct_2(!vec4<bool>(arg_0.a, false, true, arg_0.a)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(676f, 354f))), vec2<f32>(-1033f, arg_0.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 595f))))), vec2<bool>(true, true));
}

fn func_5(arg_0: Struct_5, arg_1: f32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(~_wgslsmith_mod_u32(70284u, 4294967295u)).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_f_op_f32(max(1168f, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, func_2(10566u).a, _wgslsmith_f_op_f32(f32(-1f) * -828f), arg_0.c.b))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1232f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.a))));
    let var_2 = func_2(~1u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_3(func_1(), Struct_3(Struct_2(vec4<bool>(false, false, true, true)), vec2<f32>(-1674f, 125f)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), global0.x);
    let var_1 = Struct_3(Struct_2(select(vec4<bool>(true, true, func_4(Struct_5(true, u_input.b.xz, Struct_1(var_0.a, global0.x))).a, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), false), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, 1161f)));
    var var_2 = var_1.a.a.x;
    var_2 = var_1.a.a.x || all(select(vec4<bool>(!var_1.a.a.x, any(var_1.a.a.yw), true, true), !var_1.a.a, any(select(var_1.a.a.zyx, vec3<bool>(true, var_1.a.a.x, var_1.a.a.x), vec3<bool>(false, var_1.a.a.x, false)))));
    var_2 = var_1.a.a.x;
    let var_3 = Struct_1(func_2(1u).a, _wgslsmith_f_op_f32(-1097f * var_0.a));
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1247f, -1086f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(var_3.b)), var_0.a))), _wgslsmith_f_op_vec2_f32(sign(var_1.b)), 53296u, ~4294967295u);
}

