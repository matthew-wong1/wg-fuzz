struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: array<bool, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = -1000f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-266f, 257f)))) - -233f), 1697f, 456f);
    let var_2 = var_1.x;
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)));
    return _wgslsmith_f_op_f32(abs(-1947f));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    global2 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(731f + arg_0), arg_0, _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1471f, 1514f, arg_0, -1763f), vec4<f32>(321f, 664f, -1000f, arg_0), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1084f, 294f, arg_0) - vec4<f32>(-219f, arg_0, arg_0, 1215f))))));
    let var_1 = global2[_wgslsmith_index_u32(select(reverseBits(4294967295u), arg_1, any(vec4<bool>(false, select(true, true, all(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]))), true, (i32(-1i) * -2147483647i) <= u_input.b.x))), 30u)];
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(arg_1 | 1u) >> (u_input.a.x % 32u), ~4294967295u, ~countOneBits(arg_1) | arg_1), u_input.c.yyy);
    global2 = array<bool, 30>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_div_f32(2362f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
}

fn func_1() -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(~54260u, 29u)])), ~0u)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1207f, -795f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - 515f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1754f)) * _wgslsmith_f_op_f32(floor(518f))) * 1154f), _wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1232f) * _wgslsmith_f_op_f32(step(-1000f, -686f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-101f, 478f)))));
    global2 = array<bool, 30>();
    let var_1 = min(u_input.c.x, _wgslsmith_div_u32(26717u, min(max(60101u, 1u), select(u_input.a.x, u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 30u)])))) & firstTrailingBit(~u_input.a.x);
    let var_2 = vec4<bool>(true, !(!(!any(vec3<bool>(true, global2[_wgslsmith_index_u32(826u, 30u)], global2[_wgslsmith_index_u32(var_1, 30u)])))), global2[_wgslsmith_index_u32(~u_input.a.x, 30u)], false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))));
    return _wgslsmith_add_vec2_u32(abs(u_input.a), u_input.c.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(24298u, 30u)], true)), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], false), vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), vec2<bool>(true, u_input.a.x <= 44331u)), vec2<bool>(false, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false))), vec2<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false, global2[_wgslsmith_index_u32(45231u, 30u)])), all(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, abs(~121149u) << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(func_1(), countOneBits(vec2<u32>(u_input.a.x, u_input.c.x))), u_input.a.x), _wgslsmith_div_vec4_u32(~u_input.c, vec4<u32>(0u, ~u_input.c.x, _wgslsmith_mult_u32(~u_input.c.x, abs(1u)), 1u)), reverseBits(u_input.c));
    var var_2 = Struct_1(75710i);
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.c.yy, var_1.ww);
    let var_4 = -(~firstTrailingBit(var_2.a) & countOneBits(3821i));
    let x = u_input.a;
    s_output = StorageBuffer(-501f, ~_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), var_1.zw, vec2<u32>(40193u, 13227u))), var_1.yz), (_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(5667i, -1i, -12041i), vec3<i32>(2147483647i, -7911i, 1i)), vec3<i32>(25935i, 38072i, 39511i)) >> (vec3<u32>(~var_1.x, _wgslsmith_mod_u32(23800u, 4294967295u), _wgslsmith_mod_u32(var_1.x, 1u)) % vec3<u32>(32u))) >> (countOneBits(~_wgslsmith_clamp_vec3_u32(var_1.yww, vec3<u32>(25363u, var_1.x, var_1.x), u_input.c.yww)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(round(-994f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(524f * -1078f), _wgslsmith_f_op_f32(trunc(-316f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(831f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) + _wgslsmith_div_f32(-1754f, 1464f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1147f - 1869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-483f, -1730f, true))))));
}

