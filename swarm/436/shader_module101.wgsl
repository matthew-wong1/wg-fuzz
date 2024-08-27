struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, false, true, true, false, true, true, true, true, false, false, false, true, false, true, false, true, true, true, true, true, true);

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, -43830i, 14469i, -101056i), vec4<i32>(i32(-2147483648), -14278i, 2147483647i, 2147483647i), vec4<i32>(-1337i, 45531i, 1i, -25332i), vec4<i32>(2147483647i, -44702i, 46941i, 50593i), vec4<i32>(-33003i, 1i, -73999i, 27306i), vec4<i32>(-1i, 5751i, -4223i, 14600i), vec4<i32>(-34188i, -1i, 1i, i32(-2147483648)), vec4<i32>(0i, -1i, -20066i, 16584i), vec4<i32>(-37699i, 0i, i32(-2147483648), 4836i), vec4<i32>(i32(-2147483648), 27828i, -28816i, -10767i), vec4<i32>(6942i, -39125i, i32(-2147483648), -1i), vec4<i32>(19108i, 0i, -32216i, -10772i), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -86483i), vec4<i32>(40298i, -34481i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 1i, 16941i, -8350i), vec4<i32>(0i, 24216i, -18566i, -1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    global2 = array<vec4<i32>, 17>();
    let var_0 = Struct_3(Struct_1(vec2<bool>(true, !arg_1)), u_input.e.xz);
    var var_1 = Struct_5(countOneBits(4294967295u), Struct_2(vec2<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)], false, false), vec3<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a.x)), !global0[_wgslsmith_index_u32(global1.x, 22u)]), var_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 1u, u_input.b), global1.yxw)), reverseBits(vec3<u32>(u_input.b, u_input.a.x, arg_0)))));
    var var_2 = 1u;
    var var_3 = Struct_4(global1.x, var_0, vec3<bool>((1i << (~u_input.b % 32u)) != 1i, select(all(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0, 22u)]), vec3<bool>(true, var_1.b.b.a.x, var_0.a.a.x), vec3<bool>(true, var_1.b.b.a.x, false))), true, any(var_0.a.a)), arg_1), _wgslsmith_clamp_vec4_i32(-(~(vec4<i32>(1i, -4611i, 0i, u_input.e.x) ^ vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, u_input.e.x))), vec4<i32>(abs(-2147483647i), firstTrailingBit(var_0.b.x), u_input.e.x & 2147483647i, select(var_0.b.x, u_input.d.x, var_1.b.b.a.x)) & -abs(global2[_wgslsmith_index_u32(var_1.a, 17u)]), global2[_wgslsmith_index_u32(arg_0 << (85139u % 32u), 17u)]));
    return false;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_5(~(u_input.b | u_input.b), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)] || any(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], true)), func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(60356u, 48471u), vec2<u32>(u_input.a.x, global1.x)), !global0[_wgslsmith_index_u32(4294967295u, 22u)])), Struct_1(select(!vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)], global0[_wgslsmith_index_u32(14621u, 22u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(4804u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec2<bool>(global0[_wgslsmith_index_u32(7949u, 22u)], global0[_wgslsmith_index_u32(global1.x, 22u)])), vec2<bool>(false, false))), countOneBits(countOneBits(~0u))));
    global0 = array<bool, 22>();
    var var_1 = Struct_2(var_0.b.b.a, var_0.b.b, u_input.b);
    let var_2 = Struct_3(Struct_1(select(var_1.b.a, select(select(vec2<bool>(false, false), vec2<bool>(var_0.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 22u)]), true), var_1.a, true), !(!vec2<bool>(var_1.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 22u)])))), u_input.d);
    global2 = array<vec4<i32>, 17>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(arg_0.x));
    var var_1 = _wgslsmith_clamp_vec4_i32(~global2[_wgslsmith_index_u32((global1.x >> (u_input.a.x % 32u)) | _wgslsmith_dot_vec3_u32(global1.xxx, ~global1.xww), 17u)], global2[_wgslsmith_index_u32(countOneBits(~((arg_2 & u_input.a.x) | 92779u)), 17u)], abs(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(global1.zzw), ~vec3<u32>(arg_2, global1.x, arg_2)), 17u)]));
    let var_2 = vec3<i32>(var_1.x, countOneBits(~arg_1), ~(-firstLeadingBit(-6419i)) << (countOneBits(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a), global1.x & 0u, global0[_wgslsmith_index_u32(1u, 22u)])) % 32u));
    global0 = array<bool, 22>();
    global2 = array<vec4<i32>, 17>();
    return Struct_1(!select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true), vec2<bool>(false, false)), !vec2<bool>(global0[_wgslsmith_index_u32(21854u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]), all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(12482u, 22u)], global0[_wgslsmith_index_u32(arg_2, 22u)]))), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(func_2()), u_input.e.x, 27644u), countOneBits(_wgslsmith_div_vec2_i32(select(-u_input.e.yy, ~u_input.e.zz, select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)], arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false))), _wgslsmith_mult_vec2_i32(u_input.e.yy, select(vec2<i32>(u_input.c, u_input.e.x), vec2<i32>(-1i, u_input.e.x), vec2<bool>(arg_0, true))))));
    var var_1 = Struct_4(_wgslsmith_div_u32(global1.x, 60004u), Struct_3(Struct_1(!vec2<bool>(true, arg_0)), -u_input.e.zx), vec3<bool>(!(!(u_input.d.x <= -1i)), arg_0, false), vec4<i32>(-2539i, max(_wgslsmith_div_i32(firstLeadingBit(11701i), ~(-15692i)), u_input.e.x), _wgslsmith_clamp_i32(~(2147483647i ^ u_input.e.x), -1i, select(u_input.d.x & 40864i, ~var_0.b.x, var_0.a.a.x)), ~(var_0.b.x >> ((1u | u_input.a.x) % 32u))));
    var var_2 = Struct_5(5965u, Struct_2(vec2<bool>(!any(vec4<bool>(true, var_1.b.a.a.x, true, true)), var_0.a.a.x || true), func_4(vec2<f32>(_wgslsmith_f_op_f32(round(-245f)), -1311f), reverseBits(-1i), ~(56899u ^ u_input.b)), global1.x));
    let var_3 = Struct_3(var_1.b.a, var_0.b);
    var var_4 = _wgslsmith_add_u32(~global1.x, u_input.a.x);
    return var_2.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    global0 = array<bool, 22>();
    var var_0 = arg_2.a.x;
    var var_1 = arg_2;
    var var_2 = arg_1.x;
    var var_3 = vec3<bool>(func_1(var_1.b.a.x & (false | (false != var_1.b.a.x))).b.a.x, all(vec3<bool>(var_1.b.a.x, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, arg_2.c), 22u)], true)), arg_2.b.a.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1126f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(max(firstTrailingBit(u_input.e), vec3<i32>(~0i, countOneBits(-47421i), _wgslsmith_add_i32(-u_input.c, -6638i))), u_input.e);
    var var_1 = -121f;
    global2 = array<vec4<i32>, 17>();
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(vec4<i32>(u_input.e.x, -2147483647i, 33837i, 36438i), ~vec3<i32>(var_0.x, 9116i, 33511i), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)]))), 1105f)))));
    let var_2 = Struct_4(abs(0u), Struct_3(func_1(global0[_wgslsmith_index_u32(37968u, 22u)] || select(false, global0[_wgslsmith_index_u32(4294967295u, 22u)], false)).b, vec2<i32>(-6350i, 1i)), !select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(83648u, 22u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 22u)])), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], false, global0[_wgslsmith_index_u32(u_input.b, 22u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 22u)], false, true))), vec3<bool>(var_0.x == -2507i, false, global0[_wgslsmith_index_u32(max(u_input.b, 47660u), 22u)]), vec3<bool>(false, false, true)), ~(-min(-global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(global1.x | 46759u, 17u)])));
    var_1 = -582f;
    var_0 = firstTrailingBit(var_2.d.ywz) >> (vec3<u32>(_wgslsmith_add_u32(global1.x, ~u_input.a.x), 4294967295u, var_2.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-961f)) * _wgslsmith_f_op_f32(597f * 181f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1044f - -592f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2028f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f))));
}

