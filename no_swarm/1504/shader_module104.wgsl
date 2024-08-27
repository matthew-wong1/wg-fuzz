struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec2<bool>, 21>;

var<private> global4: array<u32, 21> = array<u32, 21>(0u, 1u, 1u, 38799u, 11843u, 0u, 73876u, 13549u, 58173u, 49285u, 40981u, 0u, 41107u, 8145u, 0u, 0u, 47374u, 4294967295u, 82551u, 46841u, 4294967295u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn func_3(arg_0: vec3<f32>) -> u32 {
    return ~global4[_wgslsmith_index_u32(~1u, 21u)];
}

fn func_2() -> bool {
    var var_0 = Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(floor(-1338f)), 1236f))), Struct_1(_wgslsmith_clamp_vec3_u32((vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20733u, 21u)], 21u)], 46655u, global4[_wgslsmith_index_u32(0u, 21u)]) | vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(67506u, 21u)], 21u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16369u, 21u)], 21u)])) >> (~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(91214u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(1u, 21u)]) % vec3<u32>(32u)), vec3<u32>(func_3(vec3<f32>(386f, 1258f, 2474f)), _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(482u, 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 78236u)), 4294967295u), _wgslsmith_add_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(38068u, 21u)], global4[_wgslsmith_index_u32(1u, 21u)], 4294967295u), vec3<u32>(1u, 1u, 1u))), u_input.a.x), !select(!global0.xwy, !select(global0.wzw, vec3<bool>(false, false, global2.x), vec3<bool>(true, false, false)), global0.yxy), Struct_1(vec3<u32>(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]) >> (global4[_wgslsmith_index_u32(55671u, 21u)] % 32u), global4[_wgslsmith_index_u32(0u, 21u)], 87285u), u_input.a.x));
    let var_1 = Struct_4(!any(vec3<bool>(all(vec2<bool>(var_0.d.x, false)), true, var_0.d.x)));
    var var_2 = var_0.b;
    var var_3 = ~global4[_wgslsmith_index_u32(0u, 21u)];
    global3 = array<vec2<bool>, 21>();
    return !any(select(!(!vec4<bool>(global0.x, false, false, true)), select(select(vec4<bool>(var_0.d.x, false, false, true), vec4<bool>(false, true, false, var_1.a), var_1.a), vec4<bool>(global0.x, false, true, true), global2.x), all(select(var_0.d, vec3<bool>(var_0.d.x, var_1.a, global0.x), vec3<bool>(false, true, global2.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34165u, 21u)], 21u)], 1u), 21u)], global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]) << (1u % 32u)) | ~global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(0u, 21u)]) >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 101197u) << (1u % 32u), 21u)], 21u)] % 32u), 21u)], 21u)];
    global1 = -1210f;
    var var_1 = select(vec4<bool>(~u_input.a.x < _wgslsmith_div_i32(1i, -15613i), true, false, global0.x), !vec4<bool>(func_2(), all(vec2<bool>(true, false)) == all(vec2<bool>(var_0.x, var_0.x)), global2.x, any(select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, global0.x, true, false), vec4<bool>(false, global0.x, false, var_0.x)))), select(vec4<bool>(global0.x, true, global0.x, func_2()), !select(vec4<bool>(global2.x, global0.x, global0.x, true), !vec4<bool>(global0.x, global2.x, global0.x, global2.x), !vec4<bool>(global2.x, false, var_0.x, var_0.x)), select(select(select(vec4<bool>(false, true, var_0.x, global2.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, global2.x, false, true)), !vec4<bool>(global2.x, global2.x, var_0.x, false), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(global0.x, global0.x, var_0.x, true), true)), !select(vec4<bool>(true, global0.x, var_0.x, false), vec4<bool>(var_0.x, global0.x, var_0.x, var_0.x), var_0.x), true)));
    let var_2 = 1i;
    let var_3 = Struct_3(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)]), vec2<u32>(21623u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)]), vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(1362u, 0u), vec2<u32>(4294967295u, 3327u)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], global4[_wgslsmith_index_u32(67385u, 21u)])), ~(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55734u, 21u)], 21u)], 21u)], 21u)], 82943u)))), 21u)], 21u)], Struct_2(vec4<i32>(max(-59476i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.yy)), -50211i, -(~(-3875i)), var_2), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, _wgslsmith_div_f32(-1048f, 111f), _wgslsmith_f_op_f32(min(-2231f, 440f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 248f, 1913f)))), Struct_1(vec3<u32>(13472u ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33327u, 21u)], 21u)], global4[_wgslsmith_index_u32(15509u, 21u)], ~11354u), 1i), !vec3<bool>(func_2(), !var_0.x, true), Struct_1(vec3<u32>(reverseBits(40592u), global4[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_add_u32(27486u, 38153u)), abs(~var_2))), Struct_2(vec4<i32>(u_input.a.x, 31232i, ~(u_input.a.x ^ u_input.a.x), var_2), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(481f - -355f) - -1650f), -1362f), Struct_1(max(~vec3<u32>(0u, 43468u, global4[_wgslsmith_index_u32(114017u, 21u)]), vec3<u32>(1u, global4[_wgslsmith_index_u32(5319u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])), select(u_input.a.x, 1i, true)), vec3<bool>(any(select(vec2<bool>(false, false), global0.zz, vec2<bool>(global2.x, false))), func_2(), true), Struct_1(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)])), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 47411u, 0u) | vec3<u32>(global4[_wgslsmith_index_u32(49457u, 21u)], 76321u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)])), u_input.a.x)), _wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, global4[_wgslsmith_index_u32(1u, 21u)]), vec2<u32>(global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)]), global0.ww), vec2<u32>(1u, 4294967295u)), 21u)], ~(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 31030u), 21u)] << ((global4[_wgslsmith_index_u32(1192u, 21u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6741u, 21u)], 21u)]) % 32u))));
    return var_3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) - _wgslsmith_f_op_f32(f32(-1f) * -1886f)), 802f))), vec4<u32>(4294967295u, _wgslsmith_sub_u32(~4294967295u, abs(_wgslsmith_clamp_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1686u, 21u)], 21u)], 21u)], 1u))), var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-1f), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(390f, 230f, 692f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2548f, -1000f, -826f), vec3<f32>(2015f, -662f, -1234f))), vec3<f32>(-682f, -2710f, -624f))))));
}

