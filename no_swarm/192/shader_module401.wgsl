struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(~(i32(-1i) * -28543i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f - _wgslsmith_f_op_f32(round(arg_2)))), -848f), !(!(!vec4<bool>(true, arg_1, arg_1, true))), arg_1);
    let var_1 = var_0;
    return var_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_2(_wgslsmith_mod_i32(-8432i, arg_1.a), !(!arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x)), arg_2).b.x)));
    let var_1 = abs(25062i) == abs(arg_1.a);
    var var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_3.a, -14103i), vec4<i32>(u_input.a, arg_1.a, u_input.a, arg_1.a)), 7893i)) << ((vec3<u32>(0u, _wgslsmith_clamp_u32(7255u, arg_2, 100144u), u_input.b & arg_0.x) | reverseBits(firstLeadingBit(vec3<u32>(u_input.b, arg_0.x, u_input.b)))) % vec3<u32>(32u)), -vec3<i32>(~arg_3.a ^ -24935i, firstTrailingBit(~(-2147483647i)), -1i));
    var_2 = select(_wgslsmith_mod_i32(-(~1i), 48360i), -arg_3.a | (countOneBits(arg_3.a) >> (218u % 32u)), true);
    var_2 = -(~min(-2147483647i, 1i));
    return firstTrailingBit(_wgslsmith_mod_i32(arg_3.a, -49398i));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(2807i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1473f, _wgslsmith_f_op_f32(min(157f, 608f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, 485f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2074f, -259f), vec2<f32>(-1886f, 579f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1398f, 280f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_div_f32(320f, 123f)))), vec4<bool>(all(vec3<bool>(false, true, 1u <= u_input.b)), !all(vec3<bool>(true, false, true)) || true, false, any(vec3<bool>(true, true, true)) || (true || any(vec2<bool>(true, false)))), true);
    var var_1 = vec4<i32>(-(~var_0.a), _wgslsmith_mult_i32(-u_input.a, var_0.a), u_input.a, func_3(firstLeadingBit(~(~vec2<u32>(u_input.b, u_input.b))), func_2(var_0.a, false, 635f, 1u), 31551u, func_2(-(u_input.a >> (0u % 32u)), -314i == select(u_input.a, 2147483647i, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), abs(~u_input.b))));
    let var_2 = func_2(var_1.x | -var_1.x, true, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(round(752f)))), 139468u);
    var var_3 = reverseBits(_wgslsmith_sub_vec2_u32(countOneBits(~abs(vec2<u32>(2047u, 4294967295u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(23591u, 34687u) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~firstLeadingBit(vec2<u32>(u_input.b, 41997u)))));
    let var_4 = vec3<i32>(firstLeadingBit(reverseBits(var_2.a)), var_2.a, var_1.x);
    return func_2(firstTrailingBit(-1i) >> (_wgslsmith_add_u32(var_3.x, _wgslsmith_sub_u32(firstLeadingBit(51941u), _wgslsmith_mod_u32(4294967295u, u_input.b))) % 32u), all(select(vec4<bool>(func_2(var_0.a, var_0.d, 1628f, var_3.x).d, var_2.d & var_2.c.x, true, func_2(-2147483647i, var_2.d, var_2.b.x, u_input.b).c.x), var_2.c, !var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(exp2(var_0.b.x))), _wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(var_0.b.x - -944f))))), countOneBits(var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> StorageBuffer {
    let var_0 = arg_0.b.x;
    var var_1 = -countOneBits(_wgslsmith_mod_i32(-(-1i | u_input.a), u_input.a));
    var var_2 = arg_0.c;
    let var_3 = 239f;
    let var_4 = Struct_1(func_3(countOneBits(~vec2<u32>(4294967295u, 1u)), arg_0, ~(1u << (abs(0u) % 32u)), arg_0), arg_0.b, arg_0.c, any(arg_1) || any(!arg_0.c.wz));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, var_3, var_4.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1261f, 2392f, var_4.b.x) * vec3<f32>(arg_0.b.x, 212f, -104f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), vec4<bool>(true, true, true, true), u_input.b);
}

