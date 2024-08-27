struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec4<bool>, 26>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(22926i, 0i, 40425i), vec3<i32>(7827i, 0i, 24752i), vec3<i32>(26448i, 0i, 11220i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(45180i, -18131i, 44841i), vec3<i32>(i32(-2147483648), -40660i, i32(-2147483648)), vec3<i32>(39953i, 24728i, -3289i), vec3<i32>(i32(-2147483648), -20770i, -695i), vec3<i32>(2147483647i, -26455i, 34901i), vec3<i32>(35058i, i32(-2147483648), 1i), vec3<i32>(24055i, 0i, 54336i), vec3<i32>(2147483647i, 22775i, i32(-2147483648)), vec3<i32>(23819i, -14925i, -25033i), vec3<i32>(-27836i, -49895i, -17504i), vec3<i32>(16476i, 1i, 2796i), vec3<i32>(0i, -35456i, 2147483647i), vec3<i32>(37656i, -1i, -10472i), vec3<i32>(16464i, 79592i, 20091i), vec3<i32>(-78111i, -1220i, 5874i), vec3<i32>(-53939i, -1044i, -68412i), vec3<i32>(i32(-2147483648), -1i, -23824i), vec3<i32>(i32(-2147483648), -18703i, -5262i));

var<private> global3: f32 = -219f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = u_input.e;
    let var_1 = Struct_1(2147483647i, _wgslsmith_mod_vec3_u32(u_input.b.yzx, _wgslsmith_clamp_vec3_u32(u_input.b.wzz | _wgslsmith_mod_vec3_u32(u_input.b.wxx, u_input.b.zxw), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<u32>(0u, 36015u, u_input.b.x), u_input.b.yxw)), vec2<u32>(firstTrailingBit(8277u), _wgslsmith_mult_u32(47855u, ~u_input.b.x & 37739u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, 2244f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(437f)), 431f))));
    global2 = array<vec3<i32>, 22>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 29u)];
    var var_3 = firstTrailingBit(-countOneBits(select(_wgslsmith_div_i32(var_2.a, 13462i), countOneBits(-2147483647i), true)));
    return max(countOneBits(firstTrailingBit(vec2<u32>(~44164u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.c.x, 4294967295u), var_2.b)))), var_2.b.zy);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(43002u, u_input.b.x), firstLeadingBit(~(~0u))), 29u)];
    let var_1 = vec2<i32>(select(abs(-var_0.a | 0i), -(u_input.c & var_0.a), true), _wgslsmith_mod_i32(25797i, 2147483647i) | _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a, 6358i, var_0.a), min(vec4<i32>(1i, 0i, -2147483647i, u_input.c), vec4<i32>(u_input.a, 38491i, -36843i, u_input.d)))));
    let var_2 = global0[_wgslsmith_index_u32(~countOneBits(~27747u), 29u)];
    let var_3 = abs(~_wgslsmith_add_vec2_u32(var_2.b.zz, reverseBits(vec2<u32>(u_input.b.x, var_0.b.x))));
    let var_4 = Struct_1(30344i, reverseBits(~_wgslsmith_div_vec3_u32(var_2.b, var_2.b)) ^ vec3<u32>(var_3.x, var_0.c.x, 1u), ~func_3(521i & _wgslsmith_div_i32(0i, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.d)) + vec2<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -148f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-564f)), arg_1.x))));
    return select(vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false)))), true, true, any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, var_4.d.x >= arg_1.x, all(vec4<bool>(true, true, false, true)) == select(true, true, false)), false);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = min(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(select(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_3.xww), _wgslsmith_div_vec3_i32(vec3<i32>(-41443i, -9296i, arg_1.x), vec3<i32>(-1115i, 0i, 0i))))), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-80723i, arg_1.x, -15841i), vec3<i32>(11181i, -1i, 2147483647i)), abs(vec3<i32>(u_input.a, 2147483647i, u_input.a))), vec3<i32>(-2147483647i, -arg_0, ~10706i)), 7789i));
    let var_1 = u_input.e.yy;
    return vec2<bool>(true, true);
}

fn func_1() -> vec4<f32> {
    var var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec2<bool>(true, true)))), select(vec2<bool>(true || select(true, false, false), 1i <= (u_input.d & -2147483647i)), func_4(i32(-1i) * -40717i, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -17586i, 2147483647i), vec3<i32>(-2147483647i, 1i, u_input.e.x)), min(-1i, u_input.e.x)), 683f, func_2(-u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-741f, 1261f)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), _wgslsmith_f_op_f32(step(381f, -273f)) >= -317f)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), true));
    var var_1 = vec2<i32>(u_input.d, -u_input.d) >> (u_input.b.wy % vec2<u32>(32u));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    var_0 = func_4(i32(-1i) * -105063i, abs(select(~u_input.e.xy, ~vec2<i32>(var_1.x, -48221i), true)), var_2.d.x, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(16151u, u_input.b.x), 26u)]);
    var_0 = !select(!select(!vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true))), vec2<bool>(true, true), var_0.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_2.d.x, -501f, -2094f) * vec4<f32>(-697f, -677f, var_2.d.x, 165f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, -640f, -411f, var_2.d.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, var_2.d.x, var_2.d.x, 1467f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, var_2.d.x, -1000f, -1559f)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(step(1000f, -865f)), _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d.x, -136f, -1313f, -570f), vec4<f32>(-703f, 1585f, var_2.d.x, var_2.d.x))) + vec4<f32>(var_2.d.x, var_2.d.x, -1445f, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1845f, 1396f, var_2.d.x, var_2.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, 1000f, 1341f, -993f)))))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = array<vec4<bool>, 26>();
    global3 = -1929f;
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    return Struct_1(-(~(-2147483647i)), ~min(vec3<u32>(~arg_0, arg_0, reverseBits(arg_0)), vec3<u32>(15355u, _wgslsmith_mult_u32(arg_0, 12338u), firstLeadingBit(arg_0))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.wy | vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(42151u, arg_0), u_input.b.xz)), firstLeadingBit(~5620u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -650f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(reverseBits(u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(~(~u_input.b.x), u_input.b.x, 39659u), u_input.b.yyy), u_input.b.zx, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-248f, 321f), vec2<f32>(391f, 1393f), vec2<bool>(false, false)))))))));
    var var_1 = func_5(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), select(vec3<bool>(func_2(_wgslsmith_div_i32(-5864i, var_0.a), vec2<f32>(-1272f, var_0.d.x)).x, all(vec2<bool>(true, true)), _wgslsmith_div_f32(2510f, -607f) == _wgslsmith_f_op_f32(-var_0.d.x)), vec3<bool>(false, true, true), false));
    let var_2 = var_1.d;
    global1 = array<vec4<bool>, 26>();
    global1 = array<vec4<bool>, 26>();
    global1 = array<vec4<bool>, 26>();
    var_1 = func_5(~(~(~var_1.b.x) | (0u >> (u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, -119f, var_1.d.x, -211f)))))), !select(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), 28350u < var_0.c.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    let var_3 = var_0.d;
    let var_4 = Struct_1(var_1.a, vec3<u32>(var_0.b.x, 44799u, _wgslsmith_sub_u32(~var_1.b.x, 34739u)), ~(~vec2<u32>(abs(u_input.b.x), func_5(0u, vec4<f32>(var_3.x, var_0.d.x, var_3.x, -1307f), vec3<bool>(true, true, true)).b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2376f, var_2.x))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d), var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.d.x)), var_1.d.x));
}

