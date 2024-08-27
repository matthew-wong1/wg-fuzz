struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(-1686i, vec2<u32>(78820u, 61770u), -388f, Struct_2(vec4<i32>(0i, -1098i, -17012i, 0i), vec2<bool>(true, false), true), vec3<i32>(-10974i, 16456i, -57037i)), Struct_4(59243i, vec2<u32>(12622u, 1u), -647f, Struct_2(vec4<i32>(14284i, 0i, 0i, 6241i), vec2<bool>(true, false), false), vec3<i32>(54607i, 0i, -39407i)), Struct_4(14299i, vec2<u32>(1u, 39826u), -538f, Struct_2(vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), vec2<bool>(false, true), false), vec3<i32>(1i, 0i, 19280i)), Struct_4(-3929i, vec2<u32>(4294967295u, 32952u), -1700f, Struct_2(vec4<i32>(-9007i, 2147483647i, 2147483647i, 1i), vec2<bool>(true, false), false), vec3<i32>(-1i, -17308i, -30348i)), Struct_4(-1i, vec2<u32>(0u, 17902u), -651f, Struct_2(vec4<i32>(68415i, 32072i, -23719i, 37593i), vec2<bool>(true, true), false), vec3<i32>(27229i, 1i, -14502i)), Struct_4(9469i, vec2<u32>(121560u, 27154u), -891f, Struct_2(vec4<i32>(i32(-2147483648), 80547i, 4652i, 8556i), vec2<bool>(false, true), true), vec3<i32>(2147483647i, 1i, 33409i)));

