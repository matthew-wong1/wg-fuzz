struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(select(-1633f, global1.d.x, true)) < -872f, any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), true)), false, any(vec3<bool>(true, !select(false, true, false), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, -131f) - _wgslsmith_f_op_f32(-arg_0)) * 1671f), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1722f * 885f))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.wzx + global1.d.xwy), global1.c.yxz), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.c.x, 1359f), global1.c.zyw), vec3<f32>(arg_0, global1.c.x, -1679f)))), _wgslsmith_f_op_vec3_f32(exp2(global1.d.wyz)))));
    global0 = array<Struct_2, 4>();
    global1 = Struct_1(~(-countOneBits(vec2<i32>(global1.a.x, 36088i))), 4294967295u, global1.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 1000f, var_1.x, var_1.x)), vec4<f32>(598f, var_1.x, -1518f, global1.c.x))))));
    return 989f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = Struct_1(-vec2<i32>(-372i, global1.a.x), 29484u, _wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_3(global1.d.x, firstLeadingBit(global1.a.x) | 51108i)) < -1423f);
    global1 = Struct_1(-vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -1i, global1.a.x), vec3<i32>(global1.a.x, 2418i, 0i)), global1.a.x), _wgslsmith_add_u32(max(0u, ~25919u) | _wgslsmith_add_u32(firstTrailingBit(4294967295u), ~46781u), 83631u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d)) - global1.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-734f, -755f, -863f, global1.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, global1.d.x, -646f, arg_0)), vec4<bool>(var_0.a, !var_0.a, all(vec3<bool>(var_0.a, var_0.a, false)), !var_0.a)))));
    let var_1 = Struct_2(global1.c.x);
    let var_2 = Struct_5(var_0.a & true, abs(u_input.a.x) | u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2087f, 1000f, arg_0))) * global1.d.zww));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, 313f) * _wgslsmith_f_op_f32(func_3(-467f, global1.a.x)))))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, _wgslsmith_mult_i32(1i, 17359i), -20675i), -vec3<i32>(global1.a.x, global1.a.x, 11740i) << (_wgslsmith_mod_vec3_u32(u_input.a.yzz, vec3<u32>(0u, 4294967295u, global1.b)) % vec3<u32>(32u)))), (vec3<i32>(0i, 1i >> (global1.b % 32u), _wgslsmith_add_i32(-21455i, global1.a.x)) << (select(vec3<u32>(3399u, global1.b, u_input.a.x), vec3<u32>(0u, u_input.a.x, global1.b), true) % vec3<u32>(32u))) >> (~(~(~u_input.a.wzz)) % vec3<u32>(32u)));
    var var_1 = vec3<bool>(!(!arg_0.a), false, false);
    var var_2 = func_2(_wgslsmith_f_op_f32(495f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))));
    var var_3 = firstLeadingBit(min(~(vec3<u32>(global1.b, 4294967295u, global1.b) >> (reverseBits(vec3<u32>(0u, 0u, 0u)) % vec3<u32>(32u))), ~vec3<u32>(~u_input.a.x, ~global1.b, u_input.a.x)));
    var var_4 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, global1.a.x) ^ vec3<i32>(-26813i, -25804i, var_0.x), vec3<i32>(var_0.x, -2147483647i, var_0.x))), vec3<i32>(0i, countOneBits(-23244i), -1i)) << (firstLeadingBit(32752u) % 32u);
    return Struct_1(vec2<i32>(-select(reverseBits(var_0.x), global1.a.x, false), var_0.x), global1.b >> (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + global1.d.x)), global1.c.x, 139f) + global1.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(global1.c.x, var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + 1044f)), 341f, _wgslsmith_f_op_f32(floor(global1.d.x))), vec4<f32>(835f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(136f, 1267f) * _wgslsmith_f_op_f32(select(var_2.a, -109f, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x * var_2.a)))), select(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), !vec4<bool>(var_1.x, arg_0.a, var_1.x, arg_0.a), var_1.x || true), vec4<bool>(!arg_0.a, false, false, arg_0.a), arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(-650f <= _wgslsmith_f_op_f32(step(global1.d.x, -705f))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, ~min(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 38562u), vec2<u32>(13198u, global1.b) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), vec2<u32>(u_input.a.x, global1.b)), global1.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.d.x, -578f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -1478f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.d.yx * vec2<f32>(var_0.d.x, 2620f))))))));
}

