struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -1128f, 1160f, -824f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), u_input.a.x <= u_input.b), !vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), !any(vec4<bool>(false, false, false, true))), select(vec2<bool>(any(vec4<bool>(true, false, true, true)) || true, ~u_input.a.x > _wgslsmith_div_i32(-49760i, u_input.a.x)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-591f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1199f))))), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x));
    var var_1 = abs(arg_0.ywy);
    var_1 = arg_0.wyw;
    let var_2 = _wgslsmith_sub_vec3_i32(u_input.a, u_input.a);
    return i32(-1i) * -52407i;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = func_3(_wgslsmith_sub_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 57673u), vec2<u32>(14622u, u_input.c)), ~4294967295u, u_input.c, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 124417u, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u), vec4<u32>(u_input.c, u_input.c, 0u, 31292u)), ~vec4<u32>(10233u, 58458u, 1u, 27551u)), vec4<bool>(true, true, true, true)), ~(~vec4<u32>(0u, u_input.c, 4294967295u, 87175u) << (vec4<u32>(0u, u_input.c, 0u, 1u) % vec4<u32>(32u)))));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(-456f)), 1063f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1504f))));
    let var_1 = Struct_1(~vec2<i32>(_wgslsmith_mod_i32(16183i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(arg_0, -2147483647i))), ~arg_0), u_input.c);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(622f * -1000f)) * global0.x);
    return 37887u;
}

fn func_1() -> u32 {
    let var_0 = ~(vec4<u32>(countOneBits(713u), func_2(i32(-1i) * -55620i), firstTrailingBit(u_input.c), ~(~0u)) ^ ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), ~vec4<u32>(85437u, 4294967295u, 1u, 37195u)));
    var var_1 = reverseBits(_wgslsmith_mult_i32(u_input.d, ~firstTrailingBit(~u_input.a.x)));
    let var_2 = Struct_1(vec2<i32>(-29393i, select(-5670i, ~u_input.b << (_wgslsmith_sub_u32(1u, u_input.c) % 32u), any(vec2<bool>(false, true)))), _wgslsmith_add_u32(4294967295u, var_0.x) >> (max(1u, u_input.c) % 32u));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1225f, global0.x, 1079f, -236f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, global0.x, global0.x, -240f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(-696f, global0.x, global0.x, 1150f))))))));
    var var_3 = var_2;
    return _wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(0u), var_2.b, abs(var_2.b)), ~(~78316u))), ~(~min(~var_3.b, 15997u)), _wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(~36998u, reverseBits(97068u) ^ _wgslsmith_dot_vec3_u32(var_0.wzw, var_0.zzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec2<i32>(u_input.b, u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(25658u, u_input.c ^ u_input.c), ~vec2<u32>(~117237u, u_input.c)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, 2735f)))), 1000f, global0.x) - vec4<f32>(_wgslsmith_f_op_f32(global0.x - -474f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - 1001f))), 1f, _wgslsmith_f_op_f32(256f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1249f, 205f)), -928f)))));
    var var_1 = Struct_1(firstTrailingBit(~u_input.a.xy), 80766u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(func_1()), 4294967295u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.xyx)) + _wgslsmith_f_op_vec3_f32(select(global0.xzy, vec3<f32>(1017f, 1671f, global0.x), vec3<bool>(false, false, true)))))))), 328f, 0i);
}

