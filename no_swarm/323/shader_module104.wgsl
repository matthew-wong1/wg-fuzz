struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<f32>, 22>;

var<private> global2: array<i32, 13>;

var<private> global3: f32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global1 = array<vec2<f32>, 22>();
    let var_0 = !vec3<bool>(false, all(vec4<bool>(true, true, true, true)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-637f + arg_1)));
    global3 = -445f;
    global1 = array<vec2<f32>, 22>();
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.xxy));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(573f, -1000f, arg_1.x)))) + _wgslsmith_f_op_vec3_f32(ceil(arg_1.xxy))), vec3<f32>(_wgslsmith_f_op_f32(-2148f + -306f), 762f, arg_1.x), vec3<bool>(_wgslsmith_div_f32(-556f, arg_1.x) != arg_1.x, true | func_3(global0.x, -309f), arg_2))));
    return firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, ~0u), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x), firstLeadingBit(vec2<u32>(0u, 86433u))), abs(~vec2<u32>(80494u, 1u)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = ~(~func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 245f, -315f, -610f)) + vec4<f32>(-2615f, arg_0.x, arg_0.x, -301f)), !all(vec4<bool>(true, true, true, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-184f)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1368f, -239f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1362f, -672f, 291f) + vec3<f32>(-577f, arg_0.x, arg_0.x))), true)))));
    let var_2 = Struct_1(vec3<f32>(arg_0.x, 888f, 2197f));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a));
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(var_1.a.x - 1000f)), _wgslsmith_f_op_f32(-var_2.a.x), true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a) + _wgslsmith_f_op_vec3_f32(-var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 22>();
    var var_0 = func_1(global1[_wgslsmith_index_u32(1u, 22u)]);
    global2 = array<i32, 13>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 14753u), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), abs(vec2<u32>(1489u, 23008u))))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~49166u, _wgslsmith_sub_u32(0u, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 31341u), vec3<u32>(global0.x, global0.x, global0.x))), vec3<u32>(max(39809u, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 4164u), vec3<u32>(global0.x, 0u, global0.x)), reverseBits(459u))), _wgslsmith_clamp_u32(firstTrailingBit(20728u), select(global0.x, global0.x, true), global0.x)) % vec2<u32>(32u));
    let var_2 = vec4<u32>(20256u, ~global0.x ^ func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1527f, var_1.a.x, var_1.a.x, 682f))), false).x, firstLeadingBit(countOneBits(1u)), ~firstTrailingBit(abs(40835u)));
    var var_3 = all(select(vec3<bool>(true, all(vec2<bool>(true, true)), false), vec3<bool>(true, false, true), true));
    var var_4 = firstTrailingBit(min(var_2, firstLeadingBit(~var_2)) ^ (vec4<u32>(global0.x << (0u % 32u), _wgslsmith_mod_u32(22450u, var_2.x), countOneBits(0u), var_2.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 0u, 30000u, 0u), vec4<u32>(67960u, 45779u, 2920u, global0.x) >> (vec4<u32>(global0.x, var_2.x, var_2.x, global0.x) % vec4<u32>(32u)), vec4<u32>(var_2.x, global0.x, 32063u, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 5930u, ~((-vec2<i32>(1i, global2[_wgslsmith_index_u32(var_4.x, 13u)]) << (var_4.wy % vec2<u32>(32u))) << (abs(~vec2<u32>(global0.x, var_2.x)) % vec2<u32>(32u))), vec2<u32>(~37262u, ~(_wgslsmith_mod_u32(25545u, var_4.x) >> (abs(var_4.x) % 32u))));
}

