struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(vec3<bool>(arg_0.x, false, !arg_0.x), select(select(vec3<bool>(select(false, arg_0.x, false), arg_0.x, true), !vec3<bool>(false, arg_0.x, true), select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, false, true), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), vec3<bool>(any(select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, false, false), vec3<bool>(arg_0.x, arg_0.x, true))), true, true), !vec3<bool>(all(vec3<bool>(false, false, arg_0.x)), any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), arg_0.x)));
    let var_1 = Struct_4(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a), var_0, var_0, !(!(!vec4<bool>(true, false, arg_0.x, arg_0.x)))), Struct_2(u_input.a | _wgslsmith_mult_vec2_u32(~vec2<u32>(20950u, 15235u), u_input.a & u_input.a), var_0, var_0, vec4<bool>(false, arg_0.x, true, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(245f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1928f, 1000f)), -1445f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f * _wgslsmith_f_op_f32(1476f - 984f)))));
    var var_2 = countOneBits(u_input.a.x);
    var_2 = ~(~(u_input.a.x | _wgslsmith_mod_u32(var_1.a.a.x, 15251u)) & _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 0u, 56826u, u_input.c)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a.x, 38687u, 25613u)), ~vec4<u32>(u_input.a.x, u_input.c, u_input.c, 1u))));
    var_2 = _wgslsmith_add_u32(43245u, 4294967295u << (var_1.a.a.x % 32u));
    return -6787i;
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(~(vec4<i32>(39740i, 19327i, u_input.b, u_input.b) >> (vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.c) % vec4<u32>(32u))), vec4<i32>(-u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b, u_input.b ^ u_input.b))), func_3(!vec2<bool>(true, u_input.c > 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2215f, -1072f), vec2<f32>(1345f, 158f), false)))))));
    let var_2 = -(~_wgslsmith_add_i32(-1i, 1i) ^ (-_wgslsmith_add_i32(-2720i, 53436i) >> (_wgslsmith_sub_u32(~u_input.c, abs(u_input.a.x)) % 32u)));
    let var_3 = select(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), u_input.a) > u_input.c, var_2 <= var_2, true | all(vec3<bool>(false, true, true)));
    let var_4 = Struct_4(Struct_2(max(select(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.a.x, 2008u)), select(u_input.a, vec2<u32>(u_input.a.x, 1u), vec2<bool>(false, true)), select(vec2<bool>(false, var_3), vec2<bool>(false, var_3), var_3)), u_input.a), Struct_1(select(!vec3<bool>(var_3, false, var_3), select(vec3<bool>(var_3, true, false), vec3<bool>(false, var_3, false), vec3<bool>(true, true, false)), all(vec3<bool>(true, false, var_3))), !select(vec3<bool>(false, true, var_3), vec3<bool>(false, var_3, true), var_3)), Struct_1(!(!vec3<bool>(true, var_3, var_3)), !(!vec3<bool>(true, true, var_3))), !(!select(vec4<bool>(var_3, false, var_3, false), vec4<bool>(var_3, true, true, var_3), var_3))), Struct_2(u_input.a, Struct_1(!select(vec3<bool>(false, var_3, var_3), vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, true, var_3)), !select(vec3<bool>(true, var_3, false), vec3<bool>(true, true, false), var_3)), Struct_1(!select(vec3<bool>(true, var_3, var_3), vec3<bool>(true, false, true), var_3), select(vec3<bool>(false, var_3, true), vec3<bool>(true, false, true), true)), !select(!vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_3, var_3, var_3, false), var_3)), _wgslsmith_f_op_vec2_f32(-var_1));
    return max(abs(vec4<u32>(var_4.a.a.x, var_4.a.a.x, 0u, var_4.a.a.x)) >> (vec4<u32>(u_input.c, ~67673u, ~var_4.b.a.x, u_input.c << (var_4.b.a.x % 32u)) % vec4<u32>(32u)), select(vec4<u32>(1u, ~u_input.c, 1u, var_4.b.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_4.a.a.x, 1u), abs(vec4<u32>(45714u, 19802u, var_4.a.a.x, u_input.c))), all(vec4<bool>(var_4.b.d.x, false, false, true)) || !var_4.a.d.x)) << (vec4<u32>(abs(4294967295u), ~81090u, var_4.b.a.x, u_input.c) % vec4<u32>(32u));
}

fn func_1() -> vec3<f32> {
    var var_0 = false;
    var var_1 = vec4<u32>(u_input.c, 4294967295u, abs(~4294967295u), 4294967295u);
    let var_2 = select(vec2<i32>(-abs(countOneBits(2147483647i)), u_input.b), ~vec2<i32>(reverseBits(u_input.b) >> (1u % 32u), reverseBits(~2147483647i)), select(select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, _wgslsmith_f_op_f32(round(436f)) < -287f), vec2<bool>(true, true)));
    var_1 = firstTrailingBit(reverseBits(func_2()));
    let var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1068f, -175f, -542f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(533f, 842f, 1545f))))) * vec3<f32>(362f, 129f, _wgslsmith_f_op_f32(-256f - _wgslsmith_f_op_f32(-704f + 1627f)))));
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(!(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), select(!vec3<bool>(2147483647i <= u_input.b, u_input.a.x <= 22660u, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), false), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
    let var_1 = u_input.a.x;
    var_0 = Struct_1(var_0.a, vec3<bool>(var_0.a.x, any(vec4<bool>(true, all(vec4<bool>(var_0.b.x, true, false, var_0.a.x)), true, any(vec4<bool>(false, var_0.b.x, true, true)))), true));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b ^ -4184i, func_3(!var_0.b.zy), u_input.b);
    var_0 = Struct_1(!(!vec3<bool>(var_0.a.x | var_0.b.x, true, arg_0.x == arg_0.x)), !select(!(!vec3<bool>(var_0.b.x, true, true)), select(var_0.b, vec3<bool>(var_0.b.x, true, false), vec3<bool>(var_0.a.x, false, var_0.a.x)), !(!vec3<bool>(var_0.b.x, var_0.b.x, false))));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(min(u_input.c, 3366u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))), 67594u), 1u) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), -110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(722f)) - _wgslsmith_f_op_f32(f32(-1f) * -1870f)))), vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1805f))))), 1f)));
    var var_2 = Struct_2(vec2<u32>(~21592u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 41532u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) & 0u, u_input.c)), Struct_1(select(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(true, true, true)), vec3<bool>(true, false, true)), Struct_1(select(vec3<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)), false), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), all(vec2<bool>(true, true))), select(vec3<bool>(false, true, var_1.x < var_1.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), select(true, true, true)), vec3<bool>(true, true, all(vec2<bool>(false, false))))), select(!vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-280f, -634f))), 504f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u));
}

