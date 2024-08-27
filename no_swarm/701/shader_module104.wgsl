struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), false, 48004u, vec2<bool>(true, false), vec2<f32>(-1207f, 378f));

var<private> global1: f32;

var<private> global2: array<u32, 19> = array<u32, 19>(85353u, 52793u, 75684u, 63216u, 16422u, 60108u, 61753u, 23717u, 1u, 70790u, 5008u, 559u, 19265u, 6959u, 0u, 0u, 39864u, 30379u, 25668u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = ~(vec3<u32>(global0.c, ~4294967295u, 7595u) << (~vec3<u32>(_wgslsmith_div_u32(global0.c, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(6486u, u_input.b.x), u_input.b), firstLeadingBit(4294967295u)) % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(-1f);
    global2 = array<u32, 19>();
    var_0 = firstLeadingBit(_wgslsmith_sub_vec3_u32(min(~vec3<u32>(1u, 1u, 15273u), vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(global0.c, 1u, var_0.x)), 48970u)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(global0.c, 19u)], global0.c), vec3<u32>(var_0.x, 1u, global2[_wgslsmith_index_u32(u_input.b.x, 19u)])) & vec3<u32>(var_0.x, 4294967295u, 29661u))));
    let var_1 = Struct_3(1u);
    return global0.a.zz;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(false, (!arg_2 && (arg_2 & true)) != !(false != arg_2), (arg_0 ^ countOneBits(-34732i)) != _wgslsmith_sub_i32(-11323i, -arg_0)), arg_2, 0u, func_3(_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.x, global0.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, -681f) + vec2<f32>(global0.e.x, global0.e.x)))));
    var var_1 = vec3<bool>(u_input.b.x >= (u_input.b.x & global0.c), !(!func_3(-384f).x && true), !var_0.b);
    var var_2 = u_input.b >> (~min(u_input.b, u_input.b >> (vec2<u32>(1u, global0.c) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = arg_0;
    global2 = array<u32, 19>();
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    global0 = arg_1.b;
    global2 = array<u32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(239f, arg_2.e.x), _wgslsmith_f_op_f32(select(arg_2.e.x, _wgslsmith_f_op_f32(-arg_1.b.e.x), true))), _wgslsmith_f_op_f32(step(208f, _wgslsmith_f_op_f32(select(-1988f, _wgslsmith_f_op_f32(select(323f, 145f, true)), global0.b)))), _wgslsmith_f_op_f32(-arg_1.b.e.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.e.x * 446f), _wgslsmith_f_op_f32(-arg_3.x), true))), _wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f))))));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, 1000f) + -788f)))));
    let var_1 = u_input.d.x;
    return arg_2.d;
}

fn func_1() -> Struct_3 {
    global2 = array<u32, 19>();
    global0 = Struct_1(vec3<bool>(true, any(func_4(!global0.a, Struct_2(Struct_1(vec3<bool>(global0.d.x, true, false), global0.b, 30278u, global0.d, global0.e), Struct_1(global0.a, global0.b, u_input.b.x, global0.a.yy, vec2<f32>(global0.e.x, 862f)), vec3<i32>(-13991i, 11194i, u_input.a)), func_2(0i, vec3<u32>(0u, u_input.b.x, 73931u), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, global0.e.x, -358f, global0.e.x) * vec4<f32>(-430f, -756f, -1452f, global0.e.x)))), global0.a.x), any(vec2<bool>(true, false | func_3(global0.e.x).x)), ~38495u, !vec2<bool>(false, 60838u != (global0.c | 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e - vec2<f32>(global0.e.x, global0.e.x)))))));
    global1 = _wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.e.x, global0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.e.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -491f)), select(global0.b, false, true))));
    return Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(3587u, 19821u, 1u, u_input.b.x), vec4<u32>(80u, 60000u, 30303u, u_input.b.x)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(30074u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8833u, 19u)], 19u)], 19u)], u_input.b.x, 16860u), vec4<u32>(global2[_wgslsmith_index_u32(global0.c, 19u)], global0.c, u_input.b.x, 4294967295u)), ~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82067u, 19u)], 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 0u, u_input.b.x) ^ vec4<u32>(global2[_wgslsmith_index_u32(55957u, 19u)], 4294967295u, 0u, u_input.b.x))) % 32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<u32> {
    global1 = global0.e.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, global0.e.x, 227f))));
    var var_1 = Struct_3(6076u);
    let var_2 = -u_input.d.yy;
    let var_3 = Struct_2(Struct_1(select(select(global0.a, vec3<bool>(true, true, true), !global0.a), global0.a, select(global0.a, select(global0.a, global0.a, global0.b), !global0.d.x)), func_2(-var_2.x << (_wgslsmith_div_u32(4294967295u, u_input.b.x) % 32u), _wgslsmith_mod_vec3_u32(~vec3<u32>(18934u, 37058u, var_1.a), ~arg_0.ywx), true).d.x, var_1.a, vec2<bool>(true, false), var_0.yx), func_2(-u_input.a, ~arg_0.zzw, !(38321u == ~global2[_wgslsmith_index_u32(global0.c, 19u)])), u_input.d);
    return arg_0.yzw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-global0.e.x);
    global1 = -802f;
    var var_0 = Struct_4(33682i);
    var var_1 = 1u;
    let var_2 = Struct_3(_wgslsmith_add_u32(u_input.b.x & 4294967295u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(30991u, global0.c, var_2.a) ^ vec3<u32>(global0.c, 2484u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 1127u, var_2.a), vec3<u32>(4294967295u, 10817u, 1u)), vec3<u32>(4294967295u, 18824u, var_2.a))), func_5(~abs(vec4<u32>(1u, 1u, 47711u, 4294967295u)), func_1())), _wgslsmith_f_op_vec2_f32(exp2(func_2(var_0.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(global0.c, global0.c, 45645u), select(vec3<u32>(1u, 4294967295u, 1398u), vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u), true)), _wgslsmith_f_op_f32(global0.e.x - global0.e.x) == _wgslsmith_f_op_f32(min(global0.e.x, 353f))).e)), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(-332f * 746f), _wgslsmith_f_op_f32(-1585f - global0.e.x), -1581f), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46031u, 19u)], 19u)]));
}

