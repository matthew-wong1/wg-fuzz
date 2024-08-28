struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 21>;

var<private> global2: array<i32, 1>;

var<private> global3: array<vec2<bool>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(580f * -162f), _wgslsmith_f_op_f32(floor(-1524f)), _wgslsmith_f_op_f32(-934f - 630f)) - vec3<f32>(_wgslsmith_div_f32(311f, 276f), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-866f * -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-459f, -441f, -1241f))))), Struct_1(global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(22050u & _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 21u)]), 21u)], 25u)]), all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), true)));
    global3 = array<vec2<bool>, 25>();
    let var_1 = true & any(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(63902u, global1[_wgslsmith_index_u32(19481u, 21u)], 56224u) ^ vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 21u)], 28520u), vec3<u32>(4294967295u, 734u, 15430u)), 25u)]);
    var var_2 = select(!vec4<bool>(!var_1, true, var_0.c, true), vec4<bool>(!(_wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1538f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), ~max(-2147483647i, 1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 1i, u_input.a.x) << (vec3<u32>(1u, 86913u, 4456u) % vec3<u32>(32u)), vec3<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 1u)], -1i)), var_0.c), !select(!(!vec4<bool>(var_0.c, false, var_0.b.a.x, true)), !vec4<bool>(false, true, var_0.b.a.x, true), vec4<bool>(var_1, false, var_1, true)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1250f - var_0.a.x) * var_0.a.x))), 528f, !(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x + -1517f)) > _wgslsmith_f_op_f32(-625f - -576f))));
    return vec2<bool>(false, true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), func_3(15060u), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !global3[_wgslsmith_index_u32(u_input.c.x, 25u)], vec2<bool>(true, true))));
    var var_1 = ~37406u;
    global3 = array<vec2<bool>, 25>();
    var_1 = 124523u;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-633f, _wgslsmith_f_op_f32(-1044f - -169f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + -1163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(267f - 444f), -483f)))), _wgslsmith_f_op_f32(round(1f)), -977f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-835f * 511f), _wgslsmith_f_op_f32(-1854f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-188f * 660f)))))));
    return Struct_2(var_2.zyx, var_0, all(vec4<bool>(all(var_0.a) || true, var_0.a.x | var_0.a.x, false, var_0.a.x)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_0.a;
    global1 = array<u32, 21>();
    let var_2 = func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13773u, 21u)], 21u)] ^ (firstLeadingBit(countOneBits(0u)) & (38502u & var_0)));
    let var_3 = max(~((u_input.d | vec2<i32>(u_input.d.x, u_input.b.x)) & (vec2<i32>(-1i) * -u_input.e.xz)), u_input.e.yx);
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(~select(vec3<u32>(global1[_wgslsmith_index_u32(0u, 21u)], 4294967295u, 23527u), vec3<u32>(1u, global1[_wgslsmith_index_u32(44340u, 21u)], global1[_wgslsmith_index_u32(33102u, 21u)]), vec3<bool>(false, var_1.x, false)))), ~vec3<u32>(global1[_wgslsmith_index_u32(6719u, 21u)], ~(~1u), ~53317u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(((~global1[_wgslsmith_index_u32(21908u, 21u)] ^ u_input.c.x) & abs(select(u_input.c.x, global1[_wgslsmith_index_u32(41043u, 21u)], false))) & global1[_wgslsmith_index_u32(func_1(Struct_1(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 25u)])) << (u_input.c.x % 32u), 21u)], 25u)]);
    global2 = array<i32, 1>();
    var var_1 = func_2(1u).b;
    let var_2 = func_2(77380u).b;
    global3 = array<vec2<bool>, 25>();
    let var_3 = _wgslsmith_sub_u32(48957u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~72461u, ~43372u, 0u), 1u), ~u_input.c));
    var var_4 = func_2(max(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.c.x), 33626u) | var_3)).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 30808u, u_input.c.x));
}

