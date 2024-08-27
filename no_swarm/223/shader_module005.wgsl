struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 9>;

var<private> global4: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = !(!vec3<bool>(any(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global2.c.x, global2.c.x, true, false))), true, true));
    global3 = array<vec2<bool>, 9>();
    global3 = array<vec2<bool>, 9>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1449f)), vec2<i32>(u_input.a.x, firstLeadingBit(-5439i)), !select(vec2<bool>(all(var_0), true), global2.c, true));
    let var_2 = 0u;
    return var_2;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = u_input.b.x & (u_input.c.x << (_wgslsmith_add_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 0u, u_input.b.x), u_input.b)) % 32u));
    var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-367f * global2.a.x))))));
    var var_2 = reverseBits(u_input.d);
    let var_3 = 1447f;
    return ~func_3();
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = u_input.b.x & ~func_2(u_input.a);
    let var_1 = var_0 & 1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - -206f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-886f, 1049f)) + _wgslsmith_f_op_f32(max(global2.a.x, 1311f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, 921f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * 470f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, -784f)), abs(vec2<i32>(arg_0.x, min(u_input.d.x >> (4294967295u % 32u), 0i))), select(!select(!global3[_wgslsmith_index_u32(var_1, 9u)], global3[_wgslsmith_index_u32(52418u, 9u)], all(vec3<bool>(global1.x, false, global1.x))), !(!select(global1.yy, vec2<bool>(global2.c.x, global1.x), global1.x)), global2.c.x));
    let var_4 = Struct_2(global2.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, global2.a.x, var_3.a.x, global2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.x, var_3.a.x, 404f, 708f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a.x, global2.a.x, 124f, -493f), vec4<f32>(584f, -362f, -1308f, 560f)))), select(select(vec4<bool>(true, false, false, var_3.c.x), vec4<bool>(false, global2.c.x, global1.x, global2.c.x), vec4<bool>(global1.x, var_3.c.x, global2.c.x, var_3.c.x)), vec4<bool>(var_3.c.x, global2.c.x, false, global1.x), !vec4<bool>(false, true, global1.x, global2.c.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, global2.a.x, -496f, var_3.a.x)), vec4<f32>(_wgslsmith_f_op_f32(950f - var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-1000f - var_3.a.x), -196f)))), var_3);
    return arg_3.a << (select(reverseBits(var_1), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xz) ^ var_1), global1.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec2<i32>(-1i << ((3537u & func_1(vec4<i32>(global2.b.x, global4.x, global4.x, -1i), 2147483647i, vec4<u32>(66396u, 0u, u_input.b.x, u_input.c.x), Struct_3(33349u))) % 32u), 20768i), vec2<i32>(-1i) * -reverseBits(~u_input.d.xy));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1592f, global2.a.x, 1000f) + vec4<f32>(global2.a.x, global2.a.x, global2.a.x, 330f)))))));
    global4 = u_input.a;
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1821f, global2.a.x))))), global4.zz, !(!select(vec2<bool>(true, false), vec2<bool>(global2.c.x, true), !global2.c.x)));
    global2 = Struct_1(global2.a, countOneBits(~reverseBits(vec2<i32>(27402i, global4.x))), vec2<bool>(false, false));
    global2 = Struct_1(var_1.yw, vec2<i32>(0i, 1i), vec2<bool>(!all(vec2<bool>(false, true)), !global1.x));
    let var_2 = _wgslsmith_f_op_f32(max(2031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1450f) * _wgslsmith_f_op_f32(ceil(var_1.x)))))));
    let var_3 = all(vec4<bool>(global1.x, any(select(select(vec3<bool>(true, true, global2.c.x), vec3<bool>(global2.c.x, global1.x, global1.x), global2.c.x), !vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global2.c.x, global1.x))), var_2 >= -1572f, global2.c.x));
    var var_4 = Struct_2(any(vec3<bool>(any(vec3<bool>(global1.x, true, global2.c.x)) && true, min(1u, u_input.b.x) == ~25743u, false)), vec4<f32>(global2.a.x, 611f, -173f, 1f), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_1.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1148f, -3092f) * var_1.ww))))), global4.yy, !vec2<bool>(all(global2.c), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b.x);
}

