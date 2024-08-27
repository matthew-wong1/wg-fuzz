struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global0 = Struct_1(-global0.a, select(select(vec3<bool>(global0.c.x, any(global0.c), global0.b.x), select(vec3<bool>(false, true, true), vec3<bool>(global0.c.x, global0.d, global0.d), !global0.b), global0.b.x), vec3<bool>(global0.b.x, countOneBits(u_input.b.x) != -12382i, global0.d), vec3<bool>(true, true, true)), global0.b.yy, global0.d);
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.a, -7372i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(global0.a, -2147483647i, 16127i), vec3<i32>(global0.a, 1i, global0.a)), -vec3<i32>(1i, 8299i, u_input.b.x)), ~(vec3<i32>(global0.a, 56631i, global0.a) ^ vec3<i32>(0i, global0.a, u_input.b.x)))), select(select(global0.b, !(!vec3<bool>(global0.b.x, false, global0.b.x)), vec3<bool>(global0.b.x, !global0.b.x, !global0.c.x)), global0.b, vec3<bool>(any(global0.b.zy), true, true)), global0.c, global0.b.x);
    let var_0 = true;
    var var_1 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(384f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-652f)) + -1000f), true, true, global0.c.x), any(!select(global0.b, vec3<bool>(false, global0.b.x, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, -463f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(512f, 572f) * vec2<f32>(276f, 414f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-422f, -1222f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-882f, -544f) - vec2<f32>(-1000f, 334f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1745f, 1000f))) - vec2<f32>(_wgslsmith_f_op_f32(floor(314f)), _wgslsmith_f_op_f32(f32(-1f) * -390f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f - -1069f) + _wgslsmith_f_op_f32(trunc(-511f))))), reverseBits(_wgslsmith_div_vec2_i32(u_input.b, ~max(vec2<i32>(-8107i, 31100i), vec2<i32>(1i, u_input.b.x)))));
    let var_2 = abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.a), vec4<u32>(3748u, u_input.c.x, u_input.c.x, u_input.a)), vec4<u32>(u_input.a, ~u_input.c.x, u_input.a & u_input.a, ~27173u)), 4294967295u));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = global0.a;
    var var_1 = -_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, select(1i, ~global0.a, func_3())), abs(arg_0));
    let var_2 = Struct_1(_wgslsmith_div_i32(1i, -45346i), select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.x, false), arg_1), select(global0.b, global0.b, vec3<bool>(global0.d, true, false)), true), !global0.b, all(vec3<bool>(global0.d, true, false)) == select(false, all(vec3<bool>(global0.c.x, true, arg_1.x)), !global0.d)), !vec2<bool>(global0.d, arg_1.x), global0.c.x);
    let var_3 = var_2;
    let var_4 = vec4<u32>(13217u | _wgslsmith_mult_u32(8528u, u_input.c.x), u_input.c.x, ~_wgslsmith_add_u32(~firstTrailingBit(u_input.a), select(u_input.a, u_input.c.x, !var_2.d)), firstTrailingBit(u_input.a));
    return select(!(!(!vec4<bool>(var_2.d, true, true, true))), vec4<bool>((global0.c.x & true) || var_2.d, !(!any(vec3<bool>(false, global0.d, var_2.d))), true, all(!select(arg_1.zz, vec2<bool>(var_3.c.x, var_2.b.x), vec2<bool>(false, true)))), vec4<bool>(true, any(!var_2.c), false & !(!global0.d), (~var_4.x <= abs(u_input.c.x)) | false));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(-1i, firstTrailingBit(u_input.b.x)), _wgslsmith_div_i32(global0.a, -1i), select(u_input.b.x, var_0.a, _wgslsmith_sub_u32(~arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(9527u, u_input.c.x), u_input.c.xy)) <= _wgslsmith_add_u32(4294967295u, u_input.a)));
    global0 = arg_0;
    var var_2 = arg_0;
    var var_3 = true;
    return Struct_1(abs(global0.a), arg_0.b, !var_2.c, true);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = global0.b;
    let var_1 = var_0.x;
    global0 = func_4(Struct_1(firstLeadingBit(1i), global0.b, vec2<bool>(true, false), any(func_2(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(2147483647i, -1i)), !global0.b))), ~u_input.c.x);
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(select(u_input.a, u_input.c.x, true), ~3379u, 4294967295u | u_input.a), ~_wgslsmith_clamp_u32(u_input.a, u_input.c.x, u_input.a), u_input.a) >> ((~select(u_input.a, 1u, var_0.x) ^ u_input.c.x) % 32u), ~1u, ~(~select(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), !var_0.x)), u_input.a);
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(36937i, u_input.b.x), vec2<i32>(2147483647i, u_input.b.x)), u_input.b), arg_0) >= _wgslsmith_clamp_i32(-1i, -(~(-2147483647i)) | _wgslsmith_div_i32(~2147483647i, abs(global0.a)), -41679i);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstTrailingBit(vec4<u32>(u_input.a, ~u_input.c.x, 4294967295u, 0u)));
    var var_1 = vec4<f32>(-895f, _wgslsmith_f_op_f32(-2243f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(276f))), _wgslsmith_f_op_f32(func_1(-(~u_input.b))));
    let var_2 = abs(~(~9121i));
    let var_3 = Struct_1(u_input.b.x, vec3<bool>(func_3(), global0.b.x, true), !(!func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, var_2, 0i), vec4<i32>(-2739i, u_input.b.x, u_input.b.x, u_input.b.x)), global0.b).yw), !(!any(!global0.b.zy)));
    let var_4 = _wgslsmith_f_op_f32(trunc(-1689f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-831f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f))))), -23290i);
}

