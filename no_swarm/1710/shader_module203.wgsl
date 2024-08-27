struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(21236u, 32652u, 58945u, 61615u, 1696u, 0u, 4294967295u, 2893u, 0u, 35537u);

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    global0 = array<u32, 10>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_1 = !vec2<bool>(any(select(!vec4<bool>(false, var_0.e, var_0.e, var_0.e), select(vec4<bool>(var_0.e, true, false, var_0.e), vec4<bool>(true, false, var_0.e, true), vec4<bool>(false, false, var_0.e, var_0.e)), !vec4<bool>(false, true, var_0.e, true))), var_0.e);
    global1 = array<Struct_1, 1>();
    global0 = array<u32, 10>();
    return max(4294967295u, 46943u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<u32, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1113f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1507f * -213f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(783f)) - _wgslsmith_f_op_f32(select(-1070f, -1000f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -504f), -398f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1383f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(603f, -623f)), -504f, true)))));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return i32(-1i) * -3373i;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(1u, reverseBits(vec2<i32>(arg_2.b.x, 43417i)), arg_2.c, _wgslsmith_mod_i32(arg_3.b.x >> (49580u % 32u), u_input.a.x), true);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f), -576f);
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0, var_0))))) - var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(func_2(), ~(u_input.c | 74635u), 0u), ~(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 6875u, 4294967295u)) >> (~vec3<u32>(13835u, 10630u, 4294967295u) % vec3<u32>(32u)))), Struct_1(~(~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(50950u, 10u)])), u_input.a.wz, select(vec4<u32>(~1u, u_input.c & 0u, _wgslsmith_add_u32(u_input.c, global0[_wgslsmith_index_u32(87783u, 10u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 10u)], 111566u, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, 0u, 14209u))), ~vec4<u32>(u_input.c, 4294967295u, global0[_wgslsmith_index_u32(65271u, 10u)], 7858u) | _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97811u, 10u)], 10u)], 4294967295u, 1u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(9774u, 10u)], u_input.c, global0[_wgslsmith_index_u32(u_input.c, 10u)], 51303u)), select(any(vec2<bool>(false, false)), true, true)), -2147483647i, !any(vec2<bool>(false, false)) & true), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(57481u, 10u)], global0[_wgslsmith_index_u32(65154u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec3<u32>(u_input.c, u_input.c, 23478u)) | ~vec3<u32>(u_input.c, u_input.c, 29369u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 83915u, 1u)), max(vec2<i32>(-21614i, func_3(Struct_1(u_input.c, vec2<i32>(2147483647i, 19716i), vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), u_input.a.x, true))), ~vec2<i32>(0i, u_input.b) & reverseBits(u_input.a.zz)), abs(max(select(vec4<u32>(u_input.c, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 10u)], 10u)], u_input.c), vec4<u32>(u_input.c, 0u, global0[_wgslsmith_index_u32(u_input.c, 10u)], 4294967295u), vec4<bool>(true, true, true, false)), ~vec4<u32>(u_input.c, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25103u, 10u)], 10u)], u_input.c))), u_input.a.x >> (_wgslsmith_sub_u32(58333u, select(20329u, 52974u, false)) % 32u), all(vec3<bool>(true, true, true))));
    var var_2 = Struct_1(func_2(), var_1.b, ~(~vec4<u32>(~var_1.c.x, var_1.c.x, _wgslsmith_clamp_u32(1u, u_input.c, global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(0u, 10u)])), ~(-u_input.b), var_1.e || all(!vec3<bool>(var_1.e, false, true)));
    let var_3 = all(vec3<bool>(true, reverseBits(-2147483647i) > _wgslsmith_mult_i32(var_1.d | u_input.a.x, -1i), select((false | var_1.e) != (var_2.a > global0[_wgslsmith_index_u32(11292u, 10u)]), any(!vec3<bool>(false, var_1.e, true)), !var_2.e || true)));
    global0 = array<u32, 10>();
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    let var_0 = ~max(countOneBits(u_input.c), max(u_input.c, ~0u));
    let var_1 = -534f;
    let var_2 = vec2<u32>(138538u ^ ~firstLeadingBit(_wgslsmith_add_u32(1u, var_0)), _wgslsmith_div_u32(~(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, var_0), vec3<u32>(0u, 0u, 58587u)), 10u)] ^ u_input.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 1u) & var_0, countOneBits(~u_input.c), ~u_input.c)));
    let var_3 = Struct_1(~var_2.x, -u_input.a.yx, vec4<u32>(1u, u_input.c, _wgslsmith_mod_u32(23089u, func_1()), 0u), -44900i, true);
    global1 = array<Struct_1, 1>();
    let var_4 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(4294967295u, var_2.x), _wgslsmith_sub_u32(4828u, max(~var_3.c.x, u_input.c >> (var_0 % 32u)))) << (min(var_2.x, 17282u) % 32u), 10u)], 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(func_4(_wgslsmith_f_op_f32(ceil(1184f)), u_input.c, func_4(var_1, var_3.c.x, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(87914u, 1u)]), Struct_1(1u, vec2<i32>(-17925i, -1i), var_4.c, u_input.b, var_3.e)).b.x, u_input.a.x, select(0i, var_3.b.x, true), ~_wgslsmith_div_i32(-1i, -2147483647i))), abs(~(~(~var_4.c))), max(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.x, global0[_wgslsmith_index_u32(~var_2.x, 10u)]), 0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(24803u, 1u, var_3.c.x), vec3<u32>(1u, 1u, u_input.c)) % 32u)), 85835u));
}

