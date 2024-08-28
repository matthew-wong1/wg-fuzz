struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(14197i, -18969i, 0i, -36616i));

var<private> global2: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    var var_0 = !vec4<bool>(!any(vec4<bool>(false, true, true, true)), true, select(false, true, true), false);
    var var_1 = -_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(~global1.b.wxx, _wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, global1.b.x), vec3<i32>(44068i, u_input.d, u_input.d)), ~vec3<i32>(global1.b.x, global1.b.x, u_input.d))), max(global1.b.xxw, ~vec3<i32>(u_input.d, u_input.d, global1.b.x)) | vec3<i32>(14350i, u_input.d, global1.b.x));
    var var_2 = -407f;
    var var_3 = vec4<u32>(0u, global1.a.x, u_input.c.x, max(global1.a.x, ~(~(~73801u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-473f, _wgslsmith_f_op_f32(140f - -572f), -3633f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-352f, 501f, 979f))))));
    return false;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = -698f;
    let var_1 = Struct_2(_wgslsmith_clamp_u32(u_input.c.x, global1.a.x, max(firstLeadingBit(abs(38243u)), abs(max(global1.a.x, global1.a.x)))));
    let var_2 = Struct_2(57194u);
    global2 = !all(vec2<bool>(true, true));
    let var_3 = _wgslsmith_clamp_vec3_u32(~u_input.b.wwx ^ abs(~u_input.a & u_input.b.xyy), select(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, global1.a.x), u_input.c, global1.a), u_input.c), 1u, global1.a.x), ~(~u_input.a) | ((vec3<u32>(var_2.a, 0u, var_1.a) ^ vec3<u32>(u_input.a.x, global1.a.x, 4294967295u)) << (vec3<u32>(var_1.a, global1.a.x, var_2.a) % vec3<u32>(32u))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(trunc(261f)) >= 713f, true)), ~max(~u_input.a >> (u_input.a % vec3<u32>(32u)), u_input.b.xwz));
    return 562f;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<f32> {
    global2 = true;
    global2 = !(!func_2());
    let var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.x < _wgslsmith_f_op_f32(trunc(-268f)), false, all(vec2<bool>(true, true))), !(!(-1i < u_input.d)));
    let var_1 = Struct_2(_wgslsmith_mult_u32(13511u, _wgslsmith_clamp_u32(u_input.a.x | 0u, 9688u, 4294967295u)));
    let var_2 = global1.b.x;
    return vec4<f32>(925f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -552f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-1012f, 151f, arg_1.x), vec3<f32>(-109f, arg_1.x, arg_1.x)))))), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -168f, 248f, 495f))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(2853i, 2147483647i, -24849i), global1.b.ywx), vec2<f32>(_wgslsmith_f_op_f32(-863f + 1000f), _wgslsmith_f_op_f32(329f * -1991f)))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1395f, -888f, -608f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, -923f, 1000f, 1877f))))));
    var var_1 = global0[_wgslsmith_index_u32(global1.a.x, 4u)];
    let var_2 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~52277u > (82968u >> (var_1.a.x % 32u))));
    let var_3 = vec4<bool>(true, !(!(false || (true && var_2))), !(!var_2), var_2);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec4<u32>(1u, 4294967295u, 31039u, 0u), 4294967295u, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, -1i, ~u_input.d), global1.b.x), -((vec2<i32>(-18604i, -36291i) & vec2<i32>(u_input.d, -23639i)) >> (~vec2<u32>(4294967295u, 44660u) % vec2<u32>(32u)))), var_1.a.x);
}

