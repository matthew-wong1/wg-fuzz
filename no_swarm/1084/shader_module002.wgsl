struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1851f;

var<private> global1: array<i32, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = any(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)));
    var_0 = true;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(~(firstTrailingBit(2147483647i) >> (arg_0.x % 32u)), global1[_wgslsmith_index_u32(~8004u, 14u)]), 79182i, select(_wgslsmith_dot_vec3_i32(~(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], u_input.a, global1[_wgslsmith_index_u32(arg_0.x, 14u)]) << (arg_0.xxx % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(21829u, 14u)]), vec3<i32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(13181u, 14u)], 44665i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(arg_0.x, 14u)]), vec3<i32>(-1i, global1[_wgslsmith_index_u32(64788u, 14u)], -1i)))), 1i, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), u_input.a);
    var_1 = firstLeadingBit(~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, var_1.x, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], 2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(37899u, 14u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_1.x, var_1.x, global1[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(-16020i, 0i, 11025i, -1i), vec4<i32>(u_input.a, 53576i, 2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 14u)])), select(vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(0u, 14u)], u_input.a, -2147483647i), vec4<i32>(var_1.x, 0i, var_1.x, 3052i), vec4<bool>(false, true, true, false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1983f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, -453f) - vec2<f32>(589f, 681f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(992f, 810f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(216f, -1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-604f, 1431f))))), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1601f)), -591f) - vec2<f32>(-708f, 1f)) + vec2<f32>(-415f, -662f)));
    return select(-vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 14u)]), max(~15289i, ~u_input.a), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(94249u, 14u)], 2147483647i << (arg_0.x % 32u)), u_input.a | 2147483647i), vec4<i32>(~u_input.a, abs(-1i), _wgslsmith_mod_i32(-(~(-2147483647i)), u_input.a), -2147483647i), vec4<bool>(_wgslsmith_f_op_f32(abs(537f)) >= var_2.x, true || (arg_0.x > firstTrailingBit(arg_0.x)), false, true));
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    return func_3(~firstLeadingBit(~reverseBits(vec4<u32>(9361u, 27051u, 1u, 13553u))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<i32, 14>();
    let var_0 = Struct_2(~(~vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)] ^ u_input.a, _wgslsmith_div_i32(2147483647i, 2147483647i), -22512i)), arg_0.x, any(vec2<bool>(true, true)) && true, reverseBits(select(func_2(vec3<bool>(false, true, false)) & vec4<i32>(0i, global1[_wgslsmith_index_u32(325u, 14u)], global1[_wgslsmith_index_u32(2904u, 14u)], 67499i), -vec4<i32>(-11906i, -2147483647i, -1839i, -32133i), true)), false);
    global1 = array<i32, 14>();
    var var_1 = vec2<bool>(var_0.e, true);
    let var_2 = !(!var_0.c);
    return Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(var_2, var_0.e), select(vec2<bool>(true, var_0.e), vec2<bool>(false, false), true)), vec2<bool>(all(vec3<bool>(var_2, var_2, var_1.x)), arg_0.x >= var_0.b), false), vec2<bool>(!(var_1.x & var_0.c), !var_1.x), !(false || var_2)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = !(!(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_3.b, 14u)], arg_3.a.x)), arg_3.a) == -1i));
    let var_1 = func_2(!vec3<bool>(true, var_0, all(!vec4<bool>(false, false, arg_3.e, arg_0.a.x))));
    global0 = 1662f;
    global0 = -604f;
    let var_2 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1014u, arg_2, 47341u))), vec3<u32>(23262u, 1399u, arg_3.b));
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 14>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) - -972f)));
    var var_0 = global1[_wgslsmith_index_u32(~1u, 14u)] >> (37334u % 32u);
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(251f + 2566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1112f, 923f)))) + 460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(397f, -552f)) - _wgslsmith_f_op_f32(-1407f * -890f))), vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(func_4(func_1(vec4<u32>(30841u, 4294967295u, 37445u, 12180u)), -903f, 4294967295u, Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 110i, global1[_wgslsmith_index_u32(51913u, 14u)]), 79232u, false, vec4<i32>(global1[_wgslsmith_index_u32(63684u, 14u)], -2147483647i, global1[_wgslsmith_index_u32(30150u, 14u)], global1[_wgslsmith_index_u32(34226u, 14u)]), false)), 14u)], countOneBits(-u_input.a)), _wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(~0u, 14u)] >> (min(36269u, 106166u) % 32u)), max(~global1[_wgslsmith_index_u32(36970u, 14u)], firstTrailingBit(2147483647i))), _wgslsmith_sub_vec2_i32(vec2<i32>(func_2(vec3<bool>(true, false, true)).x, 1i), firstTrailingBit(min(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<i32>(2162i, global1[_wgslsmith_index_u32(31844u, 14u)])) << (abs(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1286f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-433f * -1104f))))));
}

