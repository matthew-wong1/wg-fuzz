struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -803f;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(-1i), -1i, vec4<bool>(false, false, false, false), i32(-2147483648), Struct_1(-57318i)), Struct_2(Struct_1(i32(-2147483648)), -16684i, vec4<bool>(false, false, true, false), -1i, Struct_1(-13478i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    global1 = select(vec2<bool>(all(vec3<bool>(!global1.x, false, global1.x)), false), select(vec2<bool>(any(vec3<bool>(true, global2.x, global2.x)), all(!vec2<bool>(global2.x, false))), vec2<bool>(false, all(!vec3<bool>(global2.x, false, false))), true), select(vec2<bool>(all(!vec2<bool>(global1.x, global2.x)), all(select(vec2<bool>(false, global2.x), vec2<bool>(global1.x, global2.x), vec2<bool>(false, true)))), !select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, true), vec2<bool>(global1.x, true)), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), global1.x), global2.x), all(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global1.x))) || global2.x));
    var var_0 = global3[_wgslsmith_index_u32(0u, 2u)];
    let var_1 = u_input.a;
    let var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(2282u, arg_0.b | arg_0.a, _wgslsmith_mod_u32(reverseBits(arg_0.b), arg_0.b)), ~vec3<u32>(~4294967295u, arg_0.a, arg_0.a)));
    let var_3 = ~var_0.b;
    return vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -915f))) != 1000f, !(!any(select(vec3<bool>(var_0.c.x, global2.x, global1.x), vec3<bool>(false, global2.x, true), var_0.c.xwz))));
}

fn func_2() -> f32 {
    let var_0 = ~abs(vec4<u32>(select(_wgslsmith_mult_u32(22240u, 1u), _wgslsmith_add_u32(10810u, 1u), any(vec3<bool>(global2.x, false, false))), 1u, abs(select(1u, 0u, global1.x)), 90599u));
    global2 = select(select(func_3(Struct_4(var_0.x, var_0.x)), vec2<bool>(!(global2.x || false), true), true), select(vec2<bool>(!(!global1.x), any(select(vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, global1.x, global2.x, false), vec4<bool>(true, false, false, global2.x)))), vec2<bool>(true, all(!vec3<bool>(global2.x, false, global2.x))), global1.x), select(!all(select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global2.x, true), vec3<bool>(true, global1.x, true))), global1.x, global1.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, _wgslsmith_div_f32(867f, 1418f), 648f, _wgslsmith_f_op_f32(f32(-1f) * -328f))))));
    global0 = _wgslsmith_f_op_f32(-var_1.x);
    var var_2 = Struct_3(1i, Struct_1(abs(2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30013i, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), 27335i, ~u_input.a.x), ~abs(vec3<i32>(-1i, u_input.a.x, 1i))));
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = -1000f;
    var var_1 = 513f;
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f - _wgslsmith_f_op_f32(abs(var_0)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(190f, -1402f, var_0) - vec3<f32>(-184f, 1000f, var_0)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, -1282f, var_0), vec3<f32>(1541f, -1413f, 1035f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-551f, -825f, 154f), vec3<f32>(706f, var_0, var_0), global1.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2048f, var_0, 735f))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-291f + -1000f))))), global1.x));
    var_3 = vec3<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x)))))));
    return select(~(~(~arg_2)), abs(1u), all(!vec3<bool>(!global2.x, all(vec4<bool>(true, true, global2.x, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2596f;
    var var_0 = firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(~func_1(false, u_input.a.x, 8082u, Struct_3(u_input.a.x, Struct_1(u_input.a.x), vec3<i32>(u_input.a.x, -21844i, u_input.a.x))), 1u), ~countOneBits(~1u), 23259u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1949f, _wgslsmith_div_f32(-914f, -880f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f * -473f)))), 1938f);
    let var_2 = Struct_4(var_0.x, var_0.x);
    let var_3 = var_1.x >= -415f;
    let var_4 = Struct_4(var_0.x, ~var_0.x);
    var var_5 = var_4;
    let var_6 = !select(select(!vec4<bool>(false, false, false, global2.x), vec4<bool>(true, any(vec3<bool>(var_3, global1.x, global2.x)), true | var_3, global1.x && true), !vec4<bool>(global2.x, false, false, true)), !select(select(vec4<bool>(global2.x, true, global2.x, global1.x), vec4<bool>(true, false, global2.x, false), var_3), !vec4<bool>(global2.x, var_3, global2.x, true), vec4<bool>(false, false, true, global1.x)), vec4<bool>(any(vec4<bool>(global1.x, global1.x, true, true)), all(select(vec4<bool>(false, global2.x, global1.x, global1.x), vec4<bool>(var_3, false, true, global1.x), vec4<bool>(global2.x, global1.x, var_3, false))), !(!global2.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(-(u_input.a.x ^ 21740i), -1i, _wgslsmith_div_i32(u_input.a.x, -2147483647i), -10282i)));
}

