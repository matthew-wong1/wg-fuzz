struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(33184u, 106752u, 1u, 37970u), vec4<u32>(52137u, 56513u, 0u, 4294967295u), vec4<u32>(63885u, 1u, 66215u, 0u), vec4<u32>(34076u, 131689u, 1u, 43554u), vec4<u32>(54973u, 1u, 24304u, 1u), vec4<u32>(1u, 1u, 40931u, 0u), vec4<u32>(0u, 0u, 4294967295u, 76935u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1502u, 32022u, 61874u, 0u), vec4<u32>(17435u, 9076u, 7349u, 36174u), vec4<u32>(1u, 18047u, 63145u, 10229u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(87668u, 1u, 4294967295u, 1u), vec4<u32>(2966u, 0u, 4294967295u, 4294967295u), vec4<u32>(86728u, 32306u, 28006u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 8624u));

var<private> global1: array<u32, 7>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> Struct_1 {
    global0 = array<vec4<u32>, 16>();
    let var_0 = global2.x;
    global0 = array<vec4<u32>, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -204f), -309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, global2.x, global2.x, -561f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -466f, 591f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, global2.x, -646f, -340f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1717f, 1000f, 1037f, global2.x) - vec4<f32>(-1179f, 1314f, global2.x, global2.x))))));
    global1 = array<u32, 7>();
    return arg_0.b;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = func_2(Struct_5(4294967295u, Struct_1(arg_1)), Struct_4(vec2<u32>(~(~6048u), 0u), true));
    let var_1 = !any(!vec4<bool>(!arg_0.b, any(vec3<bool>(arg_0.b, arg_0.b, false)), false, arg_0.b));
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = vec2<i32>(arg_3, _wgslsmith_dot_vec4_i32(u_input.e, ~u_input.e));
    let var_1 = vec4<bool>(true, (any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))) & any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))) & (2147483647i >= -_wgslsmith_dot_vec3_i32(u_input.e.yyz, u_input.b)), arg_0 > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(func_2(Struct_5(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], Struct_1(global2.x)), Struct_4(u_input.c.xx, true)).a * _wgslsmith_f_op_f32(498f + 200f)))), !all(vec2<bool>(arg_3 >= -27078i, 2147483647i == u_input.b.x)));
    var_0 = _wgslsmith_sub_vec2_i32(max(countOneBits(u_input.e.yx), vec2<i32>(2147483647i, -var_0.x ^ arg_3)), vec2<i32>(i32(-1i) * -2147483647i, 7869i));
    var_0 = ~(~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, -10734i)) ^ vec2<i32>(10811i, var_0.x), -vec2<i32>(-1i, 13765i)));
    var_0 = u_input.b.xz;
    return -414f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1055f))))) - -680f);
    var var_1 = u_input.e;
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-422f - 202f))))), var_0), -1088f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f + global2.x) * _wgslsmith_f_op_f32(1324f + _wgslsmith_f_op_f32(517f + var_0))) * _wgslsmith_f_op_f32(-global2.x)), global2.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(func_1(Struct_4(vec2<u32>(0u, 49288u), true), global2.x, u_input.c, u_input.b.zy))) * global2.wy) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-1375f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -417f)), global2.zw, (global2.x < var_0) || true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1591f, global2.yyw, firstLeadingBit(u_input.d.x), var_1.x << (u_input.c.x % 32u))), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(234f, _wgslsmith_f_op_f32(step(208f, -2489f)), _wgslsmith_f_op_f32(trunc(429f)), _wgslsmith_f_op_f32(var_0 + var_0)) * vec4<f32>(1f, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-var_2.x)))), u_input.b, 1040f, -295f);
}

