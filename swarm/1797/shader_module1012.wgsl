struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<vec2<i32>, 31>;

var<private> global2: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-469f, -912f)), _wgslsmith_f_op_f32(f32(-1f) * -860f)))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1295f), -273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(955f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-369f, _wgslsmith_f_op_f32(369f + 894f)) * _wgslsmith_f_op_f32(sign(-322f)))), 831f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, -1122f)), var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -691f, false)) + _wgslsmith_f_op_f32(var_0.x - var_0.x)) * _wgslsmith_f_op_f32(282f * _wgslsmith_f_op_f32(877f * var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(413f, -1126f)) * _wgslsmith_f_op_f32(floor(-119f)))));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(select(true, !all(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, true))), select(true, true, all(vec3<bool>(false, true, false)))), true);
    var var_2 = Struct_5(Struct_2(vec4<u32>(u_input.c.x, firstLeadingBit(0u), _wgslsmith_add_u32(~u_input.d, abs(u_input.d)), u_input.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.zwy * var_0.wxz))))), var_1.x, Struct_1(reverseBits(select(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, 1i, u_input.b), vec4<bool>(var_1.x, false, true, false))), vec2<i32>(2147483647i, u_input.b))), -2147483647i, i32(-1i) * -6736i, vec4<u32>(_wgslsmith_mod_u32(abs(u_input.d) ^ (u_input.a.x >> (u_input.d % 32u)), u_input.c.x), min(~u_input.a.x, u_input.c.x), u_input.a.x, ~0u), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.b), _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(9229i, -31462i), 1i & u_input.b, !var_1.x), u_input.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f + _wgslsmith_f_op_f32(abs(975f)))))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_2(firstLeadingBit(~(~vec4<u32>(7373u, u_input.d, u_input.d, 1u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(177f, -417f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f * 255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))), true, Struct_1(-abs(firstTrailingBit(vec4<i32>(0i, 25767i, arg_0, u_input.b))), select(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 31u)]), vec2<i32>(18476i, 2147483647i) >> (global0[_wgslsmith_index_u32(u_input.c.x, 5u)] % vec2<u32>(32u)), true) | vec2<i32>(-2147483647i, _wgslsmith_div_i32(arg_0, u_input.b))));
    var var_1 = Struct_3(Struct_2((var_0.a >> (vec4<u32>(u_input.c.x, 36165u, u_input.a.x, 13051u) % vec4<u32>(32u))) & var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), select(select(var_0.c, true, var_0.c) || (var_0.c | var_0.c), !all(vec4<bool>(var_0.c, false, var_0.c, var_0.c)), false), Struct_1(firstTrailingBit(var_0.d.a), var_0.d.a.zw)), Struct_2(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.a), _wgslsmith_div_u32(var_0.a.x, 13541u), var_0.a.x >> (u_input.c.x % 32u), countOneBits(3178u))), var_0.b, any(select(!vec4<bool>(var_0.c, true, true, var_0.c), select(vec4<bool>(var_0.c, false, var_0.c, true), vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(true, false, false, true)), !vec4<bool>(true, var_0.c, var_0.c, true))), var_0.d));
    var var_2 = Struct_4(~var_1.a.a.xwx, vec3<i32>(2147483647i | reverseBits(u_input.b), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits(var_1.a.d.a.x), 2147483647i, arg_0 >> (4294967295u % 32u)), ~_wgslsmith_add_i32(u_input.b, -2147483647i))));
    var var_3 = 50890u;
    var var_4 = Struct_4(~countOneBits(select(~vec3<u32>(46502u, var_0.a.x, var_1.b.a.x), var_1.b.a.wyz, var_1.a.c || true)), ~vec3<i32>(var_2.b.x, _wgslsmith_add_i32(i32(-1i) * -77i, -58659i), var_2.b.x));
    return var_0.b.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_0), arg_0) - _wgslsmith_f_op_f32(func_2(1i))), _wgslsmith_f_op_f32(select(419f, _wgslsmith_f_op_f32(trunc(arg_0)), all(vec4<bool>(arg_2, arg_2, arg_2, true))))));
    var var_0 = Struct_5(Struct_2(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(40534u, arg_3, u_input.d, arg_3))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, arg_3, arg_3, 1u), vec4<u32>(u_input.d, 0u, 23504u, 14793u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, 1362f)))))), arg_2, Struct_1(abs(vec4<i32>(-51677i, 49560i, arg_1, arg_1)) | vec4<i32>(u_input.b, u_input.b, arg_1, u_input.b), select(~vec2<i32>(13473i, 2147483647i), max(vec2<i32>(u_input.b, -1i), global1[_wgslsmith_index_u32(14027u, 31u)]), !arg_2))), ~arg_1 | -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1, -26903i), arg_1), vec4<u32>(~(~(~u_input.c.x)), abs(24787u | reverseBits(u_input.c.x)), ((69938u << (arg_3 % 32u)) >> (11567u % 32u)) << (firstLeadingBit(countOneBits(1u)) % 32u), 49847u), 27493i);
    var var_1 = ~var_0.a.d.a.wwx & _wgslsmith_mod_vec3_i32(var_0.a.d.a.wyx, _wgslsmith_div_vec3_i32(-var_0.a.d.a.yyx, -vec3<i32>(19122i, var_0.e, 1i)));
    let var_2 = _wgslsmith_f_op_f32(-907f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(829f)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(arg_1, var_0.a.d.b.x))))));
    var_0 = Struct_5(var_0.a, _wgslsmith_add_i32(var_1.x, _wgslsmith_mod_i32(43797i, -36699i)), -34249i, var_0.d, 2147483647i);
    return Struct_4(reverseBits(u_input.c), ~_wgslsmith_mult_vec3_i32(var_0.a.d.a.ywx, abs(var_0.a.d.a.zyx)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    global2 = 682f;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1019f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(576f - -472f)))))));
    var var_0 = !vec2<bool>(!all(vec3<bool>(true, true, true)), select(false, any(vec4<bool>(false, true, false, false)), true) && any(vec2<bool>(false, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-617f, 1033f, true)))), -438f)));
    global1 = array<vec2<i32>, 31>();
    return _wgslsmith_add_vec4_u32(~vec4<u32>(~(~1u), arg_3, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(60576u, 1u, arg_1.a.x, arg_3), vec4<u32>(38292u, 0u, 4294967295u, 1u)), vec4<u32>(35665u, arg_1.a.x, arg_3, u_input.d))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(~arg_3, func_1(var_1, arg_0.x, var_0.x, 51691u).a.x), ~(18034u << (arg_1.a.x % 32u)), ~1u, _wgslsmith_clamp_u32(u_input.d ^ 1u, arg_1.a.x, _wgslsmith_clamp_u32(0u, 0u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(func_4(vec2<i32>(u_input.b, u_input.b), func_1(-173f, -1i, all(vec3<bool>(false, true, false)), ~u_input.d), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-1717i, u_input.b, u_input.b, 1i), vec4<i32>(0i, u_input.b, -2147483647i, 2147483647i)), global1[_wgslsmith_index_u32(u_input.c.x, 31u)] >> (vec2<u32>(67890u, u_input.d) % vec2<u32>(32u))), reverseBits(firstTrailingBit(u_input.a.x))), func_4(~(global1[_wgslsmith_index_u32(26998u, 31u)] | global1[_wgslsmith_index_u32(83234u, 31u)]), Struct_4(u_input.c, vec3<i32>(27157i, -21911i, u_input.b)), Struct_1(-vec4<i32>(u_input.b, u_input.b, 7066i, -17493i), countOneBits(global1[_wgslsmith_index_u32(40236u, 31u)])), u_input.a.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, firstTrailingBit(func_1(1044f, 47524i, false, u_input.c.x).a.x), u_input.c.x, _wgslsmith_mult_u32(u_input.d << (4294967295u % 32u), ~u_input.c.x)), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(16179u, 1u, u_input.d, u_input.c.x), vec4<u32>(13517u, 1u, 76331u, 4294967295u)), vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x))) % vec4<u32>(32u));
    var var_1 = Struct_3(Struct_2(vec4<u32>(var_0.x, _wgslsmith_add_u32(0u, 41715u), 1u, var_0.x) ^ vec4<u32>(u_input.c.x, min(u_input.c.x, 1752u), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.d, 20740u, var_0.x)), min(var_0.x, var_0.x)), vec3<f32>(1f, -404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-185f)) * 112f)), !select(true, false, any(vec2<bool>(true, false))), Struct_1(select(abs(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 34033i), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), global1[_wgslsmith_index_u32(abs(4294967295u), 31u)]))), Struct_2(vec4<u32>(_wgslsmith_sub_u32(~8787u, 1u), _wgslsmith_sub_u32(countOneBits(var_0.x), _wgslsmith_mult_u32(u_input.a.x, 63397u)), min(reverseBits(4294967295u), reverseBits(17338u)), abs(var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-799f)), _wgslsmith_f_op_f32(-950f * 293f), _wgslsmith_f_op_f32(f32(-1f) * -163f))), true, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 52992i, u_input.b, u_input.b), -vec4<i32>(u_input.b, -6776i, 9664i, -21337i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(var_0.x, 31u)]))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x)));
    let var_2 = -countOneBits(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, 1i), -vec2<i32>(u_input.b, 0i)), vec2<i32>(-2147483647i, -var_1.b.d.b.x)));
    var var_3 = var_1.a.d;
    var var_4 = reverseBits(~u_input.d);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.b.x))))) * 1052f));
    let var_6 = Struct_4(~(~vec3<u32>(_wgslsmith_mod_u32(var_1.a.a.x, 13224u), abs(u_input.d), ~var_0.x)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(var_2, abs(var_2), -1i), (var_3.a.wxx & var_1.a.d.a.yyz) & firstTrailingBit(vec3<i32>(var_2, var_3.a.x, 26008i))), var_3.a.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-350f, var_1.b.b.x)))) - -316f), firstTrailingBit(_wgslsmith_clamp_i32(1i, 53599i, -7216i)), vec3<u32>((max(var_0.x, var_6.a.x) << (firstLeadingBit(var_6.a.x) % 32u)) >> (~select(var_6.a.x, var_6.a.x, var_1.b.c) % 32u), var_1.a.a.x, 0u));
}

