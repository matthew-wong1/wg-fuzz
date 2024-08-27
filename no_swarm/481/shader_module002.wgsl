struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: array<Struct_5, 5>;

var<private> global2: f32;

var<private> global3: array<i32, 19> = array<i32, 19>(0i, 1i, -1i, 28958i, -1i, 0i, 0i, -20533i, 0i, -2612i, 22216i, i32(-2147483648), -21443i, 1i, -30735i, 0i, 1i, -5280i, i32(-2147483648));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_5, 5>();
    var var_0 = abs(_wgslsmith_mod_u32(23110u, max(arg_1.b, select(~177419u, 8670u, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 295f, -1200f), _wgslsmith_f_op_vec3_f32(-arg_1.a.zyx), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), arg_1.a.wwz))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_f32(max(arg_1.a.x, -120f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1455f * arg_1.a.x))));
    var_0 = arg_1.b;
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(-var_1.x)), arg_1.a.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    global0 = select(_wgslsmith_mod_vec2_i32(-vec2<i32>(abs(global3[_wgslsmith_index_u32(1u, 19u)]), global3[_wgslsmith_index_u32(u_input.c, 19u)] & 19232i), vec2<i32>(~global3[_wgslsmith_index_u32(u_input.a.x, 19u)], ~global3[_wgslsmith_index_u32(53933u, 19u)]) | _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.e.x), u_input.e)), _wgslsmith_add_vec2_i32(-vec2<i32>(~global0.x, 7629i), ~u_input.e), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-984f))))));
    let var_0 = Struct_4(Struct_2(-(-vec3<i32>(-2147483647i, -15684i, global0.x) << (~u_input.a % vec3<u32>(32u)))), Struct_3(vec4<bool>(!arg_1, arg_1, !all(vec4<bool>(false, false, arg_1, true)), true), _wgslsmith_mult_u32(25171u, select(u_input.b.x, 96272u, arg_1) | u_input.c)), Struct_3(vec4<bool>(true, true, arg_0.x == _wgslsmith_div_f32(1026f, -1002f), false), _wgslsmith_clamp_u32(u_input.d.x, u_input.c, _wgslsmith_sub_u32(~29814u, u_input.a.x))), u_input.c ^ ~(~_wgslsmith_sub_u32(41698u, 1113u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global0.x, Struct_1(vec4<f32>(2366f, arg_0.x, 582f, arg_0.x), u_input.c))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -845f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x))), 0u);
    var var_2 = all(!select(select(var_0.b.a.wx, vec2<bool>(var_0.c.a.x, arg_1), arg_1), vec2<bool>(false, false), true)) == !(!(var_1.a.x != _wgslsmith_f_op_f32(trunc(var_1.a.x))));
    global3 = array<i32, 19>();
    return reverseBits(~(~(~countOneBits(54139u))));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, u_input.a.x);
    var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32((1u << (0u % 32u)) << (u_input.c % 32u), ~func_2(vec3<f32>(-146f, -147f, -319f), true)), ~(~_wgslsmith_mult_u32(1u, u_input.c))), 37862u);
    global3 = array<i32, 19>();
    global0 = u_input.e;
    let var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-2147483647i, 2147483647i, u_input.e.x)), vec3<i32>(2147483647i, -1i, u_input.e.x)), firstLeadingBit(42132i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, -1i, 2147483647i, global3[_wgslsmith_index_u32(u_input.c, 19u)]), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 0i, u_input.e.x, u_input.e.x), vec4<i32>(global0.x, global0.x, global0.x, 2589i), vec4<i32>(u_input.e.x, -30938i, u_input.e.x, 36026i)))));
    return Struct_4(Struct_2(abs(~(vec3<i32>(var_1.x, u_input.e.x, 48437i) ^ vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.d.x, 19u)], global3[_wgslsmith_index_u32(1u, 19u)])))), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_clamp_u32(39715u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.c), vec4<u32>(13558u, 4294967295u, 9915u, u_input.c)))), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(~u_input.d, ~u_input.a), abs(_wgslsmith_div_vec3_u32(u_input.d, u_input.b))), u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> StorageBuffer {
    let var_0 = 1175u;
    global1 = array<Struct_5, 5>();
    global0 = vec2<i32>(global0.x >> (~4294967295u % 32u), 2147483647i >> ((arg_0.b.b >> (select(max(arg_0.d, arg_0.b.b), ~arg_0.c.b, func_1().b.a.x) % 32u)) % 32u));
    let var_1 = false != any(vec4<bool>(!(1u < arg_0.c.b), select(arg_0.c.a.x, true, arg_0.b.a.x), false, arg_0.c.a.x));
    let var_2 = func_1().c;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f + -150f) + -416f)), 0u, ~(~vec3<u32>(9128u, u_input.c, arg_0.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = func_4(func_1(), func_1().c.a.x);
}

