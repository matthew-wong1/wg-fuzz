struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: Struct_1;

var<private> global2: u32 = 20489u;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(-2566i, -78759i), -6496i, vec2<u32>(20554u, 0u), vec4<bool>(true, true, false, false), vec2<f32>(441f, 1343f)), Struct_1(vec2<i32>(-5873i, i32(-2147483648)), -1i, vec2<u32>(63676u, 1u), vec4<bool>(true, false, false, false), vec2<f32>(1837f, -1988f)), Struct_1(vec2<i32>(-12599i, -1197i), i32(-2147483648), vec2<u32>(0u, 0u), vec4<bool>(true, false, true, false), vec2<f32>(-919f, -422f)), Struct_1(vec2<i32>(-25942i, 2147483647i), 1i, vec2<u32>(31846u, 4416u), vec4<bool>(true, false, false, true), vec2<f32>(482f, -919f)), Struct_1(vec2<i32>(34577i, -16612i), 1i, vec2<u32>(1u, 29256u), vec4<bool>(false, true, false, false), vec2<f32>(1179f, 1735f)), Struct_1(vec2<i32>(2073i, -33880i), 30303i, vec2<u32>(16426u, 65078u), vec4<bool>(true, false, true, true), vec2<f32>(1988f, 1095f)), Struct_1(vec2<i32>(2147483647i, -1i), -202i, vec2<u32>(1u, 1u), vec4<bool>(true, false, false, false), vec2<f32>(-799f, -257f)), Struct_1(vec2<i32>(2147483647i, -646i), 0i, vec2<u32>(1u, 1u), vec4<bool>(true, true, true, false), vec2<f32>(804f, -1000f)), Struct_1(vec2<i32>(38428i, 0i), 0i, vec2<u32>(23664u, 0u), vec4<bool>(false, true, false, true), vec2<f32>(563f, -1362f)), Struct_1(vec2<i32>(-101604i, i32(-2147483648)), 2147483647i, vec2<u32>(37243u, 1u), vec4<bool>(false, false, false, true), vec2<f32>(670f, 1603f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> i32 {
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x));
    var var_1 = Struct_1(-(arg_1.zy ^ -global1.a), arg_1.x, ~vec2<u32>(u_input.a.x, 56836u), vec4<bool>(true, true, -_wgslsmith_clamp_i32(global1.b, arg_0, 0i) >= -35725i, !all(!vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x))), global1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1778f, var_1.e.x, 1103f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-2277f)), _wgslsmith_f_op_f32(step(-603f, -633f)), _wgslsmith_f_op_f32(f32(-1f) * -326f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.e.x, global0[_wgslsmith_index_u32(var_1.c.x, 11u)], -1764f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, var_1.e.x, global0[_wgslsmith_index_u32(u_input.d, 11u)]) * vec3<f32>(194f, global0[_wgslsmith_index_u32(0u, 11u)], -169f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, _wgslsmith_f_op_f32(round(-723f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(460f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]), true))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -1082f) - vec3<f32>(1678f, 602f, global0[_wgslsmith_index_u32(u_input.d, 11u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(410f, global1.e.x, 193f), vec3<f32>(-930f, global1.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), global1.d.wxy)))))))));
    var var_3 = vec3<bool>((false == (-global1.b >= 1i)) && (357f < _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.c.x, 11u)])))), !(var_1.d.x && any(global1.d.xz)), false);
    return -5699i;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, 1716f, -630f))))), vec3<f32>(_wgslsmith_f_op_f32(round(2261f)), -888f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.x, 11u)]))), 2255f))), select(all(!(!arg_1.d.zww)), global1.d.x, false)));
    let var_1 = arg_2.d.x;
    var var_2 = Struct_1(vec2<i32>(abs(-arg_1.a.x), ~(-arg_1.a.x)), _wgslsmith_clamp_i32(countOneBits(-global1.b), global1.b, ~(-global1.a.x ^ (11980i >> (arg_2.c.x % 32u)))), abs(~arg_0.zz), select(!(!select(vec4<bool>(false, false, true, true), arg_2.d, arg_1.d)), select(select(arg_1.d, !arg_2.d, any(global1.d)), vec4<bool>(var_1, select(var_1, false, false), true, all(arg_2.d.xw)), select(global1.d, select(arg_1.d, vec4<bool>(true, global1.d.x, true, false), arg_2.d), var_1)), all(vec4<bool>(true, !arg_2.d.x, true, any(arg_2.d.yyw)))), var_0.zz);
    let var_3 = vec2<u32>(103318u, 38124u);
    global0 = array<f32, 11>();
    return global3[_wgslsmith_index_u32(arg_2.c.x, 10u)];
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = func_3(~u_input.c, global3[_wgslsmith_index_u32(92424u, 10u)], Struct_1(vec2<i32>(u_input.b >> (global1.c.x % 32u), 0i) >> (u_input.c.yy % vec2<u32>(32u)), reverseBits(min(func_2(u_input.b, vec4<i32>(global1.b, 1i, u_input.b, 29536i)), global1.b)), ~select(~vec2<u32>(global1.c.x, 36742u), abs(arg_0.zz), select(global1.d.zy, global1.d.ww, true)), global1.d, global1.e));
    return ~(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 1u)) << (~u_input.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(global1.a.x, -2147483647i), _wgslsmith_div_i32(~(~global1.a.x), _wgslsmith_sub_i32(global1.a.x, -79286i >> (u_input.a.x % 32u))) >> (u_input.a.x % 32u), ~_wgslsmith_clamp_vec2_u32(~(global1.c & vec2<u32>(118840u, 19309u)), _wgslsmith_sub_vec2_u32(~u_input.c.yy, vec2<u32>(18233u, 4294967295u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.c.x, 1u), global1.c)), global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.e, _wgslsmith_f_op_vec2_f32(-global1.e))));
    var var_1 = Struct_1(global1.a, _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(global1.b, -u_input.b, -7910i), -u_input.b), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.b, 1i), i32(-1i) * -18904i)), ~var_0.c << (vec2<u32>(~u_input.c.x ^ _wgslsmith_clamp_u32(global1.c.x, 37042u, u_input.a.x), var_0.c.x << (func_1(vec4<u32>(u_input.a.x, global1.c.x, var_0.c.x, 60444u)) % 32u)) % vec2<u32>(32u)), !(!vec4<bool>(!global1.d.x, !global1.d.x, global1.d.x, u_input.a.x <= 23076u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1556f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global1.e.x) + vec2<f32>(-226f, var_0.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.c.x, 11u)], 594f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, _wgslsmith_div_u32(var_0.c.x >> (1u % 32u), var_0.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_1.c.x), ~global1.c.x, 1u), _wgslsmith_sub_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(var_0.c.x, u_input.d, var_1.c.x))), vec3<u32>(65082u, u_input.d, ~4294967295u))), -min(vec3<i32>(-var_1.b, 7846i, ~var_0.b), vec3<i32>(2147483647i, ~(-1i), -42619i)), min(~(u_input.c ^ vec3<u32>(6694u, 4294967295u, u_input.c.x)), u_input.c), abs(_wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, 0u, var_1.c.x, u_input.d) >> (vec4<u32>(0u, var_0.c.x, 2664u, 1u) % vec4<u32>(32u))), vec4<u32>(1u, reverseBits(var_1.c.x), var_0.c.x, 4294967295u))), ~(~min(~vec4<u32>(0u, u_input.c.x, var_1.c.x, 1u), vec4<u32>(var_1.c.x, var_0.c.x, var_1.c.x, 1u))));
}

