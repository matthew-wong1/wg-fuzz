struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<i32, 23>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 20> = array<u32, 20>(1u, 8288u, 15167u, 58159u, 26425u, 51092u, 42755u, 1u, 82235u, 0u, 4294967295u, 68688u, 1u, 1u, 4294967295u, 9100u, 77299u, 3619u, 0u, 27064u);

var<private> global3: array<vec2<bool>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = 21318u;
    global0 = array<i32, 23>();
    global2 = array<u32, 20>();
    global3 = array<vec2<bool>, 26>();
    var var_1 = var_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.b)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<i32, 23>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(4838u, 20u)]), 26u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(291f, 236f, 1847f, -1000f) - vec4<f32>(-815f, -245f, 483f, -1359f))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, 1204f, 1053f, 1843f))), vec4<i32>(0i, firstTrailingBit(0i), global0[_wgslsmith_index_u32(global1.x, 23u)], u_input.a.x), Struct_1(vec2<f32>(-1000f, -1130f), vec3<i32>(u_input.a.x, -1i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28087u, 20u)], 23u)]))), Struct_2(arg_0.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, 1285f, -491f, 1336f))))));
    global1 = firstTrailingBit(~(~countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 20u)], 20u)], 20u)], 20u)], 0u, 1u, 4294967295u) & vec4<u32>(26707u, 51560u, 42322u, 56304u))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2168f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1252f, -816f)) + -1340f)) + var_0.a.x)));
    return _wgslsmith_sub_u32(firstLeadingBit(max(1u, 0u)), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~(~57006u), 20u)], 20u)]);
}

fn func_1() -> u32 {
    global1 = min(abs(max(~vec4<u32>(global1.x, global2[_wgslsmith_index_u32(global1.x, 20u)], global1.x, 1690u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(47713u, 20u)], 4294967295u, global1.x))) ^ ~(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(3360u, 20u)], global1.x, global2[_wgslsmith_index_u32(global1.x, 20u)], global1.x), vec4<u32>(0u, global1.x, 4294967295u, global1.x)) ^ (vec4<u32>(4294967295u, 15854u, global2[_wgslsmith_index_u32(1u, 20u)], 24793u) << (vec4<u32>(32381u, global2[_wgslsmith_index_u32(1u, 20u)], global1.x, global2[_wgslsmith_index_u32(global1.x, 20u)]) % vec4<u32>(32u)))), vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(14036u, 20u)], global1.x)), 4294967295u, ~(~4294967295u), global2[_wgslsmith_index_u32(func_2(vec4<bool>(true, true, false, true)), 20u)] & ~85575u) << (vec4<u32>(_wgslsmith_div_u32(58426u, global1.x), 0u, 0u, _wgslsmith_add_u32(1u, global1.x)) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(sign(234f));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, (7444u & global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(107553u, global2[_wgslsmith_index_u32(47843u, 20u)]), 20u)]) | 1u, func_2(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)), 0u), vec4<u32>(47976u, firstLeadingBit(29260u), ~0u, 13079u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -19528i;
    var var_1 = func_1();
    let var_2 = vec3<u32>(11713u, (reverseBits(~global1.x) >> (~0u % 32u)) >> (_wgslsmith_clamp_u32(~global1.x, max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 20u)], 20u)], _wgslsmith_dot_vec2_u32(global1.wz, vec2<u32>(6745u, 7182u))), global2[_wgslsmith_index_u32(46844u, 20u)]) % 32u), global1.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1286f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1341f, -641f)), all(vec2<bool>(true, false))))))), u_input.a);
    var var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~firstLeadingBit(vec2<i32>(u_input.a.x, var_3.b.x)))));
}

