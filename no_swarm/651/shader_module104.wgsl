struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<u32>, 25>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(true, _wgslsmith_dot_vec3_i32(reverseBits(~(~vec3<i32>(u_input.a.x, u_input.a.x, 66063i))), abs(reverseBits(u_input.a)) | vec3<i32>(u_input.c & -40203i, -27992i, ~(-2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 753f, global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - -1042f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -195f, global0.x, global0.x) - vec4<f32>(526f, arg_0, global0.x, 1140f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1576f, 633f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2539f, arg_0, 1000f, arg_0)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), -1029f, var_0.c.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.xyy - vec3<f32>(arg_0, -455f, 665f)), var_0.c.yyx)) - _wgslsmith_f_op_vec3_f32(-var_0.c.wyz)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(1944f))))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(2147483647i, 0i, -u_input.a.x), abs(-72897i), ~12611i) >> (~global1[_wgslsmith_index_u32(u_input.b.x, 25u)] % vec4<u32>(32u)), -19416i, u_input.b.x);
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))))) > global0.x, u_input.c, var_0.c);
    global2 = array<Struct_1, 22>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.x, 679f)), _wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -840f, 1267f) + var_1.a)))), -204f, vec4<i32>(u_input.a.x, _wgslsmith_div_i32(firstTrailingBit(0i), 1i), _wgslsmith_clamp_i32(-(var_1.c.x >> (var_1.e % 32u)), -36628i, ~var_1.d), ~var_1.c.x), _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(abs(2147483647i), ~0i, firstTrailingBit(6332i))), _wgslsmith_div_i32((-37686i ^ var_0.b) >> (~32518u % 32u), -2147483647i)), 62321u);
    return ~(~(firstTrailingBit(countOneBits(4294967295u)) >> (_wgslsmith_dot_vec2_u32(u_input.b, firstLeadingBit(u_input.b)) % 32u)));
}

