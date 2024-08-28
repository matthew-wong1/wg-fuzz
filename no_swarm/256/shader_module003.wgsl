struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(6607u, 4294967295u, 4294967295u);

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 0u, 13498u);

var<private> global2: u32 = 12703u;

var<private> global3: array<vec2<bool>, 13>;

var<private> global4: array<Struct_4, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    return Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(868f + -1481f) * _wgslsmith_f_op_f32(trunc(1000f)))) * 1803f), u_input.a.x, vec2<bool>(all(vec2<bool>(true, false)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(617f, -469f))) - -1604f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -228f)))))));
    var var_1 = Struct_1(max((u_input.a.x | u_input.a.x) >> (u_input.b.x % 32u), firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f * _wgslsmith_f_op_f32(-func_1().b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1927f)) + var_0.a), 230f)), ~(-u_input.a.x >> ((~0u & ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]) % 32u)), select(vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), !(!(!global3[_wgslsmith_index_u32(0u, 13u)])), vec2<bool>(any(vec4<bool>(false, false, false, true)), true | all(vec4<bool>(false, true, false, false)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(abs(-1136f)), any(vec3<bool>(true, false, var_1.d.x)))), 948f))));
    var var_3 = var_2;
    let var_4 = Struct_3(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(func_1().b, _wgslsmith_f_op_f32(abs(-1671f)), -461f, var_2.a))), _wgslsmith_sub_vec4_u32(min(~vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 3u)], global0.x, 15256u, 57375u) >> (abs(vec4<u32>(global0.x, 37408u, 42199u, global0.x)) % vec4<u32>(32u)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 0u, 4294967295u, 4294967295u))), ~max(~vec4<u32>(48429u, 4294967295u, 96063u, 82962u), vec4<u32>(49134u, 1500u, 13014u, global0.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f - 104f)))));
    return !select(!vec2<bool>(func_1().d.x, false), select(var_1.d, var_1.d, vec2<bool>(var_1.d.x, 72259u <= var_4.d.x)), !select(!vec2<bool>(var_1.d.x, true), vec2<bool>(var_1.d.x, var_1.d.x), false));
}

fn func_2() -> f32 {
    global1 = array<u32, 3>();
    let var_0 = -56132i;
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(605f, -371f)) + 300f)), _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(1825f + _wgslsmith_f_op_f32(-251f + -581f))))), u_input.a.x, func_3());
    global0 = ((~_wgslsmith_sub_vec3_u32(vec3<u32>(64624u, 4294967295u, global1[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(global0.x, 0u, 4294967295u)) >> (((vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 1u, global0.x) ^ vec3<u32>(1u, global0.x, 4294967295u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(25672u, 3u)], global0.x, global1[_wgslsmith_index_u32(26726u, 3u)]), vec3<u32>(0u, global0.x, 3281u))) % vec3<u32>(32u))) | reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, global0.xx), 4294967295u, 1u))) & ~max(vec3<u32>(~0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)] << (30152u % 32u), abs(4294967295u)), ~(~vec3<u32>(global0.x, 26132u, 4294967295u)));
    var_1 = Struct_1(countOneBits(46232i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 1i, func_1().d);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    let var_0 = -314f;
    global0 = ~vec3<u32>(~_wgslsmith_mult_u32(~u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(34171u, global0.x), 3u)]), ~global1[_wgslsmith_index_u32(max(~1u, u_input.b.x), 3u)], ~(~u_input.b.x));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1193f - 747f)))), var_0, -763f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1700f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(362f)))) * vec3<f32>(-987f, var_1.b, var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -17717i, vec4<f32>(var_1.b, _wgslsmith_f_op_f32(floor(-1000f)), 241f, var_2.x));
}

