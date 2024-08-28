struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(616f, -997f);

var<private> global1: array<Struct_1, 1>;

var<private> global2: f32 = 313f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_sub_vec3_u32(max(~vec3<u32>(u_input.a.x, ~4294967295u, 28997u), ~(~vec3<u32>(u_input.a.x, 1u, 1u))), vec3<u32>(select(0u, firstLeadingBit(_wgslsmith_add_u32(1u, 1u)), true), firstLeadingBit(~(~u_input.a.x)), abs(~(~u_input.a.x))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x), vec2<f32>(global0.x, -733f), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(673f, -790f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1018f, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 151f)), any(vec3<bool>(true, true, true))))));
    return 4294967295u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> vec2<f32> {
    global2 = -2357f;
    var var_0 = vec3<u32>(~(~arg_1.x), func_3(), firstTrailingBit(~arg_1.x));
    global2 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = all(select(!select(arg_0, vec3<bool>(arg_0.x, true, true), any(vec4<bool>(false, false, arg_0.x, arg_0.x))), !arg_0, !select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), arg_0)));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-507f, global0.x), global0.x)), -1226f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1035f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(1392f, -406f), _wgslsmith_div_f32(global0.x, arg_2)), arg_0.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1585f, arg_2))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1215f, 1000f) - vec2<f32>(arg_2, global0.x))))));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(!(global0.x == 1000f), ~u_input.a.x >= 1u, true), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-403f + -1511f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1026f, global0.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -248f), vec2<f32>(2426f, -356f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, 195f)), vec2<f32>(-277f, -726f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1285f, global0.x)), true)))));
    var var_0 = 1i;
    global2 = _wgslsmith_f_op_f32(max(global0.x, global0.x));
    let var_1 = all(vec3<bool>(true, true, true));
    var var_2 = global1[_wgslsmith_index_u32(65916u, 1u)];
    return StorageBuffer(-_wgslsmith_mod_i32(1i, -_wgslsmith_add_i32(0i, 2147483647i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, -881f) * vec3<f32>(global0.x, global0.x, var_2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1302f, global0.x, global0.x), vec3<f32>(global0.x, -1020f, var_2.b)))))), vec4<i32>(13807i, _wgslsmith_mod_i32(14170i, 1i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(select(-10691i, -2147483647i, var_1), max(0i, 2147483647i))), abs(-1i)), ~((var_2.c.zwy ^ vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) ^ vec3<u32>(var_2.e.x, 0u, u_input.a.x)) & u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-457f, global0.x) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-484f, -729f))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-732f, 928f, true))))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(933f, -828f))) - _wgslsmith_f_op_f32(-global0.x))), global0.x);
    var var_0 = abs(_wgslsmith_div_i32(firstTrailingBit(-3922i), 1i) & 20023i);
    let x = u_input.a;
    s_output = func_1();
}

