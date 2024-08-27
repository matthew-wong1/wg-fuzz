struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_1(753f, arg_2.x, arg_1.x, vec2<i32>(u_input.a, 17923i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i | u_input.a, u_input.a, u_input.a << (4294967295u % 32u)), (vec3<i32>(u_input.a, -2147483647i, u_input.a) & vec3<i32>(u_input.a, -16850i, -12618i)) & (vec3<i32>(1i, 2602i, u_input.a) >> (u_input.b % vec3<u32>(32u)))), -1i, any(arg_1)));
    var var_1 = Struct_2(~(~_wgslsmith_clamp_i32(44530i, ~var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-42532i, -18565i, -7479i, 27769i), vec4<i32>(2147483647i, 2147483647i, u_input.a, 2147483647i)))), u_input.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(max(var_0.e, u_input.a), ~_wgslsmith_mod_i32(-50499i, 2147483647i)), 18788i), Struct_1(arg_3.x, reverseBits(71400u ^ arg_0), !(!all(arg_1.zx)), vec2<i32>(u_input.a, _wgslsmith_mod_i32(abs(-45452i), reverseBits(-1i))), ~15277i), !vec4<bool>(var_0.c, all(!arg_1), !(!arg_1.x), any(select(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))));
    let var_2 = true;
    var var_3 = Struct_2(~var_1.d.e, arg_2, ~u_input.a, Struct_1(1517f, arg_2.x, var_2 | any(!vec4<bool>(var_1.e.x, var_2, true, true)), -(var_0.d << (var_1.b.zz % vec2<u32>(32u))), var_0.d.x), !select(select(global0[_wgslsmith_index_u32(arg_0, 6u)], !vec4<bool>(var_1.d.c, false, true, false), !global0[_wgslsmith_index_u32(1u, 6u)]), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, arg_0), 6u)], select(select(vec4<bool>(var_1.e.x, var_0.c, arg_1.x, true), var_1.e, false), vec4<bool>(false, false, true, false), !var_0.c)));
    var_1 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(u_input.a, countOneBits(-24722i)), 1i, firstTrailingBit(~u_input.a)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.a, var_0.e, var_3.a), vec4<i32>(2664i, var_1.d.d.x, -2147483647i, -1i)), 2155i, -var_0.e, countOneBits(var_1.a))), arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.a | -6181i, min(var_1.d.d.x, var_0.d.x), var_3.d.c), 6895i, -u_input.a & -41927i, 1i), vec4<i32>(var_0.e, _wgslsmith_dot_vec2_i32(~var_0.d, var_3.d.d), 2147483647i >> (~var_3.b.x % 32u), var_3.a)), var_1.d, vec4<bool>(all(!vec3<bool>(var_0.c, false, var_2)) || var_0.c, var_1.d.c, true, any(select(vec2<bool>(true, true), select(arg_1.zx, vec2<bool>(true, var_1.e.x), false), select(vec2<bool>(false, var_2), var_1.e.xw, arg_1.zx)))));
    return arg_0;
}

