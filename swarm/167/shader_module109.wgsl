struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(68143u, 4294967295u, 4294967295u, 37767u);

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(18727u, 63680u, 39122u, 47728u), vec4<u32>(1u, 49459u, 36788u, 4294967295u), vec4<u32>(1u, 1u, 11744u, 4294967295u), vec4<u32>(41934u, 1u, 14814u, 4755u), vec4<u32>(11080u, 4294967295u, 30267u, 35309u), vec4<u32>(39064u, 66941u, 14389u, 3422u), vec4<u32>(1u, 4294967295u, 26561u, 4294967295u), vec4<u32>(18963u, 71898u, 4294967295u, 90396u), vec4<u32>(1u, 67671u, 1u, 8321u), vec4<u32>(64089u, 1u, 0u, 46476u), vec4<u32>(0u, 1u, 4294967295u, 25333u), vec4<u32>(15702u, 4294967295u, 49036u, 4294967295u), vec4<u32>(1u, 4294967295u, 20246u, 4294967295u), vec4<u32>(8257u, 32852u, 8734u, 61847u), vec4<u32>(107983u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 32538u, 49215u, 4294967295u), vec4<u32>(0u, 28654u, 16094u, 15254u), vec4<u32>(29194u, 66057u, 45788u, 4294967295u), vec4<u32>(0u, 11998u, 0u, 90119u), vec4<u32>(56480u, 41884u, 14695u, 14464u), vec4<u32>(41769u, 4294967295u, 11766u, 0u), vec4<u32>(32761u, 47058u, 4294967295u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f * 760f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2256f, 575f)) - _wgslsmith_f_op_f32(-472f + 1000f)), 791f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), true));
    let var_1 = Struct_1(_wgslsmith_sub_u32(global0.x & 45051u, ~select(firstLeadingBit(global0.x), global0.x & global0.x, true)), !((0i >> (1u % 32u)) == _wgslsmith_mult_i32(select(u_input.a, 1i, false), min(u_input.a, 35766i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -719f), _wgslsmith_f_op_f32(max(var_0.x, 1413f)), -1683f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1475f)) + vec3<f32>(-112f, -1019f, -499f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 284f, -1000f)))))));
    var var_2 = global0.yww;
    let var_3 = var_1.c;
    return _wgslsmith_div_vec2_f32(var_3.yx, var_1.c.xz);
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global0 = ~_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(global0.x, 22u)], vec4<u32>(~(~global0.x), max(39174u, global0.x), firstLeadingBit(countOneBits(1u)), global0.x >> (~19422u % 32u)));
    var var_0 = global0.x;
    let var_1 = 1f;
    var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(16786u, 1u, 30333u) & ~global0.x, select(global0.x, global0.x, true)));
    let var_2 = global2[_wgslsmith_index_u32(global0.x ^ global0.x, 22u)];
    return Struct_4(arg_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -548f), 635f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -954f)) * _wgslsmith_f_op_vec2_f32(func_3())))), vec2<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-615f - 187f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, -2439f, var_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(104f, var_1, 156f), vec3<f32>(var_1, -817f, var_1))))), arg_0.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = select(false, true, false);
    global1 = array<Struct_1, 13>();
    return func_2(Struct_3(!vec3<bool>(var_0, true, var_0 == false)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(92928u, global0.x), arg_1.x, arg_2.d), global1[_wgslsmith_index_u32(global0.x, 13u)], -1i, vec4<i32>(~select(~4356i, -45091i, arg_2.e.x), ~abs(u_input.a), 1i, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -20632i, u_input.a, u_input.a), vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.a)) ^ 2954i) << (~(~4294967295u) % 32u)), Struct_1(_wgslsmith_mult_u32(1u, global0.x), all(func_2(arg_2.a).e.yy), _wgslsmith_f_op_vec3_f32(-arg_2.d)));
    let var_1 = Struct_4(func_2(func_1(~(-var_0.d.wxx)).a).a, vec2<f32>(1693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_div_f32(arg_2.d.x, arg_2.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b.c.yy), _wgslsmith_f_op_vec2_f32(arg_2.c - arg_2.b), vec2<bool>(var_0.b.b, true))) + vec2<f32>(_wgslsmith_div_f32(var_0.b.c.x, 779f), _wgslsmith_f_op_vec2_f32(func_3()).x))), var_0.e.c, select(arg_2.e, arg_1.yzw, !vec3<bool>(false, true, var_0.e.b)));
    global1 = array<Struct_1, 13>();
    let var_2 = ~0u;
    let var_3 = ~(~42436u);
    return any(vec4<bool>(-28264i > _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.d.x, -3227i), -vec3<i32>(u_input.a, -1i, u_input.a)), var_1.e.x, func_1(~(~var_0.d.xxw)).a.a.x, var_0.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 22>();
    global2 = array<vec4<u32>, 22>();
    global2 = array<vec4<u32>, 22>();
    var var_0 = -2147483647i;
    let var_1 = Struct_1(4294967295u, !(true && func_4(_wgslsmith_f_op_f32(round(-1087f)), vec4<bool>(false, true, true, false), func_1(vec3<i32>(41516i, 14827i, 0i)))), vec3<f32>(-400f, 2540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-949f, 227f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 1309f, var_1.c.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)))), vec3<f32>(var_1.c.x, -1000f, var_1.c.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)) * var_1.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -379f), var_1.c.x)), _wgslsmith_div_f32(-1334f, -1171f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_2 * var_2));
}

