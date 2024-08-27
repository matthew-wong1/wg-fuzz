struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: vec4<f32> = vec4<f32>(165f, -1460f, 1177f, 257f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(max(1i, _wgslsmith_mult_i32(arg_0.a.a, u_input.c.x)) << (u_input.b.x % 32u), 8136i), _wgslsmith_add_vec2_i32(firstLeadingBit(~_wgslsmith_sub_vec2_i32(u_input.c, arg_0.b.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 14242i, -8348i), -vec3<i32>(-1i, -30949i, arg_0.b.a.a)), 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -477f))))), arg_0.b.c.yz), (u_input.b.x << ((u_input.b.x & reverseBits(0u)) % 32u)) >> (~0u % 32u), false);
    let var_1 = !vec3<bool>(var_0.e, var_0.e, var_0.e);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.b.c.x)))), _wgslsmith_div_f32(1323f, _wgslsmith_f_op_f32(global1.x * -838f)))), arg_0.b.c.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(1759f - -1000f)))) - -821f);
    var var_3 = var_0.c.x;
    return _wgslsmith_f_op_f32(abs(735f));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_2 {
    global1 = vec4<f32>(-1664f, 561f, _wgslsmith_f_op_f32(global1.x + global1.x), global1.x);
    var var_0 = Struct_4(Struct_2(-1i), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-25873i, -2147483647i, u_input.a) | vec3<i32>(u_input.a, u_input.c.x, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -1i, 1i), vec3<i32>(u_input.c.x, -2147483647i, -30561i)))), global0[_wgslsmith_index_u32(reverseBits(u_input.d), 29u)], vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(0i), Struct_3(Struct_2(u_input.c.x), global0[_wgslsmith_index_u32(u_input.d, 29u)], arg_1)), vec3<f32>(254f, 319f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 553f)), _wgslsmith_f_op_f32(trunc(1000f)))));
    var_0 = Struct_4(Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.b.a.a, var_0.a.a), var_0.b.b.x)), var_0.b);
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.d, 4294967295u), ~firstLeadingBit(0u), 1u, 52582u), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(24644u, 36188u, 1u, 68401u), vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)), abs(vec4<u32>(6139u, 1u, 0u, u_input.d)), true));
    var var_2 = false;
    return Struct_2(12337i);
}

fn func_1() -> i32 {
    var var_0 = Struct_1(reverseBits(4115i), u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1062f, 762f)), _wgslsmith_f_op_f32(-global1.x))), u_input.b.x, !(reverseBits(0u) >= ~u_input.d));
    var var_1 = abs(firstLeadingBit(min(_wgslsmith_mod_i32(var_0.b.x, var_0.b.x), u_input.c.x)));
    let var_2 = !(!(!select(select(vec3<bool>(var_0.e, var_0.e, false), vec3<bool>(var_0.e, var_0.e, var_0.e), vec3<bool>(var_0.e, var_0.e, var_0.e)), vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(false, var_0.e, var_0.e))));
    var var_3 = func_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, global1.x))) * vec4<f32>(global1.x, -413f, var_0.c.x, _wgslsmith_f_op_f32(352f * global1.x)))));
    var var_4 = _wgslsmith_f_op_f32(802f - global1.x);
    return min(13872i | ~(_wgslsmith_sub_i32(u_input.a, u_input.a) | (-6806i >> (0u % 32u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -58920i, ~(-587i)), vec3<i32>(-2147483647i, u_input.c.x, ~u_input.c.x) << (vec3<u32>(_wgslsmith_add_u32(u_input.d, 24862u), abs(14031u), ~u_input.d) % vec3<u32>(32u))), -(~_wgslsmith_div_vec2_i32(vec2<i32>(38552i, -1i), vec2<i32>(u_input.c.x, u_input.a))) | ~vec2<i32>(func_1(), ~u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 859f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.wy))))) + global1.ww), abs(min(u_input.d, ~47168u)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) | !(!all(vec3<bool>(false, true, false))));
    var var_1 = ~var_0.d;
    global0 = array<vec2<i32>, 29>();
    var var_2 = select(vec4<bool>(true, 202f == var_0.c.x, true, var_0.e), !(!vec4<bool>(var_0.e | false, true, select(var_0.e, true, var_0.e), all(vec2<bool>(var_0.e, false)))), !(!any(!vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e))));
    var var_3 = Struct_1(func_1(), u_input.c, _wgslsmith_div_vec2_f32(var_0.c, global1.zw), _wgslsmith_sub_u32(var_0.d, abs(firstLeadingBit(1u))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, var_3.d);
}