fn func_2() -> bool {
    global1 = array<vec4<u32>, 25>();
    var var_0 = Struct_2(~0u > ((_wgslsmith_add_u32(u_input.b.x, 4294967295u) ^ u_input.b.x) >> (func_3(_wgslsmith_f_op_f32(min(global0.x, global0.x))) % 32u)), _wgslsmith_sub_i32(u_input.a.x, -36936i), vec4<f32>(500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-354f + 420f), _wgslsmith_f_op_f32(abs(global0.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(floor(global0.x))))), global0.x));
    global1 = array<vec4<u32>, 25>();
    var var_1 = global0.x;
    let var_2 = vec2<f32>(-1000f, var_0.c.x);
    return var_0.b > var_0.b;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec3<bool>(!(!(global0.x >= 1000f) || true), !(select(true, true, any(vec3<bool>(true, false, true))) & func_2()), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(16852i, 23284i, true) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -35121i, -19994i, 0i), vec4<i32>(u_input.c, u_input.a.x, 0i, u_input.a.x)))));
    var var_1 = reverseBits(_wgslsmith_sub_u32(~1103u, arg_0) | ~(~arg_0));
    global2 = array<Struct_1, 22>();
    var_1 = _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], vec4<u32>(abs(abs(3229u)), 44973u, u_input.d, 1u));
    var_1 = 0u;
    return Struct_2(var_0.x, -_wgslsmith_mult_i32(_wgslsmith_add_i32(reverseBits(u_input.a.x), u_input.c), reverseBits(1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-294f, -2237f, 735f, global0.x), vec4<f32>(global0.x, 1950f, global0.x, -399f))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = -810f;
    var var_1 = _wgslsmith_f_op_f32(arg_0.c.x + -797f);
    let var_2 = firstLeadingBit(93782u);
    global1 = array<vec4<u32>, 25>();
    var var_3 = global2[_wgslsmith_index_u32(1u, 22u)];
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-929f - -224f), -440f, _wgslsmith_f_op_f32(min(481f, arg_0.c.x))))), vec3<f32>(var_3.a.x, var_3.a.x, 1300f)), _wgslsmith_f_op_f32(abs(292f)), min(vec4<i32>(12118i, ~0i, -1i, abs(1i)) << (global1[_wgslsmith_index_u32(1u, 25u)] % vec4<u32>(32u)), vec4<i32>(max(select(u_input.c, u_input.a.x, arg_0.a), var_3.d), -u_input.c, u_input.c, var_3.c.x)), countOneBits(var_3.c.x), 1u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = ~arg_0.c.xx;
    let var_2 = Struct_2(((~arg_3.b < _wgslsmith_sub_i32(var_1.x, 1i)) & func_2()) != any(arg_1.yy), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_3.c)))));
    let var_3 = Struct_2(false, max(reverseBits(-arg_3.b), -1i) << (~(~firstTrailingBit(arg_0.e)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-278f, arg_0.a.x, false))) - _wgslsmith_f_op_f32(353f + 297f)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(sign(584f)), var_2.c.x));
    var var_4 = global2[_wgslsmith_index_u32(arg_0.e, 22u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f + var_2.c.x) - _wgslsmith_f_op_f32(round(global0.x)))) * arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~min(u_input.c, u_input.c) ^ u_input.c, u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x))), global0.x)));
    var var_1 = vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, ~u_input.b.x);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, -528f))))) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 1000f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, 256f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-208f, -281f), vec2<f32>(2099f, global0.x), vec2<bool>(true, true))))))), vec2<f32>(_wgslsmith_f_op_f32(func_5(func_4(func_1(1u), 1604f, ~vec2<u32>(var_1.x, 4294967295u), reverseBits(0u)), vec4<bool>(any(vec3<bool>(false, true, false)), true, false, u_input.b.x >= 4294967295u), global0.x, func_1(17u))), _wgslsmith_f_op_f32(1052f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f - global0.x) * _wgslsmith_f_op_f32(floor(512f))))));
    var var_2 = select(!vec2<bool>(func_1(~4294967295u).a, !select(true, false, true)), select(vec2<bool>(select(false, true, all(vec4<bool>(false, false, true, false))), !any(vec2<bool>(false, true))), !vec2<bool>(all(vec4<bool>(false, false, true, true)), true), !vec2<bool>(true, func_2())), true);
    var_2 = !vec2<bool>(var_2.x, !var_2.x);
    var var_3 = select(vec4<bool>(var_2.x, (true && !var_2.x) || false, true, func_1(func_4(func_1(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1219f), u_input.b, 0u).e).a), select(!(!select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false), false)), select(!select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(false, true, false, var_2.x), false), !(!vec4<bool>(var_2.x, var_2.x, false, false)), any(!vec4<bool>(var_2.x, var_2.x, true, true))), !(!(!vec4<bool>(true, false, var_2.x, var_2.x)))), any(vec4<bool>(!(!var_2.x), global0.x != global0.x, all(select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, false, false, true), vec4<bool>(true, var_2.x, var_2.x, false))), global0.x < _wgslsmith_f_op_f32(-global0.x))));
    var var_4 = vec4<i32>(-abs(0i), -(~0i), var_0.x, i32(-1i) * -u_input.c);
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(513f - global0.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -680f))), _wgslsmith_div_f32(-1000f, global0.x), func_4(func_1(var_1.x), func_4(func_1(countOneBits(2333u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), u_input.b, max(var_1.x, firstTrailingBit(0u))).b, ~vec2<u32>(countOneBits(0u), func_4(Struct_2(var_3.x, var_0.x, vec4<f32>(global0.x, global0.x, global0.x, -1000f)), global0.x, vec2<u32>(44821u, var_1.x), var_1.x).e), _wgslsmith_sub_u32(2491u, var_1.x)).c, var_0.x, firstTrailingBit(~func_4(Struct_2(var_2.x, 27638i, vec4<f32>(global0.x, 396f, global0.x, -1331f)), global0.x, min(var_1.zz, u_input.b), ~0u).e));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(~var_1.zwy ^ (vec3<u32>(1u, 16504u, 4294967295u) >> (vec3<u32>(var_5.e, var_5.e, 31877u) % vec3<u32>(32u))), ~vec3<u32>(1u, 4294967295u, 4294967295u), ~(~vec3<u32>(0u, 1u, u_input.b.x))), 4294967295u, vec3<u32>(~1u, 4294967295u, 7358u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_5.b, func_1(_wgslsmith_add_u32(u_input.b.x, 58297u)).c.x), _wgslsmith_div_vec2_f32(var_5.a.yx, vec2<f32>(var_5.a.x, -493f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_5.a.zx * vec2<f32>(-1000f, global0.x)) - _wgslsmith_f_op_vec2_f32(var_5.a.zz + vec2<f32>(-1000f, global0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_5.a.yy))))));
}

