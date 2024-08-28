struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: bool) -> vec3<u32> {
    global2 = !select(!vec3<bool>(arg_0.x, arg_0.x, global2.x), !(!select(arg_0.wxy, arg_0.wyw, vec3<bool>(arg_3, true, arg_0.x))), !vec3<bool>(true, all(vec2<bool>(global2.x, arg_0.x)), arg_3));
    let var_0 = vec2<bool>(false, arg_0.x);
    global2 = vec3<bool>(all(select(!(!arg_0.xww), vec3<bool>(false, any(vec4<bool>(false, global2.x, global0.x, true)), all(vec3<bool>(false, arg_0.x, true))), true)), firstTrailingBit(min(u_input.a.x, -24757i)) == firstTrailingBit(countOneBits(-1i)), global2.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1154f * -1000f)))))) * _wgslsmith_f_op_f32(135f + -581f));
    global0 = select(arg_0.xwz, select(vec3<bool>(arg_1 < firstTrailingBit(u_input.e), global0.x, true), arg_0.xxx, var_0.x), !arg_0.zwx);
    return ~vec3<u32>(u_input.e, firstLeadingBit(arg_1) & _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, u_input.e, 4294967295u, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, 58718u, arg_2.x)), 8941u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(526f, -1616f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f + -295f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1298f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(u_input.e, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.x))))), firstLeadingBit(13709u), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f - -995f))), vec2<f32>(-691f, -153f), _wgslsmith_add_u32(~firstLeadingBit(4294967295u), 1u >> (u_input.e % 32u)), false));
    return !(!vec3<bool>(true, var_0.d.d, true));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    global0 = !func_4(select(func_3(select(vec4<bool>(global0.x, false, global2.x, true), vec4<bool>(global2.x, true, global2.x, global0.x), true), u_input.e >> (1u % 32u), vec2<u32>(u_input.e, u_input.e), select(false, global0.x, false)), ~abs(vec3<u32>(44737u, 4294967295u, u_input.e)), !select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, false), global2.x)), !select(!global2.zy, select(vec2<bool>(false, global2.x), global0.xz, false), select(vec2<bool>(global2.x, false), global2.xy, global0.xz)));
    global1 = array<vec2<f32>, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1364f)), _wgslsmith_f_op_f32(arg_1 * 422f), 1000f, -1135f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, arg_1, arg_1, 537f)) * vec4<f32>(arg_1, arg_1, -420f, arg_1)))))));
    global0 = select(vec3<bool>(global0.x, -974f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + _wgslsmith_f_op_f32(ceil(183f))), !(!(global0.x || false))), !vec3<bool>(true, !global0.x, any(!vec4<bool>(global0.x, global0.x, false, global2.x))), vec3<bool>(any(select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, false, false), u_input.c.x > u_input.b)), var_0.x > var_0.x, any(vec4<bool>(all(global0.yx), global0.x, true, global0.x || global2.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -784f), var_0.x))), var_0.x, Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 766f), vec2<f32>(arg_1, var_0.x), true)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -250f), var_0.xx)))), u_input.e, false), Struct_1(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1146f * 1125f) * _wgslsmith_f_op_f32(ceil(var_0.x)))), var_0.xw, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u) << (vec4<u32>(u_input.e, u_input.e, u_input.e, 0u) % vec4<u32>(32u))) | vec4<u32>(u_input.e, 44433u, 0u, u_input.e), vec4<u32>(67922u, u_input.e, u_input.e, ~u_input.e)), all(vec4<bool>(false, true, true, true))));
    return arg_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    let var_0 = !vec4<bool>(true, false, global0.x, true);
    let var_1 = select(!select(var_0, var_0, var_0), !select(!var_0, select(var_0, var_0, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), !(!var_0));
    let var_2 = global1[_wgslsmith_index_u32(~(~u_input.e), 25u)];
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-616f * _wgslsmith_f_op_f32(f32(-1f) * -1336f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(670f + _wgslsmith_f_op_f32(f32(-1f) * -307f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + var_2.x), -711f, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, 1057f) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(3863u, u_input.e), u_input.e << (74023u % 32u)), 25u)]), 4294967295u, all(!(!global0.xz))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, 589f)) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.e, 25u)], _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(arg_1, 25u)] + global1[_wgslsmith_index_u32(u_input.e, 25u)])), 41212u, !global2.x));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(func_2(arg_0, -1000f)), _wgslsmith_f_op_f32(-var_2.x), var_3.c, var_3.c);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(-reverseBits(0i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 41743i, u_input.d), vec3<i32>(u_input.c.x, -23671i, 1i))));
    var var_1 = 62673u;
    var var_2 = Struct_3(select(global2.xz, select(global2.xy, global2.xz, global2.zz), global0.x), 981f, !(!global0.yz));
    global1 = array<vec2<f32>, 25>();
    var var_3 = global1[_wgslsmith_index_u32(func_1(vec2<i32>(51214i, -u_input.d) << (select(~vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, 41830u), vec2<bool>(true, global2.x)) % vec2<u32>(32u)), ~u_input.e) ^ ~u_input.e, 25u)];
    var_2 = Struct_3(select(func_4(reverseBits(vec3<u32>(7911u, u_input.e, u_input.e)), global0.xx).xz, !global0.xz, false), _wgslsmith_f_op_f32(f32(-1f) * -1120f), !vec2<bool>(true, all(vec4<bool>(global0.x, global0.x, global2.x, true))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(985f, var_2.b) + vec2<f32>(-831f, var_3.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-110f, var_3.x), vec2<f32>(var_2.b, 1000f)) * global1[_wgslsmith_index_u32(30848u, 25u)]))));
    global2 = vec3<bool>(true, (_wgslsmith_f_op_f32(round(-915f)) == 1024f) == global0.x, any(select(vec2<bool>(true, true), vec2<bool>(var_2.a.x | var_2.c.x, u_input.e >= u_input.e), !vec2<bool>(false, global0.x))));
    global1 = array<vec2<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec3<i32>(1i, i32(-1i) * -65534i, _wgslsmith_add_i32(u_input.d, 42924i)), 661f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_4.x, var_2.b)))))), _wgslsmith_f_op_f32(func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.c.x), u_input.a.yyz), _wgslsmith_sub_i32(-1i, u_input.b)) & select(min(vec2<i32>(-1i, 10244i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, 1i), all(vec4<bool>(true, true, var_2.a.x, true))), _wgslsmith_f_op_f32(trunc(-612f)))));
}

