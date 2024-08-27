struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32> = vec3<u32>(37280u, 0u, 6923u);

var<private> global2: bool = true;

var<private> global3: u32;

var<private> global4: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(any(select(select(!global4[_wgslsmith_index_u32(global1.x, 28u)], select(global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(57711u, 28u)], true), select(global4[_wgslsmith_index_u32(global1.x, 28u)], vec2<bool>(false, true), global4[_wgslsmith_index_u32(0u, 28u)])), global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(25405u)), 28u)], vec2<bool>(true, all(vec2<bool>(true, false))))), any(vec2<bool>(select(true, false, true), all(vec4<bool>(true, true, true, true)) || (global1.x != global1.x))));
    var var_1 = u_input.b;
    var_1 = firstTrailingBit(u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-560f, 1000f) + vec2<f32>(-1386f, 117f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 760f) - vec2<f32>(-480f, 1000f)), vec2<bool>(false, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(795f, -1690f)), _wgslsmith_f_op_f32(1080f + -900f)))));
    let var_3 = ~(~select(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.x, 36495u), vec3<u32>(global1.x, 0u, global1.x)), ~(~vec3<u32>(global1.x, 1u, 39202u)), select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false)), false | var_0.x)));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_1.b));
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(func_3())), 268f);
    var var_3 = global1.x;
    global1 = select(select(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(4294967295u, 1u, global1.x)), 1u, global1.x), firstTrailingBit(vec3<u32>(global1.x, 1u, global1.x)), vec3<bool>(true, any(vec4<bool>(true, arg_2.x, var_1.a, false)), any(select(vec4<bool>(true, false, arg_1.c.a, arg_2.x), vec4<bool>(false, false, arg_1.c.a, arg_1.c.a), var_1.a)))), _wgslsmith_add_vec3_u32(~(~(vec3<u32>(42534u, 4294967295u, global1.x) ^ vec3<u32>(7303u, global1.x, global1.x))), select(vec3<u32>(global1.x, 1u, 6738u) << (abs(vec3<u32>(0u, global1.x, global1.x)) % vec3<u32>(32u)), ~(vec3<u32>(global1.x, global1.x, 4294967295u) ^ vec3<u32>(global1.x, global1.x, 54666u)), select(vec3<bool>(var_1.a, arg_2.x, arg_2.x), select(vec3<bool>(false, true, var_1.a), vec3<bool>(arg_1.c.a, arg_2.x, arg_1.c.a), vec3<bool>(false, var_1.a, arg_1.c.a)), select(vec3<bool>(false, arg_0.x, arg_2.x), vec3<bool>(true, true, arg_2.x), vec3<bool>(true, arg_2.x, var_1.a))))), select(vec3<bool>(var_1.a, !(global1.x <= global1.x), any(vec2<bool>(arg_0.x, true))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_1.a), vec3<bool>(true, !var_1.a, true)), !select(select(vec3<bool>(true, true, arg_1.c.a), vec3<bool>(false, arg_0.x, arg_2.x), arg_2.x), select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_0.x), vec3<bool>(var_1.a, var_1.a, false)), select(vec3<bool>(false, arg_1.c.a, true), vec3<bool>(var_1.a, arg_0.x, true), vec3<bool>(arg_2.x, arg_0.x, arg_2.x)))));
    return Struct_3(global1.x, var_1, all(!vec4<bool>(false | arg_0.x, false, arg_0.x, var_1.a)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    global4 = array<vec2<bool>, 28>();
    let var_0 = countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(51694u, arg_1, 0u), ~vec3<u32>(68276u, arg_1, 1u) >> (firstLeadingBit(vec3<u32>(1u, arg_0.a, global1.x)) % vec3<u32>(32u))), countOneBits(4294967295u)));
    global3 = firstLeadingBit(_wgslsmith_div_u32(~(arg_1 >> (global1.x % 32u)), ~(~arg_0.a)));
    let var_1 = arg_0.b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(445f, -627f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 631f) - vec2<f32>(455f, 804f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-999f, 1074f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, -599f)), !var_1)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -770f))));
    return vec4<bool>(true, !var_1, var_1, select(true, all(select(vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(arg_0.c, arg_0.c, var_1, arg_0.c), false)), var_1));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = 1f;
    global2 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1451f, _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1418f))) * 1000f)), Struct_1(arg_0.x >= _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, arg_0.x), 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, _wgslsmith_f_op_f32(-var_0), 1000f, _wgslsmith_f_op_f32(var_0 * -1298f))));
    var var_2 = func_4(func_2(!global4[_wgslsmith_index_u32(~4294967295u, 28u)], var_1, global4[_wgslsmith_index_u32(global1.x, 28u)], _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(413f * 1257f))))), firstTrailingBit(1u));
    var var_3 = var_2.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_u32(~(~firstLeadingBit(vec3<u32>(global1.x, global1.x, 27499u))), ~(~vec3<u32>(1u, global1.x, global1.x))));
    global2 = func_1(~reverseBits(~vec3<u32>(global1.x, global1.x, 103579u))).c.a;
    global1 = firstLeadingBit(~_wgslsmith_sub_vec3_u32(abs(max(vec3<u32>(16278u, global1.x, global1.x), vec3<u32>(4294967295u, 36333u, 4294967295u))), _wgslsmith_sub_vec3_u32(select(vec3<u32>(23676u, 1u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, var_0.c.a, false)), ~vec3<u32>(global1.x, 4294967295u, global1.x))));
    let var_1 = _wgslsmith_add_u32(~0u, 0u);
    global3 = 71263u;
    let var_2 = var_0.c;
    global3 = 23345u;
    global3 = 1u;
    var var_3 = var_0.c.a | !any(select(vec3<bool>(var_2.a, true, var_0.c.a), vec3<bool>(true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) + var_0.d.x), ~u_input.b.x, vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.a.x) | (u_input.a.zx & vec2<i32>(19209i, 1i)), abs(reverseBits(vec2<i32>(0i, 4121i)))), countOneBits(_wgslsmith_sub_i32(13443i, ~0i))));
}

