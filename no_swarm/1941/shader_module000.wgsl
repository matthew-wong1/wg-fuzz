struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(vec4<i32>(abs(~(~(-23609i))), u_input.a, ~u_input.a, -abs(arg_0.x)));
    global1 = array<vec3<i32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1153f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -173f)))))));
    global0 = Struct_2(global0.a);
    let var_2 = arg_0.x;
    return _wgslsmith_mult_i32(-2147483647i, min(0i, -countOneBits(-arg_3.a.x)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = reverseBits(vec4<i32>(arg_1.c, min(arg_0, -63553i), ~1i, reverseBits(-u_input.a | ~(-2147483647i))));
    global0 = Struct_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a.x, var_0.x << (1u % 32u), 1i, -23047i), arg_2.a));
    let var_1 = arg_2.a.wz;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(371f)), _wgslsmith_f_op_f32(abs(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a.x, -635f, arg_1.a.x, 308f)))) - _wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), arg_1.b, _wgslsmith_div_f32(990f, -1023f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, 252f)) - arg_1.b), global0.a.x);
    global1 = array<vec3<i32>, 11>();
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = func_3(_wgslsmith_dot_vec2_i32(global0.a.zz, -vec2<i32>(func_2(global0.a, arg_2, arg_0, Struct_2(vec4<i32>(42082i, -2147483647i, arg_1.c, arg_1.c))), i32(-1i) * -3424i)), arg_1, Struct_2(-(~(global0.a | global0.a))));
    return _wgslsmith_f_op_f32(trunc(-460f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 11>();
    global0 = Struct_2(vec4<i32>(1i, firstTrailingBit(_wgslsmith_mult_i32(global0.a.x, -79257i)), u_input.a, _wgslsmith_mult_i32(global0.a.x, u_input.a)) & ~vec4<i32>(~(-2147483647i), global0.a.x, u_input.a, abs(-28577i)));
    var var_0 = Struct_2(countOneBits(global0.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1338f, 218f, 1238f, -242f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(890f, 495f, -934f, -815f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(567f, 288f))))), 45768i);
    var var_2 = _wgslsmith_div_u32(min(~1459u, ~0u), abs(1u));
    var var_3 = max(~(~var_0.a.x), global0.a.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1283f, -868f), _wgslsmith_f_op_f32(-var_1.b)) - -1594f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f + _wgslsmith_f_op_f32(f32(-1f) * -569f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(round(-568f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(true, Struct_1(vec4<f32>(var_1.a.x, 406f, var_1.a.x, -507f), var_1.a.x, 37525i), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 29373u, 1u, 4294967295u), vec4<u32>(128650u, 0u, 31927u, 80547u))))))) - _wgslsmith_f_op_vec4_f32(max(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16869u, 19556u), vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_clamp_u32(1u, 13309u, 4152u), ~4294967295u) | firstLeadingBit(vec3<u32>(4294967295u, 29612u, 4294967295u))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 30959u, 18067u), vec3<u32>(41149u, 78032u, 1u), vec3<bool>(true, true, false))), 1u, firstTrailingBit(abs(23551u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(505f, -477f) + vec2<f32>(var_1.b, -662f)) + var_1.a.xy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -1000f) + _wgslsmith_f_op_f32(abs(var_1.a.x)))));
}

