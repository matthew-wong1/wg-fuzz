struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global1: u32 = 0u;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(880f, -2127f, _wgslsmith_f_op_f32(173f - -158f))))));
    var var_2 = 0u;
    global0 = array<vec3<bool>, 26>();
    let var_3 = !(!(!select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_0), vec4<bool>(true, arg_2.x, false, arg_0), true), !vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(arg_0, false, arg_2.x, arg_1.x))));
    return ~firstTrailingBit(u_input.a.x);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = Struct_1(var_0.a);
    let var_3 = (~(~var_0.a.x) | func_2(false, vec2<bool>(true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), var_2)) & countOneBits(4294967295u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x), var_2.a));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global1 = firstLeadingBit(_wgslsmith_mod_u32(39847u, 4294967295u));
    var var_0 = -1i;
    var var_1 = arg_0;
    global1 = _wgslsmith_dot_vec4_u32(arg_0.a << (arg_1.a % vec4<u32>(32u)), select(abs(vec4<u32>(1u, u_input.b.x, 7903u, 7207u)) << (arg_0.a % vec4<u32>(32u)), vec4<u32>(~22910u, ~18463u, arg_2.a.x, arg_1.a.x), true) << (arg_2.a % vec4<u32>(32u)));
    var var_2 = vec3<u32>(4294967295u, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(59925u, 4294967295u, var_1.a.x), ~arg_0.a.yxw & ~vec3<u32>(1u, arg_0.a.x, 8334u)), ~4294967295u << (abs(func_2(true, vec2<bool>(true, true), vec3<bool>(false, false, false), arg_1)) % 32u), !func_3(_wgslsmith_mod_i32(12512i, 10440i), Struct_1(vec4<u32>(10269u, 38379u, 4294967295u, 1u)), 1i)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~3980u, min(0u, 4294967295u), reverseBits(61025u), ~70187u)), arg_0.a));
    return vec3<u32>(~4294967295u, u_input.b.x, firstLeadingBit(~_wgslsmith_clamp_u32(abs(var_2.x), firstLeadingBit(var_1.a.x), 31773u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_u32(u_input.a.x, 22410u);
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(u_input.a.x, 1u, 0u) & func_1(Struct_1(vec4<u32>(u_input.a.x, 60091u, u_input.a.x, 4294967295u)), Struct_1(vec4<u32>(61542u, u_input.a.x, 9072u, u_input.b.x)), Struct_1(vec4<u32>(u_input.b.x, 43016u, u_input.b.x, 1u))), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, 0u) & vec3<u32>(1u, u_input.a.x, 1u)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37165u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, 16342u, 0u)), u_input.b.x, abs(99622u)), countOneBits(~(~vec3<u32>(0u, 0u, 1734u)))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x));
    var var_0 = -2147483647i;
    global1 = ~(~func_2(true, select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false))), !select(global0[_wgslsmith_index_u32(18739u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), Struct_1(~vec4<u32>(u_input.b.x, 4294967295u, 3081u, u_input.a.x))));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-865f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + -1133f) + _wgslsmith_f_op_f32(f32(-1f) * -496f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1359f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1181f, -280f))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(668f)), -823f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1228f * 625f))), all(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 26u)])))));
    global0 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 18119i << (_wgslsmith_clamp_u32(1u, 80424u, 15943u) % 32u), abs(1i)), vec3<i32>(6110i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(39647i, -1i), ~(-62335i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(21813i, 0i, -21911i))), vec3<i32>(-34823i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -1i), _wgslsmith_mod_i32(-1i, -2147483647i)), _wgslsmith_div_i32(1i, -55123i))), _wgslsmith_add_u32(func_1(Struct_1(vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, u_input.a.x), vec4<u32>(18654u, u_input.a.x, 1u, 6873u))), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(14589u, u_input.a.x, u_input.b.x, 21040u), vec4<u32>(22545u, u_input.a.x, u_input.a.x, u_input.a.x)))).x, ~max(u_input.a.x, 4294967295u) ^ _wgslsmith_div_u32(~37589u, ~u_input.a.x)));
}

