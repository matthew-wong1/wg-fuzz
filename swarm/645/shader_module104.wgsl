struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<f32>, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = false;
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1306f, 3017f, _wgslsmith_f_op_f32(f32(-1f) * -1415f), -354f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(205f * 1399f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(285f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(569f, var_1.x))))));
    return true;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    var var_0 = arg_1;
    let var_1 = func_3(arg_0);
    let var_2 = ~vec4<u32>(49337u, ~arg_2.a.x & ((19817u ^ u_input.b.x) >> (abs(4294967295u) % 32u)), arg_2.a.x, ~(1u << (arg_0.a % 32u)));
    global0 = ~0u;
    var var_3 = !vec3<bool>((arg_0.b.x != var_0.a) & !(1i > u_input.d.x), false, false);
    return Struct_4(select(arg_2.a.x, max(_wgslsmith_add_u32(u_input.e, 0u) | _wgslsmith_mult_u32(var_2.x, var_2.x), arg_2.a.x), !arg_2.c.a), vec2<bool>(true, _wgslsmith_f_op_f32(select(495f, _wgslsmith_f_op_f32(arg_2.b.a.x + 332f), true)) > arg_2.b.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -139f)));
    global1 = array<vec4<f32>, 19>();
    global0 = _wgslsmith_mod_u32(109591u, ~abs(u_input.b.x));
    global0 = 0u;
    return arg_2.c;
}

fn func_5(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_3(~arg_0.a, Struct_1(vec4<f32>(arg_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1193f)) * _wgslsmith_f_op_f32(-arg_0.b.b)), arg_0.b.b, 1722f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.b))))), arg_0.c);
    global0 = firstTrailingBit(42858u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) + 688f), _wgslsmith_f_op_f32(round(arg_0.b.a.x)))));
    let var_2 = arg_0;
    var_0 = Struct_3(vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(0u, arg_0.a.x, var_2.a.x, arg_0.a.x))), vec4<u32>(_wgslsmith_mod_u32(var_2.a.x, arg_0.a.x), arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 26143u, arg_0.a.x), vec3<u32>(var_0.a.x, 0u, 33387u)), ~8757u)), _wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(21518u, arg_0.a.x), vec2<u32>(u_input.b.x, 4294967295u)), vec2<u32>(var_0.a.x, u_input.e)), reverseBits(var_0.a.zx << (var_2.a.zx % vec2<u32>(32u)))), ~select(var_2.a.x, reverseBits(var_0.a.x), any(vec3<bool>(var_0.c.a, true, var_0.c.a)))), arg_0.b, Struct_2(arg_0.c.a));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(min(~1u, 4294967295u), ~min(arg_0.a.x, var_2.a.x)), 0u) | arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, select(arg_0, arg_0, true), arg_0), 19u)])));
    global0 = func_5(Struct_3(~(~select(vec3<u32>(4294967295u, u_input.e, 1u), vec3<u32>(arg_0, u_input.e, 4294967295u), false)), Struct_1(vec4<f32>(var_0.x, -662f, _wgslsmith_div_f32(-933f, -1282f), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f))), func_4(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x), vec2<i32>(46807i, u_input.a.x)), ~54032i), func_2(Struct_4(4294967295u, vec2<bool>(false, false)), Struct_2(true), Struct_3(vec3<u32>(u_input.b.x, 4294967295u, arg_0), Struct_1(vec4<f32>(var_0.x, -264f, var_0.x, var_0.x), var_0.x), Struct_2(false))), Struct_3(vec3<u32>(7817u, 45268u, 0u), Struct_1(vec4<f32>(var_0.x, -854f, -307f, -433f), var_0.x), arg_1))));
    var var_1 = firstTrailingBit(20107u);
    let var_2 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(abs(4294967295u), reverseBits(u_input.b.x), _wgslsmith_div_u32(0u, 4294967295u), u_input.b.x & 38576u) >> (vec4<u32>(countOneBits(40936u), ~arg_0, 0u, ~u_input.e) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(u_input.e, _wgslsmith_sub_u32(~u_input.e, _wgslsmith_add_u32(arg_0, 66054u)), u_input.e, ~_wgslsmith_mult_u32(u_input.e, arg_0))));
    global0 = _wgslsmith_clamp_u32(~10969u, 13035u, select(~(func_2(Struct_4(4294967295u, arg_2.xx), Struct_2(true), Struct_3(var_2.wxy, Struct_1(vec4<f32>(1171f, 169f, -235f, 1158f), var_0.x), arg_1)).a ^ abs(7583u)), 0u >> (arg_0 % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, 322f)))) == var_0.x));
    return _wgslsmith_dot_vec4_u32(var_2, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(130f + -953f), true)), 1000f, _wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(ceil(-393f)), true))))));
    var var_1 = u_input.b.x ^ 1u;
    global0 = _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(87861u, _wgslsmith_dot_vec3_u32(min(min(vec3<u32>(u_input.e, 1858u, 20029u), vec3<u32>(u_input.e, u_input.b.x, u_input.b.x)), vec3<u32>(114549u, u_input.b.x, u_input.b.x) | vec3<u32>(u_input.e, u_input.e, 0u)), vec3<u32>(4294967295u, 4294967295u >> (u_input.e % 32u), 126921u))));
    let var_2 = -7595i << (~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.e), ~u_input.b.x), ~func_1(0u, Struct_2(false), vec3<bool>(true, true, false), true)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(11745i, select(u_input.d.x >> (1u % 32u), 0i, func_3(Struct_4(u_input.b.x, vec2<bool>(false, true)))), u_input.d.x), select(-(~u_input.c), u_input.c, vec3<bool>(true, true, true))));
}

