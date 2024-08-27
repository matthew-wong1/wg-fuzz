struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_1(false), vec4<u32>(0u, 1u, 1u, 0u)), Struct_4(Struct_1(true), vec4<u32>(54925u, 51014u, 52463u, 1u)), Struct_4(Struct_1(true), vec4<u32>(4294967295u, 0u, 4294967295u, 45717u)), Struct_4(Struct_1(true), vec4<u32>(1u, 1u, 0u, 0u)), Struct_4(Struct_1(true), vec4<u32>(68767u, 1u, 57973u, 0u)), Struct_4(Struct_1(false), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), Struct_4(Struct_1(true), vec4<u32>(1u, 23565u, 1u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(1u, 0u, 0u, 13405u)), Struct_4(Struct_1(false), vec4<u32>(4294967295u, 1u, 108851u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(18478u, 40661u, 1u, 108788u)), Struct_4(Struct_1(true), vec4<u32>(36860u, 1u, 4294967295u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(0u, 43369u, 4294967295u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(52201u, 1794u, 1u, 5396u)), Struct_4(Struct_1(true), vec4<u32>(22744u, 76067u, 2218u, 16934u)), Struct_4(Struct_1(false), vec4<u32>(64892u, 4294967295u, 13405u, 0u)), Struct_4(Struct_1(false), vec4<u32>(120046u, 1u, 15459u, 42539u)), Struct_4(Struct_1(false), vec4<u32>(159623u, 0u, 22639u, 63186u)), Struct_4(Struct_1(true), vec4<u32>(31605u, 7704u, 0u, 1u)), Struct_4(Struct_1(false), vec4<u32>(21266u, 42362u, 58429u, 1u)), Struct_4(Struct_1(false), vec4<u32>(29100u, 43058u, 1u, 0u)), Struct_4(Struct_1(false), vec4<u32>(0u, 102954u, 37983u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(1u, 33854u, 76357u, 26835u)), Struct_4(Struct_1(false), vec4<u32>(4099u, 22213u, 0u, 10146u)), Struct_4(Struct_1(false), vec4<u32>(52514u, 46404u, 0u, 46971u)), Struct_4(Struct_1(true), vec4<u32>(0u, 90623u, 0u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(0u, 4294967295u, 32605u, 4294967295u)), Struct_4(Struct_1(false), vec4<u32>(0u, 11869u, 1u, 30187u)), Struct_4(Struct_1(false), vec4<u32>(0u, 1u, 63258u, 98938u)), Struct_4(Struct_1(false), vec4<u32>(1u, 97129u, 11929u, 22107u)), Struct_4(Struct_1(false), vec4<u32>(4294967295u, 2367u, 4294967295u, 80564u)));

var<private> global2: array<bool, 23>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -2015f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1665f) - _wgslsmith_f_op_f32(1918f * -665f)))) - 1812f)));
    global1 = array<Struct_4, 30>();
    global0 = global1[_wgslsmith_index_u32(reverseBits(reverseBits(_wgslsmith_mod_u32(max(u_input.a, 4294967295u) >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), 4294967295u << (max(global0.b.x, u_input.a) % 32u)))), 30u)];
    var var_1 = global0.b ^ ~(global0.b | min(global0.b, global0.b));
    global1 = array<Struct_4, 30>();
    return -1000f;
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1097f, -1270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1281f) - _wgslsmith_f_op_f32(max(-787f, -906f))), _wgslsmith_f_op_f32(-940f * _wgslsmith_f_op_f32(419f + -256f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f + 893f) - _wgslsmith_f_op_f32(max(433f, -548f))), _wgslsmith_f_op_f32(521f * _wgslsmith_f_op_f32(floor(1756f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) * _wgslsmith_f_op_f32(-428f - 765f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-945f, 1033f)), 735f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.d.a)));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~global0.b.yzw, _wgslsmith_mod_vec3_u32(~vec3<u32>(39437u, arg_0.c, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 37610u, 4294967295u), arg_0.b.b.xwx))), 82039u, select(~_wgslsmith_mult_u32(3595u, 1u), _wgslsmith_mult_u32(~u_input.b, u_input.a), any(arg_0.d.a.wx))) & 33485u, 30u)];
    global2 = array<bool, 23>();
    global2 = array<bool, 23>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -618f), 387f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -171f))), 1f)));
}

fn func_1() -> f32 {
    global1 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_f_op_f32(abs(951f));
    let var_1 = _wgslsmith_dot_vec3_u32(~countOneBits(~vec3<u32>(global0.b.x, global0.b.x, global0.b.x)), vec3<u32>(1u, _wgslsmith_clamp_u32(~1u, global0.b.x, 63406u), u_input.b | ~1u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, ~17872u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 0u, 14193u) | vec4<u32>(u_input.a, global0.b.x, global0.b.x, global0.b.x), vec4<u32>(11688u, 0u, global0.b.x, 0u), global0.b << (vec4<u32>(428u, 23415u, global0.b.x, 22586u) % vec4<u32>(32u)))));
    let var_2 = global0.a.a;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_5(false, Struct_4(Struct_1(global0.a.a), vec4<u32>(u_input.b, global0.b.x, 1u, global0.b.x)), 8364u, Struct_2(vec4<bool>(true, true, global0.a.a, false), true, Struct_1(false), Struct_1(global0.a.a))), -15369i))))), vec4<f32>(-612f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(438f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1322f * -1471f) - 332f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_div_f32(485f, 767f), 441f)) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(253f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1290f, 1000f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1917f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~(~25631u), 30u)];
    var var_1 = !all(!(!vec2<bool>(var_0.a.a, var_0.a.a))) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1631f)) + _wgslsmith_f_op_f32(select(-872f, 752f, true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-138f)), _wgslsmith_f_op_f32(func_1()))) > 661f);
    var_1 = var_0.a.a;
    global1 = array<Struct_4, 30>();
    let var_2 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(951f, -946f) + vec2<f32>(-402f, 553f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-464f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, -1364f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-458f * -178f)))), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, u_input.b, var_0.b.x), vec4<u32>(global0.b.x, global0.b.x, var_0.b.x, 4294967295u))), ~var_0.b), abs(_wgslsmith_div_u32(35082u, 109870u)) | u_input.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(314f, -1000f, 945f, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-733f, 946f, -183f, 1075f), vec4<f32>(517f, -481f, 462f, 471f)), global0.a.a)))), countOneBits(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.b.wxw, vec3<u32>(u_input.b, u_input.a, u_input.b), var_0.b.wyw), select(vec3<u32>(u_input.a, 57794u, 4294967295u), vec3<u32>(43218u, global0.b.x, 0u), var_0.a.a))));
}

