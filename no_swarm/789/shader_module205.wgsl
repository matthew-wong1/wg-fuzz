struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
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

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 29>;

var<private> global2: array<vec2<u32>, 26>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -1850f))) + vec2<f32>(global0.x, -486f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, global0.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x)))), !(!vec2<bool>(global3.a, global3.a)))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, -640f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-102f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-871f, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 2463f) + vec2<f32>(518f, global0.x)))), all(select(vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(global3.c, 29u)], global1[_wgslsmith_index_u32(4110u, 29u)], false), vec4<bool>(arg_0.a, global3.a, true, false), arg_0.a)))))));
    var var_0 = false && !global1[_wgslsmith_index_u32(arg_0.c, 29u)];
    let var_1 = 1u;
    var var_2 = select(select(vec2<bool>(true, false || select(false, false, global3.a)), vec2<bool>(true, any(!vec4<bool>(global1[_wgslsmith_index_u32(62938u, 29u)], global3.a, false, false))), false), vec2<bool>(any(vec3<bool>(true, true, !arg_0.a)), all(vec3<bool>(!arg_0.a, arg_0.a, true | global3.a))), vec2<bool>(all(vec3<bool>(arg_0.a, true, global3.a)) | !select(true, arg_0.a, global3.a), global3.a));
    global1 = array<bool, 29>();
    return global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.c), 29u)];
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = !select(!select(select(vec4<bool>(global3.a, true, global3.a, global3.a), vec4<bool>(true, true, global3.a, true), vec4<bool>(false, global3.a, global3.a, global3.a)), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(global3.a, false, global3.a, global1[_wgslsmith_index_u32(global3.c, 29u)])), !(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global3.c, 29u)])), func_3(Struct_1(!global3.a, select(vec3<i32>(-1i, 0i, global3.b.x), global3.b, vec3<bool>(false, global3.a, global3.a)), 1u ^ global3.c), 649f));
    var var_1 = Struct_1(all(!(!vec4<bool>(var_0.x, true, true, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]))) | !func_3(Struct_1(global3.a, vec3<i32>(2147483647i, arg_0.x, arg_0.x), 9412u), _wgslsmith_f_op_f32(trunc(387f))), -countOneBits(vec3<i32>(firstLeadingBit(global3.b.x), ~(-63688i), abs(global3.b.x))), ~_wgslsmith_add_u32(global3.c, ~23765u & _wgslsmith_add_u32(global3.c, global3.c)));
    var var_2 = !((global0.x >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * global0.x), _wgslsmith_f_op_f32(ceil(global0.x))))) && select(any(!var_0.yy), all(select(var_0.wyy, vec3<bool>(var_1.a, false, false), var_0.wzw)), false));
    var var_3 = !(_wgslsmith_div_u32(_wgslsmith_div_u32(13623u & u_input.d, var_1.c), ~var_1.c) < var_1.c);
    var_1 = Struct_1(true && any(vec4<bool>(false, true, false, var_1.a)), vec3<i32>(global3.b.x, -(~abs(var_1.b.x)), -2147483647i), _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, 5852u), vec2<u32>(1u, 25549u)), global3.c) % 32u)));
    return !var_0.yx;
}

fn func_1() -> f32 {
    var var_0 = !select(vec2<bool>(true, true), !func_2(vec3<i32>(global3.b.x, global3.b.x, -57798i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 477f))), true);
    global1 = array<bool, 29>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-966f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-400f)) - 171f), 1122f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-809f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1486f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-237f + _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(func_1())) * vec4<f32>(global0.x, 1000f, global0.x, -279f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.xz)));
    global0 = var_0.wx;
    var var_2 = Struct_2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_0.x), -1159f), ~(~(~(~vec2<u32>(0u, global3.c)))), _wgslsmith_f_op_vec2_f32(var_0.xy + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.xx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx), vec2<f32>(var_1.x, 327f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f - -1857f)), _wgslsmith_f_op_f32(trunc(974f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1260f - -520f), 976f), -572f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.x, 1498f, global0.x))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(global3.a, false, false, false), vec4<bool>(global3.a, global1[_wgslsmith_index_u32(global3.c, 29u)], true, global3.a), global1[_wgslsmith_index_u32(global3.c, 29u)]), vec4<bool>(false, global3.a, false, global3.a)))), 1f);
    let var_3 = var_1.x;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(abs(662f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -694f) + var_0.x)) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(-var_2.e))));
    let var_4 = Struct_1(true, ~(~global3.b), 10952u);
    global1 = array<bool, 29>();
    global2 = array<vec2<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~global3.c);
}

