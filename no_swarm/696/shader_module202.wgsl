struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<u32, 6> = array<u32, 6>(1u, 4294967295u, 36539u, 0u, 0u, 28033u);

var<private> global2: u32 = 27066u;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(1i, 8823i, -1i), vec4<u32>(0u, 22990u, 4294967295u, 0u), Struct_1(-274f, 39780u, vec4<i32>(-16119i, 19007i, 31336i, -28041i), 770f, 34380u), Struct_1(-1479f, 38817u, vec4<i32>(9107i, 2299i, 969i, 0i), -2372f, 1u), vec2<bool>(true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_2(~(~(-_wgslsmith_div_vec3_i32(vec3<i32>(-20619i, global3.d.c.x, global3.a.x), vec3<i32>(2147483647i, 0i, 13033i)))), ~firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 4294967295u, 49674u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 6u)], 6u)])) | max(~global3.b, global3.b), arg_2, Struct_1(_wgslsmith_f_op_f32(451f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_3)), -661f))), ~(~_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 6u)])), abs(abs(vec4<i32>(arg_2.c.x, global3.c.c.x, 2147483647i, -15595i))), arg_0, select(4294967295u, ~114157u, !arg_1)), vec2<bool>(all(vec4<bool>(arg_1, false, true, arg_1)) && (true | any(vec3<bool>(global3.e.x, false, global3.e.x))), any(global3.e)));
    var var_1 = arg_2;
    let var_2 = !vec3<bool>(-firstTrailingBit(var_1.c.x) >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.c.x), min(vec2<i32>(-1i, global3.d.c.x), arg_2.c.zz)), abs(~arg_2.e) != var_0.d.b, !global3.e.x & !select(true, true, arg_1));
    var var_3 = false;
    global0 = array<vec2<bool>, 15>();
    return _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3)) * 786f)))), (select(40946u, global3.d.e, false) << (arg_2.b % 32u)) != (reverseBits(u_input.c) | _wgslsmith_dot_vec2_u32(countOneBits(var_0.b.zw), vec2<u32>(40048u, 9670u)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    global3 = Struct_2(arg_1.c.wzw, _wgslsmith_add_vec4_u32(~global3.b, global3.b), arg_1, Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f + -714f)), false && (true | global3.e.x), Struct_1(_wgslsmith_div_f32(-381f, -143f), 0u, _wgslsmith_clamp_vec4_i32(global3.c.c, vec4<i32>(global3.d.c.x, 7168i, arg_1.c.x, -2147483647i), arg_1.c), _wgslsmith_f_op_f32(1443f - -706f), global1[_wgslsmith_index_u32(global3.d.e, 6u)]), global3.c.a)), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), global3.b.xz)), global3.c.c, -561f, 3179u), select(select(vec2<bool>(global3.e.x, false), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 15u)], !all(global0[_wgslsmith_index_u32(44341u, 15u)])), global0[_wgslsmith_index_u32(arg_0, 15u)], !(_wgslsmith_f_op_f32(select(arg_1.d, arg_1.d, false)) == _wgslsmith_f_op_f32(318f - arg_1.a))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a)) < arg_1.a;
    var var_1 = arg_1.d;
    let var_2 = vec4<bool>(any(global3.e), false, all(!(!(!vec4<bool>(global3.e.x, false, global3.e.x, true)))), true);
    var var_3 = global3.b.yxy;
    return countOneBits(var_3.x);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_2 {
    global1 = array<u32, 6>();
    global3 = Struct_2(_wgslsmith_add_vec3_i32(global3.c.c.zxx, abs(global3.c.c.wzw)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global3.d.e, 16514u, 6174u), global3.b), global3.b), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * global3.c.a)), -999f, _wgslsmith_f_op_f32(min(1227f, global3.c.d)) == _wgslsmith_f_op_f32(-2364f - -912f))), ~max(global1[_wgslsmith_index_u32(63224u, 6u)], min(global3.d.e, 4294967295u)), global3.d.c, _wgslsmith_f_op_f32(global3.d.d + -1000f), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (0u % 32u), ~4294967295u, ~arg_1), abs(vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 6u)], 715u) >> (vec3<u32>(0u, 89555u, arg_1) % vec3<u32>(32u))))), global3.c, !(!select(select(vec2<bool>(true, global3.e.x), vec2<bool>(global3.e.x, false), global3.e.x), select(global3.e, vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(global3.e.x, false))));
    var var_0 = global3.c.c.wzz;
    global3 = Struct_2(max(global3.d.c.zwz, _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(global3.a, vec3<i32>(7137i, 2147483647i, global3.d.c.x)), vec3<i32>(reverseBits(-28884i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(9204i, 0i)), 1i))), global3.b, Struct_1(global3.c.d, 16496u ^ _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(76765u, 49638u, global1[_wgslsmith_index_u32(28773u, 6u)])), vec4<i32>(arg_2, var_0.x, _wgslsmith_dot_vec3_i32(select(global3.a, vec3<i32>(global3.c.c.x, -1i, arg_2), true), global3.a), arg_2), _wgslsmith_f_op_f32(global3.c.d + global3.c.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(12530u), abs(1u)), global1[_wgslsmith_index_u32(firstLeadingBit(34856u), 6u)] >> (arg_1 % 32u))), global3.d, !select(global3.e, vec2<bool>(arg_2 >= -16084i, global3.e.x), select(select(global3.e, global3.e, global3.e.x), !global3.e, !global0[_wgslsmith_index_u32(u_input.b.x, 15u)])));
    var_0 = select(-global3.d.c.xxy, -min(-(global3.a & global3.d.c.xzy), vec3<i32>(-1i) * -vec3<i32>(global3.a.x, 2147483647i, global3.a.x)), !vec3<bool>(!(global3.e.x && global3.e.x), false, (global3.e.x & false) && true));
    return Struct_2(~(vec3<i32>(-1i) * -(vec3<i32>(9879i, 0i, -2147483647i) ^ vec3<i32>(var_0.x, 2147483647i, var_0.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global3.b, global3.b << (global3.b % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(global3.d.b << (1u % 32u), 6u)], ~(~global1[_wgslsmith_index_u32(0u, 6u)]), 50958u, u_input.b.x), min(_wgslsmith_sub_vec4_u32(reverseBits(global3.b), global3.b), abs(global3.b))), global3.d, global3.d, vec2<bool>(global3.e.x | all(select(vec3<bool>(global3.e.x, true, true), vec3<bool>(true, global3.e.x, false), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.d.d, -110f)) - _wgslsmith_div_f32(1633f, 110f)) == global3.d.a));
}

