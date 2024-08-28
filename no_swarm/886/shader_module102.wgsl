struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global2 = Struct_1(vec4<i32>(19789i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -87702i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.a.x))), u_input.a), select(_wgslsmith_add_i32(_wgslsmith_mod_i32(global2.a.x, u_input.a.x), global2.a.x & 0i), _wgslsmith_add_i32(global2.a.x, 1i) | ~(-53253i), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1071f - -718f)), global2.b)));
    let var_0 = vec2<bool>(!any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(586f - global2.b)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(floor(global2.b)));
    let var_1 = 1u;
    var var_2 = any(select(vec4<bool>(var_0.x == false, false, true, any(vec3<bool>(var_0.x, true, var_0.x))), select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)), select(vec4<bool>(true & var_0.x, any(var_0), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), !(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x)));
    return !(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), all(vec2<bool>(true, var_0.x)) || (var_0.x && true)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = arg_0.x;
    let var_1 = !select(!vec3<bool>(arg_0.x < arg_0.x, 831f != global2.b, true), select(vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, false))), vec3<bool>(false, true, false), true), vec3<bool>(true, true || all(vec3<bool>(false, true, false)), true));
    let var_2 = Struct_1(vec4<i32>(24988i, u_input.b.x, -12589i, 1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(654f, global2.b, var_1.x)))))), 1000f, all(func_3()))));
    var var_3 = Struct_1(min(vec4<i32>(0i, global2.a.x, -11776i, global2.a.x) ^ vec4<i32>(u_input.b.x, global2.a.x, 1i, global2.a.x), vec4<i32>(var_2.a.x | u_input.b.x, countOneBits(global2.a.x), u_input.b.x & -1i, -1i)) << (~arg_0 % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(599f)));
    var_0 = arg_0.x;
    return var_1.x;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(firstTrailingBit(vec4<i32>(global2.a.x, _wgslsmith_add_i32(u_input.a.x, -1i), countOneBits(_wgslsmith_mult_i32(global2.a.x, 1i)), _wgslsmith_dot_vec4_i32(global2.a, global2.a))), _wgslsmith_f_op_f32(-1050f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1620f)) - -392f)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(global2.a, _wgslsmith_div_vec4_i32(vec4<i32>(~(-2147483647i), -global2.a.x, _wgslsmith_mod_i32(global2.a.x, global2.a.x), abs(global2.a.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, var_0.a.x, -34318i, -1i), global2.a))), global2.a), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(sign(1f))));
    var var_2 = arg_0;
    let var_3 = Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(var_1.a.zwy), select(vec3<i32>(var_1.a.x, u_input.b.x, 1i), u_input.a, vec3<bool>(true, arg_0, false))), ~13615i), -1i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))));
    var var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + var_3.b), _wgslsmith_f_op_f32(global2.b - var_1.b)), _wgslsmith_f_op_f32(round(-592f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f - var_1.b)) - _wgslsmith_f_op_f32(var_0.b + var_3.b)), all(vec4<bool>(arg_0 && true, false || arg_0, arg_1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)));
    return func_3().x;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec4<i32> {
    global1 = func_4(any(vec2<bool>(true, true)) & !func_2(abs(vec4<u32>(5029u, 10751u, 32876u, 4158u))), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), func_3().x), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), false, false)));
    var var_0 = firstLeadingBit(24390u);
    var_0 = 1u;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(global2.a, vec4<i32>(-15055i, arg_1, u_input.b.x, global2.a.x))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 18836u, 0u, 4294967295u), vec4<u32>(12149u, 66032u, 4294967295u, 0u)) % vec4<u32>(32u)), global2.a), _wgslsmith_f_op_f32(floor(global2.b)));
    global2 = Struct_1(-global2.a, var_1.b);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(abs(global2.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(545f - global2.b))), -799f));
    var var_1 = Struct_1(select(func_1(vec4<f32>(_wgslsmith_f_op_f32(1282f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-364f * -106f), _wgslsmith_f_op_f32(var_0.x - var_0.x)), u_input.b.x), global2.a, true), -881f);
    let var_2 = min(firstLeadingBit(abs(vec3<i32>(-1i, -u_input.a.x, _wgslsmith_div_i32(0i, var_1.a.x)))), global2.a.xzx);
    let var_3 = Struct_1(var_1.a, global2.b);
    global2 = Struct_1(reverseBits(vec4<i32>(abs(_wgslsmith_mult_i32(0i, var_2.x)), u_input.b.x, abs(var_1.a.x), 2147483647i)), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_0.x)));
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    var var_4 = any(func_3().yy);
    global0 = array<vec2<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.wxy, ~global2.a, ~(~vec4<u32>(~4294967295u, 0u, ~29722u, 1u)), abs(-2147483647i) << (0u % 32u), var_0.zz);
}

