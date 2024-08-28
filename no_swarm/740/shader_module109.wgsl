struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: vec4<f32> = vec4<f32>(-1000f, 114f, -211f, -546f);

var<private> global3: vec2<f32>;

var<private> global4: Struct_1 = Struct_1(1u, -12351i, 1000f, 7937i, 15637u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, _wgslsmith_f_op_f32(-arg_0.c)) - _wgslsmith_f_op_vec2_f32(-arg_2.wz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_0.c))))), arg_2.zy, any(vec4<bool>(arg_3, false, arg_3, true))));
    global4 = arg_0;
    var var_0 = select(select(vec3<bool>(true, true, all(vec4<bool>(arg_3, arg_3, true, true))), !select(select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, false, false), false), !vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3)), select(false, false, arg_3)), select(vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_0.c)) > _wgslsmith_f_op_f32(sign(global2.x)), arg_3, arg_3), select(!select(vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_3, arg_3), true), vec3<bool>(!arg_3, all(vec4<bool>(arg_3, arg_3, arg_3, true)), any(vec4<bool>(arg_3, arg_3, true, false))), false), ~countOneBits(u_input.c) < (_wgslsmith_mod_u32(4294967295u, arg_0.a) ^ 31812u)), select(select(vec3<bool>(arg_3, !arg_3, false), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3)), !vec3<bool>(arg_3, arg_3, arg_3), !vec3<bool>(false, false, arg_3)), arg_3), vec3<bool>(arg_3, false, true), true));
    var var_1 = reverseBits(select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-1i), ~global4.b), _wgslsmith_clamp_i32(-1i, -53536i, -1i)), 37473i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1921f + -122f), _wgslsmith_f_op_f32(366f - arg_0.c), false)) >= arg_0.c));
    var var_2 = arg_0;
    return max(-2147483647i, 18028i);
}

fn func_4(arg_0: Struct_1) -> u32 {
    return ~4294967295u >> (abs(~(~arg_0.a) >> (((4441u >> (u_input.b % 32u)) | arg_0.e) % 32u)) % 32u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global4 = Struct_1(func_4(Struct_1(~u_input.b, firstLeadingBit(-45324i), -2364f, func_3(Struct_1(global4.a, 56536i, global3.x, u_input.a.x, 1u), ~(-2147483647i), vec4<f32>(global3.x, -1156f, global2.x, 816f), all(vec2<bool>(false, true))), select(_wgslsmith_dot_vec2_u32(vec2<u32>(16486u, 56506u), vec2<u32>(0u, 23277u)), 0u, true))), 16005i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_mod_i32(arg_0.x, -32022i), 12642u ^ u_input.b);
    var var_0 = !(60381u >= u_input.b);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-369f, global3.x, true))))), _wgslsmith_f_op_f32(ceil(-873f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) * -440f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, -1273f)))));
    let var_1 = Struct_1(global4.a, _wgslsmith_add_i32(-2147483647i, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, u_input.e.x), u_input.e.zzy))), global3.x, ~abs(reverseBits(arg_0.x << (u_input.b % 32u))), func_4(Struct_1(1u, 15550i, _wgslsmith_f_op_f32(-global2.x), -u_input.d, global4.e)));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global4.c, global4.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(-776f - var_1.c)), _wgslsmith_f_op_f32(854f + var_1.c)))));
    return Struct_1(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_1.e), _wgslsmith_div_u32(global4.a, u_input.b)), (vec2<u32>(var_1.e, 4294967295u) & vec2<u32>(4294967295u, 17350u)) ^ vec2<u32>(4294967295u, global4.e)), u_input.c), -1799i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), global2.x)))), -(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_0.x, -20251i, var_1.b), vec4<i32>(global4.b, -2147483647i, -2147483647i, global4.d)) << (var_1.e % 32u)), 33435u | global4.a);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(global4.e, global4.a, 22544u);
    global4 = func_2(u_input.e);
    var var_1 = true;
    var var_2 = Struct_2(arg_0.a, !select(vec4<bool>(arg_0.b.x, false, false, 1u == var_0.x), vec4<bool>(any(vec3<bool>(arg_0.a.x, false, true)), !arg_0.b.x, arg_0.b.x, true), select(false, any(vec4<bool>(arg_0.b.x, true, arg_0.b.x, true)), !arg_0.a.x)));
    return func_2(u_input.e);
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = -(~12136i);
    var var_1 = global3.x;
    let var_2 = Struct_1(1u, -71512i, global2.x, _wgslsmith_mod_i32(-_wgslsmith_div_i32(_wgslsmith_add_i32(21692i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(17223i, 1i, 1i), vec3<i32>(1i, 2147483647i, 0i))), 1i), ~((~arg_0.a & (15643u ^ u_input.c)) & u_input.c));
    let var_3 = 0u;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(80020u) >> (~16106u % 32u), global4.e), ~_wgslsmith_add_u32(93580u, firstTrailingBit(93279u))) << (4294967295u % 32u), 14u)];
    return 647f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.xz;
    var var_0 = -2147483647i;
    let var_1 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(func_5(func_1(global0[_wgslsmith_index_u32(24573u, 14u)]))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1251f, global4.c)) - _wgslsmith_f_op_f32(global3.x - 506f)), (select(true, false, false) | true) & true, false, global2.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-491f + 930f) + 1099f)), select(vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), 0u < u_input.b, true, global4.e <= u_input.b), vec4<bool>(all(vec2<bool>(false, true)), false, true, false), -647f < _wgslsmith_f_op_f32(global4.c * _wgslsmith_f_op_f32(f32(-1f) * -214f))));
    var var_2 = var_1.a.x;
    var var_3 = var_1;
    var var_4 = Struct_2(select(vec4<bool>(false, true, any(!vec2<bool>(var_3.a.x, var_1.b.x)), var_1.a.x), var_1.a, var_1.a), select(select(!vec4<bool>(var_1.b.x, true, true, false), vec4<bool>(true, any(var_1.b), false || var_1.b.x, !var_3.b.x), var_3.b), vec4<bool>(var_3.b.x, !var_3.a.x, any(vec3<bool>(false, false, false)), false), select(!var_1.b, !(!var_1.b), false)));
    var var_5 = _wgslsmith_mult_i32(firstLeadingBit(~(~1i)), global4.d);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(u_input.b, _wgslsmith_mult_i32(73611i, -1i) >> (_wgslsmith_mult_u32(607u, global4.e) % 32u), global4.c, u_input.d, _wgslsmith_div_u32(firstLeadingBit(43818u), func_1(Struct_2(vec4<bool>(var_4.b.x, var_4.b.x, var_4.a.x, false), vec4<bool>(true, var_1.a.x, true, true))).a))), select(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a, 1u, 1u), vec3<u32>(0u, global4.e, 36066u)), select(vec3<u32>(0u, global4.e, u_input.b), vec3<u32>(u_input.c, 64336u, u_input.b), var_3.a.yyw)), ~firstTrailingBit(~vec3<u32>(u_input.b, 26787u, 11949u)), false), -1054f, _wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1861f, _wgslsmith_f_op_f32(-global2.x))))));
}

