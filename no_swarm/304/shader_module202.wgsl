struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(2147483647i, Struct_1(true, -1000f)), Struct_2(2147483647i, Struct_1(false, 977f)), Struct_2(26994i, Struct_1(true, -326f)), Struct_2(i32(-2147483648), Struct_1(true, -1708f)), Struct_2(-33142i, Struct_1(false, -257f)), Struct_2(-1i, Struct_1(true, -913f)), Struct_2(-45015i, Struct_1(true, 1695f)), Struct_2(-18450i, Struct_1(false, 1141f)), Struct_2(0i, Struct_1(false, 362f)), Struct_2(-34886i, Struct_1(false, 1000f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-14302i, 2147483647i), reverseBits(~vec2<i32>(1i, 13793i))), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-733f, -1178f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -230f), -122f)))));
    global2 = !select(select(vec4<bool>(true, !global2.x, var_0.b.a, global2.x), vec4<bool>(all(vec3<bool>(false, var_0.b.a, var_0.b.a)), true, true, true), !(!var_0.b.a)), !vec4<bool>(all(vec4<bool>(true, false, global2.x, var_0.b.a)), false, var_0.b.a, global2.x), vec4<bool>(all(!global2.wzw), var_0.b.a, !(!global2.x), var_0.b.a));
    let var_1 = Struct_2(-12021i, Struct_1(all(select(!vec3<bool>(false, true, var_0.b.a), select(global2.xzy, vec3<bool>(false, true, var_0.b.a), global2.x), vec3<bool>(false, false, false))), -472f));
    global3 = array<Struct_2, 10>();
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.b, 1040f))), _wgslsmith_f_op_f32(ceil(var_1.b.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, -286f, var_1.b.b))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.b)), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(f32(-1f) * -276f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + 813f)), 472f, var_1.b.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1328f, -973f));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(778f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f) * 1265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(func_3()), select(false, false, true)))), -407f)));
    var var_1 = global2.wwx;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1372f - _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 128f), _wgslsmith_f_op_f32(var_0.x + 985f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))), 1073f, _wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-931f, var_0.x)))));
    var var_2 = Struct_1(all(global2.xww), var_0.x);
    global1 = select(firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.x, global1.x) << ((vec2<u32>(0u, u_input.a) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~global1.x, _wgslsmith_clamp_u32(16u, 28000u, global1.x)))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.a, global1.x)), vec2<u32>(~4294967295u, countOneBits(u_input.a))) ^ (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(12936u, u_input.a), vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, global1.x)) ^ select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u)), reverseBits(vec2<u32>(0u, global1.x)), false || global2.x)), true);
    return -1841f;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = Struct_2(~max(-1i, -2147483647i), Struct_1(!all(arg_3.zz), -238f));
    var var_2 = _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-375f, arg_2.x) + -1249f)))))));
    global1 = min(abs(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(10765u, global1.x), 4294967295u >> (u_input.a % 32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 51695u), vec2<u32>(0u, 34302u), ~vec2<u32>(u_input.a, global1.x)))), max(~reverseBits(vec2<u32>(0u, 26414u)), vec2<u32>(~select(0u, global1.x, arg_3.x), u_input.a)));
    let var_3 = Struct_2(_wgslsmith_mult_i32(var_1.a, 2147483647i), Struct_1(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f - 354f) * 723f), _wgslsmith_f_op_f32(func_2())))));
    return vec2<u32>(17569u, _wgslsmith_clamp_u32((~global1.x << (85329u % 32u)) >> (u_input.a % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, u_input.a), vec3<u32>(59783u, u_input.a, 21549u)), global1.x) | abs(10623u), 63262u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(844f, 136f, 775f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2120f, -395f, -989f), vec3<f32>(-1000f, -1895f, 163f))))), vec2<bool>(!all(vec2<bool>(global2.x, global2.x)), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-874f, 482f, -1130f, 2304f), vec4<f32>(906f, 183f, 1000f, -676f)) - _wgslsmith_div_vec4_f32(vec4<f32>(833f, 983f, 336f, -511f), vec4<f32>(-1039f, 860f, -270f, 538f))))), global2.wyw) & _wgslsmith_clamp_vec2_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1219f, 188f)), vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -809f, -720f, -937f)), global2.yxw) ^ select(vec2<u32>(433u, global1.x) << (vec2<u32>(u_input.a, 3001u) % vec2<u32>(32u)), vec2<u32>(1u, 1u), true), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(global1.x, 906u)) & vec2<u32>(global1.x, global1.x), max(vec2<u32>(u_input.a, global1.x), ~vec2<u32>(global1.x, u_input.a))), vec2<u32>(select(u_input.a, _wgslsmith_sub_u32(27734u, 1443u), !global2.x), min(countOneBits(global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 27681u), vec2<u32>(0u, global1.x)))));
    let var_0 = Struct_3(Struct_1(global2.x, _wgslsmith_div_f32(-2384f, -1036f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33248u, 1u, 0u), vec3<u32>(19830u, u_input.a, 4294967295u)), vec3<u32>(36201u, 4294967295u, global1.x) >> (vec3<u32>(21564u, global1.x, 1u) % vec3<u32>(32u))), ~min(global1.x, ~0u)), 14u)], vec3<bool>(false, true, true));
    let var_1 = select(vec4<bool>(!((var_0.b.x == var_0.a.b) || false), true, true, global2.x), !vec4<bool>(true, (false || var_0.c.x) && var_0.c.x, 0u >= ~u_input.a, true), true);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -27279i), _wgslsmith_clamp_i32(~(~1i), ~_wgslsmith_mult_i32(2147483647i, 1i), _wgslsmith_mod_i32(67600i, -1i)));
    let var_3 = vec4<i32>(1i, _wgslsmith_dot_vec4_i32(min(~vec4<i32>(2147483647i, -2147483647i, 2147483647i, -10915i), abs(vec4<i32>(55448i, -5766i, 0i, -9324i))) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 36160u, global1.x, 1u), vec4<u32>(u_input.a, 72116u, 1u, 2580u)) & ~vec4<u32>(global1.x, global1.x, u_input.a, 20891u)) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 23561i), 1i, -9824i, firstTrailingBit(56385i))), countOneBits(_wgslsmith_sub_i32(1i >> (u_input.a % 32u), 1i) >> (1u % 32u)), ~(-32053i));
    var var_4 = var_0.a;
    global0 = array<vec2<f32>, 14>();
    global3 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-35244i, _wgslsmith_mult_i32(-var_3.x, ~var_3.x), _wgslsmith_mod_i32(var_3.x, -2147483647i)));
}

