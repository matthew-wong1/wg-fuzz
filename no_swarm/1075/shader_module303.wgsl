struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(1i, 80973i));

var<private> global1: array<i32, 5> = array<i32, 5>(i32(-2147483648), 0i, -45020i, 0i, 1i);

var<private> global2: bool;

var<private> global3: array<Struct_1, 21>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = !(!vec3<bool>(all(!vec3<bool>(arg_1, arg_1, false)), true, any(!vec3<bool>(global4.x, arg_1, arg_1))));
    let var_1 = !(!global4.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -525f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_0.x), all(vec3<bool>(true, false, var_0.x))))))) - -223f);
    var_2 = _wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(f32(-1f) * -1083f));
    global4 = !(!(!var_0.xx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -831f) - _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = ~arg_0.x ^ 27842u;
    return true;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global4 = vec2<bool>(global4.x, !func_4(~vec3<u32>(arg_3.b.x, arg_0, arg_2), _wgslsmith_f_op_f32(func_3(vec2<f32>(-771f, arg_1), true || global4.x, Struct_2(vec2<i32>(global0.a.x, -1i)), 54711u | arg_3.b.x)), Struct_2(vec2<i32>(-44944i, -1i)), select(min(4294967295u, arg_3.b.x), 0u, arg_1 >= arg_1)));
    return Struct_2(reverseBits(max(vec2<i32>(61064i, 10495i) << (arg_3.b % vec2<u32>(32u)), -vec2<i32>(-66394i, arg_3.c.x)) >> (_wgslsmith_mult_vec2_u32(firstLeadingBit(arg_3.b), ~arg_3.b) % vec2<u32>(32u))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_u32(~select(countOneBits(~vec3<u32>(4294967295u, 4294967295u, 14294u)), firstLeadingBit(vec3<u32>(0u, 0u, 22828u)), select(vec3<bool>(true, true, true), vec3<bool>(global4.x, false, false), global4.x | false)), vec3<u32>(45424u, 4895u, 38958u));
    var var_1 = Struct_2(~(select(vec2<i32>(global0.a.x, global0.a.x) << (vec2<u32>(1u, 51170u) % vec2<u32>(32u)), u_input.a.xx, any(vec3<bool>(false, global4.x, true))) | -u_input.a.wx));
    global1 = array<i32, 5>();
    var var_2 = func_2(11850u, -708f, ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, 4294967295u), 1u, 1u), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f) - _wgslsmith_f_op_f32(abs(-523f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -806f) - -546f), !global4.x)), ~vec2<u32>(~4294967295u, ~1u), _wgslsmith_sub_vec3_i32(firstTrailingBit(firstTrailingBit(u_input.a.wyy)), -(vec3<i32>(-5119i, global0.a.x, global1[_wgslsmith_index_u32(1u, 5u)]) >> (vec3<u32>(0u, 1u, 14871u) % vec3<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_f32(355f - _wgslsmith_f_op_f32(trunc(-1587f)));
    return func_2(reverseBits(abs(88806u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), 1865u, Struct_1(-1314f, _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(0u, 1u)), vec2<u32>(1u, ~1u)), u_input.a.xwz ^ -u_input.a.wzx));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = true;
    var var_1 = vec2<bool>(true, all(vec4<bool>(var_0, var_0, _wgslsmith_f_op_f32(-arg_1.x) < -543f, arg_2.x | (true && arg_2.x))));
    var_1 = select(arg_2, select(!(!vec2<bool>(false, var_1.x)), !select(vec2<bool>(arg_2.x, true), arg_2, select(arg_2, arg_2, arg_2)), var_1.x), arg_2.x);
    var var_2 = select(vec3<bool>(all(!(!vec3<bool>(var_1.x, true, global4.x))), !all(!arg_2), !var_1.x), select(!select(vec3<bool>(var_0, false, global4.x), select(vec3<bool>(false, global4.x, var_0), vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, var_1.x, false)), !vec3<bool>(false, true, var_1.x)), vec3<bool>(arg_2.x, func_4(vec3<u32>(33855u, 36789u, 4294967295u), arg_1.x, arg_0, _wgslsmith_div_u32(25227u, 1u)), false == global4.x), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, global4.x, var_1.x), vec3<bool>(arg_2.x, var_1.x, true)), select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, false, true), false), !vec3<bool>(arg_2.x, arg_2.x, global4.x))), select(select(!vec3<bool>(false, var_0, true), select(vec3<bool>(true, true, true), !vec3<bool>(global4.x, arg_2.x, false), global4.x), select(vec3<bool>(global4.x, true, var_0), vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, false))), vec3<bool>(true, true, var_0), all(select(select(vec2<bool>(global4.x, true), arg_2, var_1.x), arg_2, arg_2.x))));
    return select(vec4<bool>(func_4(select(vec3<u32>(30298u, 4294967295u, 0u), ~vec3<u32>(4294967295u, 99860u, 4294967295u), var_2.x), arg_1.x, Struct_2(-vec2<i32>(global0.a.x, -60010i)), min(20196u, _wgslsmith_mod_u32(1u, 1691u))), true, (false && all(vec4<bool>(false, false, true, arg_2.x))) == var_0, 1u < (_wgslsmith_sub_u32(5453u, 1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(48460u, 16272u, 1u), vec3<u32>(31652u, 4294967295u, 2263u)))), vec4<bool>(true, false, !(!func_4(vec3<u32>(4294967295u, 0u, 1u), -656f, arg_3, 19295u)), any(var_2.zy)), ~min(firstTrailingBit(60982u), ~0u) >= ~firstTrailingBit(select(32136u, 0u, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 21>();
    global1 = array<i32, 5>();
    var var_0 = !all(!func_5(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1502f, -1000f, 127f)), vec2<bool>(false, global4.x), Struct_2(global0.a)));
    var var_1 = Struct_2(u_input.a.xw);
    var var_2 = !vec3<bool>(!global4.x, all(vec4<bool>(-1i > global1[_wgslsmith_index_u32(51913u, 5u)], global4.x, global4.x, true)), true);
    var var_3 = Struct_1(-163f, ~(~select(vec2<u32>(48716u, 40384u), abs(vec2<u32>(0u, 62377u)), false)), vec3<i32>(8267i, min(global0.a.x, countOneBits(var_1.a.x) << (reverseBits(1u) % 32u)), countOneBits(-1i)));
    global2 = any(vec2<bool>(true, global4.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, -1289f, _wgslsmith_f_op_f32(max(-240f, var_3.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a, var_3.a, 2263f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-795f, var_3.a, 572f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a, var_3.a, var_3.a), vec3<f32>(var_3.a, 1000f, -493f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-384f, 813f, -171f))))))), vec3<bool>(all(func_5(func_2(var_3.b.x, -586f, 56780u, Struct_1(var_3.a, var_3.b, u_input.a.wwx)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, 177f, -910f), vec3<f32>(591f, var_3.a, -733f), true)), vec2<bool>(var_2.x, var_2.x), func_1())), var_3.b.x < var_3.b.x, ~(~3819u) < ~var_3.b.x)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(46005u), _wgslsmith_f_op_f32(var_3.a + var_4.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_4.yz + var_4.xx))), true, Struct_2(_wgslsmith_sub_vec2_i32(var_1.a, global0.a)), abs(1u))))), -(~_wgslsmith_mod_vec4_i32(min(u_input.a, vec4<i32>(global0.a.x, var_1.a.x, -44823i, global1[_wgslsmith_index_u32(1u, 5u)])), abs(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_4.yy, var_2.x, func_2(~42523u, _wgslsmith_f_op_f32(step(var_3.a, -1650f)), var_3.b.x, Struct_1(var_3.a, var_3.b, var_3.c)), _wgslsmith_sub_u32(~var_3.b.x, ~4275u)))));
}

