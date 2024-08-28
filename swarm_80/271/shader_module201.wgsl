struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: u32 = 28719u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_1(~(~vec2<u32>(u_input.a, countOneBits(4294967295u))), _wgslsmith_f_op_f32(trunc(-938f)), -470f);
    global0 = array<vec4<u32>, 9>();
    var var_1 = 4294967295u > _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(86110u, 9u)], vec4<u32>(u_input.a, var_0.a.x, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 61812u, 489u, 1u)), vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, 27952u) ^ vec4<u32>(105061u, 1u, 111674u, u_input.b.x)), ~(vec4<u32>(4294967295u, 1u, u_input.a, var_0.a.x) >> (global0[_wgslsmith_index_u32(u_input.a, 9u)] % vec4<u32>(32u)))), ~(~vec4<u32>(0u, 43383u, u_input.a, 21248u)));
    var_1 = false;
    var var_2 = select(!vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), false), select(select(vec4<bool>(any(vec2<bool>(false, false)), false, true, all(vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), vec4<bool>(false, true | any(vec4<bool>(false, false, true, true)), true, true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(var_0.b, 126f)) != _wgslsmith_f_op_f32(-arg_0.x))), vec4<bool>(u_input.b.x >= var_0.a.x, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false), true)), select(false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), !select(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false)))));
    return reverseBits(~(~(~(vec4<u32>(4294967295u, u_input.a, 1u, 11651u) >> (vec4<u32>(9756u, 61069u, 0u, 42026u) % vec4<u32>(32u))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_2.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_0.b) + vec2<f32>(arg_2.c, 542f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), arg_1.c), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -662f), 413f))));
    global0 = array<vec4<u32>, 9>();
    let var_1 = func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1778f * -1072f)))));
    let var_2 = var_1.xz;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, arg_0.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -671f) * vec2<f32>(var_0.x, 250f))))));
    return reverseBits(_wgslsmith_add_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, 10943i)) | -vec3<i32>(1i, 2147483647i, 1i), select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), -vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(1i, -10636i, u_input.c), all(vec3<bool>(true, true, true)))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<u32>, 9>();
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = array<vec4<u32>, 9>();
    global1 = 4294967295u;
    let var_1 = _wgslsmith_dot_vec3_i32(~(-abs(func_2(Struct_1(vec2<u32>(u_input.a, 36079u), -1000f, -1000f), Struct_1(vec2<u32>(42014u, u_input.b.x), -1617f, 2084f), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), -1406f, -1278f)))), vec3<i32>(~_wgslsmith_mod_i32(49574i, u_input.c), countOneBits(firstTrailingBit(-2147483647i)), abs(20378i)) | vec3<i32>(~(~(-14418i)), 0i, abs(u_input.c) << (~20620u % 32u)));
    return Struct_1(~countOneBits(firstTrailingBit(u_input.b)) << (u_input.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(550f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f * 470f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 998f) * _wgslsmith_f_op_f32(-594f - 1121f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 9>();
    let var_0 = true;
    var var_1 = !vec2<bool>(any(select(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, var_0, var_0), true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, false, var_0, true))), true);
    global0 = array<vec4<u32>, 9>();
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.c)) - _wgslsmith_f_op_f32(var_2.b + -235f))), _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -469f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_2.c, reverseBits(select(~vec4<u32>(var_2.a.x, var_2.a.x, u_input.b.x, 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(42949u, 9u)], global0[_wgslsmith_index_u32(var_2.a.x, 9u)]), _wgslsmith_add_u32(u_input.a, 5096u), 1u, ~49194u), true)));
}

