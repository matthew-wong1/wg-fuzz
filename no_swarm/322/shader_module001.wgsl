struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(0u, 4294967295u, 27191u), vec3<u32>(4294967295u, 4294967295u, 92632u), vec3<u32>(4294967295u, 0u, 29581u), vec3<u32>(21645u, 15394u, 60094u), vec3<u32>(1u, 0u, 1u), vec3<u32>(13306u, 10125u, 4539u), vec3<u32>(0u, 4294967295u, 6741u), vec3<u32>(5065u, 4294967295u, 0u), vec3<u32>(1955u, 10682u, 64208u), vec3<u32>(4294967295u, 42667u, 4294967295u), vec3<u32>(10504u, 15016u, 12937u), vec3<u32>(19494u, 18398u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(41211u, 1u, 1892u), vec3<u32>(49097u, 41534u, 4294967295u), vec3<u32>(114227u, 1u, 1u), vec3<u32>(29033u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 5082u), vec3<u32>(1u, 5786u, 4294967295u), vec3<u32>(53884u, 94689u, 80732u), vec3<u32>(9194u, 1u, 1u), vec3<u32>(18670u, 113916u, 27363u), vec3<u32>(50494u, 0u, 83093u), vec3<u32>(8814u, 4294967295u, 1u), vec3<u32>(13829u, 60852u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(9121u, 73428u, 34641u), vec3<u32>(1u, 12735u, 1u), vec3<u32>(27273u, 1u, 36936u), vec3<u32>(6486u, 9301u, 1u), vec3<u32>(26847u, 2730u, 57886u));

var<private> global2: array<f32, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    global2 = array<f32, 11>();
    let var_0 = arg_1;
    global1 = array<vec3<u32>, 31>();
    global2 = array<f32, 11>();
    let var_1 = arg_1.e.xy;
    return vec3<bool>(false, var_0.d, !var_0.a.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(!select(vec3<bool>(any(vec2<bool>(arg_0, arg_0)), true, all(vec3<bool>(false, arg_0, true))), func_3(abs(vec2<i32>(u_input.b.x, u_input.b.x)), Struct_1(vec3<bool>(arg_0, true, true), vec2<i32>(-1i, u_input.b.x), vec4<i32>(u_input.b.x, 2325i, u_input.b.x, u_input.b.x), true, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -1359f)), vec2<bool>(arg_0, true)), vec3<bool>(all(vec4<bool>(true, false, arg_0, false)), true, all(vec2<bool>(false, true)))), ~(-firstLeadingBit(u_input.b)), vec4<i32>(_wgslsmith_add_i32(abs(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, -21230i, u_input.b.x)), ~(-11779i), u_input.b.x, u_input.b.x) >> ((vec4<u32>(abs(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(45347u, u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), u_input.a.x, abs(14954u)) ^ _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(48021u, u_input.c.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(0u, 11u)], -333f, global2[_wgslsmith_index_u32(0u, 11u)]), vec3<f32>(global2[_wgslsmith_index_u32(4323u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)])))))))));
    let var_1 = var_0.d;
    let var_2 = Struct_3(!arg_0, _wgslsmith_div_i32(-2147483647i, ~(-u_input.b.x) | u_input.b.x));
    var var_3 = -447f;
    let var_4 = vec3<u32>(_wgslsmith_div_u32(1u, ~9253u), select(u_input.a.x, u_input.a.x, var_2.a && (u_input.b.x == (var_2.b & 23821i))), _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(1u, 5256u), firstLeadingBit(u_input.a.x))));
    return Struct_1(select(select(vec3<bool>(arg_0, !arg_0, var_4.x < 72058u), vec3<bool>(var_2.a, true, func_3(vec2<i32>(-16609i, var_2.b), Struct_1(vec3<bool>(arg_0, true, true), var_0.b, var_0.c, arg_0, var_0.e), vec2<bool>(true, true)).x), false), !var_0.a, func_3(-vec2<i32>(var_0.c.x, 1i), Struct_1(vec3<bool>(false, false, true), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-2147483647i, -9377i)), abs(var_0.c), u_input.c.x < 13899u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, -623f, var_0.e.x))), func_3(vec2<i32>(-1i, u_input.b.x), Struct_1(var_0.a, var_0.c.zz, var_0.c, false, vec3<f32>(global2[_wgslsmith_index_u32(15253u, 11u)], global2[_wgslsmith_index_u32(var_4.x, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)])), func_3(vec2<i32>(u_input.b.x, var_2.b), Struct_1(var_0.a, vec2<i32>(0i, var_2.b), var_0.c, var_2.a, var_0.e), vec2<bool>(true, false)).xz).xy)), ~_wgslsmith_div_vec2_i32(min(vec2<i32>(-24289i, 3032i), vec2<i32>(u_input.b.x, u_input.b.x)), ~u_input.b) << (abs(u_input.a.xw) % vec2<u32>(32u)), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.b, var_0.c.x, var_2.b) ^ vec4<i32>(var_0.c.x, u_input.b.x, 40445i, -2147483647i), select(vec4<i32>(0i, u_input.b.x, u_input.b.x, -2147483647i), var_0.c, true)), min(-2147483647i, -2147483647i), -63141i, abs(u_input.b.x)), var_2.a, var_0.e);
}

