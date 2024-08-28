struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global1: array<bool, 6>;

var<private> global2: bool;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    var var_0 = any(global3.zz);
    let var_1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1418f), -1119f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, var_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), vec2<f32>(_wgslsmith_f_op_f32(select(var_1, 510f, false)), _wgslsmith_f_op_f32(-var_1)), !global3.x))), abs(vec4<i32>(-1i) * -abs(vec4<i32>(-30179i, -23911i, -33543i, -1i))), u_input.d.x >> (~(u_input.a.x | ~u_input.b.x) % 32u));
    var_0 = !global1[_wgslsmith_index_u32(u_input.c, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(3895i, min(-55010i, _wgslsmith_sub_i32(1i, 16110i) & u_input.d.x), ~min(vec4<i32>(-70037i, abs(-41095i), -u_input.d.x, -1i), vec4<i32>(~var_2.b.x, -var_2.c, -2147483647i, -1i)), -27995i, -852f);
}

