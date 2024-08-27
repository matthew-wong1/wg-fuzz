struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(827f, -1620f, 412f, -228f, -1251f, 230f, 869f);

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: array<vec2<u32>, 21>;

var<private> global4: array<f32, 18> = array<f32, 18>(428f, 484f, 1241f, -1059f, 590f, -278f, -374f, 186f, -229f, 1563f, -617f, 369f, -831f, -851f, -970f, 1000f, 208f, -1090f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_3.c;
    global3 = array<vec2<u32>, 21>();
    global3 = array<vec2<u32>, 21>();
    global2 = array<vec2<u32>, 1>();
    global1 = array<vec4<u32>, 4>();
    return vec3<bool>(false, true, arg_0.a.d.x != 1u);
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 7>();
    global4 = array<f32, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.b, 18u)])) * global4[_wgslsmith_index_u32(firstTrailingBit(max(1u, ~_wgslsmith_div_u32(u_input.a, u_input.a))), 18u)]);
    global3 = array<vec2<u32>, 21>();
    var var_1 = vec4<bool>(u_input.b != 0u, true, true, false);
    return Struct_1(u_input.b, !func_3(Struct_3(Struct_1(u_input.a, vec3<bool>(var_1.x, true, false), vec2<f32>(794f, 350f), vec3<u32>(u_input.a, u_input.a, u_input.b)), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), Struct_3(Struct_1(35944u, var_1.wyx, vec2<f32>(global4[_wgslsmith_index_u32(1u, 18u)], var_0), vec3<u32>(1u, u_input.b, 1u)), !vec4<bool>(true, var_1.x, true, var_1.x)), (u_input.b != 0u) && var_1.x, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(25628u, 18u)], -653f, global4[_wgslsmith_index_u32(u_input.a, 18u)]) * vec3<f32>(1000f, -276f, 1615f)), ~1u, Struct_1(4294967295u, vec3<bool>(true, false, false), vec2<f32>(-710f, -1000f), vec3<u32>(4294967295u, u_input.b, 57204u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1603f, -200f) + vec2<f32>(740f, 2187f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(297f, global0[_wgslsmith_index_u32(u_input.a, 7u)]) * vec2<f32>(var_0, -406f)))), vec2<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.a, 18u)], -273f)), _wgslsmith_f_op_f32(floor(907f))))), vec3<u32>(0u, abs(1u), min(min(u_input.a, 1u) | (u_input.a ^ u_input.a), ~(~u_input.a))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(func_2(), vec4<bool>(!(any(vec4<bool>(false, false, false, true)) | true), any(vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), true)), all(select(vec2<bool>(true, true), func_3(Struct_3(Struct_1(u_input.a, vec3<bool>(false, false, false), vec2<f32>(global0[_wgslsmith_index_u32(11624u, 7u)], global4[_wgslsmith_index_u32(arg_0.x, 18u)]), arg_0.zwz), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(83544u, vec3<bool>(false, true, false), vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], -1076f), vec3<u32>(61725u, 4294967295u, 39095u)), vec4<bool>(true, false, true, false)), true, Struct_2(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(47826u, 7u)]), arg_0.x, Struct_1(53535u, vec3<bool>(false, false, true), vec2<f32>(-958f, 1318f), arg_0.wxy))).zx, 24742i <= u_input.c))));
    global2 = array<vec2<u32>, 1>();
    return Struct_1(29350u, vec3<bool>(var_0.b.x, any(!vec2<bool>(var_0.a.b.x, var_0.a.b.x)), var_0.b.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(15693u, 18u)], -283f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.c)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -542f)))))), ~min(arg_0.zww, select(func_2().d, vec3<u32>(58509u, u_input.a, 0u) & vec3<u32>(27417u, arg_0.x, u_input.a), any(vec2<bool>(false, var_0.b.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    let var_0 = Struct_3(arg_1, vec4<bool>(arg_0.x, arg_1.b.x, func_2().b.x, false));
    var var_1 = Struct_2(arg_2, 16034u, Struct_1(var_0.a.a, vec3<bool>(true, !arg_0.x, all(vec3<bool>(arg_1.b.x, true, false)) | true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 540f)), select(vec2<bool>(false, arg_0.x), arg_0.yz, arg_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, global4[_wgslsmith_index_u32(arg_1.d.x, 18u)]))), arg_1.d));
    let var_2 = Struct_1(1u >> (select(21604u, var_1.c.a, arg_1.b.x) % 32u), var_0.b.zzx, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x * 1000f), _wgslsmith_f_op_f32(sign(1195f))))), arg_1.c), vec3<u32>(u_input.a, u_input.a, ~(~0u)));
    var var_3 = -10925i;
    var var_4 = var_0;
    return select(u_input.d.x, -2147483647i, (arg_0.x && !func_1(vec4<u32>(var_1.c.a, arg_1.d.x, 0u, arg_1.d.x)).b.x) != var_4.b.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> bool {
    var var_0 = i32(-1i) * -(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, 15702i), arg_1) << (select(func_1(global1[_wgslsmith_index_u32(arg_2, 4u)]).d.x, _wgslsmith_add_u32(4294967295u, u_input.a), true) % 32u));
    global2 = array<vec2<u32>, 1>();
    global0 = array<f32, 7>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(312f, _wgslsmith_f_op_f32(-167f + global0[_wgslsmith_index_u32(58344u, 7u)]), 1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, 1000f, global4[_wgslsmith_index_u32(9968u, 18u)])) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1449f, 687f, -937f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], arg_0.c.x, global4[_wgslsmith_index_u32(u_input.a, 18u)])))), vec3<f32>(_wgslsmith_f_op_f32(-111f * arg_0.c.x), _wgslsmith_f_op_f32(sign(arg_0.c.x)), 1192f))), 109817u ^ max(u_input.b, _wgslsmith_add_u32(_wgslsmith_div_u32(40516u, u_input.a), arg_0.a)), Struct_1(select(_wgslsmith_mult_u32(47809u ^ arg_2, 9337u), _wgslsmith_clamp_u32(u_input.b, ~44983u, 0u), false), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.b.x || true, true, false || arg_0.b.x), !all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1563f, -639f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.c)))), arg_0.d));
    let var_2 = arg_1.zz;
    return func_2().b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    let var_0 = ~select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 10245u, 38650u), vec3<u32>(u_input.a << (4294967295u % 32u), abs(0u), ~4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(3314u, 1u, ~u_input.a), firstLeadingBit(select(vec3<u32>(0u, 12479u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.a), true))), !all(vec4<bool>(false, true, true, false)));
    let var_1 = vec3<bool>((-995f < global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x & var_0.x, 4294967295u), 18u)]) & (u_input.d.x < u_input.c), (var_0.x >> (u_input.b % 32u)) > ~reverseBits(15747u), func_5(Struct_1(0u, vec3<bool>(false, true, true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-828f, -253f), vec2<f32>(global4[_wgslsmith_index_u32(19702u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(false, false))))), vec3<u32>(_wgslsmith_clamp_u32(var_0.x, u_input.a, 11038u), var_0.x, 1u)), vec3<i32>(-2147483647i, -(u_input.e | 0i), func_4(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), func_1(global1[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 18u)], global4[_wgslsmith_index_u32(1u, 18u)], 709f), vec3<f32>(-1000f, global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)]))))), 4294967295u));
    var var_2 = func_1(~firstLeadingBit(~global1[_wgslsmith_index_u32(var_0.x, 4u)])).b.x || !var_1.x;
    global1 = array<vec4<u32>, 4>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 7u)], global4[_wgslsmith_index_u32(u_input.a, 18u)], -1547f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, 752f, global4[_wgslsmith_index_u32(u_input.b, 18u)])) + vec3<f32>(631f, global0[_wgslsmith_index_u32(u_input.a, 7u)], -1344f))))), reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(39691u, u_input.b, 50449u)), _wgslsmith_sub_vec3_u32(vec3<u32>(3096u, 4247u, 30858u), var_0))), func_2());
    var var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(step(var_3.a.x, func_2().c.x)), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-497f, -1537f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_3.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, 1000f, _wgslsmith_f_op_f32(315f + var_3.c.c.x))))), -(-19657i << (1u % 32u)), global0[_wgslsmith_index_u32(max(~7583u & _wgslsmith_mult_u32(u_input.b, min(u_input.b, 34340u)), var_0.x), 7u)], 10030i, 484f);
}

