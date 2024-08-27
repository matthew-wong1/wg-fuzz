struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: f32 = -572f;

var<private> global2: u32;

var<private> global3: vec2<f32> = vec2<f32>(-461f, 258f);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> vec3<bool> {
    global1 = global3.x;
    let var_0 = arg_3 | -(~arg_3);
    var var_1 = 1f;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1204f))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(-global3.x))))), arg_2, ~(vec3<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, 51915u), u_input.c) ^ vec3<u32>(u_input.b.x, ~45339u, u_input.d.x << (u_input.e % 32u))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f));
    return vec3<bool>(global4.x, false, true);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), global3.x), !select(func_3(global4.x, false, vec3<bool>(global4.x, global4.x, global4.x), 2147483647i), select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x)), vec3<bool>(false, global4.x, false)), abs(u_input.d.xyw)), ~(~4572u), vec3<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-869f, -1000f))))), u_input.d);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1613f, var_0.c.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.yy, var_0.c.xx)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(114f, -2363f), var_0.c.yy)), var_0.a.a))))));
    global1 = _wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(floor(-1205f)));
    global0 = array<Struct_5, 21>();
    let var_1 = vec2<i32>(_wgslsmith_add_i32(countOneBits(~select(0i, 14789i, var_0.a.b.x)), _wgslsmith_sub_i32(-1i, -min(-50174i, -14218i))), _wgslsmith_dot_vec3_i32((-vec3<i32>(-2147483647i, 1i, 2147483647i) << ((vec3<u32>(var_0.d.x, 26426u, var_0.a.c.x) | vec3<u32>(u_input.a.x, var_0.d.x, 4294967295u)) % vec3<u32>(32u))) & (firstTrailingBit(vec3<i32>(-2379i, -20785i, 14374i)) >> (~u_input.d.zwx % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(6918i, 16319i, 1i), i32(-1i) * -1i), -2147483647i >> (firstTrailingBit(u_input.e) % 32u), _wgslsmith_div_i32(-1i, 2147483647i << (var_0.b % 32u)))));
    return u_input.d.x;
}

fn func_1(arg_0: Struct_4) -> bool {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))) * -300f) * -965f)));
    let var_0 = u_input.a & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), ~16423u, ~u_input.a.x, 36806u), u_input.d), u_input.e);
    var var_1 = vec2<u32>(19154u, func_2());
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a * global3.x))) + _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f * _wgslsmith_f_op_f32(-global3.x)))));
    var var_2 = _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1065f))))), -427f, true)));
    return !(!global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, select(func_1(Struct_4(_wgslsmith_f_op_f32(-global3.x))), !all(func_3(global4.x, true, vec3<bool>(global4.x, global4.x, true), 1i).yx), true), 58574u <= u_input.a.x);
    global2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(floor(global3.x))), global3.x);
}

