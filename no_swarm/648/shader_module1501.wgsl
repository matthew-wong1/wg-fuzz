struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true));

var<private> global2: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-623f, -1042f, -962f, 488f))))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, 371f, 1251f, -978f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, _wgslsmith_f_op_f32(select(-873f, 654f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(435f)), _wgslsmith_f_op_f32(-131f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2433f - -1238f)))));
    return !(!any(global1[_wgslsmith_index_u32(~(u_input.a.x | 72545u), 26u)]));
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = -firstLeadingBit(~(2147483647i << (select(4294967295u, 0u, false) % 32u)));
    let var_1 = global0.b;
    let var_2 = vec3<bool>(!(!(false && func_2())), select(all(vec2<bool>(global0.a.x != 1u, arg_0.x > arg_0.x)), u_input.a.x == global0.a.x, true), (false | any(global1[_wgslsmith_index_u32(0u, 26u)])) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_3 = Struct_1(~firstTrailingBit(~firstLeadingBit(vec2<u32>(u_input.a.x, 38758u))), global0.b);
    var_3 = Struct_1(vec2<u32>(var_3.a.x, _wgslsmith_mod_u32(30559u, 15399u)), var_0);
    return ~vec2<u32>(global0.a.x << (4294967295u % 32u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 26>();
    let var_0 = Struct_1(~vec2<u32>(firstTrailingBit(abs(39576u)), 1u), 1i);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-1655f, _wgslsmith_f_op_f32(f32(-1f) * -1275f), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)))))));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_u32(~(func_1(vec3<f32>(-1355f, 1057f, 580f)) >> (var_0.a % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a << (vec2<u32>(global0.a.x, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, var_0.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41317u), u_input.a), var_0.a.x, global0.a.x))), _wgslsmith_sub_i32(var_0.b, 2147483647i));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, select(4294967295u, 17843u, true)), _wgslsmith_mult_vec2_u32(abs(var_2.a), ~vec2<u32>(37538u, 52169u))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, global0.a.x)), var_0.a)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, var_0.a, var_3.a.x);
}

