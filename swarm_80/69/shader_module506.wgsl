struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 45242i);

var<private> global1: f32 = -912f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    return !(!all(vec4<bool>(true, true, true, true)));
}

fn func_2() -> vec2<bool> {
    var var_0 = true;
    global0 = ~min(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-38816i, -50475i), vec2<i32>(u_input.a, -20700i))), select(vec2<i32>(global0.x, global0.x) >> (vec2<u32>(1u, 48983u) % vec2<u32>(32u)), min(vec2<i32>(-9392i, global0.x), vec2<i32>(u_input.a, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x << (1u % 32u), -2147483647i), -(vec2<i32>(-10507i, 1i) ^ vec2<i32>(u_input.a, -1i))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -281f))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(938f))));
    let var_1 = abs(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 49320u, 6150u)), !all(vec2<bool>(true, false))) | 29420u);
    return select(!(!vec2<bool>(all(vec2<bool>(true, false)), func_3())), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(false, all(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, all(vec2<bool>(true, false))))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1256f);
    global1 = 100f;
    global0 = vec2<i32>(arg_2, ~(~(global0.x ^ u_input.a))) | _wgslsmith_add_vec2_i32(select(select(vec2<i32>(arg_2, global0.x), vec2<i32>(-35755i, global0.x), false), ~vec2<i32>(arg_2, global0.x), vec2<bool>(arg_0, arg_3)) | reverseBits(vec2<i32>(u_input.a, 47978i)), firstTrailingBit(abs(vec2<i32>(7794i, 2147483647i)) >> (select(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 149115u), vec2<bool>(arg_1, false)) % vec2<u32>(32u))));
    var var_0 = select(!func_2(), !vec2<bool>(func_2().x, false), !select(select(!vec2<bool>(arg_3, arg_1), select(vec2<bool>(arg_3, arg_1), vec2<bool>(true, arg_0), vec2<bool>(true, arg_1)), !vec2<bool>(true, arg_3)), select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_3, arg_1), !vec2<bool>(arg_3, arg_3)), any(vec3<bool>(arg_0, true, false))));
    var_0 = vec2<bool>(all(!(!vec3<bool>(arg_1, arg_0, arg_3))), !any(select(!vec4<bool>(arg_0, arg_0, arg_3, false), select(vec4<bool>(arg_1, true, arg_1, arg_3), vec4<bool>(arg_1, true, var_0.x, false), var_0.x), select(true, true, true))));
    return Struct_1(!(!(!vec4<bool>(arg_1, var_0.x, true, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1545f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(step(715f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(799f, 874f) - _wgslsmith_div_f32(arg_2.a.b, arg_1.d.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f - arg_1.b)))))));
    global1 = -288f;
    return func_1(func_3(), arg_2.b.a.x, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 1i, -15969i) >> (vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.c.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(15067i, 62619i, global0.x), vec3<i32>(406i, global0.x, u_input.a)))), vec3<i32>(-1i) * -max(vec3<i32>(2147483647i, -1i, global0.x), vec3<i32>(-63481i, global0.x, 1i))), !(!arg_1.d.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-293f))));
    let var_0 = Struct_1(select(vec4<bool>(true, true, true, false), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), true), -2424f);
    let var_1 = Struct_2(var_0, var_0, ~63629u, vec4<u32>(~_wgslsmith_mod_u32(~1u, abs(5591u)), 6860u, 62936u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 9356u), vec2<u32>(0u, 0u)) << (1u % 32u))), func_4(Struct_4(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b * -1169f))), max(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 59606u, 1u), vec3<u32>(1u, 4294967295u, 1u))), Struct_1(!var_0.a, var_0.b)), Struct_4(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), var_0.b, vec3<u32>(1u, 1u, 1u), func_1(var_0.a.x, var_0.a.x, ~24392i, any(vec3<bool>(var_0.a.x, false, var_0.a.x)))), Struct_2(func_1(var_0.a.x, all(vec4<bool>(var_0.a.x, false, true, true)), -23951i, true), func_1(any(vec2<bool>(var_0.a.x, var_0.a.x)), func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -11188i, 28557i), vec4<i32>(u_input.a, u_input.a, 44614i, 2147483647i)), all(var_0.a)), 1u, vec4<u32>(1u, 8175u, 4294967295u, 95146u) & select(vec4<u32>(4294967295u, 4294967295u, 16870u, 4294967295u), vec4<u32>(24253u, 1u, 1u, 9266u), vec4<bool>(true, var_0.a.x, var_0.a.x, true)), func_1(any(vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a.wwz), global0.x, all(var_0.a)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1343f);
    global1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-min(global0.x, u_input.a), -20537i));
}