fn func_2() -> i32 {
    let var_0 = !select(global0[_wgslsmith_index_u32(abs(u_input.b.x), 6u)], global0[_wgslsmith_index_u32(0u, 6u)], vec4<bool>(true, true, true, false));
    let var_1 = ~vec4<u32>(func_3(u_input.b.x, var_0.yxx, _wgslsmith_mod_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, u_input.b.x, 31138u)), vec3<f32>(_wgslsmith_div_f32(-184f, 555f), -168f, 177f)), 0u, u_input.b.x, func_3(~u_input.b.x, !vec3<bool>(true, false, var_0.x), select(select(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true), u_input.b, any(vec2<bool>(var_0.x, false))), vec3<f32>(_wgslsmith_f_op_f32(select(660f, -1114f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1856f), _wgslsmith_f_op_f32(trunc(-169f)))));
    return ~_wgslsmith_dot_vec2_i32(~select(min(vec2<i32>(-1i, 6369i), vec2<i32>(u_input.a, u_input.a)), abs(vec2<i32>(u_input.a, u_input.a)), !vec2<bool>(var_0.x, true)), vec2<i32>(firstLeadingBit(u_input.a), reverseBits(firstLeadingBit(-2147483647i))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 6>();
    var var_0 = abs(func_2());
    global0 = array<vec4<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(-1488f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-257f))), 1219f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(312f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(var_1.x * var_1.x)) - _wgslsmith_div_f32(var_1.x, 1897f)));
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(706f + _wgslsmith_f_op_f32(min(-371f, 1115f))), any(vec3<bool>(true, true, true)) || (abs(u_input.a) > min(u_input.a, 1i)))), 0u, !all(vec4<bool>(false, false, false, all(vec2<bool>(false, true)))), vec2<i32>(u_input.a, (-u_input.a ^ -31655i) ^ min(-2147483647i, u_input.a)), countOneBits(func_2()));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_2.a));
    let var_1 = arg_0.d;
    var_0 = _wgslsmith_f_op_f32(1213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)));
    var var_2 = var_1.b;
    var var_3 = ~(-vec3<i32>(-2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -2147483647i), vec3<i32>(var_1.e, var_1.d.x, -1i))), _wgslsmith_sub_i32(var_1.e, 0i) ^ u_input.a));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f - -1239f) * _wgslsmith_f_op_f32(arg_3.x * 2212f)))), _wgslsmith_f_op_f32(-340f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.a)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = select(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(331f, -595f)) < _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), arg_0, !(!any(vec3<bool>(arg_0, arg_0, arg_0)))) & select(select(false, select(all(vec2<bool>(arg_0, arg_0)), -643f < arg_1.x, true), all(!vec2<bool>(arg_0, arg_0))), arg_0, false);
    let var_1 = !(!vec2<bool>(true, !arg_0 && any(vec3<bool>(arg_0, arg_0, arg_0))));
    var var_2 = func_1();
    let var_3 = func_1();
    var_0 = any(vec3<bool>((~var_2.b ^ (var_3.b ^ var_3.b)) == 1u, func_1().c, false));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(-42017i, u_input.b, u_input.a, Struct_1(1328f, 45741u, false, vec2<i32>(2147483647i, 2387i), u_input.a), global0[_wgslsmith_index_u32(0u, 6u)]), 2153u, func_1(), vec4<f32>(656f, 1698f, 162f, -1136f))))));
    var_0 = Struct_1(296f, max(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b.x, 0u, 85568u)), u_input.b)), all(!vec2<bool>(any(global0[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.c)), abs(vec2<i32>(-1i) * -countOneBits(vec2<i32>(u_input.a, 12497i))), u_input.a);
    let var_1 = Struct_2(var_0.d.x, vec3<u32>(~countOneBits(u_input.b.x), select(30420u, ~var_0.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(39363u, 3217u), u_input.b.yy) % 32u), var_0.c), 1u), min(~(-u_input.a) | ~(var_0.e & 2147483647i), _wgslsmith_mult_i32(abs(-2147483647i), -1i)), func_5(!any(global0[_wgslsmith_index_u32(~0u, 6u)]), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(143f)))), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1903f * var_0.a)))), global0[_wgslsmith_index_u32(~var_0.b, 6u)]);
    global0 = array<vec4<bool>, 6>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a)), ~abs(~0u) << (func_3(func_5(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_1.d.a, var_0.a))).b, vec3<bool>(false, true, false || var_1.d.c), vec3<u32>(u_input.b.x, var_0.b, var_1.d.b) >> (~vec3<u32>(16913u, var_1.d.b, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d.a, 215f, var_0.a)))) % 32u), var_0.c, (abs(var_0.d) & var_0.d) | -func_1().d, var_0.d.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, var_1.d.a, var_1.d.a, var_1.d.a))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(256f, 1102f, -786f, 352f), vec4<f32>(var_0.a, -1378f, var_0.a, var_1.d.a), !global0[_wgslsmith_index_u32(var_0.b, 6u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -505f, var_1.d.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_1.d.a, var_0.a, -668f) * vec4<f32>(310f, 528f, var_1.d.a, 120f)))))), true));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(0i, u_input.a), 28659i, _wgslsmith_add_i32(var_1.a, -_wgslsmith_dot_vec4_i32(-vec4<i32>(7369i, var_1.a, u_input.a, 36736i), vec4<i32>(2147483647i, 0i, var_1.c, u_input.a))));
    let var_4 = vec4<f32>(-592f, _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a)), 722f)))), func_5(!((u_input.a << (84244u % 32u)) >= 17027i), var_2.zxx).a, func_5(!var_1.e.x == (false && (var_1.d.c || false)), var_2.xwy).a);
    let x = u_input.a;
    s_output = StorageBuffer(73880u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(716f)), _wgslsmith_f_op_f32(f32(-1f) * -566f))));
}

