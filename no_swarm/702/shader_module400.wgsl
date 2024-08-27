struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: f32 = 354f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(arg_1, 19u)];
    global0 = array<vec3<i32>, 26>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -123f));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1553f)) > var_0.b.b.x);
    global2 = arg_0;
    return vec4<i32>(-min(-u_input.c.x, _wgslsmith_mod_i32(-6853i, 12078i)) >> (1u % 32u), u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.d.x), _wgslsmith_mod_i32(0i, -u_input.c.x)), 1i);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(sign(1497f))), Struct_1(_wgslsmith_add_u32(countOneBits(~49379u), _wgslsmith_div_u32(1u, 44271u) | _wgslsmith_div_u32(0u, u_input.e.x)), vec4<f32>(-962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1705f * 1643f)), -509f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2036f - 565f)))), all(vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.b.x, u_input.b.x), vec4<u32>(87239u, 4294967295u, arg_0, 21920u)) ^ countOneBits(u_input.b.x), ~4294967295u, ~arg_0, 11622u)), false);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.b.b.x, -862f, any(!vec3<bool>(true, var_0.c, false)))), var_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(-479f * var_0.a))))));
    var var_1 = u_input.e;
    var var_2 = var_0.b.d.x;
    var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(6545u, reverseBits(0u)), u_input.b);
    return 12464u <= ~abs(min(~var_0.b.d.x, u_input.b.x));
}

fn func_1() -> f32 {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.e.x, 15405u, u_input.e.x, 13329u)), min(max(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 69113u, u_input.e.x, 22982u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.e.x, 30649u), vec4<u32>(92583u, 1u, 41951u, u_input.e.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.e.x, 0u), vec4<u32>(81344u, 4294967295u, 1u, u_input.b.x))) << (vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.b.x) & vec3<u32>(u_input.e.x, u_input.e.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 4294967295u))), u_input.b.x, max(4294967295u, u_input.e.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, u_input.e.x), vec3<u32>(0u, u_input.e.x, 30074u))) % vec4<u32>(32u)));
    let var_1 = max(max(max(abs(u_input.c.x), -63423i) ^ u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 36650i, u_input.a.x, 25475i), func_2(246f, 1u)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -543f), 71441u << (var_0.x % 32u)).x)), u_input.d.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -837f);
    global0 = array<vec3<i32>, 26>();
    var var_3 = func_3(1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(799f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2))))))) + var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(320f, -1631f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-896f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-426f, 722f, 318f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(478f, 570f, 171f))), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-836f, 1000f, -172f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(52220u, vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.e.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<bool>(false, false, true)), ~vec3<u32>(4294967295u, u_input.b.x, u_input.e.x)), u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, abs(~u_input.b.x)), firstLeadingBit(3813u), 63627u), u_input.d.x);
}

