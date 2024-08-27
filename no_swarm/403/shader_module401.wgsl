struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 9> = array<bool, 9>(true, false, false, false, true, false, false, false, true);

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(1470f), Struct_3(1000f), Struct_3(-1001f), Struct_3(213f), Struct_3(-868f), Struct_3(1055f), Struct_3(212f), Struct_3(-628f), Struct_3(390f), Struct_3(719f), Struct_3(-109f));

var<private> global3: array<Struct_2, 24>;

var<private> global4: array<u32, 10> = array<u32, 10>(4294967295u, 35319u, 57925u, 0u, 60957u, 2544u, 0u, 4294967295u, 0u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32((_wgslsmith_clamp_u32(6869u, global4[_wgslsmith_index_u32(u_input.a, 10u)], 39664u) & global4[_wgslsmith_index_u32(1u, 10u)]) ^ abs(min(abs(15098u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 1u), 0u))), 10u)], 24u)];
    var var_1 = select(var_0.d.a, global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(57379u, u_input.b.x), 10u)]), 10u)], false | all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(30170u, 9u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(15771u, 9u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(11818u, 9u)], false, global1[_wgslsmith_index_u32(12234u, 9u)], true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.a.a, 9u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 9u)]), global1[_wgslsmith_index_u32(u_input.a, 9u)]), all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b.a, 9u)])))));
    var var_2 = -u_input.d & u_input.c;
    global4 = array<u32, 10>();
    var var_3 = 102428u;
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    global3 = array<Struct_2, 24>();
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, ~vec2<u32>(0u, 21772u)), reverseBits(~u_input.b))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(arg_1, 10u)], 0u, 51341u, arg_0.x), vec4<u32>(36768u, u_input.a, 1u, arg_1)) & _wgslsmith_mult_u32(arg_1, 0u), _wgslsmith_add_u32(func_3(global2[_wgslsmith_index_u32(arg_0.x, 11u)]), ~arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(select(1037f, global0.x, global1[_wgslsmith_index_u32(arg_1, 9u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))), Struct_1(abs(arg_1) | arg_0.x));
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_2, 24>();
    global4 = array<u32, 10>();
    var var_0 = (global4[_wgslsmith_index_u32(_wgslsmith_div_u32(63483u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(37871u, 10u)]), 10u)], 10u)]), 10u)] & firstLeadingBit(50833u)) > _wgslsmith_div_u32(~(~u_input.a), ~0u);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1971f)) + _wgslsmith_f_op_f32(f32(-1f) * -524f)))), 952f)));
    return func_2(u_input.b, ~66806u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.wzy;
    var var_1 = func_1();
    var_1 = Struct_2(func_2(u_input.b, 16715u).a, Struct_1(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(77013u, u_input.b.x, global4[_wgslsmith_index_u32(39425u, 10u)]), vec3<u32>(global4[_wgslsmith_index_u32(40084u, 10u)], u_input.a, u_input.b.x)))), func_1().c, var_1.b);
    var var_2 = func_1();
    global3 = array<Struct_2, 24>();
    var var_3 = global2[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(8223u, countOneBits(~1u)), var_1.d.a), 11u)];
    var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.a, u_input.b.x), 24u)];
    var_1 = Struct_2(func_1().d, var_1.a, var_0.x, func_2(~u_input.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(43930u, global4[_wgslsmith_index_u32(4294967295u, 10u)], var_2.b.a, 82218u), vec4<u32>(u_input.b.x, 10651u, 0u, var_1.b.a)), vec4<u32>(~u_input.b.x, ~var_1.b.a, ~0u, ~4294967295u))).a);
    var var_4 = global1[_wgslsmith_index_u32(1u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(20582i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, var_0.x, 650f, var_3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -330f, var_3.a, 774f))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(71579u, 9u)], false, true, global1[_wgslsmith_index_u32(var_2.a.a, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42707u, 10u)], 9u)], false, global1[_wgslsmith_index_u32(65608u, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), global1[_wgslsmith_index_u32(var_1.a.a, 9u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], false), vec4<bool>(global1[_wgslsmith_index_u32(46790u, 9u)], true, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(var_2.b.a, 9u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_0.x, -232f, 1266f) * vec4<f32>(-2273f, 1114f, -926f, -180f)))))), var_2.c, _wgslsmith_mod_vec3_u32(~(vec3<u32>(var_2.a.a, 1u, u_input.a) << (vec3<u32>(4294967295u, 76775u, var_2.a.a) % vec3<u32>(32u))) | max(max(vec3<u32>(0u, global4[_wgslsmith_index_u32(var_2.d.a, 10u)], 1u), vec3<u32>(0u, u_input.a, 0u)), vec3<u32>(1u, 1u, 1u)), ~firstTrailingBit(vec3<u32>(var_1.a.a, 10812u, 1u) ^ vec3<u32>(u_input.a, 63107u, 914u))), _wgslsmith_f_op_vec2_f32(-global0.xy));
}

