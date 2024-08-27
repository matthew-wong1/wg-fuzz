struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1026f), Struct_1(-1000f), Struct_1(-450f), Struct_1(1085f), Struct_1(1000f), Struct_1(1000f), Struct_1(770f), Struct_1(610f), Struct_1(1220f), Struct_1(717f), Struct_1(322f), Struct_1(681f), Struct_1(1000f), Struct_1(651f), Struct_1(1696f), Struct_1(-1737f), Struct_1(1677f), Struct_1(339f), Struct_1(229f), Struct_1(1344f), Struct_1(600f), Struct_1(-1537f), Struct_1(-898f), Struct_1(315f), Struct_1(2467f), Struct_1(741f), Struct_1(735f), Struct_1(-1002f), Struct_1(-2231f), Struct_1(-192f), Struct_1(836f));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<u32, 32>;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = 664f;
    let var_1 = Struct_1(var_0);
    var var_2 = Struct_1(-1921f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(var_2.a)));
    let var_4 = _wgslsmith_sub_i32(arg_0, 1i);
    return -1000f;
}

fn func_2() -> u32 {
    var var_0 = u_input.d;
    global3 = array<u32, 32>();
    global2 = array<Struct_1, 24>();
    let var_1 = vec4<f32>(341f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f - -1219f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-402f)) - _wgslsmith_f_op_f32(min(294f, 104f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(821f)))) * -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_0.x)), -852f, true))));
    var var_2 = abs(_wgslsmith_div_i32(_wgslsmith_mult_i32(3759i, 1i), (abs(1i) & reverseBits(u_input.e.x)) & ~_wgslsmith_div_i32(var_0.x, var_0.x)));
    return abs(~(~1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(512f - arg_3.a);
    global0 = array<Struct_1, 31>();
    let var_2 = -arg_2.x;
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) <= _wgslsmith_f_op_f32(arg_3.a * arg_1.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(min(u_input.a.x >> (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 32u)], 32u)], 38203u)), vec2<u32>(79847u, global3[_wgslsmith_index_u32(11242u, 32u)]) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 36002u))) % 32u), 26490u), 24u)];
    let var_1 = u_input.c.zx;
    global3 = array<u32, 32>();
    let var_2 = u_input.b.x;
    global3 = array<u32, 32>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(765f + _wgslsmith_f_op_f32(trunc(1349f)))))));
    global0 = array<Struct_1, 31>();
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(select(select(vec4<bool>(var_1, true, true, false), vec4<bool>(false, var_1, true, false), vec4<bool>(true, var_1, var_1, var_1)), vec4<bool>(true, true, true, var_1), !vec4<bool>(true, false, var_1, true)), func_1(!vec3<bool>(true, var_1, false), Struct_1(-964f), vec4<i32>(-1i, u_input.e.x, -2147483647i, 26601i), Struct_1(-1000f)), vec2<f32>(-895f, _wgslsmith_f_op_f32(-1000f * -407f)))))), 13827u, 17158i);
}

