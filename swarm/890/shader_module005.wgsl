struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 30838u, 45211u, 23906u), vec4<u32>(4294967295u, 4294967295u, 1u, 102345u), vec4<u32>(29616u, 1u, 1u, 1u), vec4<u32>(4294967295u, 53395u, 35539u, 13547u), vec4<u32>(0u, 13042u, 0u, 4294967295u), vec4<u32>(10827u, 118049u, 0u, 92016u), vec4<u32>(0u, 4294967295u, 0u, 17099u), vec4<u32>(27364u, 128703u, 23499u, 33011u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 5265u, 1u, 43881u), vec4<u32>(65927u, 4294967295u, 94080u, 0u), vec4<u32>(1u, 6902u, 10476u, 37942u), vec4<u32>(1790u, 1u, 0u, 4294967295u), vec4<u32>(51918u, 69812u, 60525u, 10887u), vec4<u32>(1u, 50475u, 12359u, 18685u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(10353u, 0u, 51182u, 0u), vec4<u32>(4294967295u, 51391u, 0u, 31530u), vec4<u32>(1u, 50438u, 4294967295u, 1u), vec4<u32>(30134u, 23922u, 1u, 1u), vec4<u32>(95004u, 49751u, 48554u, 79744u), vec4<u32>(1u, 22942u, 43058u, 1u), vec4<u32>(13308u, 4294967295u, 93958u, 4294967295u), vec4<u32>(29551u, 9048u, 1u, 1u), vec4<u32>(47988u, 24431u, 0u, 0u), vec4<u32>(0u, 1u, 37659u, 38263u), vec4<u32>(0u, 10221u, 6134u, 4294967295u), vec4<u32>(22289u, 0u, 1u, 1u), vec4<u32>(0u, 19934u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u));

var<private> global2: array<i32, 9>;

var<private> global3: array<i32, 25> = array<i32, 25>(19417i, 0i, 1580i, -44450i, 33489i, -1i, 1i, -32410i, 65030i, 0i, 26517i, 1i, i32(-2147483648), -1i, 1i, 1i, 50605i, 1i, i32(-2147483648), i32(-2147483648), -55044i, 2147483647i, 20542i, 2147483647i, 21113i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<u32> {
    global0 = array<vec4<bool>, 27>();
    global3 = array<i32, 25>();
    global2 = array<i32, 9>();
    return vec2<u32>(firstTrailingBit(u_input.a), 17096u);
}

fn func_3() -> vec3<bool> {
    let var_0 = -1i;
    let var_1 = countOneBits(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a ^ (75755u << (u_input.a % 32u)), 9u)], -reverseBits(global2[_wgslsmith_index_u32(u_input.a, 9u)])));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(607f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -223f))))));
    global1 = array<vec4<u32>, 30>();
    let var_3 = u_input.a << (_wgslsmith_sub_u32(countOneBits(~45640u), func_2().x) % 32u);
    return select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(false, true, any(vec2<bool>(true, true))), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 13781u, 4721u), ~vec3<u32>(u_input.a, 4294967295u, 31416u)), 25u)], 26167i) < var_1);
}

fn func_1() -> vec3<bool> {
    let var_0 = vec3<u32>(u_input.a, max(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13826u, 1u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_u32(u_input.a, u_input.a)), 0u >> (u_input.a % 32u)), ~u_input.a) | ~(vec3<u32>(~47785u, 1121u, u_input.a) >> (vec3<u32>(abs(u_input.a), ~1u, ~u_input.a) % vec3<u32>(32u)));
    let var_1 = Struct_1(true);
    var var_2 = ~func_2();
    global3 = array<i32, 25>();
    let var_3 = var_1;
    return select(select(!(!func_3()), vec3<bool>(_wgslsmith_clamp_u32(1u, 1u, 14570u) <= 1u, !(true | var_1.a), !(!var_1.a)), vec3<bool>(true, var_1.a, !func_3().x)), func_3(), select(true, true, all(func_3().zx)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = ~u_input.a;
    var var_1 = Struct_1(!(func_3().x && !any(vec3<bool>(true, true, false))));
    var var_2 = true;
    var_2 = func_3().x;
    var var_3 = true;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), -601f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(-754f, 840f)), _wgslsmith_f_op_f32(f32(-1f) * -161f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(0u, u_input.a) | vec2<u32>(41459u, 43428u)), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u)), true));
    global1 = array<vec4<u32>, 30>();
    var_0 = ~firstTrailingBit(countOneBits(firstLeadingBit(~vec2<u32>(4294967295u, u_input.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(691f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2069f - -1798f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + 769f))));
    global1 = array<vec4<u32>, 30>();
    var var_2 = var_1;
    let var_3 = max(select(~(1u & (63374u << (u_input.a % 32u))), ~53411u, firstTrailingBit(_wgslsmith_mult_u32(u_input.a, var_0.x)) != ~(4294967295u | u_input.a)), 1u);
    let var_4 = countOneBits(vec2<u32>(u_input.a, select(~0u, 23528u, any(vec2<bool>(var_1.a, var_1.a))) & 32306u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3, var_0.x), 25u)] ^ 0i, ~(-2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(any(vec3<bool>(true, true, true))), !func_1(), Struct_1(true), var_1))));
}

