struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = select(0u, max(firstTrailingBit(30544u), 56760u), !(!all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, false)))));
    var var_1 = ~select(max(~(~vec2<u32>(var_0, var_0)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(70044u, 0u), vec2<u32>(20392u, var_0), vec2<u32>(arg_1.c.a, 79364u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b, arg_1.e.a, var_0, 1u), countOneBits(vec4<u32>(var_0, 44039u, 0u, 4294967295u))), arg_1.e.a), arg_1.a);
    let var_2 = vec2<i32>(-26835i, _wgslsmith_mult_i32(u_input.a.x, 1i));
    global0 = all(vec3<bool>(true, var_2.x > _wgslsmith_dot_vec2_i32(abs(arg_1.d.yx), -u_input.a.zy), any(!(!vec4<bool>(arg_1.a, false, true, true)))));
    let var_3 = reverseBits(~vec3<u32>(arg_1.e.a, 45674u, max(var_1.x, max(var_1.x, 4294967295u))));
    return !select(select(!(!vec4<bool>(true, true, arg_1.a, true)), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), select(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), !vec4<bool>(true, false, arg_1.a, arg_1.a)), vec4<bool>(arg_1.a, !arg_1.a, true, arg_1.a)), !select(!vec4<bool>(false, true, arg_1.a, false), vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), any(vec3<bool>(true, true, true)) & all(select(vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(false, true, true, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~4294967295u);
    var var_1 = !select(select(func_3(vec2<f32>(2692f, -507f), Struct_2(true, var_0.a, Struct_1(var_0.a), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(1u))), vec4<bool>(true, true, true, func_3(vec2<f32>(394f, 733f), Struct_2(true, 1u, Struct_1(var_0.a), u_input.a, Struct_1(var_0.a))).x), false), vec4<bool>(all(vec2<bool>(true, true)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1550f, 1325f)), Struct_2(false, 1u, Struct_1(1u), u_input.a, Struct_1(43546u))).x, true, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, -729f) - vec2<f32>(-1163f, 539f)), Struct_2(true, var_0.a, Struct_1(var_0.a), u_input.a, Struct_1(var_0.a))).x), !(!func_3(vec2<f32>(180f, 1000f), Struct_2(true, 1u, Struct_1(4294967295u), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_1(var_0.a)))));
    var var_2 = _wgslsmith_div_vec2_u32(~(~min(vec2<u32>(8009u, 4884u), vec2<u32>(5991u, var_0.a))), abs(~(~vec2<u32>(var_0.a, var_0.a)))) << (_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 79270u) >> (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u)), abs(vec2<u32>(var_0.a, var_0.a))), reverseBits(vec2<u32>(4294967295u, 4294967295u)) ^ (_wgslsmith_mult_vec2_u32(vec2<u32>(119100u, var_0.a), vec2<u32>(47710u, 13149u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(92334u, 1u)) % vec2<u32>(32u))), ~select(vec2<u32>(0u, 68635u), ~vec2<u32>(40664u, 20159u), any(vec2<bool>(false, var_1.x)))) % vec2<u32>(32u));
    let var_3 = Struct_1(30030u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-362f)));
    return Struct_1(var_2.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = ~(~vec3<u32>(4294967295u ^ var_0.a, abs(5616u), 0u) | vec3<u32>(abs(var_0.a & var_0.a), var_0.a, var_0.a));
    var var_2 = Struct_1(_wgslsmith_add_u32(abs(23521u), var_0.a << (var_1.x % 32u)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-905f, 1042f))), _wgslsmith_f_op_f32(-316f - -631f))))));
    var var_4 = func_2();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(false, ~abs(4294967295u), Struct_1(~reverseBits(~6404u)), _wgslsmith_sub_vec3_i32(reverseBits(~u_input.a), vec3<i32>(u_input.a.x, u_input.a.x, -2054i)), func_1(-3234i & _wgslsmith_div_i32(firstTrailingBit(-12821i), ~(-1i))));
    var var_1 = Struct_2(true, var_0.e.a ^ var_0.b, var_0.e, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, ~(i32(-1i) * -1i)), u_input.a.x, var_0.d.x), Struct_1(var_0.b << (var_0.e.a % 32u)));
    var_1 = Struct_2(reverseBits(_wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), ~u_input.a.x)) <= var_0.d.x, 4294967295u, func_1(1i), min(var_1.d, var_0.d), func_1(var_0.d.x & _wgslsmith_mod_i32(0i, u_input.a.x)));
    var var_2 = firstTrailingBit(~var_0.c.a);
    let var_3 = vec3<bool>(all(!vec3<bool>(!var_1.a, any(vec4<bool>(true, false, true, false)), false)), select((_wgslsmith_f_op_f32(trunc(-1000f)) > _wgslsmith_f_op_f32(-439f * 1956f)) | true, true, !(!var_1.a | var_0.a)), any(!(!func_3(vec2<f32>(1251f, 1731f), Struct_2(true, var_1.c.a, Struct_1(4294967295u), var_1.d, var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_1.c.a, ~abs(~4294967295u)));
}

