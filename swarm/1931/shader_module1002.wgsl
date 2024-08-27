struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<bool>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global2 = array<vec4<bool>, 19>();
    var var_0 = global1.xwy;
    return vec3<bool>(var_0.x || all(vec4<bool>(any(global1.xxw), true, true, all(global1.xww))), arg_0 > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0, 683f)), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), 4294967295u >= _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a.x, 4294967295u, 31169u)), ~vec4<u32>(24337u, 13307u, 0u, 4294967295u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = !any(select(!vec4<bool>(global1.x, arg_0.a.x, arg_0.e.x, false), vec4<bool>(global1.x && global1.x, arg_0.e.x, arg_0.e.x || false, global1.x), !(!arg_2.a)));
    global0 = ~(~_wgslsmith_sub_u32(7747u, u_input.b));
    let var_1 = arg_0.d;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, -187f, arg_1.a.b.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, arg_0.b.x, 329f), vec3<f32>(arg_2.c, arg_0.b.x, 1324f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1170f, arg_2.b.x, arg_0.c) + vec3<f32>(-336f, arg_2.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(541f, -801f, arg_1.a.b.x) + vec3<f32>(arg_2.c, 1015f, -327f)), false)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c, arg_0.c, arg_0.c), vec3<f32>(461f, arg_2.c, 1181f))))))));
    var var_3 = u_input.a;
    return vec4<bool>(all(select(select(func_3(1639f), vec3<bool>(var_0, true, var_0), global1.xzy), select(!vec3<bool>(arg_2.a.x, global1.x, false), vec3<bool>(true, true, true), arg_1.a.e), false)), arg_1.a.a.x, 56443u == var_1.x, 1u != ~var_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!vec4<bool>(0u != u_input.b, global1.x, !any(vec4<bool>(global1.x, global1.x, true, global1.x)), any(func_2(Struct_1(vec4<bool>(true, global1.x, false, global1.x), vec2<f32>(1740f, -1290f), 737f, vec3<u32>(40773u, u_input.b, u_input.b), global1.ywy), Struct_4(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 19u)], vec2<f32>(511f, 552f), 466f, vec3<u32>(u_input.b, 1u, 24650u), vec3<bool>(global1.x, true, false)), 30119i), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 19u)], vec2<f32>(-879f, 1000f), -162f, vec3<u32>(u_input.a.x, 46218u, u_input.b), global1.zyx)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1743f, -1800f), vec2<f32>(676f, -213f))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -923f) * _wgslsmith_f_op_f32(step(1172f, 1255f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2374f), -2021f))), ~vec3<u32>(~_wgslsmith_add_u32(0u, 85353u), 27776u, ~(~u_input.b)), global1.zxw);
    let var_1 = u_input.a.x;
    var var_2 = var_0;
    global1 = !vec4<bool>(var_2.e.x || func_2(Struct_1(var_2.a, vec2<f32>(var_2.c, -388f), 514f, vec3<u32>(var_0.d.x, 44381u, 21264u), vec3<bool>(true, true, true)), Struct_4(Struct_1(vec4<bool>(global1.x, global1.x, false, var_2.a.x), vec2<f32>(var_2.b.x, -379f), 1242f, var_2.d, vec3<bool>(true, var_2.e.x, true)), 1i), Struct_1(var_2.a, vec2<f32>(var_0.b.x, var_0.c), var_0.c, var_0.d, var_0.a.xyx)).x, true, var_2.e.x, all(vec3<bool>(false, select(false, false, false), all(vec3<bool>(var_2.e.x, var_0.a.x, true)))));
    var var_3 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<i32>(1i, 1i) >> (select(u_input.a, abs(~vec2<u32>(u_input.a.x, u_input.b)), any(vec3<bool>(global1.x, global1.x, true))) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_i32(~min(-vec2<i32>(0i, 35818i), vec2<i32>(1i, 1i)), vec2<i32>(max(34130i, ~39684i), -33237i), select(vec2<i32>(1i, 1i), ~vec2<i32>(2147483647i, 1i), global1.x) ^ abs(select(vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 23524i), global1.yz)));
    global2 = array<vec4<bool>, 19>();
    let var_1 = Struct_2(func_1(), Struct_1(vec4<bool>(!global1.x, u_input.a.x < u_input.b, global1.x, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1524f)), _wgslsmith_f_op_f32(select(223f, 189f, global1.x))) * _wgslsmith_div_vec2_f32(func_1().b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, -2259f) + vec2<f32>(421f, -1233f)))), 820f, vec3<u32>(~_wgslsmith_mod_u32(u_input.b, u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 55768u), vec3<u32>(1u, 30992u, 21517u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 0u), vec3<u32>(0u, u_input.b, u_input.b))), ~39631u), !(!func_2(Struct_1(vec4<bool>(false, true, global1.x, true), vec2<f32>(1344f, 100f), -1000f, vec3<u32>(65410u, 9059u, 0u), global1.xxz), Struct_4(Struct_1(vec4<bool>(global1.x, true, false, false), vec2<f32>(-1281f, -813f), 184f, vec3<u32>(u_input.b, 4294967295u, 13132u), global1.yxz), var_0.x), Struct_1(vec4<bool>(false, global1.x, global1.x, global1.x), vec2<f32>(498f, -388f), -234f, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), global1.wwy)).yxz)), false, ~(~abs(vec4<u32>(u_input.b, 0u, 1u, 3767u) | vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.a.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1f), -1137f, func_1().b.x))));
    let var_3 = select(-vec2<i32>(var_0.x << (~42732u % 32u), (i32(-1i) * -1i) & (var_0.x ^ 2147483647i)), ~var_0, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1368f) + -2635f)).xy);
    global1 = select(global2[_wgslsmith_index_u32(firstLeadingBit(64756u), 19u)], !vec4<bool>(true, global1.x, global1.x, !var_1.a.a.x == var_1.c), !var_1.b.a);
    let var_4 = var_1.a.a.x;
    var var_5 = var_1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.b)), vec3<i32>(~(-30986i), var_0.x, var_0.x), vec2<f32>(var_2.a.x, _wgslsmith_div_f32(774f, _wgslsmith_f_op_f32(-800f + _wgslsmith_f_op_f32(var_1.b.b.x + -2205f)))), var_0.x, ~_wgslsmith_div_u32(var_1.b.d.x, 1231u));
}

