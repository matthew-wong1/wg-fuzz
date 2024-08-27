struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_2(reverseBits(-u_input.b.x) == u_input.a.x, select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, false))), select(all(vec4<bool>(false, true, false, false)), true, true)), !vec2<bool>(false, arg_0 < arg_0), vec2<bool>(!(arg_0 != -1892f), true)));
    var var_1 = ~_wgslsmith_add_i32(-44996i, u_input.b.x) << (_wgslsmith_mult_u32(0u, reverseBits(4294967295u)) % 32u);
    return vec4<u32>(0u, ~(~(~(~57148u))), countOneBits(36563u), 12072u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = false;
    var var_1 = Struct_1(min(func_3(_wgslsmith_f_op_f32(1649f * _wgslsmith_f_op_f32(f32(-1f) * -665f))), vec4<u32>(arg_0.x, abs(~66414u), 4294967295u, select(arg_0.x, arg_0.x, arg_1.a) ^ (4294967295u | arg_0.x))), -1598f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f - _wgslsmith_f_op_f32(step(1100f, -314f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1689f)))), _wgslsmith_f_op_f32(124f - -635f)), ~4294967295u, arg_0.x);
    let var_2 = true;
    var_1 = Struct_1(~_wgslsmith_clamp_vec4_u32(~func_3(769f), var_1.a, max(var_1.a >> (var_1.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d, 25702u, 27910u, 20742u), var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_1.c, _wgslsmith_mod_u32(var_1.e >> (~var_1.d % 32u), 1u), min(1770u, abs(15890u)));
    var var_3 = vec2<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(11908u, var_1.d, var_1.d, var_1.e), var_1.a)))) >> (arg_0 % vec2<u32>(32u));
    return var_1.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = select(-vec3<i32>(-1i, ~2147483647i, arg_1 | _wgslsmith_mod_i32(2147483647i, arg_1)), _wgslsmith_div_vec3_i32(vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, 65318i, 0i), vec4<i32>(arg_1, u_input.b.x, 0i, u_input.b.x))), -u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a.x, arg_1, ~u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.x, u_input.b.x), -arg_0.zxy))), !(!(!vec3<bool>(true, arg_3.x, true))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, func_2(vec2<u32>(23735u, 59218u), Struct_2(false, vec2<bool>(arg_3.x, false))), ~arg_2, arg_2 ^ 87398u), ~vec4<u32>(4294967295u, 1u, arg_2, arg_2), abs(vec4<u32>(4294967295u, 0u, 50244u, 0u))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 35606u, 29977u, arg_2), vec4<u32>(arg_2, arg_2, 2538u, 1u)), ~vec4<u32>(arg_2, arg_2, arg_2, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(arg_2, 47439u, arg_2, 41988u)), ~arg_2, _wgslsmith_add_u32(0u, arg_2), _wgslsmith_div_u32(arg_2, 4294967295u)))), 67955u, 111110u);
    let var_2 = arg_3.x;
    let var_3 = Struct_2(true, arg_3.yy);
    var_1 = select(select(vec3<u32>(~(~var_1.x), 0u, arg_2), select(_wgslsmith_add_vec3_u32(vec3<u32>(9210u, arg_2, var_1.x) >> (vec3<u32>(var_1.x, arg_2, 1u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_2, arg_2)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 4199u, var_1.x), vec3<u32>(67016u, 42903u, 27937u)), true), arg_3), vec3<u32>(countOneBits(arg_2), var_1.x, 1u), false);
    return 1000f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(-706f + -1753f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = select(!select(vec3<bool>(func_1(vec4<i32>(-36093i, u_input.b.x, u_input.b.x, u_input.b.x), 11953i, 48410u, vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, false), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)), false)), vec3<bool>(func_1(u_input.a, i32(-1i) * -28320i, _wgslsmith_dot_vec2_u32(vec2<u32>(51545u, var_0), vec2<u32>(1788u, 1u)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), all(vec3<bool>(true, false, true)), -1533f == _wgslsmith_f_op_f32(ceil(-1599f))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false), true), true)), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(any(vec4<bool>(true, false, true, true)), u_input.b.x == u_input.a.x, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_2 = Struct_2(func_1(-(~(-u_input.a)), -select(-10519i, u_input.a.x, !var_1.x), ~(~_wgslsmith_sub_u32(var_0, 4294967295u)), vec3<bool>(true, false, true)), !(!var_1.xx));
    var var_3 = vec4<i32>(reverseBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, 4115i), u_input.a.x), 0i)), 3340i, -1i, u_input.b.x);
    let var_4 = !vec4<bool>(var_2.a, true, var_1.x, var_2.a);
    var var_5 = _wgslsmith_add_u32(countOneBits(~4294967295u), var_0);
    var_3 = u_input.b;
    var_1 = var_4.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0, var_0, ~_wgslsmith_clamp_u32(0u, var_0, 0u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)))));
}

