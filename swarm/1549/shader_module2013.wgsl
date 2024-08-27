struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = !select(vec4<bool>(!select(false, false, false), true, true, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, false)), vec4<bool>(u_input.b <= 16757i, true, true, any(vec3<bool>(false, true, false)))), vec4<bool>(!any(vec4<bool>(true, true, false, true)), any(vec2<bool>(false, true)), true, !select(false, false, false)));
    var var_1 = Struct_4(Struct_2(Struct_1(u_input.a, _wgslsmith_clamp_i32(14828i, -1i, 27988i)), Struct_1(u_input.b >> (~1u % 32u), -u_input.b >> (_wgslsmith_add_u32(0u, 61413u) % 32u)), Struct_1(100373i, ~firstTrailingBit(u_input.b)), (vec2<u32>(0u, 92955u) & select(vec2<u32>(25899u, 40005u), vec2<u32>(4294967295u, 1u), false)) & select(vec2<u32>(46612u, 81344u), vec2<u32>(1u, 1u), select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), var_0.wy))), Struct_2(Struct_1(abs(1i), u_input.b), Struct_1(7252i, min(u_input.b, -2147483647i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37751u), vec2<u32>(25435u, 8750u)) % 32u)), Struct_1(select(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.b, u_input.a)), true), ~u_input.a), select(~vec2<u32>(0u, 0u), vec2<u32>(1u, 19445u), var_0.zw)), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -1246i, 42651i, 36240i), -vec4<i32>(u_input.a, 2147483647i, -25340i, u_input.a)), _wgslsmith_add_i32(42516i, 1i)), Struct_1(39551i, 26797i & u_input.b), Struct_1(firstLeadingBit(u_input.a & 1i), u_input.b), ~firstLeadingBit(~vec2<u32>(1u, 56629u))), vec2<bool>(!var_0.x, all(vec4<bool>(all(var_0.wz), true, true, !var_0.x))), var_0.x);
    var_1 = Struct_4(var_1.a, var_1.b, Struct_2(var_1.c.a, var_1.c.c, Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.b.b.a, -1i), var_1.c.c.b), var_1.a.c.a), vec2<u32>(_wgslsmith_div_u32(9971u, ~var_1.a.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.d.x, 0u, 4294967295u, 1u), vec4<u32>(2014u, var_1.b.d.x, var_1.a.d.x, var_1.b.d.x)), vec4<u32>(42031u, var_1.c.d.x, var_1.b.d.x, var_1.a.d.x)))), !(!var_0.xz), true);
    var var_2 = abs(~vec4<u32>(_wgslsmith_mult_u32(1u, 92332u), 1u, 1u, var_1.c.d.x) | select(~vec4<u32>(var_1.b.d.x, var_1.c.d.x, 4294967295u, 45325u), min(~vec4<u32>(var_1.a.d.x, 51901u, var_1.b.d.x, 8609u), vec4<u32>(1855u, 9432u, var_1.c.d.x, 14326u)), (var_0.x & true) | var_1.d.x));
    var var_3 = var_0;
    return _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(var_2.xxw, max(var_2.wyz, var_2.ywx)));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(Struct_2(Struct_1(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(27343i, 3711i, 36683i), vec3<i32>(u_input.b, u_input.b, u_input.a)), countOneBits(-23410i)), Struct_1(u_input.b, -_wgslsmith_div_i32(u_input.b, 39876i)), Struct_1(_wgslsmith_clamp_i32(u_input.b, u_input.a, abs(-1i)), select(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 30863i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), true)), min(vec2<u32>(17659u, _wgslsmith_dot_vec2_u32(vec2<u32>(52724u, 4294967295u), vec2<u32>(4294967295u, 1u))), vec2<u32>(func_3(), ~56366u))), Struct_2(Struct_1(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-3381i, u_input.a) ^ vec2<i32>(u_input.a, -55184i), vec2<i32>(-1i, 12859i))), Struct_1(u_input.a, u_input.b), Struct_1(select(_wgslsmith_add_i32(u_input.a, u_input.a), 19280i, true), select(-29071i, _wgslsmith_clamp_i32(39883i, u_input.a, u_input.b), any(vec4<bool>(true, true, true, false)))), countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(8278u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)), select(vec2<u32>(15118u, 4294967295u), vec2<u32>(0u, 1u), vec2<bool>(false, false))))), Struct_2(Struct_1(-31775i, ~(~u_input.a)), Struct_1(abs(2147483647i), _wgslsmith_sub_i32(-u_input.b, i32(-1i) * -1i)), Struct_1(abs(-1i), ~u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(1u), countOneBits(4294967295u)), ~vec2<u32>(1u, 1u))), select(select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), select(true, all(vec2<bool>(false, true)), true)), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(select(true, true, true), all(vec4<bool>(true, true, true, true)))));
    var var_1 = var_0.e;
    var_1 = !var_0.e;
    var var_2 = var_0.b.b;
    var_2 = Struct_1(0i, 2147483647i);
    return ~var_0.c.d.x;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = vec2<i32>(arg_3.a.a.b, ~(-4904i));
    var var_1 = vec4<i32>(-45789i, u_input.b, var_0.x, reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, -28430i, -2147483647i), vec4<i32>(u_input.b, var_0.x, -1i, 0i) << (vec4<u32>(arg_3.b.x, arg_3.b.x, arg_1.d.x, arg_1.d.x) % vec4<u32>(32u))) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(59242u, arg_1.d.x), arg_1.d.x, arg_3.b.x) % 32u)));
    var_1 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(var_1.x | -30836i, _wgslsmith_mod_i32(var_0.x, var_1.x)), ~1i, var_0.x, -2147483647i);
    var var_2 = ~(vec2<u32>(0u, func_2()) >> (vec2<u32>(abs(arg_1.d.x), ~27580u) % vec2<u32>(32u))) >> (reverseBits(vec2<u32>(~1u, _wgslsmith_clamp_u32(arg_1.d.x ^ arg_3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 25746u, arg_3.b.x)), firstLeadingBit(0u)))) % vec2<u32>(32u));
    var var_3 = Struct_1(-90741i, min(-var_0.x, max(~var_1.x, 0i)));
    return select(vec3<bool>(true == (0u < _wgslsmith_dot_vec2_u32(arg_1.d, arg_3.b)), !select(true, arg_0, !arg_0), true), select(vec3<bool>(!(var_2.x > arg_1.d.x), arg_0, arg_0), vec3<bool>(false, true, arg_0), !select(!vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, false), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(vec2<bool>(true, true)), false, any(!func_1(false, Struct_2(Struct_1(u_input.a, u_input.a), Struct_1(-12319i, -2147483647i), Struct_1(20038i, u_input.b), vec2<u32>(0u, 8589u)), -278f, Struct_5(Struct_3(Struct_1(6425i, 0i)), vec2<u32>(0u, 4294967295u)))));
    let var_1 = _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_sub_u32(4294967295u, 1u));
    var var_2 = !(true | func_1(var_0.x, Struct_2(Struct_1(u_input.b, u_input.a), Struct_1(u_input.b, u_input.a), Struct_1(-2147483647i, u_input.a), ~vec2<u32>(1u, 4077u)), _wgslsmith_f_op_f32(sign(131f)), Struct_5(Struct_3(Struct_1(-2147483647i, u_input.b)), select(vec2<u32>(1u, 83202u), vec2<u32>(var_1, 4294967295u), var_0.x))).x);
    let var_3 = vec3<i32>(u_input.a, select(u_input.a, -7431i, (true & (var_1 != 9895u)) | (u_input.b == 2147483647i)), ~_wgslsmith_sub_i32(select(80671i, u_input.a, true) & ~u_input.a, i32(-1i) * -58246i));
    var_2 = any(!var_0.xy);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-839f, 378f))));
    var var_5 = !(!(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    var var_6 = ~var_3.zz & -(vec2<i32>(_wgslsmith_clamp_i32(1i, -38541i, var_3.x), var_3.x) << (reverseBits(~vec2<u32>(0u, var_1)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i | ~var_3.x));
}

