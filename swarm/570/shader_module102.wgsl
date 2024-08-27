struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 52018u, 22368u, 12110u, 49954u, 1u, 1u, 13595u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(select(firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 8u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24803u, 8u)], 8u)])), abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 1u, 132164u)), vec3<bool>(true, select(true, false, true), true)), _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(12076u, 8u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 0u, 1u))), select(vec3<u32>(4287u, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 8u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 4223u), ~vec3<u32>(0u, 18347u, 53799u), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))));
    global0 = array<u32, 8>();
    let var_1 = false;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f * 1000f)), _wgslsmith_f_op_f32(trunc(-1683f)));
    var var_3 = Struct_4(select(!(!select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(true & var_1, false, true, select(true, var_1, true)), select(vec4<bool>(false, var_1, true, false), !vec4<bool>(var_1, true, var_1, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_1, var_1, true), var_1)), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), !var_1)), !vec4<bool>(all(vec2<bool>(true, true)), false, true, true)), Struct_2(min(select(vec2<u32>(0u, global0[_wgslsmith_index_u32(12800u, 8u)]), _wgslsmith_add_vec2_u32(var_0.zy, var_0.yz), vec2<bool>(false, var_1)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 1u), max(var_0.xy, var_0.zz), vec2<u32>(global0[_wgslsmith_index_u32(38927u, 8u)], u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(706f, -1130f)) * vec2<f32>(1f, 1f)), Struct_1(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-555f, -851f, -798f)))), _wgslsmith_div_f32(1565f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(trunc(261f))))), Struct_2(firstLeadingBit(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, u_input.a), var_0.xy))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1390f)))), Struct_1(!var_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 637f, 324f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(368f, 1793f, 1111f), vec3<f32>(-1629f, 927f, -569f))), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, var_1, var_1))))), -699f), Struct_1(any(!vec4<bool>(false, false, false, var_1)) && false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-664f, 1615f, var_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-566f)))))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 8u)];
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0));
    var var_1 = vec4<u32>(12381u, u_input.a, min(_wgslsmith_div_u32(func_3() << (_wgslsmith_clamp_u32(u_input.a, u_input.a, 21229u) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(104217u ^ global0[_wgslsmith_index_u32(47828u, 8u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])), 8u)]), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(40173u, 8u)], u_input.a, 0u, 78563u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 13154u, 1512u, 23117u), true), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], u_input.a, 4294967295u)) >> (select(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], _wgslsmith_dot_vec2_u32(vec2<u32>(78278u, u_input.a), vec2<u32>(u_input.a, u_input.a)), true) % 32u)), reverseBits(((global0[_wgslsmith_index_u32(u_input.a, 8u)] & 61972u) | ~1u) ^ ~1u));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-216f, 104f))), 600f)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -1978f)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * 750f))))))));
    var var_2 = Struct_2(var_1.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-893f, _wgslsmith_f_op_f32(-923f * 1142f))))), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -520f, -1139f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), arg_0));
    return _wgslsmith_div_u32(37224u, ~_wgslsmith_mult_u32(6996u, firstLeadingBit(firstTrailingBit(49937u))));
}

fn func_1() -> Struct_5 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_mult_u32(4294967295u, u_input.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~19539u, 8u)], u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<u32>(85766u, global0[_wgslsmith_index_u32(u_input.a, 8u)])) % 32u)), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1538f, -733f), _wgslsmith_div_f32(-106f, 390f), true))))), 8u)];
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1057f)))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(272f + 233f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1071f)))));
    let var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f * 412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c))))), var_1.c), var_1.b, _wgslsmith_f_op_f32(-var_1.a.x));
    return Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a), var_2.a), var_1.b, -815f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_mult_i32(~(-(~(-1i))), _wgslsmith_sub_i32(max(abs(~(-55841i)), -abs(1i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -5652i), _wgslsmith_dot_vec3_i32(vec3<i32>(-13678i, 2147483647i, -2147483647i), vec3<i32>(-44382i, 83948i, -20409i)), select(33939i, 2147483647i, true)), reverseBits(_wgslsmith_mod_i32(-2147483647i, 30677i)), -1i)));
    var var_2 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 1077f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 2222f, -1748f) + vec3<f32>(var_0.c, 535f, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.a.x, -1130f)))), Struct_2(~((vec2<u32>(1u, 43310u) | vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(106773u, 8u)])) << ((vec2<u32>(global0[_wgslsmith_index_u32(0u, 8u)], 24913u) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)) * _wgslsmith_div_vec2_f32(var_0.a, var_0.a)), Struct_1(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.c, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(694f, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))))), ~(u_input.a << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 8u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 4294967295u), vec2<u32>(0u, 0u))) % 32u)), -314f);
    var var_3 = var_0.a;
    var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -52064i, -9441i, 1i), vec4<i32>(29942i, 1i, 44475i, -10206i)), ~(-15147i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-3879i, 15523i)), -1i) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.c, var_2.c, 10687u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 8u)], 74146u, 16006u)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(72551u, 8u)], 41232u, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a)), ~(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, 65787u, 0u) << (vec4<u32>(77228u, u_input.a, 1817u, var_2.b.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), -vec3<i32>(-9062i << (u_input.a % 32u), _wgslsmith_mult_i32(0i, 1i), _wgslsmith_mod_i32(max(11540i, -32334i), 1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 570i, -5120i), countOneBits(vec3<i32>(0i, 2147483647i, 36230i))), ~1i, 16790i) | -select(min(vec3<i32>(-1i, 15621i, 2147483647i), vec3<i32>(31139i, 1i, 2147483647i)), vec3<i32>(0i, 18261i, 2147483647i), true), vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.b.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(15806u, 78210u), _wgslsmith_mod_vec2_u32(vec2<u32>(50506u, u_input.a), var_2.b.a), var_2.b.a)), var_2.b.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, -2078f), _wgslsmith_f_op_vec2_f32(var_2.b.b - vec2<f32>(var_3.x, var_2.d)), !vec2<bool>(var_2.b.c.a, true)))))));
}

