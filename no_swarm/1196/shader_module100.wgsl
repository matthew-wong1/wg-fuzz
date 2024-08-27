struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 16>;

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    global1 = array<f32, 16>();
    var var_0 = vec4<bool>(!(!arg_0.x), all(!(!select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), !all(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, false, arg_0.x), select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, true, true)))), all(vec4<bool>(!any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), false, false, select(arg_0.x, !arg_0.x, arg_0.x))));
    var var_1 = Struct_2(Struct_1(~firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c, 10957i, -54843i))), arg_0), Struct_1(vec3<i32>(~(-1i), ~0i, -21488i), select(vec2<bool>(false && var_0.x, true), vec2<bool>(true, true), !(!var_0.xx))), u_input.b, ~_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a, u_input.a, u_input.d.x, 240i) & vec4<i32>(1i, -43151i, u_input.d.x, u_input.c)), vec4<i32>(u_input.a, u_input.a, -51052i, 0i) | vec4<i32>(u_input.a, u_input.c, u_input.d.x, -53368i)));
    var var_2 = select(select(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, var_1.c)), max(vec2<u32>(12744u, var_1.c), vec2<u32>(4294967295u, var_1.c))) | vec2<u32>(u_input.b | u_input.b, _wgslsmith_clamp_u32(0u, 8127u, 4294967295u)), min(vec2<u32>(var_1.c, _wgslsmith_div_u32(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 0u)), !vec2<bool>(var_1.c < 0u, false == var_1.b.b.x)), (max(vec2<u32>(50601u, 56634u), vec2<u32>(30854u, u_input.b)) ^ countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 4294967295u)))) ^ max(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, var_1.c), ~vec2<u32>(u_input.b, u_input.b))), ~14189u >= var_1.c);
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 16u)])))), global1[_wgslsmith_index_u32(var_1.c << (~var_2.x % 32u), 16u)])), global1[_wgslsmith_index_u32(u_input.b, 16u)]);
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 16u)] * -1058f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1877f)), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 16u)], 416f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 16u)])))) + global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, u_input.b), 16u)]));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], var_0.x), vec2<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 16u)])) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-308f, 391f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true))))));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(var_0.x))));
    global2 = array<Struct_3, 17>();
    return global2[_wgslsmith_index_u32(0u, 17u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = func_2();
    global1 = array<f32, 16>();
    global2 = array<Struct_3, 17>();
    global1 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(127f, global1[_wgslsmith_index_u32(0u, 16u)], -1987f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, 1816f)))), vec3<f32>(-745f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.x, 16u)], _wgslsmith_f_op_f32(var_0.a - 616f)), var_0.a)));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1657f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + var_0.a))), _wgslsmith_f_op_f32(1134f + global1[_wgslsmith_index_u32(arg_0.x, 16u)]))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~1u, 16u)], _wgslsmith_f_op_f32(round(1195f))), _wgslsmith_f_op_f32(func_2().a + -1413f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    let var_0 = u_input.b | u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], -1000f, 949f) * _wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(var_0, 2873u, u_input.b, var_0), Struct_4(Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.c), vec2<bool>(true, true)), vec2<bool>(false, false)), Struct_4(Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.c), vec2<bool>(true, false)), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], -1246f, global1[_wgslsmith_index_u32(u_input.b, 16u)], -591f) + vec4<f32>(2762f, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(var_0, 16u)], -1035f)))), vec4<f32>(_wgslsmith_div_f32(-680f, _wgslsmith_f_op_f32(231f - global1[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34147u, u_input.b, var_0, u_input.b), vec4<u32>(u_input.b, var_0, 0u, 1u)), 16u)]), global1[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~0u, 16u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstLeadingBit(vec4<u32>(1u, ~u_input.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, var_0, 4294967295u, 1u)), ~vec4<u32>(var_0, var_0, var_0, 1u)), firstLeadingBit(~u_input.b))), var_1.x, ~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 15703i, 1i), vec3<i32>(-2147483647i, u_input.a, u_input.a) >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)))), abs(~(~(u_input.b << (u_input.b % 32u)))));
}

