struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 185f;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(47758u, vec3<bool>(true, false, true)), Struct_2(4294967295u, vec3<bool>(false, false, true)), Struct_2(20017u, vec3<bool>(true, true, true)), Struct_2(81316u, vec3<bool>(false, true, true)), Struct_2(1u, vec3<bool>(false, false, false)), Struct_2(5423u, vec3<bool>(true, true, false)), Struct_2(51079u, vec3<bool>(false, true, false)), Struct_2(107120u, vec3<bool>(true, true, true)), Struct_2(0u, vec3<bool>(false, false, false)), Struct_2(4294967295u, vec3<bool>(true, false, true)), Struct_2(36400u, vec3<bool>(false, true, false)), Struct_2(4294967295u, vec3<bool>(true, false, true)), Struct_2(50573u, vec3<bool>(false, false, true)), Struct_2(3326u, vec3<bool>(false, true, true)), Struct_2(1u, vec3<bool>(false, true, true)), Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(0u, vec3<bool>(true, true, true)), Struct_2(1u, vec3<bool>(true, false, false)), Struct_2(11519u, vec3<bool>(false, true, true)), Struct_2(1u, vec3<bool>(false, true, false)), Struct_2(1u, vec3<bool>(false, false, true)), Struct_2(0u, vec3<bool>(true, false, false)), Struct_2(1447u, vec3<bool>(true, false, true)), Struct_2(0u, vec3<bool>(true, true, true)), Struct_2(27316u, vec3<bool>(true, false, true)), Struct_2(1u, vec3<bool>(true, true, false)), Struct_2(0u, vec3<bool>(true, true, true)), Struct_2(32225u, vec3<bool>(false, false, false)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    let var_0 = ~_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(~(~1u), u_input.b));
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = global1[_wgslsmith_index_u32(~(~1722u), 29u)];
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-258f - 1167f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) * _wgslsmith_f_op_f32(abs(-516f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-822f, 1483f, true)), _wgslsmith_f_op_f32(f32(-1f) * -560f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f + 1033f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-138f, _wgslsmith_div_f32(-2397f, 822f))) + _wgslsmith_f_op_f32(f32(-1f) * -1715f))));
    global0 = _wgslsmith_f_op_f32(max(582f, _wgslsmith_f_op_f32(abs(336f))));
    var var_0 = Struct_2(firstTrailingBit(u_input.b), !vec3<bool>(!select(false, true, true), any(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
    let var_1 = func_1();
    var var_2 = u_input.c;
    let var_3 = true;
    var_0 = Struct_2(~var_0.a, vec3<bool>(!select(!var_3, !var_1, var_0.b.x), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_i32(abs(u_input.c), u_input.c | u_input.c)) ^ u_input.c, ~(~65427u));
}

