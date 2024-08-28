struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 14>;

var<private> global3: vec2<f32> = vec2<f32>(623f, -395f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(min(4294967295u, ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 22658u, 4294967295u), ~u_input.a))), 14u)];
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit((~_wgslsmith_clamp_u32(arg_0.x, 4294967295u, u_input.a) ^ 1u) | arg_0.x), 30u)];
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2249f), _wgslsmith_f_op_f32(-global3.x), global3.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, 219f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-253f, global3.x))), vec2<f32>(971f, global3.x))))), false, select(~(~(~arg_0.yyx)), arg_0.zxz, false));
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | (vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 47150u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(12730u, 95233u)))), u_input.a), 30u)], vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_2)))))), -1000f, 1239f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1276f, global3.x))))), Struct_3(!func_3(~vec4<u32>(4294967295u, u_input.a, 0u, 17397u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(-1000f)))))), vec2<u32>(_wgslsmith_clamp_u32(var_0.a.a, 1u, 1u << (_wgslsmith_div_u32(0u, 63315u) % 32u)), 4294967295u), countOneBits(vec3<i32>(reverseBits(firstLeadingBit(arg_1.x)), 16988i, select(-arg_1.x, -2147483647i, u_input.b.x <= 2294i))), !(!vec4<bool>(true, !arg_0.a, false, false)), vec4<u32>(select(var_0.a.a, 22665u, true), ~_wgslsmith_mult_u32(u_input.a, select(20633u, 1u, true)), u_input.a, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)));
    global0 = array<Struct_2, 30>();
    var var_2 = true;
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1205f)), min(select(~var_1.b | (vec2<u32>(var_1.e.x, 4294967295u) | var_1.b), vec2<u32>(0u ^ var_0.a.a, ~13222u), !select(var_1.d.wz, var_1.d.zw, var_1.d.yx)), ~abs(abs(var_1.b))), arg_1, vec4<bool>(false, (any(vec2<bool>(false, var_0.c.a)) & !var_0.c.a) & !arg_0.a, true, true), max(max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_1.b.x, 4294967295u), ~vec4<u32>(var_0.a.a, 19465u, var_0.a.a, 2077u)), var_1.e), var_1.e ^ (~var_1.e >> (var_1.e % vec4<u32>(32u)))));
    return Struct_3(any(vec2<bool>(false, true | (true != var_0.c.a))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> f32 {
    var var_0 = 88956u;
    let var_1 = u_input.c.x;
    let var_2 = func_2(Struct_3(!arg_1.a), -(~vec3<i32>(var_1, ~var_1, var_1 & 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 435f) * _wgslsmith_div_f32(-754f, global3.x)) + -1616f)));
    global1 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -273f), 1143f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2196f, 1000f)))))));
    return global3.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_3(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_3(true))), _wgslsmith_f_op_f32(exp2(arg_0.x)), all(vec3<bool>(false, false, true)))) > _wgslsmith_f_op_f32(-global3.x)));
    global3 = arg_0;
    global0 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_mod_u32(max(4294967295u, u_input.a), 4294967295u)), arg_2.x ^ ~4294967295u);
    var var_2 = Struct_2(~(1u & _wgslsmith_mult_u32(0u & arg_2.x, firstTrailingBit(u_input.a))));
    return ~select(~arg_2.x, arg_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_mod_u32(0u, 5122u);
    var var_1 = vec3<u32>(~4294967295u, 26861u, func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_1(23095u, Struct_3(false)))))), _wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(~u_input.c.x, u_input.b.x)), vec2<u32>(~_wgslsmith_add_u32(7226u, 19768u), firstTrailingBit(4294967295u)), u_input.b.x));
    let var_2 = global0[_wgslsmith_index_u32(~46160u, 30u)];
    let var_3 = ((((62505i >= u_input.c.x) | true) | (_wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(66984u, 9478u)) != ~var_1.x)) | false) | ((~_wgslsmith_clamp_u32(4294967295u, 1u, 0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (var_1.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_1.xx, vec2<u32>(u_input.a, var_2.a)))) < u_input.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-417f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-291f, -730f)), -561f)), _wgslsmith_f_op_f32(f32(-1f) * -757f)))));
    var var_5 = true;
    var var_6 = select(vec3<bool>(true, var_4.x == -224f, true), vec3<bool>((17039i > ~u_input.b.x) || var_3, var_3, true), vec3<bool>(-_wgslsmith_sub_i32(53956i, u_input.b.x) > 0i, var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1036f, global3.x)) + var_4.x) >= _wgslsmith_f_op_f32(var_4.x + -440f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yy);
}

