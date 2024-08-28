struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, true, true, false, false, true, false, true, false, true, false, true, true, false, false, true, true, false, true, true, false);

var<private> global1: f32 = 426f;

var<private> global2: Struct_1;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 3602f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-352f, -639f)), _wgslsmith_f_op_f32(global4.d.x + 567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + global2.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(round(311f)))))), ~global4.b & _wgslsmith_dot_vec2_u32(~(~vec2<u32>(70447u, global3.x)), global3.xw), global0[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_vec2_f32(-global2.a.wy));
    let var_0 = true && arg_1.x;
    var var_1 = ~(~((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 73026u), vec2<u32>(25965u, u_input.d.x)) | vec2<u32>(13058u, global3.x)) << (vec2<u32>(abs(global3.x), 73417u) % vec2<u32>(32u))));
    let var_2 = vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, global3.x, 0u)), u_input.c))), 23u)], all(select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(true, false, true, true), true)), all(arg_1.yz));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(global4.a.x - arg_0), arg_0, arg_0))))), ~var_1.x, !any(vec2<bool>(!global0[_wgslsmith_index_u32(20920u, 23u)], !arg_1.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global4.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.a.yy, global4.a.yz))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(194f, _wgslsmith_f_op_f32(-var_3.a.x))), arg_0), -781f))));
}

fn func_2() -> f32 {
    global0 = array<bool, 23>();
    global1 = _wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4.a.x, vec3<bool>(global2.c, false, false))) - global4.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d.x - global4.a.x) + _wgslsmith_f_op_f32(ceil(362f))))));
    global0 = array<bool, 23>();
    var var_0 = global3.yxy;
    let var_1 = select(vec3<bool>(global0[_wgslsmith_index_u32(11458u, 23u)], false, reverseBits(2147483647i ^ u_input.b.x) > ~1i), select(vec3<bool>(true, global4.d.x == global4.a.x, !any(vec4<bool>(global2.c, false, false, global2.c))), vec3<bool>(false, all(select(vec4<bool>(global4.c, global2.c, global2.c, global4.c), vec4<bool>(global2.c, false, global4.c, false), global4.c)), !global2.c), vec3<bool>(global2.c, global2.c, any(select(vec4<bool>(global2.c, global2.c, global4.c, global4.c), vec4<bool>(global0[_wgslsmith_index_u32(45966u, 23u)], true, false, global4.c), vec4<bool>(global4.c, true, false, global4.c))))), all(vec3<bool>(any(vec2<bool>(true, true)) != all(vec2<bool>(global2.c, global2.c)), global2.c & true, all(select(vec2<bool>(global4.c, true), vec2<bool>(false, false), false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.a.x)) - global2.d.x) * _wgslsmith_f_op_f32(-global2.d.x));
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2415f - global4.a.x)), -1143f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * global4.d.x) + _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_f_op_f32(-124f - global2.d.x), global4.d.x);
    let var_2 = countOneBits(u_input.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -760f));
    var var_4 = Struct_1(vec4<f32>(-713f, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-253f * var_3) * 516f), global4.d.x, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.d.x)))), 0u, global2.c, var_1.zy);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global4.a))), var_2.x, global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(var_4.d)))) * _wgslsmith_f_op_vec2_f32(-global4.d)) * _wgslsmith_f_op_vec2_f32(var_1.zy + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.xx;
    global0 = array<bool, 23>();
    let var_1 = u_input.b.yy;
    let var_2 = func_1();
    global2 = var_2;
    global2 = func_1();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), var_2.b, var_2.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(var_2.a.x, select(vec3<bool>(global4.c, global0[_wgslsmith_index_u32(76558u, 23u)], false), vec3<bool>(false, var_2.c, global0[_wgslsmith_index_u32(1u, 23u)]), global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(908f)) + -1991f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.wy))));
    let var_3 = vec4<u32>(var_0.x, ~abs(var_0.x), 41269u, 26814u);
    let x = u_input.a;
    s_output = StorageBuffer(-1600f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.a.yxy)) + _wgslsmith_f_op_vec3_f32(min(global4.a.xzz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -801f, global2.d.x) * vec3<f32>(-1000f, global2.a.x, global2.d.x))))) + global2.a.wyx), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.d.x)))), _wgslsmith_f_op_f32(-var_2.a.x))));
}

