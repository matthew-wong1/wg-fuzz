struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(26757u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 49756u), vec3<u32>(1u, 42613u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 14960u, 13749u), vec3<u32>(47990u, 214593u, 65225u), vec3<u32>(0u, 82032u, 0u));

var<private> global1: u32 = 1u;

var<private> global2: vec2<i32> = vec2<i32>(1i, -23345i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = vec3<bool>((arg_1.x >= ~0u) || false, false, false);
    global1 = 1u;
    let var_1 = 4294967295u;
    var var_2 = Struct_1(~(~32727u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f + arg_0))))));
    var var_3 = Struct_1(15385u, _wgslsmith_f_op_f32(-283f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3, arg_3)))));
    return firstTrailingBit(u_input.c.x) >> (9881u % 32u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> u32 {
    global1 = 4294967295u;
    global2 = ~select(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.e), u_input.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(4503i, 0i) << (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u)), -vec2<i32>(arg_0, -46136i), reverseBits(vec2<i32>(u_input.b, arg_0)))), vec2<i32>(abs(arg_0 | u_input.d), max(_wgslsmith_sub_i32(1i, -52639i), -4689i)), vec2<bool>(true, true));
    var var_0 = Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 1021f) - 2472f), arg_1), abs(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(22005u, u_input.c.x, 22232u, u_input.c.x), vec4<u32>(u_input.a, 22412u, u_input.a, u_input.c.x)))), 1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1754f) + _wgslsmith_div_f32(-1000f, arg_1))))), 166f);
    let var_1 = vec3<bool>(reverseBits(arg_0) >= ~arg_0, (var_0.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -3138f)) | (all(vec3<bool>(arg_2, arg_2, arg_2)) & arg_2), arg_2);
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(1u, u_input.c.x) ^ u_input.c), abs(select(u_input.c, vec2<u32>(u_input.a, 35645u), var_1.x)), select(!var_1.zz, vec2<bool>(true, true), vec2<bool>(arg_2, arg_2))), max(~u_input.c, firstTrailingBit(vec2<u32>(u_input.a, 6266u)) << (max(vec2<u32>(u_input.c.x, 1u), vec2<u32>(var_0.a, u_input.c.x)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1372f))), arg_1))));
    return 44473u;
}

fn func_1(arg_0: bool) -> bool {
    global1 = _wgslsmith_mod_u32(u_input.c.x, (func_2(0i, 386f, true) | 7931u) >> ((u_input.c.x << (u_input.a % 32u)) % 32u));
    let var_0 = Struct_1(u_input.a | 1u, -863f);
    var var_1 = vec3<bool>(arg_0, !arg_0, any(select(!(!vec2<bool>(true, arg_0)), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(872f, var_0.b, var_0.b, var_0.b))) * vec4<f32>(613f, -790f, var_0.b, var_0.b))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)), var_0.b, _wgslsmith_f_op_f32(ceil(-204f)), _wgslsmith_f_op_f32(f32(-1f) * -334f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), -1191f, _wgslsmith_f_op_f32(-var_0.b), var_0.b))));
    return !arg_0;
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = func_1(all(vec2<bool>(arg_0.x, true)));
    global1 = ~u_input.a;
    var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-933f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-543f, -894f), -1227f)) - _wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(f32(-1f) * -281f)))));
    global0 = array<vec3<u32>, 7>();
    let var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(round(531f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(638f)))));
    return StorageBuffer(vec4<f32>(-1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(select(-505f, -1000f, arg_0.x))))), var_2.x, -129f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!vec3<bool>(func_1(true), all(vec2<bool>(true, true)), ~47987u >= u_input.c.x));
}

