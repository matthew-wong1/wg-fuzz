struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<bool, 30>;

var<private> global2: array<vec4<u32>, 8>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2((max(1u, arg_2.b) & ~1u) << (27847u % 32u), 1000f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.c.x, _wgslsmith_div_f32(arg_1.b, global3.c.x)))), vec2<f32>(arg_1.c.x, 1000f))));
    global0 = array<bool, 21>();
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    global2 = array<vec4<u32>, 8>();
    return _wgslsmith_mod_u32(arg_1.a, ~((arg_2.b << (~var_0.a % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(15485u, u_input.c.x), vec2<u32>(88301u, 60394u) | vec2<u32>(u_input.c.x, u_input.c.x)) % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.b.x;
    global3 = Struct_2(~_wgslsmith_mult_u32(~arg_1.x, 46973u), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-854f)), -168f, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(954f + global3.c.x))))));
    var var_1 = all(vec3<bool>(select(global0[_wgslsmith_index_u32(~(~26901u), 21u)], 0u < select(global3.a, 4294967295u, false), global1[_wgslsmith_index_u32(global3.a, 30u)]), global0[_wgslsmith_index_u32(~reverseBits(0u << (0u % 32u)), 21u)], any(vec3<bool>(!global1[_wgslsmith_index_u32(55796u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.a, 28262u, arg_1.x), 21u)], true))));
    var var_2 = firstLeadingBit(~func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-165f, 437f), vec2<f32>(263f, -1000f), global0[_wgslsmith_index_u32(16213u, 21u)])))), Struct_2(_wgslsmith_sub_u32(arg_1.x, 4924u), _wgslsmith_f_op_f32(f32(-1f) * -2537f), _wgslsmith_f_op_vec2_f32(global3.c + global3.c)), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(global3.a, 21u)]), 1u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, _wgslsmith_div_f32(-1000f, global3.c.x), global3.c.x, _wgslsmith_f_op_f32(-global3.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.b, 992f, -1067f, 824f))), vec4<f32>(1850f, 601f, -1000f, global3.b), true))) + vec4<f32>(_wgslsmith_f_op_f32(floor(global3.b)), -506f, global3.c.x, _wgslsmith_f_op_f32(global3.b - global3.c.x))));
    return Struct_2(arg_1.x, -717f, var_3.wz);
}

fn func_3() -> vec4<f32> {
    var var_0 = firstTrailingBit(~min(max(u_input.c.wzz, _wgslsmith_sub_vec3_u32(vec3<u32>(39179u, global3.a, 4294967295u), vec3<u32>(34947u, global3.a, global3.a))), vec3<u32>(0u, ~1u, ~global3.a)));
    var var_1 = global3.c;
    var var_2 = Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(54714u, global3.a, global3.a) ^ ~u_input.c.x, 30u)], any(!(!vec3<bool>(global1[_wgslsmith_index_u32(global3.a, 30u)], true, false)))), var_0.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, global3.b, var_1.x) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 536f, 940f, 766f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    let var_1 = func_1(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -1i), 23575i), select(~vec2<i32>(u_input.a, -1i), u_input.b, vec2<bool>(true, true)))), vec2<u32>(1u, 79263u) & u_input.c.yw);
    global0 = array<bool, 21>();
    let var_2 = var_1;
    var var_3 = vec2<u32>(var_1.a, u_input.c.x >> (_wgslsmith_sub_u32(~select(var_1.a, global3.a, false), u_input.c.x) % 32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b, var_2.c.x, 413f, -1252f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1634f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), var_2.c.x), var_1.b, _wgslsmith_f_op_vec4_f32(func_3()).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.x, -559f)) + _wgslsmith_f_op_vec4_f32(func_3()).x)))), vec3<i32>(reverseBits(-2147483647i), u_input.b.x, i32(-1i) * -2147483647i));
}

