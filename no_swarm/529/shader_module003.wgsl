struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 49091u, 0u);

var<private> global2: array<u32, 22> = array<u32, 22>(33063u, 0u, 31142u, 0u, 102036u, 46990u, 0u, 27322u, 0u, 28030u, 4294967295u, 0u, 54256u, 1u, 1u, 18163u, 1608u, 1u, 4294967295u, 0u, 12462u, 4294967295u);

var<private> global3: Struct_3;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(max(u_input.a, max(global3.a, countOneBits(global3.a))), max(arg_0.wyx, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), global3.b) >> (arg_0.xzx % vec3<u32>(32u))), global3.c);
    let var_1 = var_0;
    global0 = array<i32, 12>();
    var var_2 = !(!(!(!(!vec2<bool>(var_1.c, global3.c)))));
    global2 = array<u32, 22>();
    return Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global3.b.x, 0u), 22u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-257f, arg_2.x, arg_2.x, -409f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2641f), 1f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, arg_2.x, -439f, arg_2.x) * _wgslsmith_div_vec4_f32(vec4<f32>(377f, arg_2.x, 1000f, 2201f), vec4<f32>(arg_2.x, 1390f, arg_2.x, arg_2.x)))))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_0.b.x, 22u)], 1u)), var_0.b.x), 22u)], vec3<u32>(reverseBits(_wgslsmith_mod_u32(var_0.b.x, 10508u)), 1u, ~global1[_wgslsmith_index_u32(0u, 3u)]) ^ vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(17595u, arg_0.x, global2[_wgslsmith_index_u32(var_0.b.x, 22u)]), global1[_wgslsmith_index_u32(var_0.b.x, 3u)]), 66456u, abs(arg_0.x) | ~4294967295u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = vec2<bool>(true || !arg_0, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(max(68792u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50226u, 3u)], 3u)], 22u)]), 4294967295u), 86681u), 3u)] < 11560u);
    global3 = Struct_3(_wgslsmith_dot_vec3_i32(~(~firstTrailingBit(arg_2)), vec3<i32>(-(~arg_2.x), -arg_2.x, -2147483647i)), ~(global3.b | _wgslsmith_mult_vec3_u32(global3.b, vec3<u32>(81762u, 4294967295u, 0u))) >> (vec3<u32>(0u, ~max(arg_3, arg_3), ~global2[_wgslsmith_index_u32(~arg_3, 22u)]) % vec3<u32>(32u)), global3.c);
    var var_1 = ~(~_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.x, _wgslsmith_sub_i32(u_input.a, -24339i)), 20421i));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(arg_3), ~(select(max(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26682u, 22u)], 3u)], global2[_wgslsmith_index_u32(46930u, 22u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37936u, 1u), vec3<u32>(global3.b.x, 1u, 4294967295u)), true) << (_wgslsmith_dot_vec3_u32(global3.b, func_1(vec4<u32>(arg_3, global1[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(42304u, 22u)], 28851u), -6801i, vec2<f32>(761f, 2335f)).d) % 32u))), 12u)];
    var var_3 = select(_wgslsmith_div_i32(i32(-1i) * -(~0i), reverseBits(max(countOneBits(1i), ~global3.a))), 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global3.b.xz, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global3.b.x, 3u)])), ~arg_3, 26692u), abs(select(global3.b, vec3<u32>(574u, 17440u, global3.b.x), global3.c))) % 32u), var_0.x);
    return select(!vec4<bool>(select(true, var_0.x, any(vec2<bool>(var_0.x, true))), true, false, !select(global3.c, true, true)), select(!select(!vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(global3.c, arg_0, arg_0, global3.c), vec4<bool>(true, false, global3.c, true), vec4<bool>(true, false, var_0.x, false)), vec4<bool>(var_0.x, arg_0, false, false)), vec4<bool>(any(!vec4<bool>(global3.c, true, false, var_0.x)), all(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, global3.c, false), global3.c)), true, arg_0), false), global3.c);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = -_wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global3.a, global3.a, -35811i, -1i), vec4<i32>(-15750i, arg_1, u_input.a, -28747i)), select(reverseBits(vec4<i32>(-2147483647i, global3.a, global3.a, global3.a) & vec4<i32>(u_input.a, -2147483647i, global0[_wgslsmith_index_u32(0u, 12u)], arg_1)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(0u, 12u)], global3.a) >> (vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.a.x, 3u)], 1u, 76296u) % vec4<u32>(32u)), ~vec4<i32>(0i, -2760i, arg_1, global0[_wgslsmith_index_u32(11701u, 12u)])), func_3(true, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1), vec2<i32>(global3.a, u_input.a)), vec3<i32>(arg_1, global0[_wgslsmith_index_u32(0u, 12u)], global3.a), 14534u)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_0.a, 12u)], global0[_wgslsmith_index_u32(arg_0.a, 12u)]), countOneBits(u_input.a), u_input.a, ~u_input.a), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], arg_1, u_input.a, arg_1), vec4<i32>(global3.a, arg_1, -15527i, u_input.a), vec4<i32>(1i, -2147483647i, -2147483647i, -1i))));
    let var_2 = countOneBits(59338u);
    global1 = array<u32, 3>();
    let var_3 = var_1.yww ^ ~(~var_1.xxx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f * _wgslsmith_f_op_f32(arg_0.b.x + -130f)) - _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(-1146f + 521f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 15642u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 22u)], 22u)], 81230u), vec4<u32>(global3.b.x, 4294967295u, 4294967295u, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(38534u, 0u, 34222u, 4254u), vec4<u32>(19578u, 4294967295u, 79433u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.b.x, 3u)], 22u)])) % vec4<u32>(32u))), ~vec4<u32>(global1[_wgslsmith_index_u32(5370u, 3u)], _wgslsmith_div_u32(global3.b.x, global1[_wgslsmith_index_u32(1u, 3u)]), global3.b.x, 4294967295u)), ~(-global0[_wgslsmith_index_u32(~0u, 12u)] << (38821u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1041f))))));
    global2 = array<u32, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x * 979f), _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(func_2(var_0, 1i)), var_0.b.x, _wgslsmith_div_f32(var_0.b.x, 771f)))));
    let var_2 = Struct_3(global3.a, firstTrailingBit(vec3<u32>(~var_0.d.x, select(max(global3.b.x, global3.b.x), ~global1[_wgslsmith_index_u32(global3.b.x, 3u)], !global3.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 21905u, global1[_wgslsmith_index_u32(14141u, 3u)]), vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 22u)], 22u)], 22u)], 3u)], 33441u, 36882u)))), global3.c);
    global0 = array<i32, 12>();
    global3 = var_2;
    global4 = array<Struct_2, 16>();
    global0 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_1.xz, var_0.b.xy))) + _wgslsmith_f_op_vec2_f32(floor(var_0.b.yx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zw - _wgslsmith_f_op_vec2_f32(max(var_1.zx, vec2<f32>(var_1.x, var_0.b.x))))), countOneBits(var_2.b), -311f);
}

