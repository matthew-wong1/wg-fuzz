struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_2(countOneBits(~firstTrailingBit(vec2<u32>(arg_3.a, arg_3.a) ^ vec2<u32>(arg_3.a, 71601u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-523f, -182f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f), 1f)));
    let var_2 = var_1;
    var var_3 = arg_3;
    global0 = array<vec3<bool>, 32>();
    return 17498u;
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 32>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f + 1800f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), 180f))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = !select(arg_2.a.zx, arg_2.a.xz, arg_2.a.wy);
    var var_1 = ~firstLeadingBit(~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_1, 50675u, arg_1)), min(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(arg_1, 1u, 36962u))));
    let var_2 = Struct_3(func_2(!(!arg_2.a), 0u, Struct_1(vec4<bool>(false, false, arg_2.c, false), -vec4<i32>(arg_2.b.x, -9286i, arg_2.b.x, arg_2.b.x), u_input.a.x >= -2147483647i), Struct_3(reverseBits(arg_0))) >> (1u % 32u));
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec2<i32> {
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    var var_0 = Struct_2(~(~vec2<u32>(arg_0.a.x ^ 0u, ~arg_0.a.x)));
    var var_1 = _wgslsmith_f_op_f32(func_4(func_2(!vec4<bool>(select(true, false, true), true, true, any(vec2<bool>(false, true))), 4294967295u, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), firstLeadingBit(countOneBits(vec4<i32>(-1i, 2147483647i, 21146i, u_input.a.x))), _wgslsmith_mod_u32(15448u, 44597u) < var_0.a.x), Struct_3(1u)), arg_0.a.x, Struct_1(vec4<bool>(true, all(vec2<bool>(true, false)), arg_1 <= _wgslsmith_f_op_f32(func_3()), _wgslsmith_dot_vec3_i32(u_input.a.xww, vec3<i32>(-35785i, 0i, arg_2)) >= 1i), max(-vec4<i32>(arg_2, arg_2, 24244i, arg_2) & vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -25005i), u_input.a), false)));
    return u_input.a.yy;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec3<f32> {
    global0 = array<vec3<bool>, 32>();
    var var_0 = Struct_1(vec4<bool>(all(select(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], vec3<bool>(true, true, false))) && all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), false, true | !select(true, false, true), true), u_input.a, any(vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(!vec4<bool>(var_0.a.x, func_2(var_0.a, 0u, Struct_1(var_0.a, vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -33880i), var_0.a.x), Struct_3(arg_0.x)) >= select(arg_0.x, arg_0.x, var_0.a.x), true, var_0.a.x), ~(_wgslsmith_mult_vec4_i32(~u_input.a, vec4<i32>(u_input.a.x, arg_1.x, var_0.b.x, u_input.a.x)) | u_input.a), false);
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-841f, -390f, -946f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, 1120f, 1563f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -480f, -384f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1278f, -140f, -1144f)))), vec3<bool>(var_0.a.x, _wgslsmith_f_op_f32(abs(-265f)) <= _wgslsmith_f_op_f32(select(488f, -1000f, var_0.a.x)), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(max(vec3<u32>(~var_0, _wgslsmith_mult_u32(1u, var_0), ~var_0), vec3<u32>(13870u, min(_wgslsmith_sub_u32(var_0, 1u), var_0), ~(~var_0))), _wgslsmith_mult_vec2_i32(func_1(Struct_2(vec2<u32>(var_0, 6063u)), -190f, -23732i), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), min(u_input.a.xw, vec2<i32>(1i, 21991i)))) << (vec2<u32>(~(~var_0), _wgslsmith_mod_u32(countOneBits(4294967295u), var_0)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-11915i);
}