fn func_1() -> vec3<bool> {
    var var_0 = global3.d.e << (~4294967295u % 32u);
    var_0 = ~global3.c.b;
    global3 = func_4(global3.a.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global3.b.xzw & u_input.b, global3.b.zww), func_2(u_input.b.x, Struct_1(-711f, 108976u, global3.d.c, -143f, 27570u)) >> (u_input.a % 32u)), -17826i);
    var var_1 = func_4(-1i, 1u, 1i).a.x;
    var var_2 = global0[_wgslsmith_index_u32(126833u, 15u)];
    return select(vec3<bool>(false, global3.e.x, var_2.x), select(!vec3<bool>(select(true, false, true), var_2.x, true), select(vec3<bool>(var_2.x | global3.e.x, !global3.e.x, true), select(select(vec3<bool>(global3.e.x, true, var_2.x), vec3<bool>(global3.e.x, false, false), vec3<bool>(var_2.x, true, var_2.x)), select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, true), global3.e.x), vec3<bool>(global3.e.x, global3.e.x, true)), !select(vec3<bool>(global3.e.x, true, true), vec3<bool>(global3.e.x, var_2.x, false), false)), true & global3.e.x), select(!(!select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, global3.e.x), false)), select(!(!vec3<bool>(true, global3.e.x, true)), !select(vec3<bool>(global3.e.x, false, var_2.x), vec3<bool>(true, global3.e.x, true), vec3<bool>(true, global3.e.x, true)), vec3<bool>(any(vec3<bool>(false, false, global3.e.x)), !global3.e.x, var_2.x)), vec3<bool>(any(select(vec4<bool>(true, global3.e.x, false, global3.e.x), vec4<bool>(true, global3.e.x, true, true), vec4<bool>(false, true, global3.e.x, global3.e.x))), all(!vec3<bool>(var_2.x, false, global3.e.x)), all(!vec3<bool>(true, var_2.x, false)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = global3.b >> (((vec4<u32>(arg_1, firstLeadingBit(0u), 4294967295u, 0u >> (u_input.c % 32u)) ^ ~global3.b) | vec4<u32>(~abs(53373u), ~arg_1, 0u, ~1u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec2_i32(~countOneBits(abs(~global3.c.c.ww)), firstLeadingBit(~max(vec2<i32>(global3.c.c.x, global3.c.c.x), vec2<i32>(global3.d.c.x, -52045i)) & global3.a.zx));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.a, 841f, global3.c.d) + vec3<f32>(global3.d.a, global3.d.d, -1261f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1371f, global3.c.a, 2366f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.a, -595f, -640f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.d.d, global3.d.a))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(257f, -473f)), global3.d.d, arg_0.x)), global3.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.d, -1049f)) - _wgslsmith_f_op_f32(455f * global3.d.d))))));
    var_0 = select(min(select(~(~global3.b), countOneBits(reverseBits(global3.b)), vec4<bool>(true, true, false, true)), vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(11648u, 6u)], global3.b.x | u_input.c, 73202u)), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)] >> (~1u % 32u), arg_1, 11338u, min(~abs(global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), 1u)), select(select(vec4<bool>(select(global3.e.x, true, global3.e.x), true, true, any(vec3<bool>(false, true, global3.e.x))), select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, false), select(vec4<bool>(arg_0.x, arg_0.x, global3.e.x, true), vec4<bool>(arg_0.x, global3.e.x, true, true), vec4<bool>(global3.e.x, global3.e.x, true, true))), select(vec4<bool>(global3.e.x, global3.e.x, global3.e.x, false), !vec4<bool>(false, global3.e.x, true, true), vec4<bool>(false, true, global3.e.x, arg_0.x))), vec4<bool>(arg_0.x, !all(vec4<bool>(true, true, arg_0.x, global3.e.x)), !(!arg_0.x), true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, arg_0.x, global3.e.x, global3.e.x), false), !vec4<bool>(false, arg_0.x, arg_0.x, false), 20087i < global3.c.c.x), select(select(vec4<bool>(global3.e.x, arg_0.x, global3.e.x, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), false), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, arg_0.x, true, true)), vec4<bool>(arg_0.x, false, global3.e.x, global3.e.x)), arg_0.x)));
    var var_3 = global3.c;
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-(~vec3<i32>(2147483647i, countOneBits(0i), countOneBits(1i))), global3.b, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 435f), _wgslsmith_div_f32(global3.c.d, 1202f))), 1228f)), ~firstTrailingBit(~global1[_wgslsmith_index_u32(u_input.a, 6u)]), ~(~vec4<i32>(global3.c.c.x, global3.a.x, global3.c.c.x, 29624i)) ^ global3.d.c, _wgslsmith_f_op_f32(-global3.c.d), ~1u), func_5(!func_1(), global3.d.e), !vec2<bool>(!(!global3.e.x), global3.e.x));
    var var_1 = 2147483647i;
    global2 = ~reverseBits(_wgslsmith_mult_u32(~53006u, func_5(vec3<bool>(true, global3.e.x, true), 0u).b) >> (global3.c.e % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.x, ~4294967295u << ((_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.c.e, u_input.a), func_4(var_0.a.x, global1[_wgslsmith_index_u32(u_input.a, 6u)], -1i).b.x, 4294967295u) ^ ~(global3.c.e | 0u)) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, _wgslsmith_f_op_f32(select(492f, -1832f, global3.e.x)), _wgslsmith_f_op_f32(-268f * global3.c.d))))));
}

