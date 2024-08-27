struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_0 = u_input.b.x;
    var var_1 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wwy, u_input.b.yxw), u_input.b.x) | ~vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 1u), 25105u), ~u_input.b.xww);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = ~(0u | u_input.b.x);
    var var_2 = _wgslsmith_sub_u32(reverseBits(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(~(~u_input.b.zy), countOneBits(u_input.b.ww)));
    global0 = array<bool, 30>();
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0))))), _wgslsmith_f_op_vec2_f32(-arg_0))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -1966f) - -212f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(var_3.a, var_0))), -872f)), !(abs(var_3.c.x) <= countOneBits(u_input.b.x)))), 1197f);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = Struct_4(Struct_1(166f, arg_0.b, reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, arg_0.c.x), abs(u_input.b.xzy), ~vec3<u32>(arg_0.c.x, u_input.b.x, 12314u)))), Struct_2(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), arg_0.c.x, arg_0.c.x, ~(~1u)), _wgslsmith_sub_vec3_u32(~(u_input.b.www | vec3<u32>(39202u, arg_0.b.x, u_input.b.x)), ~vec3<u32>(4294967295u, 1u, 4294967295u) | _wgslsmith_sub_vec3_u32(u_input.b.wyy, u_input.b.wzw))), Struct_3(-1i), _wgslsmith_dot_vec3_i32(countOneBits(~min(vec3<i32>(u_input.a, 10329i, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i))), -firstLeadingBit(max(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(2147483647i, u_input.c, 8063i)))));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + -206f), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1044f, var_0.a.a, false))))) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -843f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, -282f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2511f, -346f), vec2<f32>(750f, 153f), global0[_wgslsmith_index_u32(18765u, 30u)])))), !select(vec2<bool>(global0[_wgslsmith_index_u32(58526u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true), vec2<bool>(false, true))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<i32>(-14643i, u_input.a) << (vec2<u32>(u_input.b.x, 37304u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.c ^ u_input.c, 15251i)), !vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], true, global0[_wgslsmith_index_u32(9788u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))), 1431f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0, vec2<u32>(1u, u_input.b.x), vec3<u32>(u_input.b.x, 78079u, u_input.b.x)))))));
}

