struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(0i, Struct_1(vec4<i32>(-11592i, i32(-2147483648), -49506i, 574i), 0u, false, 464f, 1000f), vec2<i32>(7965i, -11042i), 4294967295u), Struct_3(-7077i, Struct_1(vec4<i32>(2147483647i, -1i, -1i, 1i), 0u, true, 238f, 1581f), vec2<i32>(3816i, i32(-2147483648)), 0u), Struct_3(-28523i, Struct_1(vec4<i32>(37090i, -1i, 1i, -24206i), 63786u, true, -1472f, -274f), vec2<i32>(31319i, -1i), 34517u), Struct_3(-12984i, Struct_1(vec4<i32>(i32(-2147483648), 2386i, -1i, 0i), 43199u, true, -1589f, 2797f), vec2<i32>(-42233i, -27001i), 12993u), Struct_3(-22472i, Struct_1(vec4<i32>(1i, 2147483647i, 32573i, -42420i), 0u, true, -911f, 1232f), vec2<i32>(-1i, 2147483647i), 33423u), Struct_3(-20241i, Struct_1(vec4<i32>(0i, 7603i, 20375i, i32(-2147483648)), 58546u, true, 806f, -579f), vec2<i32>(0i, -20105i), 0u), Struct_3(-8781i, Struct_1(vec4<i32>(1i, -14932i, -1i, -1i), 1u, true, 809f, 424f), vec2<i32>(328i, i32(-2147483648)), 10055u), Struct_3(1i, Struct_1(vec4<i32>(-43922i, -1i, 1i, -22556i), 4294967295u, false, -327f, -1263f), vec2<i32>(-1i, 1i), 2516u), Struct_3(12657i, Struct_1(vec4<i32>(8813i, 13174i, -1i, -1i), 22940u, false, -141f, -394f), vec2<i32>(2147483647i, 2147483647i), 0u), Struct_3(0i, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 0i), 15013u, false, 107f, -510f), vec2<i32>(i32(-2147483648), 1i), 1u), Struct_3(-1i, Struct_1(vec4<i32>(-13202i, 1910i, -1i, -20044i), 4294967295u, false, -966f, -347f), vec2<i32>(0i, 1i), 4294967295u), Struct_3(-6593i, Struct_1(vec4<i32>(-1i, 16693i, -1i, 2179i), 0u, true, -110f, -169f), vec2<i32>(-39864i, -2639i), 4294967295u), Struct_3(27035i, Struct_1(vec4<i32>(37427i, 40703i, -59164i, 18973i), 4294967295u, false, 435f, -714f), vec2<i32>(40923i, i32(-2147483648)), 19300u), Struct_3(0i, Struct_1(vec4<i32>(0i, 1i, 1i, -50768i), 39362u, false, -2466f, 675f), vec2<i32>(-1i, -4033i), 22880u), Struct_3(9234i, Struct_1(vec4<i32>(-19493i, -1i, 2147483647i, -1248i), 1u, false, -1394f, 147f), vec2<i32>(-21634i, 20260i), 12018u), Struct_3(2147483647i, Struct_1(vec4<i32>(18333i, 2147483647i, -14832i, 1i), 90795u, false, 1462f, -1964f), vec2<i32>(i32(-2147483648), -1294i), 25001u), Struct_3(0i, Struct_1(vec4<i32>(-19305i, 76172i, 0i, 33689i), 45991u, true, -252f, -397f), vec2<i32>(-69300i, 49444i), 15167u), Struct_3(1i, Struct_1(vec4<i32>(6407i, 13580i, -83059i, -108950i), 4294967295u, true, -1000f, -430f), vec2<i32>(i32(-2147483648), -1i), 118183u), Struct_3(-1i, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i), 0u, false, 1275f, 688f), vec2<i32>(24537i, i32(-2147483648)), 49316u), Struct_3(16854i, Struct_1(vec4<i32>(1i, 0i, -1i, 77546i), 0u, false, 2504f, -963f), vec2<i32>(-81874i, -27492i), 4294967295u), Struct_3(27655i, Struct_1(vec4<i32>(50571i, 1i, -39772i, -24409i), 4294967295u, true, 1406f, -891f), vec2<i32>(-24001i, 30062i), 0u), Struct_3(-38961i, Struct_1(vec4<i32>(1i, -41785i, -1i, -4692i), 21549u, false, 850f, 294f), vec2<i32>(-1i, 14145i), 102917u), Struct_3(17198i, Struct_1(vec4<i32>(10216i, -40619i, -10600i, -6550i), 9025u, false, -506f, 1502f), vec2<i32>(7111i, -12851i), 4294967295u), Struct_3(-1i, Struct_1(vec4<i32>(0i, -1935i, 68401i, 0i), 114774u, false, -414f, 169f), vec2<i32>(2147483647i, -67820i), 1u));

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 2033i), u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, _wgslsmith_clamp_u32(~0u, abs(~u_input.a.x), arg_0.x)), 20u)], ~vec2<i32>(-26146i, _wgslsmith_add_i32(u_input.b, 52157i) | 12064i), select(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0.x, u_input.c, 60852u), arg_0), ~(arg_0.x >> (arg_0.x % 32u))), u_input.c, true));
    let var_1 = vec4<i32>(4396i, 8474i, u_input.b, -1i) ^ -(select(max(var_0.b.a, vec4<i32>(u_input.b, 1i, u_input.b, -16487i)), var_0.b.a, false) >> (vec4<u32>(arg_0.x, var_0.d, var_0.d, countOneBits(var_0.b.b)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -countOneBits(var_0.b.a.x), 1i, abs(-21701i)), var_1 >> (u_input.a % vec4<u32>(32u))) << (min(~(~(~0u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~70438u, 50373u, 1u), select(_wgslsmith_div_u32(var_0.b.b, 0u), ~29754u, true))) % 32u);
    var var_3 = var_0.b;
    let var_4 = vec3<i32>(-9796i, var_0.b.a.x, u_input.b);
    return 0u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_1, 20>();
    let var_0 = ~select(_wgslsmith_add_u32(~(12810u & arg_1.b.b), func_3(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.b, u_input.c, 1u, 1u), vec4<u32>(877u, u_input.c, u_input.a.x, 22448u)), _wgslsmith_f_op_f32(-1000f * -840f))), ~(~4294967295u), u_input.c > abs(u_input.c));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 563f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(244f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1215f))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.b.a, abs(arg_1.b.a), ~arg_1.b.a), select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & arg_1.b.a, arg_1.b.a, arg_1.b.c && false)), 0u, false, -850f, _wgslsmith_f_op_f32(576f - 158f)));
    return Struct_1(vec4<i32>(0i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.a.x, u_input.b, 2147483647i), ~arg_1.b.a.zwy) | firstLeadingBit(~(-52660i)), -abs(_wgslsmith_add_i32(-6045i, -14115i))), countOneBits(18732u >> (var_2.a.b % 32u)), arg_1.b.c & (any(select(vec2<bool>(arg_1.b.c, true), vec2<bool>(true, var_2.a.c), vec2<bool>(var_2.a.c, false))) & var_2.a.c), var_2.a.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(min(var_2.a.d, _wgslsmith_f_op_f32(sign(var_1.x))))))));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2440f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(374f, _wgslsmith_f_op_f32(-2051f + -293f)), -1577f))));
    let var_1 = !vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global1 = array<Struct_1, 20>();
    var var_2 = Struct_3(1i, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(727f, -1989f, var_0.x, var_0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1170f, -575f, 671f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 854f, var_0.x, -944f) - vec4<f32>(-1063f, 1267f, -616f, 860f)))), global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_div_u32(21940u, min(u_input.a.x, 4294967295u))), 24u)]), firstTrailingBit(~abs(countOneBits(vec2<i32>(u_input.b, u_input.b)))), 1u & u_input.c);
    return Struct_2(global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(933f, var_2.b.e, var_0.x, -267f), vec4<f32>(var_0.x, -253f, var_2.b.e, var_0.x)))))), Struct_3(-29239i, global1[_wgslsmith_index_u32(~var_2.d, 20u)], var_2.c << (abs(u_input.a.zx) % vec2<u32>(32u)), ~u_input.c)).b, 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 24>();
    let var_0 = ~_wgslsmith_add_u32(39832u, u_input.a.x) <= max(select(u_input.c, 0u, any(vec2<bool>(true, false))), firstLeadingBit(~67279u));
    global0 = array<Struct_3, 24>();
    var var_1 = func_1();
    let var_2 = !select(vec3<bool>(true, 0u == func_2(vec4<f32>(var_1.a.e, var_1.a.e, 504f, var_1.a.e), Struct_3(u_input.b, var_1.a, vec2<i32>(2147483647i, u_input.b), 1u)).b, !var_0), vec3<bool>(any(vec2<bool>(true, true)), any(!vec4<bool>(var_0, var_0, true, false)), false), var_1.a.e <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f * var_1.a.e) * _wgslsmith_f_op_f32(-var_1.a.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_1.a.e)));
}

