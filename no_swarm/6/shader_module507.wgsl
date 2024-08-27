struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false));

var<private> global1: i32;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true, 1000f), Struct_1(false, 458f), Struct_1(true, -419f), Struct_1(false, -369f), Struct_1(false, -995f), Struct_1(false, 143f), Struct_1(false, -1596f), Struct_1(true, -728f), Struct_1(false, -877f), Struct_1(false, 921f), Struct_1(false, -1404f), Struct_1(false, 1353f), Struct_1(false, 435f), Struct_1(false, -277f), Struct_1(false, -1245f), Struct_1(false, 200f), Struct_1(true, -1171f), Struct_1(false, -694f), Struct_1(false, -435f), Struct_1(true, -1000f), Struct_1(false, 613f), Struct_1(true, 421f), Struct_1(false, -1578f), Struct_1(true, 794f), Struct_1(false, 559f), Struct_1(false, 955f));

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_sub_u32(arg_1, 50557u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(229f)), -450f)))) + -219f);
    var var_2 = _wgslsmith_dot_vec3_u32((~vec3<u32>(arg_0.x, arg_1, 10579u) & vec3<u32>(1u, 14457u, arg_0.x)) << (vec3<u32>(1u, 10545u, 52304u) % vec3<u32>(32u)), (u_input.b.zyy | reverseBits(vec3<u32>(var_0, arg_1, 62719u))) & _wgslsmith_mult_vec3_u32(abs(u_input.b.wxw), ~vec3<u32>(arg_1, 47621u, arg_0.x))) | arg_0.x;
    let var_3 = ~min(29633u, ~u_input.a.x);
    global0 = array<vec4<bool>, 23>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-733f - _wgslsmith_f_op_f32(1695f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) + _wgslsmith_f_op_f32(var_1 - -268f)))), 198f);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))) * _wgslsmith_f_op_f32(arg_2.b * -1000f));
    let var_1 = arg_1;
    var var_2 = ~vec3<u32>(~(~abs(global3.x)), _wgslsmith_div_u32(min(36906u, global3.x) & (arg_0 >> (0u % 32u)), reverseBits(global3.x) << (arg_0 % 32u)), ~(~reverseBits(u_input.d)));
    global3 = ~firstTrailingBit(abs(vec2<u32>(max(4294967295u, 673u), global3.x)));
    let var_3 = select(arg_1.a.xx, !vec2<bool>(any(!var_1.a), _wgslsmith_f_op_f32(func_1(u_input.b.yzy, 1u)) == var_0), var_1.a.yx);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(-345f * 1485f)) + _wgslsmith_f_op_f32(sign(1112f))), -281f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 - arg_2.b))))), arg_2.b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = -vec2<i32>(1i, abs(19666i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(37745u, global3.x)), Struct_2(vec3<bool>(true, arg_0.a, true)), arg_0)) + 553f)), arg_0.b, arg_0.b);
    let var_2 = ~(~(i32(-1i) * -27328i));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, 712f, -460f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, arg_0.b, var_1.x) + vec3<f32>(664f, 825f, var_1.x)) + vec3<f32>(1569f, arg_0.b, 346f))) - vec3<f32>(350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-875f, var_1.x)) + _wgslsmith_f_op_f32(min(-124f, arg_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-595f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, arg_0.b, 105f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -600f, var_1.x))) - vec3<f32>(_wgslsmith_div_f32(var_1.x, -1865f), _wgslsmith_f_op_f32(ceil(var_1.x)), -496f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -527f, 650f) + vec3<f32>(arg_0.b, -1000f, 998f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(round(-2630f)), _wgslsmith_f_op_f32(floor(var_1.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, var_1.x, 245f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -319f, -670f))), false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-2779f)), _wgslsmith_f_op_f32(1159f - -1063f), _wgslsmith_f_op_f32(func_3(u_input.d, Struct_2(vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(u_input.b.x, 26u)]))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2041f, var_1.x, arg_0.b))))), select(vec3<bool>(0i >= (2934i | arg_1.x), arg_0.a, (-37950i <= var_2) & true), select(!(!vec3<bool>(true, true, arg_0.a)), vec3<bool>(any(vec2<bool>(true, arg_0.a)), all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)), arg_0.a), vec3<bool>(true, false, false)), vec3<bool>(!select(arg_0.a, arg_0.a, true), true, false))));
    return !select(vec2<bool>(true, true), select(select(!vec2<bool>(false, arg_0.a), select(vec2<bool>(true, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), !vec2<bool>(false, arg_0.a)), vec2<bool>(true, any(vec4<bool>(arg_0.a, arg_0.a, false, false))), true), select(select(vec2<bool>(false, false), select(vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a), arg_0.a), !vec2<bool>(arg_0.a, false)), vec2<bool>(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true), vec2<bool>(true, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global3 = vec2<u32>(global3.x, _wgslsmith_add_u32(~u_input.b.x, ~34466u) >> (1u % 32u)) >> (~abs(~countOneBits(vec2<u32>(var_0, var_0))) % vec2<u32>(32u));
    let var_1 = 0u << (u_input.b.x % 32u);
    let var_2 = vec2<f32>(-2122f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2795f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-398f, -1486f, true))))));
    var var_3 = select(func_2(Struct_1(var_2.x <= _wgslsmith_f_op_f32(func_1(u_input.b.yxy, global3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x - var_2.x)))), u_input.c.yy), vec2<bool>(true, true), vec2<bool>(true, !(true || func_2(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c.yz).x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.ww);
}

