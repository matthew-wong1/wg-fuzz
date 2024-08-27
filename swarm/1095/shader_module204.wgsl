struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(0i, i32(-2147483648), -9914i, 1i), vec4<i32>(0i, 1i, 1i, 2147483647i), vec4<i32>(-1i, 44013i, 1i, -9771i), vec4<i32>(1i, 30302i, 0i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 9196i, 2147483647i), vec4<i32>(22682i, -1i, -7933i, 2147483647i), vec4<i32>(-1i, 1i, 32984i, 1i), vec4<i32>(0i, 1i, -2089i, 0i), vec4<i32>(0i, 11450i, 0i, 25490i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_add_i32(10805i, u_input.a.x);
    global0 = firstLeadingBit(vec4<u32>(max(57448u, firstTrailingBit(4294967295u)), abs(~_wgslsmith_mod_u32(0u, global0.x)), _wgslsmith_clamp_u32(88204u, u_input.d | ~38959u, global0.x), 0u));
    let var_1 = true;
    global1 = array<vec2<bool>, 23>();
    let var_2 = var_1;
    return vec3<bool>(!(!(!any(vec4<bool>(false, false, true, false)))), !all(!(!global1[_wgslsmith_index_u32(u_input.b.x, 23u)])), var_1);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !func_2(vec4<u32>(global0.x | ~u_input.b.x, ~1u, _wgslsmith_dot_vec2_u32(global0.wx & u_input.b, vec2<u32>(global0.x, u_input.b.x)), u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(590f, 408f, -229f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, -1001f, -815f) * vec3<f32>(297f, -676f, -1596f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-161f, 621f, -311f), _wgslsmith_f_op_vec3_f32(vec3<f32>(796f, -1233f, 320f) + vec3<f32>(1204f, 809f, 1925f)), !var_0)))), var_0, !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, false, var_0.x, false)), !(!vec4<bool>(true, var_0.x, arg_0, true))));
    global1 = array<vec2<bool>, 23>();
    let var_2 = Struct_1(var_1.a, var_0, var_1.c);
    global1 = array<vec2<bool>, 23>();
    return var_2;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(func_1(false).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-443f, -108f, 1000f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-732f, 163f, 768f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-791f, -1000f, 373f)))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * func_1(false).a.x), func_1(!(!func_2(vec4<u32>(u_input.d, u_input.b.x, global0.x, u_input.d)).x)).a.x, var_0.x);
    var var_1 = 1343f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1047f, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1657f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + 707f)))), var_0.zz));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_0.x * 1418f), var_2.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), var_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -936f, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -514f, var_2.x)))))));
    return _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(11035u, 1u, abs(0u))), vec3<u32>(0u, 4294967295u, global0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec4<i32>, 9>();
    let var_0 = ~_wgslsmith_div_vec3_u32(global0.yxw, ~(_wgslsmith_clamp_vec3_u32(global0.xyy, global0.zxw, vec3<u32>(1u, 0u, 4294967295u)) & _wgslsmith_mod_vec3_u32(global0.yzx, vec3<u32>(global0.x, 44311u, 1u))));
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(20806u, 0u, global0.x) | var_0), _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(1u, reverseBits(u_input.b.x))), ~(~(1u >> (0u % 32u)))), vec4<u32>(~u_input.d, func_3(), 25120u, 43568u << (u_input.d % 32u)));
    global0 = vec4<u32>(47005u, ~u_input.b.x, ~u_input.d, _wgslsmith_add_u32(1u, 1u));
    let var_1 = func_1(any(arg_0.c.wzw));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(arg_2.a.x, 1245f, -1352f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, arg_1.a.x, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)))), var_1.b)), !(!arg_2.b), !select(!arg_0.c, !vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_1.b.x), var_0.x > _wgslsmith_sub_u32(global0.x, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(-12788i << (_wgslsmith_mod_u32(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, global0.x), vec4<u32>(u_input.d, 67557u, global0.x, u_input.b.x))) % 32u)) << (0u % 32u);
    global0 = ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(56262u, global0.x, global0.x, u_input.d), ~vec4<u32>(1u, 12802u, u_input.d, 30915u)) | abs(~vec4<u32>(global0.x, global0.x, u_input.b.x, 13454u))));
    global1 = array<vec2<bool>, 23>();
    var var_1 = u_input.a.xz;
    var var_2 = func_4(func_1((select(1u, 36917u, false) != ~1682u) && all(vec4<bool>(true, true, true, true))), func_1(~_wgslsmith_div_u32(global0.x, 37158u) <= func_3()), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(755f, -189f, -104f) * vec3<f32>(451f, 1000f, -685f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, 494f, 792f))))), vec3<bool>(abs(var_1.x) > ~u_input.a.x, func_2(select(vec4<u32>(u_input.b.x, 23558u, 19048u, global0.x), vec4<u32>(1u, u_input.d, 992u, u_input.d), false)).x, true), vec4<bool>(true, true, !all(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, true)))));
    var var_3 = vec4<bool>(var_2.b.x, ~global0.x >= ~global0.x, !(_wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(u_input.d, global0.x), _wgslsmith_mod_u32(global0.x, global0.x)) >= u_input.d), !func_4(func_4(Struct_1(var_2.a, var_2.b, vec4<bool>(true, var_2.b.x, var_2.c.x, var_2.c.x)), Struct_1(var_2.a, var_2.b, vec4<bool>(var_2.b.x, var_2.b.x, false, var_2.b.x)), func_1(var_2.c.x)), func_4(func_4(Struct_1(var_2.a, var_2.b, var_2.c), Struct_1(var_2.a, vec3<bool>(var_2.c.x, false, var_2.c.x), var_2.c), Struct_1(var_2.a, vec3<bool>(var_2.b.x, false, var_2.c.x), var_2.c)), func_4(Struct_1(vec3<f32>(1226f, var_2.a.x, 157f), var_2.b, vec4<bool>(false, var_2.c.x, true, var_2.c.x)), Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(true, var_2.c.x, false), var_2.c), Struct_1(var_2.a, vec3<bool>(var_2.c.x, var_2.b.x, var_2.c.x), vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x))), func_1(false)), func_4(func_1(var_2.c.x), Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, -1551f), vec3<bool>(var_2.b.x, false, var_2.b.x), vec4<bool>(var_2.b.x, true, var_2.c.x, true)), Struct_1(var_2.a, vec3<bool>(false, var_2.c.x, true), var_2.c))).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec2_i32(-(vec2<i32>(var_1.x, 5783i) << (vec2<u32>(17682u, 0u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-7997i, u_input.c.x), u_input.c.xy), min(vec2<i32>(u_input.c.x, 1i), u_input.c.xz), countOneBits(u_input.a.xz)))));
}

