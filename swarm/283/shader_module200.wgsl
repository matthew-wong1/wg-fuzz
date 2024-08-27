struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: array<vec3<f32>, 31>;

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(0u, 4294967295u), vec2<u32>(81492u, 29030u), vec2<u32>(98644u, 0u), vec2<u32>(4294967295u, 31716u), vec2<u32>(12313u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(46419u, 1u), vec2<u32>(14343u, 1u), vec2<u32>(53930u, 37354u), vec2<u32>(0u, 47900u), vec2<u32>(0u, 70107u));

var<private> global3: array<Struct_1, 9>;

var<private> global4: vec2<f32> = vec2<f32>(1000f, 321f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = ~global2[_wgslsmith_index_u32(~arg_1.x, 11u)];
    let var_1 = Struct_1(((u_input.a & 23729u) << (23817u % 32u)) & u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(arg_3.b, vec4<f32>(global4.x, _wgslsmith_f_op_f32(max(212f, global4.x)), arg_2, arg_3.b.x))), arg_3.b, arg_3.e.x)), ~u_input.a, 4294967295u, !arg_3.e);
    var_0 = global2[_wgslsmith_index_u32(74051u, 11u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_3.b);
    var var_3 = arg_3.b;
    return 1i;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(countOneBits(19058u), arg_1.b, firstTrailingBit(78101u), firstLeadingBit(select(~u_input.a, 4294967295u, false) | 64209u), !select(vec3<bool>(true, true, arg_1.e.x), vec3<bool>(any(vec4<bool>(false, arg_0, arg_1.e.x, true)), arg_0, arg_1.e.x), -786i > _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 37391i, 30161i), vec3<i32>(-27965i, 2147483647i, 0i))));
    var var_1 = Struct_1(~(~(~0u)) >> (arg_1.c % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) - _wgslsmith_f_op_vec4_f32(-var_0.b)))), ~(~_wgslsmith_mod_u32(min(var_0.a, var_0.a), _wgslsmith_clamp_u32(var_0.c, 75277u, 1u))), 1u, !(!vec3<bool>(!arg_1.e.x, false, false)));
    global3 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    return global4.x;
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_div_u32(1u, u_input.a), vec4<f32>(-1286f, _wgslsmith_f_op_f32(func_3(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.a, 29930u)), 9u)])), -433f, global4.x), u_input.a, u_input.a ^ ~31527u, !vec3<bool>(_wgslsmith_f_op_f32(-global4.x) == 327f, true, true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), -1295f)), 1f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-204f * global4.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(global4.x, var_0.b.x))), var_0.e.x)), var_0.b.x);
    global4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.ww))));
    let var_2 = var_1.xx;
    var var_3 = ~(~(~(abs(var_0.d) | ~4294967295u)));
    return all(!(!vec4<bool>(true, var_0.e.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(-global4.x));
    let var_1 = func_1(u_input.b, ~vec4<u32>(u_input.b, 1u, ~u_input.b, u_input.a), 238f, global3[_wgslsmith_index_u32(firstTrailingBit(~(12948u & u_input.a)), 9u)]);
    global2 = array<vec2<u32>, 11>();
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a, 31u)]))));
    let var_3 = func_2();
    global1 = array<vec3<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)));
}