var<private> global1: array<f32, 3> = array<f32, 3>(1000f, -450f, -812f);

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<u32, 20> = array<u32, 20>(114642u, 43038u, 68454u, 54524u, 21863u, 0u, 32980u, 0u, 40651u, 1u, 1u, 35450u, 4294967295u, 100634u, 4294967295u, 1u, 4294967295u, 22071u, 4472u, 68520u);

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, vec4<bool>(true, true, true, true), vec2<f32>(467f, 1092f)), Struct_1(55056u, vec4<bool>(true, true, false, false), vec2<f32>(548f, 1125f)), Struct_1(4294967295u, vec4<bool>(false, false, true, false), vec2<f32>(1000f, 1802f)), Struct_1(125557u, vec4<bool>(true, true, true, false), vec2<f32>(2599f, 489f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.a, 20u)], 1u, u_input.a)) >> (vec4<u32>(u_input.a, ~72221u, 46898u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(14252u, 20u)], 4294967295u, u_input.a, 46208u), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 20u)], 15712u, 30200u)), 20u)]) % vec4<u32>(32u)), ~(~(~vec4<u32>(5628u, global3[_wgslsmith_index_u32(4294967295u, 20u)], 2588u, global3[_wgslsmith_index_u32(u_input.a, 20u)])))) ^ _wgslsmith_mod_vec4_u32(abs(vec4<u32>(55437u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], global3[_wgslsmith_index_u32(60165u, 20u)]) >> (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], 775u) % vec4<u32>(32u))) & (vec4<u32>(49214u, u_input.a, 67078u, 4294967295u) >> (firstLeadingBit(vec4<u32>(39776u, global3[_wgslsmith_index_u32(27295u, 20u)], u_input.a, u_input.a)) % vec4<u32>(32u))), reverseBits(vec4<u32>(0u, global3[_wgslsmith_index_u32(50913u, 20u)], 55695u, u_input.a) >> (vec4<u32>(1u, global3[_wgslsmith_index_u32(22388u, 20u)], 4294967295u, u_input.a) % vec4<u32>(32u))));
    global4 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~_wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-39685i, arg_0.c.a.x) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), arg_0.c.a.wx & vec2<i32>(2147483647i, 5374i))) << (reverseBits(max(_wgslsmith_div_u32(u_input.a, 0u), countOneBits(1u))) % 32u), arg_0.a.a.x);
    let var_2 = ~var_0;
    global3 = array<u32, 20>();
    return !arg_0.c.b;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    var var_0 = arg_1.x;
    var var_1 = Struct_3(Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -16397i, arg_0) ^ vec4<i32>(-48095i, 13263i, arg_0, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 0i, -1i, 1i), vec4<i32>(-1384i, -1i, 2147483647i, arg_0))), vec2<bool>(27547i <= arg_0, true), !(true == any(vec2<bool>(true, false)))), global1[_wgslsmith_index_u32(arg_1.x >> (global3[_wgslsmith_index_u32(u_input.a, 20u)] % 32u), 3u)], Struct_2(~reverseBits(vec4<i32>(17058i, 1i, arg_0, 23322i) >> (vec4<u32>(arg_1.x, global3[_wgslsmith_index_u32(79853u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(79527u, 20u)]) % vec4<u32>(32u))), func_3(Struct_3(Struct_2(vec4<i32>(arg_0, arg_0, 96496i, arg_0), vec2<bool>(false, false), false), -136f, Struct_2(vec4<i32>(-52781i, arg_0, arg_0, 8198i), vec2<bool>(true, false), true), ~(-13695i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(32826u, 3u)], arg_3, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 20u)], 3u)]) * vec3<f32>(arg_3, 1000f, -279f)))), global1[_wgslsmith_index_u32(u_input.a, 3u)] > -1003f), -2147483647i);
    let var_2 = arg_1.zx;
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(min(519f, -584f)))), var_1.c, -select(_wgslsmith_clamp_i32(~(-26496i), -18480i ^ var_1.a.a.x, -var_1.d), ~1i, true));
    var_0 = countOneBits(global3[_wgslsmith_index_u32(25192u, 20u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(113f)))) + _wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(min(arg_3, arg_3))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec3<f32>(-192f, -340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(0u, u_input.a), 3u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] - -127f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-296f - _wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(i32(-1i) * -20209i, ~(-1i)), firstTrailingBit(vec4<u32>(u_input.a, 0u, global3[_wgslsmith_index_u32(u_input.a, 20u)], u_input.a) & vec4<u32>(44474u, global3[_wgslsmith_index_u32(u_input.a, 20u)], 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48805u, 20u)], 20u)], u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 0u, 4294967295u, 0u)), _wgslsmith_f_op_f32(min(1626f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 20u)], 3u)], var_0.x))))))), var_0.x);
    global3 = array<u32, 20>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)))))));
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~u_input.a), u_input.a, ~1u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 79073u, 59079u, 17299u), vec4<u32>(81709u, 48104u, 4294967295u, 17102u)), 20u)] ^ ~u_input.a) ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 53246u), global3[_wgslsmith_index_u32(4294967295u, 20u)]), min(1u, _wgslsmith_add_u32(u_input.a, global3[_wgslsmith_index_u32(4873u, 20u)])), firstLeadingBit(u_input.a), firstTrailingBit(u_input.a << (49297u % 32u))), _wgslsmith_sub_vec4_u32(abs(abs(firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u)))), max(vec4<u32>(45790u, 48706u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(28426u, 20u)], 12409u)) | firstTrailingBit(abs(vec4<u32>(41732u, global3[_wgslsmith_index_u32(53943u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], 0u)))));
    return _wgslsmith_clamp_i32((_wgslsmith_add_i32(22116i << (var_3.x % 32u), -2147483647i) << (_wgslsmith_dot_vec4_u32(~var_3, min(var_3, vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 10800u, var_3.x, 0u))) % 32u)) ^ _wgslsmith_clamp_i32(countOneBits(-2147483647i >> (global3[_wgslsmith_index_u32(27859u, 20u)] % 32u)), _wgslsmith_clamp_i32(firstTrailingBit(15804i), -39246i, _wgslsmith_div_i32(58977i, 1i)), ~29958i << (_wgslsmith_mod_u32(var_3.x, var_3.x) % 32u)), -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(min(-2147483647i, i32(-1i) * -22621i), countOneBits(select(-2147483647i, 2147483647i, arg_1.x))), abs(firstTrailingBit(-1i)), min(1i, abs(i32(-1i) * -12288i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 6>();
    let var_0 = _wgslsmith_sub_i32(firstTrailingBit(~func_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false))) | _wgslsmith_mod_i32(min(_wgslsmith_mod_i32(-1i, -46924i), ~0i), i32(-1i) * -2147483647i), func_1(select(vec3<bool>(true, false, any(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true), true), vec3<bool>(true, true, true)));
    var var_1 = u_input.a > ~1u;
    global1 = array<f32, 3>();
    let var_2 = ~(~countOneBits(vec2<u32>(abs(36135u), ~global3[_wgslsmith_index_u32(u_input.a, 20u)])));
    let var_3 = 737f;
    let var_4 = vec2<bool>(true, !func_3(Struct_3(Struct_2(vec4<i32>(var_0, 30105i, var_0, var_0), vec2<bool>(true, true), false), var_3, Struct_2(vec4<i32>(var_0, 50036i, 0i, var_0), vec2<bool>(false, true), true), _wgslsmith_clamp_i32(var_0, -30764i, var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(9114u, 3u)], var_3, 193f)))).x);
    let var_5 = Struct_2(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, var_0, 6799i), ~vec3<i32>(var_0, 49384i, var_0)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(-17406i, -16804i))), ~(-var_0), -8511i & select(42226i, var_0, false))), select(var_4, vec2<bool>(var_4.x & true, var_4.x), vec2<bool>(all(!vec4<bool>(false, var_4.x, var_4.x, var_4.x)), var_4.x)), !var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(-61808i));
}

