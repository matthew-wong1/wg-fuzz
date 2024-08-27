struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -14517i), false, 0u, vec4<bool>(false, true, false, true), 1680u);

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<vec2<u32>, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global3 = array<vec2<u32>, 8>();
    let var_0 = select(~global1.e, select(reverseBits(global1.e), firstTrailingBit(arg_1.c) ^ ~arg_1.e, arg_1.d.x), arg_1.b);
    var var_1 = arg_1.d.x;
    var var_2 = select(global1.d.xw, vec2<bool>(select(false, all(vec4<bool>(false, true, global1.d.x, global1.d.x)), select(false, arg_1.d.x, arg_0)), true), arg_0);
    global3 = array<vec2<u32>, 8>();
    return -513f;
}

fn func_2() -> f32 {
    var var_0 = abs(global1.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(837f * _wgslsmith_div_f32(-320f, -650f)))), _wgslsmith_f_op_f32(-884f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-292f - -200f) + 531f)), -672f, 622f));
    var_0 = _wgslsmith_add_i32(-(~(u_input.a.x | _wgslsmith_mult_i32(global1.a.x, global1.a.x))), firstLeadingBit(global1.a.x) >> (_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(global1.e, 4294967295u, global1.e, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.e, 30835u, global1.e), reverseBits(vec4<u32>(global1.e, 74229u, global1.c, 4294967295u)), vec4<u32>(1u, global1.c, global1.c, global1.e))) % 32u));
    var var_2 = vec3<f32>(658f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(663f, _wgslsmith_f_op_f32(func_3(global1.d.x, global2[_wgslsmith_index_u32(global1.c, 30u)], u_input.a)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(113f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(12394u, 20598u, global1.e, global1.c), vec4<u32>(1u, 49251u, 12552u, global1.e)) ^ _wgslsmith_div_u32(0u, 1u)), 8u)], ~(~vec2<u32>(1u, 1u)) >> (_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(global1.c, 66405u)), firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(2901u, global1.c), 8u)])) % vec2<u32>(32u))), 30u)];
    return _wgslsmith_f_op_f32(func_3(false, global2[_wgslsmith_index_u32(~var_3.e, 30u)], u_input.a));
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())));
    global2 = array<Struct_1, 30>();
    let var_2 = -u_input.a.xwx | abs(vec3<i32>(u_input.a.x, u_input.a.x, 9240i) ^ ~(~u_input.a.zwx));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), 430f, -1479f, var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, var_1, var_1), vec4<f32>(var_1, -926f, var_1, -1218f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, var_1, var_1, 469f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) * vec4<f32>(1578f, 163f, -369f, 441f))))), vec4<bool>(global1.d.x, !global1.b && (1298f < var_1), !(u_input.a.x != -2147483647i), true))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1)))))));
    return Struct_1(vec2<i32>(var_2.x, u_input.a.x), true, ~0u, global1.d, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-65662i, reverseBits(global1.a.x), 25750i);
    var var_1 = func_1();
    let var_2 = Struct_1(abs(var_1.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-786f - -937f), -1159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), func_1().b)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(727f - 760f)))), var_1.e, vec4<bool>(all(select(var_1.d.wwz, vec3<bool>(false, true, global1.d.x), !global1.d.zwz)), !(!(var_1.e < var_1.c)), false, true), 22375u);
    var var_3 = select(select(~(global3[_wgslsmith_index_u32(global1.c, 8u)] << (countOneBits(global3[_wgslsmith_index_u32(var_1.c, 8u)]) % vec2<u32>(32u))), vec2<u32>(min(~var_1.e, ~global1.e), global1.c), vec2<bool>(!(global1.b != global1.d.x), all(vec3<bool>(false, var_2.b, global1.b)))), vec2<u32>(7792u, global1.e), false);
    global2 = array<Struct_1, 30>();
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~reverseBits(vec3<u32>(0u, global1.e, 11704u))), global1.a.x, var_3.x, 57923i | ~_wgslsmith_mult_i32(global1.a.x >> (16276u % 32u), -40617i | u_input.a.x), global3[_wgslsmith_index_u32(reverseBits(firstTrailingBit(0u)), 8u)]);
}

