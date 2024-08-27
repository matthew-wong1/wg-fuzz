struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2904i;

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-545f, 112f), vec2<f32>(-616f, -1249f), vec2<f32>(323f, -167f), vec2<f32>(-350f, -534f), vec2<f32>(380f, -768f), vec2<f32>(-2791f, -552f), vec2<f32>(-537f, 1303f), vec2<f32>(-417f, -1286f), vec2<f32>(901f, -629f), vec2<f32>(-178f, 550f));

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 142841u);

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 1u, 4294967295u);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-682f, false), Struct_1(161f, false), Struct_1(-349f, true), Struct_1(-1000f, false), Struct_1(-158f, true), Struct_1(1495f, true), Struct_1(278f, false), Struct_1(402f, true), Struct_1(1679f, false), Struct_1(1000f, false), Struct_1(-545f, true), Struct_1(-1000f, false), Struct_1(914f, false), Struct_1(227f, false), Struct_1(-2196f, false), Struct_1(-602f, false), Struct_1(-453f, true), Struct_1(-987f, true), Struct_1(-346f, true), Struct_1(1000f, true), Struct_1(269f, false), Struct_1(202f, true), Struct_1(-178f, false), Struct_1(-297f, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = false;
    global4 = array<Struct_1, 24>();
    var_0 = true;
    var var_1 = Struct_2(1u, vec4<bool>(false & any(vec3<bool>(false, arg_1.b, true)), !(!(!arg_1.b)), _wgslsmith_f_op_f32(min(-416f, arg_1.a)) >= arg_1.a, _wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_f_op_f32(-424f - -1012f)), global4[_wgslsmith_index_u32(u_input.b.x, 24u)]);
    let var_2 = select(!vec2<bool>(_wgslsmith_add_i32(u_input.c.x, 0i) >= countOneBits(u_input.c.x), !var_1.b.x), var_1.b.yx, false);
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(vec4<u32>(11264u, global2.x, 29989u, 2330u) << (vec4<u32>(1u, u_input.a, 0u, 27639u) % vec4<u32>(32u)))), vec4<u32>(global3.x, ~countOneBits(102563u), 33724u, ~(~global3.x))), global3.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(reverseBits(_wgslsmith_div_u32(func_3(global4[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_1(-930f, true)), countOneBits(29184u))), 1u, global3.x) | global2.xzx;
    global2 = firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(49808u, 37722u, global3.x, 4294967295u), ~vec4<u32>(u_input.b.x, global3.x, 34989u, global2.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 18155u, u_input.b.x, global3.x), vec4<u32>(4294967295u, global2.x, 4294967295u, u_input.a)) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, 50661u, global3.x, u_input.a), vec4<u32>(global2.x, 4294967295u, global2.x, global3.x)) << (~vec4<u32>(u_input.b.x, 1u, var_0.x, 38462u) % vec4<u32>(32u)))));
    global4 = array<Struct_1, 24>();
    var var_1 = -31367i;
    let var_2 = Struct_2(firstTrailingBit(~4294967295u), select(vec4<bool>(arg_0.x != true, !arg_0.x || false, arg_0.x, true), select(!(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), arg_0.x), select(select(arg_0.x, true, arg_0.x), arg_0.x, true)), select(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, true), arg_0.x), arg_0.x), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x)), vec4<bool>(false, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, true, arg_0.x)), vec4<bool>(all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), any(vec3<bool>(arg_0.x, arg_0.x, true)), any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), select(false, false, arg_0.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(324f, 1780f)))), all(select(select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(false, arg_0.x, false, true)), !vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, true)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)), 10414u < global2.x);
}

fn func_1() -> i32 {
    global4 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, ~global3.x, 6264u, ~global3.x), reverseBits(abs(~vec4<u32>(69415u, 43846u, global3.x, u_input.a)))), vec4<u32>(select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(57459u, global2.x, 38886u, 28981u), vec4<u32>(global2.x, 0u, 0u, 4294967295u)), true), ~42157u, firstLeadingBit(0u), _wgslsmith_mod_u32(global3.x, u_input.a)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b.x, 62832u, countOneBits(u_input.a), ~global2.x), abs(vec4<u32>(4294967295u, global2.x, 0u, u_input.b.x))));
    let var_1 = func_2(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    global2 = abs(var_0);
    let var_2 = Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u >> (1u % 32u), abs(1u), _wgslsmith_mult_u32(global2.x, 0u)), firstLeadingBit(max(vec3<u32>(var_0.x, global3.x, u_input.a), global2.wwx))), vec4<bool>(var_1.b & var_1.b, var_1.b, false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1640f * 1016f))) < -377f), Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(121f)), 1f))), !var_1.b));
    return -12238i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(0u, ~_wgslsmith_mult_u32(min(50581u, 1u), 0u), _wgslsmith_add_u32(global2.x >> ((~global3.x ^ (global2.x ^ 21768u)) % 32u), (_wgslsmith_mult_u32(10074u, u_input.a) << (u_input.a % 32u)) ^ ~(~0u)));
    global2 = vec4<u32>(_wgslsmith_clamp_u32(global2.x, 14368u, _wgslsmith_sub_u32(global2.x, ~(~6626u))), 0u, global2.x, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global3.x, global2.x), vec3<u32>(global2.x, 44065u, 4294967295u)) << (~19570u % 32u), _wgslsmith_clamp_u32(global3.x, 30525u, 4294967295u))));
    let var_1 = _wgslsmith_f_op_f32(step(1000f, -335f));
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 + 871f), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -1399f))), vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1299f)) + _wgslsmith_f_op_f32(var_1 + var_1)), -663f, 487f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, ~42968u, u_input.a << (38072u % 32u), _wgslsmith_clamp_u32(u_input.b.x, global3.x, u_input.a)), vec4<u32>(reverseBits(global2.x), _wgslsmith_sub_u32(global3.x, 1u), _wgslsmith_mod_u32(51588u, 4294967295u), u_input.a) | _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(12926u, 1u, 4294967295u, 28024u), vec4<u32>(17489u, 0u, u_input.a, 38037u)), vec4<u32>(0u, 0u, 1u, var_0.x) & vec4<u32>(var_0.x, global2.x, var_0.x, 4294967295u))), vec4<i32>(-42054i, min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 2147483647i), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)), u_input.c.x, 38512i), select(-1i, u_input.c.x, true)), ~(-(-1i & u_input.c.x)), ~(-2147483647i)), reverseBits(vec3<i32>(71788i, _wgslsmith_dot_vec3_i32(u_input.c.xzy, u_input.c.zyx) ^ -u_input.c.x, _wgslsmith_clamp_i32(-u_input.c.x, u_input.c.x, u_input.c.x))));
}

