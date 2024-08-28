struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: f32;

var<private> global3: array<f32, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-18261i);
    var var_1 = false;
    var var_2 = min(23778u, u_input.a >> (u_input.a % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 23u)] - global3[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(25475u, 23u)], true)), global3[_wgslsmith_index_u32(abs(21082u), 23u)], _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(18099u, 23u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(min(u_input.a, 0u), 23u)], _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(trunc(-300f)), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(26518u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], false))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(15121u, 23u)], global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), vec4<f32>(global3[_wgslsmith_index_u32(1330u, 23u)], 673f, -1455f, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1438f, global3[_wgslsmith_index_u32(34988u, 23u)], global3[_wgslsmith_index_u32(u_input.a, 23u)], -738f), vec4<f32>(2230f, -165f, -136f, global3[_wgslsmith_index_u32(u_input.a, 23u)]), true)), global1[_wgslsmith_index_u32(~u_input.a, 7u)]))) - vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 69214u)), 23u)] + _wgslsmith_f_op_f32(f32(-1f) * -304f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(15365u, 23u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 23u)] * 489f))), _wgslsmith_f_op_f32(min(368f, global3[_wgslsmith_index_u32(1u, 23u)]))))));
    let var_4 = ~min(5224u, 8695u) == _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 37972u, 0u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 51358u, 0u), vec4<bool>(false, true, true, false))), u_input.a, firstTrailingBit(4294967295u)), 1718u);
    return _wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(f32(-1f) * -1983f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = Struct_3(arg_0.b, arg_0.b, _wgslsmith_div_f32(-745f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c - global3[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_f_op_f32(352f * arg_1.c)), -396f))));
    global2 = 1f;
    var var_1 = !(!all(global1[_wgslsmith_index_u32(u_input.a, 7u)]));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), var_0.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 23u)], arg_0.a.x)))))));
    var_1 = true;
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(arg_1.x, 385f, _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f + arg_2.a.x)))), arg_1.x);
    let var_1 = ~abs(vec3<u32>(u_input.a, u_input.a, select(4294967295u, ~u_input.a, true)));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 30239u, u_input.a, var_1.x), vec4<u32>(52729u, 0u, u_input.a, 16644u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), ~(~vec4<u32>(19211u, 1u, var_1.x, u_input.a))) & vec4<u32>(func_2(Struct_2(vec4<f32>(var_0.x, 337f, arg_1.x, -319f), arg_0.b), Struct_3(Struct_1(arg_0.b.a), Struct_1(u_input.b.x), -2332f), false), ~func_2(Struct_2(var_0, Struct_1(arg_0.b.a)), Struct_3(arg_2.b, arg_0.b, -260f), true), 26091u, 4294967295u ^ firstTrailingBit(u_input.a)), ~vec4<u32>(u_input.a, reverseBits(~var_1.x), _wgslsmith_clamp_u32(19850u, 1794u ^ var_1.x, var_1.x), u_input.a));
    let var_3 = _wgslsmith_f_op_f32(select(-1383f, _wgslsmith_f_op_f32(trunc(arg_0.a.x)), true));
    var var_4 = vec3<bool>(any(global1[_wgslsmith_index_u32(var_2.x, 7u)]), !(!(!all(vec3<bool>(true, true, false)))), firstLeadingBit(firstTrailingBit(select(-25302i, arg_0.b.a, false))) >= -2147483647i);
    return arg_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global3 = array<f32, 23>();
    global2 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_0 = vec4<i32>(u_input.b.x, func_1(Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_2.a.x, arg_2.a.x, -2103f) - arg_2.a)), func_1(arg_1, vec4<f32>(arg_1.a.x, 803f, arg_2.a.x, 2156f), Struct_2(arg_2.a, Struct_1(-2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -206f, arg_2.a.x, -1737f) + _wgslsmith_f_op_vec4_f32(abs(arg_2.a)))), arg_1).a, abs(1i), ~u_input.b.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), func_1(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1414f, 1000f, 1106f, global3[_wgslsmith_index_u32(u_input.a, 23u)]) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, -1270f, -813f, 2920f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, -851f, arg_1.a.x, arg_1.a.x)))), arg_1));
    var var_2 = abs(vec2<u32>(u_input.a, u_input.a));
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20445u, abs(u_input.a)), 4u)], Struct_3(var_1.b, Struct_1(47886i), global3[_wgslsmith_index_u32(u_input.a | 16338u, 23u)]), _wgslsmith_mod_u32(min(var_2.x, 1u), firstLeadingBit(0u)) < ~75870u) & 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!global1[_wgslsmith_index_u32(4294967295u, 7u)]);
    var_0 = 4294967295u <= _wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 34842u)) ^ ~(~u_input.a));
    let var_1 = !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true);
    var var_2 = countOneBits(-35732i);
    let var_3 = select(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(37728u, u_input.a))) << (countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(70483u, u_input.a))) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(0u), (30693u & ~u_input.a) | _wgslsmith_dot_vec3_u32(vec3<u32>(29192u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, 105843u, u_input.a))), var_1.x);
    let var_4 = ~(~vec3<u32>(func_4(func_1(Struct_2(vec4<f32>(1931f, global3[_wgslsmith_index_u32(var_3.x, 23u)], -730f, -530f), Struct_1(0i)), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 23u)], -1171f, global3[_wgslsmith_index_u32(u_input.a, 23u)], -1125f), global0[_wgslsmith_index_u32(var_3.x, 4u)]), Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(var_3.x, 23u)], 454f, global3[_wgslsmith_index_u32(35987u, 23u)], 966f), Struct_1(u_input.b.x)), global0[_wgslsmith_index_u32(6803u, 4u)]), ~_wgslsmith_add_u32(var_3.x, u_input.a), ~25794u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~u_input.b.x), -_wgslsmith_dot_vec2_i32(-u_input.b.xx, ~vec2<i32>(22447i, u_input.b.x))));
}

