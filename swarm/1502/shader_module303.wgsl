struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), -987f, vec2<u32>(4294967295u, 4351u));

var<private> global2: array<f32, 1>;

var<private> global3: array<vec2<f32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_4(global1.c.x);
    return !global1.a;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    global3 = array<vec2<f32>, 18>();
    global1 = Struct_2(select(select(select(func_1(Struct_1(vec4<bool>(true, global1.a.x, false, global1.a.x), 120f, global1.c.x), vec4<bool>(false, true, global1.a.x, global1.a.x), global1.b), !global1.a, all(global1.a)), !func_1(Struct_1(global1.a, -496f, 50707u), global1.a, 1355f), global1.a.x), global1.a, select(select(!global1.a, global1.a, false), vec4<bool>(true, global1.c.x >= 0u, !global1.a.x, all(vec4<bool>(false, false, global1.a.x, false))), true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.c.x ^ 42899u, 1u)]), global1.c);
    var var_0 = abs(u_input.a);
    var var_1 = Struct_2(vec4<bool>(false, all(global1.a.yyw), false, false), -1234f, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(global1.c.x, global1.c.x)), global1.c), global1.c));
    let var_2 = Struct_2(!global1.a, 148f, countOneBits(vec2<u32>(~var_1.c.x, var_1.c.x)));
    return 15753u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, _wgslsmith_f_op_f32(arg_2.b + arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-135f))), global2[_wgslsmith_index_u32(~arg_1.a, 1u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_1.a, 1u)], global1.b, global1.b, -387f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global2[_wgslsmith_index_u32(0u, 1u)], -1054f, global2[_wgslsmith_index_u32(31438u, 1u)]) * vec4<f32>(243f, -420f, global1.b, 258f))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(-950f)), _wgslsmith_f_op_f32(min(arg_2.b, -1601f)), 278f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b, -735f, arg_2.b, arg_2.b))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-554f, global1.b, 231f, 140f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.b, -290f, global2[_wgslsmith_index_u32(global1.c.x, 1u)], arg_2.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(25787u, 1u)], 344f, -948f, 122f), vec4<f32>(global1.b, global1.b, global2[_wgslsmith_index_u32(arg_2.c.x, 1u)], arg_2.b))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1916f, global2[_wgslsmith_index_u32(arg_2.c.x, 1u)], global1.b, 188f))))));
    let var_1 = vec2<u32>(func_3(-1763f, -global0[_wgslsmith_index_u32(arg_2.c.x, 10u)]), global1.c.x);
    var var_2 = !any(vec3<bool>(any(global1.a.yw), !arg_0.x | arg_0.x, true));
    var_2 = arg_0.x;
    var_2 = all(!(!arg_2.a.zy));
    return Struct_1(func_1(Struct_1(!vec4<bool>(true, false, global1.a.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), min(var_1.x >> (79424u % 32u), 30225u)), vec4<bool>(false, any(arg_2.a.xxx) | false, false, global1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1105f, global1.b) + _wgslsmith_f_op_f32(f32(-1f) * -664f))))), arg_2.b, global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 18>();
    var var_0 = u_input.a.x >= _wgslsmith_mod_i32(u_input.a.x, u_input.a.x << (0u % 32u));
    let var_1 = Struct_4(4294967295u);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, i32(-1i) * -36263i, u_input.a.x), u_input.a.wxz);
    let var_3 = func_2(!(!vec4<bool>(true, global1.a.x, global1.a.x, u_input.a.x > 2147483647i)), Struct_4(26832u), Struct_2(select(vec4<bool>(global1.c.x == 56303u, true, global1.a.x, true), func_1(Struct_1(vec4<bool>(global1.a.x, true, false, true), global2[_wgslsmith_index_u32(19621u, 1u)], 25686u), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), global1.a, false), -121f), global1.a.x), global2[_wgslsmith_index_u32(18214u, 1u)], _wgslsmith_add_vec2_u32(abs(countOneBits(global1.c)), ~global1.c ^ ~global1.c)));
    var var_4 = Struct_2(!func_2(var_3.a, var_1, Struct_2(!var_3.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_3.c, 1u)] * var_3.b), vec2<u32>(7705u, 15587u))).a, _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(1095f * global2[_wgslsmith_index_u32(1u, 1u)])) * var_3.b)), vec2<u32>(var_3.c, _wgslsmith_mod_u32(var_1.a, 0u) & var_3.c));
    var var_5 = select(select(vec3<bool>(select(true, select(true, true, true), func_2(global1.a, var_1, Struct_2(global1.a, var_3.b, global1.c)).a.x), var_4.a.x, _wgslsmith_f_op_f32(-616f - global2[_wgslsmith_index_u32(var_3.c, 1u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -518f)), var_3.a.zyw, func_2(vec4<bool>(true, true, true, true), Struct_4(1u), Struct_2(select(vec4<bool>(var_4.a.x, true, var_4.a.x, true), vec4<bool>(var_4.a.x, global1.a.x, false, global1.a.x), var_4.a.x), _wgslsmith_div_f32(var_3.b, -458f), vec2<u32>(4294967295u, 42395u) ^ var_4.c)).a.xyx), global1.a.zww, all(vec2<bool>(false && global1.a.x, true)));
    global0 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 45833u), ~vec2<u32>(1u, 1u)) >> (_wgslsmith_clamp_u32(var_4.c.x ^ var_4.c.x, select(63112u, 81047u, false), 0u) % 32u), ~(~51195u), var_3.c));
}

