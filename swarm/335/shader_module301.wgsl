struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = true;
    let var_1 = ~reverseBits(abs(reverseBits(vec4<u32>(u_input.e, 74005u, global0.a, 9859u)))) & firstTrailingBit(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(91443u, 0u, global0.a, 0u)), abs(vec4<u32>(44615u, arg_2.a.a, 1u, u_input.c.x))));
    var var_2 = 0i;
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(~var_1, var_1));
    var var_3 = arg_2.c;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = arg_2;
    global0 = Struct_1(954u);
    var var_1 = abs(~_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20535u, 11067u, u_input.c.x), vec4<u32>(0u, 15334u, arg_1.a.a, arg_0.a)), 4294967295u, ~arg_1.a.a)));
    var_1 = vec3<u32>(4294967295u, ~24982u, _wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(4294967295u, var_1.x | arg_1.a.a)) << (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, global0.a, 1u, u_input.e) | vec4<u32>(21411u, arg_0.a, 48365u, 961u), firstTrailingBit(vec4<u32>(4294967295u, 0u, 3441u, arg_0.a)))) % 32u));
    var var_2 = ~arg_1.b;
    return u_input.a;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(countOneBits(0u)), -2147483647i, Struct_1(~4294967295u >> ((global0.a & _wgslsmith_div_u32(4294967295u, 95281u)) % 32u)));
    var var_2 = max(u_input.d.x, func_4(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.c.a, 62160u), ~u_input.c.x)), var_1, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), var_0, var_1))));
    return vec3<bool>(any(vec4<bool>(939f > _wgslsmith_f_op_f32(arg_0 - -1304f), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false)), true)), any(vec3<bool>(all(vec3<bool>(true, false, true)), (arg_0 == -1000f) | (405f == arg_0), any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), false);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> u32 {
    global0 = Struct_1(~max(19450u, 21010u) | u_input.c.x);
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.a, global0.a, 34076u, u_input.c.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, u_input.e, 4294967295u, global0.a), vec4<u32>(u_input.c.x, 54222u, 89598u, global0.a)), ~vec4<u32>(4294967295u, 72542u, 29298u, 20125u))), vec4<u32>(u_input.c.x, ~u_input.e | (u_input.e ^ 9538u), 22600u, ~(~60454u))));
    let var_0 = vec2<u32>(~(~(~u_input.c.x)), ~4294967295u);
    let var_1 = !select(!select(!vec3<bool>(arg_1, false, false), !vec3<bool>(arg_1, arg_1, arg_1), func_2(arg_2)), func_2(arg_2), select(vec3<bool>(true, !arg_1, select(true, arg_1, arg_1)), !select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, arg_1)), select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_1, arg_1)), !vec3<bool>(arg_1, false, false))));
    let var_2 = Struct_1(min(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.c.x), var_0.x, u_input.c.x), max(u_input.c, ~u_input.c)), 34109u));
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(global0.a & func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(605f, 628f, 735f, -1041f), vec4<f32>(1145f, 1199f, 651f, -645f))), any(func_2(-1505f)), _wgslsmith_f_op_f32(882f * -106f)));
    var var_1 = 1u;
    global0 = Struct_1(1u);
    var_1 = u_input.e;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -1543f), all(vec4<bool>(false, true, false, false))))))))));
    return Struct_1(1u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = firstLeadingBit(~(-select(vec4<i32>(33694i, -828i, 10336i, 21150i), vec4<i32>(-2147483647i, u_input.b, -1i, 1i), true) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(arg_1.a, global0.a, arg_1.a, global0.a) >> (vec4<u32>(global0.a, 4294967295u, u_input.e, global0.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = func_2(-310f).xz;
    global0 = Struct_1(arg_1.a);
    let var_2 = Struct_2(Struct_1(81570u), var_0.x, func_1());
    let var_3 = var_2;
    return var_1.x;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    global0 = arg_1.a;
    global0 = func_1();
    let var_0 = -14190i;
    var var_1 = !func_6(arg_1.c, arg_1.a);
    var var_2 = u_input.c.x;
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * -1419f)))))), max(~vec4<u32>(arg_1.c.a & 64753u, global0.a, firstTrailingBit(arg_1.a.a), firstTrailingBit(13458u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.c.a, 4294967295u), vec4<u32>(74169u, arg_1.c.a, 24593u, u_input.e)) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.a, global0.a, u_input.e, 37958u), vec4<u32>(4294967295u, arg_1.a.a, 33599u, global0.a)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, u_input.e, global0.a, u_input.c.x), vec4<u32>(u_input.c.x, u_input.e, u_input.e, arg_1.c.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + -588f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 11780u;
    let x = u_input.a;
    s_output = func_7(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(func_6(Struct_1(1u), func_1()), func_2(1000f).x, true), true), Struct_2(Struct_1(4294967295u), i32(-1i) * -u_input.b, func_1()), true);
}

