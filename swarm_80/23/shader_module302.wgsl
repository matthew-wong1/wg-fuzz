struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, false, false, vec3<bool>(false, false, false)), Struct_1(false, true, true, vec3<bool>(false, true, true)), Struct_1(true, true, false, vec3<bool>(true, true, false)), Struct_1(false, false, true, vec3<bool>(false, false, false)), Struct_1(true, true, false, vec3<bool>(true, false, false)), Struct_1(false, false, true, vec3<bool>(false, false, false)), Struct_1(true, false, false, vec3<bool>(false, true, false)), Struct_1(false, true, true, vec3<bool>(false, true, true)), Struct_1(true, true, true, vec3<bool>(true, true, true)), Struct_1(true, false, false, vec3<bool>(true, false, true)), Struct_1(true, false, true, vec3<bool>(true, false, false)), Struct_1(false, false, false, vec3<bool>(false, true, true)), Struct_1(false, false, false, vec3<bool>(false, true, false)), Struct_1(true, true, true, vec3<bool>(true, false, false)), Struct_1(false, true, false, vec3<bool>(false, false, false)), Struct_1(true, true, false, vec3<bool>(true, false, true)));

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    return ~u_input.b;
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = abs(vec4<i32>(~70752i, 31535i, 57163i, u_input.a.x));
    global0 = false;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-306f + -1123f), 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f + -444f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(568f, 1544f)))))));
    let var_2 = Struct_1(any(select(vec3<bool>(arg_0 == 4294967295u, all(vec4<bool>(false, true, true, true)), u_input.a.x <= u_input.a.x), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true), true)), !(true & (_wgslsmith_dot_vec4_u32(vec4<u32>(3166u, 0u, u_input.b, 5689u), vec4<u32>(1u, arg_0, arg_0, 1u)) != 12871u)), true, select(vec3<bool>(false, any(vec4<bool>(false, true, false, false)), true), vec3<bool>(true, true, true), 1u != (arg_1 << (~arg_1 % 32u))));
    let var_3 = !var_2.d.zy;
    return select(46196u, arg_0, !var_3.x);
}

fn func_2() -> f32 {
    global0 = true;
    var var_0 = (~13139u | select(~89575u, 4294967295u, true)) ^ 60954u;
    var var_1 = false;
    let var_2 = Struct_1(true, u_input.b < ~u_input.b, true, vec3<bool>(!any(vec2<bool>(true, true)) & !all(vec2<bool>(false, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))) || any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    var var_3 = select(~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 0u))), firstTrailingBit(vec2<u32>(func_3(firstTrailingBit(u_input.b), u_input.b), _wgslsmith_add_u32(func_1(var_2.d.xz), 64447u))), all(!vec4<bool>(var_2.d.x, true, u_input.a.x <= u_input.a.x, false)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1324f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b, 7510u, u_input.b | 4294967295u), vec3<u32>(21151u, abs(u_input.b), 20208u)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(78771u, u_input.b, 110206u) | vec3<u32>(0u, 4294967295u, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(21925u, u_input.b, u_input.b), vec3<u32>(16050u, u_input.b, u_input.b)), vec3<u32>(33654u, u_input.b, 4294967295u) & vec3<u32>(u_input.b, u_input.b, 32899u)) % vec3<u32>(32u)));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b | u_input.b, 4294967295u), ~u_input.b), 1u, func_1(select(vec2<bool>(true, all(vec3<bool>(false, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    let var_1 = -1828f;
    let var_2 = select(u_input.a.yz, ~vec2<i32>(_wgslsmith_sub_i32(-3859i, u_input.a.x) >> (_wgslsmith_sub_u32(u_input.b, 24024u) % 32u), ~(-1i)), vec2<bool>(true, _wgslsmith_f_op_f32(-1785f * 192f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 1000f))));
    let var_3 = Struct_1(select(_wgslsmith_f_op_f32(f32(-1f) * -873f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))), false, all(vec4<bool>(true, true, true, true))), -countOneBits(-32766i) >= countOneBits(~var_2.x), true, vec3<bool>(true, true, true));
    let var_4 = _wgslsmith_add_vec3_u32(max(~(~(~vec3<u32>(var_0.x, 1u, 1u))), ~vec3<u32>(firstTrailingBit(5692u), abs(4294967295u), _wgslsmith_mod_u32(var_0.x, 78417u))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_0.x, 8190u, ~var_0.x)), ~vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), var_0.x, _wgslsmith_mult_u32(var_0.x, 102451u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, -1532f, var_1) * vec4<f32>(840f, -2417f, -1000f, 943f)))))) + vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(829f, var_1, var_3.c)) + _wgslsmith_f_op_f32(320f + 339f)), -1321f, _wgslsmith_f_op_f32(sign(var_1)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.x, 32810i), _wgslsmith_clamp_vec2_i32(var_2 & vec2<i32>(var_2.x, var_2.x), vec2<i32>(-688i, -2147483647i) << (var_4.xx % vec2<u32>(32u)), vec2<i32>(74933i, -2147483647i))), -u_input.a.x, var_2.x, u_input.a.x), var_2);
}

