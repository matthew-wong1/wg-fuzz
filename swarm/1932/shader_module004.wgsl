struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 5>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(global2.a * -1406f), ~vec3<u32>(u_input.b.x, 10119u, countOneBits(1u)) >> (countOneBits(~global2.b) % vec3<u32>(32u)));
    global2 = Struct_1(668f, select(_wgslsmith_sub_vec3_u32(vec3<u32>(13488u, abs(u_input.d), global2.b.x), global2.b), ~u_input.a.zyx, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.zw), select(global2.b.yx, vec2<u32>(27442u, u_input.b.x), vec2<bool>(false, true))), 5u)]));
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(~27719u, 5u)]);
    let var_1 = vec3<bool>(any(select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(47979u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(global2.b.x, 5u)], global1[_wgslsmith_index_u32(15138u, 5u)]), true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, any(vec2<bool>(true, var_0.a))))), any(select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 8u)], true, global3[_wgslsmith_index_u32(global2.b.x, 8u)], false), !vec4<bool>(var_0.a, false, false, true), select(select(vec4<bool>(var_0.a, true, global1[_wgslsmith_index_u32(global2.b.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(global2.b.x, 8u)], global1[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.b.x, 8u)], var_0.a, global1[_wgslsmith_index_u32(global2.b.x, 5u)])), vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], false, false, true), !vec4<bool>(true, global3[_wgslsmith_index_u32(global2.b.x, 8u)], true, true)))), false);
    global3 = array<bool, 8>();
    return 251f;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> bool {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec2<i32>(-2147483647i, 1i))))), ~firstTrailingBit(global2.b | vec3<u32>(1u, global2.b.x, global2.b.x)));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0))));
    let var_1 = Struct_4(true);
    global0 = false;
    let var_2 = Struct_4((false || global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 5u)]) || any(select(arg_2.xx, vec2<bool>(true, true), vec2<bool>(true, true))));
    return countOneBits(_wgslsmith_add_u32(~arg_3.x, _wgslsmith_div_u32(3659u, u_input.b.x)) & u_input.b.x) <= _wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_3.x, _wgslsmith_div_u32(min(global2.b.x, arg_3.x), u_input.b.x)), firstTrailingBit(4294967295u));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.b, u_input.b), ~_wgslsmith_div_u32(28113u, 86126u)), (19942u | _wgslsmith_div_u32(0u, arg_0)) | ~arg_0)), 8u)];
    let var_1 = Struct_2(!vec3<bool>(any(vec2<bool>(true, true)), all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(global2.b.x, 5u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], false, global1[_wgslsmith_index_u32(global2.b.x, 5u)]), true)), select(all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(30142u, 5u)], global1[_wgslsmith_index_u32(2114u, 5u)])), !global3[_wgslsmith_index_u32(u_input.b.x, 8u)], !global3[_wgslsmith_index_u32(global2.b.x, 8u)])));
    var var_2 = ~_wgslsmith_mod_u32(arg_0, 0u);
    global3 = array<bool, 8>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(324f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), global2.a, func_2(_wgslsmith_f_op_f32(-1000f - global2.a), arg_1.x & 0i, vec4<bool>(global3[_wgslsmith_index_u32(global2.b.x, 8u)], false, true, var_1.a.x), vec2<u32>(46841u, 4294967295u))))), vec3<u32>(firstLeadingBit(~23496u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 62467u, u_input.d, arg_0), u_input.a)), arg_0));
    return _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(abs(var_3.b), vec3<u32>(_wgslsmith_dot_vec2_u32(global2.b.xx, vec2<u32>(arg_0, u_input.b.x)), arg_0, _wgslsmith_dot_vec3_u32(var_3.b, vec3<u32>(10040u, u_input.a.x, 1u))))), select(global2.b, _wgslsmith_div_vec3_u32(var_3.b, min(~global2.b, select(u_input.b, vec3<u32>(var_3.b.x, arg_0, 54645u), global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))), all(!vec2<bool>(false, global1[_wgslsmith_index_u32(41067u, 5u)]))), min(~(~countOneBits(vec3<u32>(15246u, u_input.d, 31424u))), ~firstTrailingBit(~vec3<u32>(var_3.b.x, u_input.d, global2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 113f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a, -729f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a, global2.a))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1132f, 162f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-693f, global2.a), vec2<f32>(-568f, 1457f)), vec2<f32>(-391f, global2.a))))), u_input.a, ~_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.b.x, 1712u, 31765u), u_input.a.zyx), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global2.b.x, u_input.a.x), global2.b), func_1(4294967295u, vec2<i32>(u_input.c, u_input.e)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a * global2.a), global2.a))));
}