fn func_1() -> Struct_2 {
    global1 = array<vec3<u32>, 31>();
    global0 = min(i32(-1i) * -56839i, u_input.b.x);
    var var_0 = func_2(false);
    var var_1 = true;
    let var_2 = func_2(all(var_0.a.zy));
    return Struct_2(Struct_1(func_2(var_0.d).a, select(~vec2<i32>(var_0.c.x, -10719i), vec2<i32>(u_input.b.x, 32662i) ^ u_input.b, vec2<bool>(var_0.a.x, false)), ~_wgslsmith_div_vec4_i32(vec4<i32>(20727i, var_2.c.x, var_0.c.x, var_2.b.x), vec4<i32>(var_2.b.x, -1i, 2147483647i, 1i)), false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e - vec3<f32>(-169f, var_0.e.x, 450f)))))), func_2(var_0.a.x), var_2.a, var_2, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = vec4<i32>(arg_0.a.b.x, arg_0.b.c.x, -u_input.b.x, ~min(u_input.b.x, -14417i << ((u_input.a.x & u_input.c.x) % 32u)));
    var var_1 = Struct_1(vec3<bool>(any(vec3<bool>(false, !arg_0.c.x, arg_0.a.a.x)), (arg_0.d.e.x > _wgslsmith_f_op_f32(round(544f))) || !select(arg_0.d.a.x, false, arg_0.d.d), true), (u_input.b | u_input.b) & arg_0.d.b, vec4<i32>(37954i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0.d.c, arg_0.d.c), u_input.b.x), _wgslsmith_clamp_i32(-1i, u_input.b.x, 2366i), ~2147483647i), !any(select(vec4<bool>(arg_0.d.d, arg_0.d.a.x, arg_0.a.a.x, true), select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, false), vec4<bool>(arg_0.a.a.x, true, arg_0.c.x, arg_0.d.d), vec4<bool>(false, arg_0.c.x, arg_0.c.x, false)), true)), vec3<f32>(-101f, global2[_wgslsmith_index_u32(firstLeadingBit(1058u), 11u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.a.x & countOneBits(0u), 11u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - _wgslsmith_f_op_f32(-arg_0.a.e.x)))));
    let var_2 = select(arg_0.c.x, true, true);
    return Struct_3(false, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.b, u_input.b, reverseBits(func_1().b.c.zz)), arg_0.b.c.wz << (u_input.c.zx % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, -15855i);
    var var_1 = 44622u;
    var_0 = func_4(func_1());
    global0 = 1i;
    var_1 = _wgslsmith_div_u32(u_input.c.x, 1u);
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, var_2, 30721u)), ~u_input.c.x, ~var_2 | ~var_2, var_2 >> (119642u % 32u)) | ~vec4<u32>(u_input.c.x, reverseBits(var_2), var_2, 0u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_div_f32(-318f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]))))));
}

