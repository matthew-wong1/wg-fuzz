struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(5508u, vec3<i32>(i32(-2147483648), -1i, -1i)), 51706i, Struct_1(1u, vec3<i32>(46640i, 0i, 11253i)), Struct_1(49364u, vec3<i32>(-1i, 1i, 0i)), vec2<u32>(0u, 1u)), Struct_2(Struct_1(0u, vec3<i32>(2147483647i, 0i, -21652i)), 15232i, Struct_1(72296u, vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_1(86343u, vec3<i32>(2147483647i, 2147483647i, -636i)), vec2<u32>(0u, 14604u)), Struct_2(Struct_1(113211u, vec3<i32>(-1i, 1i, -20561i)), 6400i, Struct_1(54701u, vec3<i32>(-58139i, 1i, 1i)), Struct_1(7355u, vec3<i32>(1i, -34768i, 21158i)), vec2<u32>(48541u, 11021u)), Struct_2(Struct_1(4294967295u, vec3<i32>(0i, 2147483647i, 18767i)), 2147483647i, Struct_1(0u, vec3<i32>(0i, 1i, 1i)), Struct_1(19736u, vec3<i32>(70546i, 1i, 2147483647i)), vec2<u32>(4294967295u, 72880u)), Struct_2(Struct_1(20461u, vec3<i32>(1i, i32(-2147483648), 2147483647i)), 15277i, Struct_1(0u, vec3<i32>(2147483647i, 30174i, -1i)), Struct_1(24532u, vec3<i32>(9446i, 1i, -44401i)), vec2<u32>(4294967295u, 52968u)), Struct_2(Struct_1(7626u, vec3<i32>(i32(-2147483648), 2147483647i, 7747i)), 48036i, Struct_1(16253u, vec3<i32>(3518i, -49000i, i32(-2147483648))), Struct_1(1u, vec3<i32>(-53676i, -1i, 0i)), vec2<u32>(29604u, 36100u)), Struct_2(Struct_1(17047u, vec3<i32>(-1i, -1i, i32(-2147483648))), 1i, Struct_1(32104u, vec3<i32>(-1i, -51290i, i32(-2147483648))), Struct_1(1u, vec3<i32>(-47122i, 689i, -6842i)), vec2<u32>(50911u, 0u)), Struct_2(Struct_1(46547u, vec3<i32>(26035i, 1i, -19180i)), 0i, Struct_1(0u, vec3<i32>(-1i, -323i, i32(-2147483648))), Struct_1(30267u, vec3<i32>(-66413i, 1i, 1i)), vec2<u32>(0u, 1u)), Struct_2(Struct_1(77941u, vec3<i32>(i32(-2147483648), 0i, 1i)), 1i, Struct_1(56618u, vec3<i32>(27184i, i32(-2147483648), 32201i)), Struct_1(0u, vec3<i32>(2147483647i, -17526i, i32(-2147483648))), vec2<u32>(81790u, 1u)), Struct_2(Struct_1(1u, vec3<i32>(-9401i, -1i, 0i)), 58248i, Struct_1(43927u, vec3<i32>(2147483647i, -13927i, 18757i)), Struct_1(18489u, vec3<i32>(-1i, -1i, -1i)), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(1765u, vec3<i32>(2147483647i, 1i, 4712i)), i32(-2147483648), Struct_1(4294967295u, vec3<i32>(-12114i, 11544i, i32(-2147483648))), Struct_1(1u, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), vec2<u32>(0u, 1752u)), Struct_2(Struct_1(4294967295u, vec3<i32>(-76949i, 2147483647i, -1i)), -9540i, Struct_1(4294967295u, vec3<i32>(24606i, -23778i, 10423i)), Struct_1(7308u, vec3<i32>(9697i, -12595i, 2176i)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(4294967295u, vec3<i32>(0i, -51334i, 0i)), 33381i, Struct_1(73748u, vec3<i32>(-132i, 13847i, i32(-2147483648))), Struct_1(1u, vec3<i32>(-36450i, 51931i, 1i)), vec2<u32>(4294967295u, 45451u)), Struct_2(Struct_1(43444u, vec3<i32>(51235i, -26806i, i32(-2147483648))), 0i, Struct_1(1u, vec3<i32>(16785i, -1330i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(40506i, 1i, -15828i)), vec2<u32>(56290u, 7660u)), Struct_2(Struct_1(1u, vec3<i32>(-591i, 50253i, i32(-2147483648))), -58373i, Struct_1(0u, vec3<i32>(-34012i, i32(-2147483648), 30101i)), Struct_1(4294967295u, vec3<i32>(2147483647i, -28880i, i32(-2147483648))), vec2<u32>(1u, 10335u)));

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = min(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(4294967295u, arg_0.a.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.a, 0u), reverseBits(vec2<u32>(arg_0.a.a, 30955u)), vec2<u32>(1u, arg_0.a.a) | vec2<u32>(4294967295u, arg_0.a.a))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<u32>(14864u, 4294967295u, 1u), vec3<u32>(arg_0.a.a, arg_0.a.a, 13859u)), ~vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a)), arg_0.a.a)) ^ _wgslsmith_mult_vec2_u32((~vec2<u32>(38479u, 21459u) ^ (vec2<u32>(arg_0.a.a, 9675u) >> (vec2<u32>(arg_0.a.a, arg_0.a.a) % vec2<u32>(32u)))) ^ select(select(vec2<u32>(arg_0.a.a, arg_0.a.a), vec2<u32>(35035u, arg_0.a.a), true), vec2<u32>(0u, 18059u) ^ vec2<u32>(arg_0.a.a, 0u), true), vec2<u32>(arg_0.a.a, arg_0.a.a | 4294967295u) << (vec2<u32>(_wgslsmith_mult_u32(arg_0.a.a, 1u), firstTrailingBit(1u)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(select(global1.x, global1.x, true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(var_0.x), 47195u), _wgslsmith_sub_u32(reverseBits(arg_0.a.a), _wgslsmith_add_u32(var_0.x, 1u)), _wgslsmith_div_u32(select(arg_0.a.a, var_0.x, true), _wgslsmith_div_u32(arg_0.a.a, 29851u))), vec3<i32>(2147483647i, i32(-1i) * -35424i, arg_0.a.b.x)), -2147483647i, Struct_1(max(93376u, ~4294967295u), _wgslsmith_clamp_vec3_i32(~arg_0.a.b, vec3<i32>(-2147483647i, arg_0.a.b.x, 0i), arg_0.a.b) ^ firstTrailingBit(reverseBits(vec3<i32>(-2147483647i, 0i, arg_0.a.b.x)))), arg_0.a, max(vec2<u32>(arg_0.a.a ^ (arg_0.a.a << (arg_0.a.a % 32u)), 1u ^ (arg_0.a.a | 7511u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.a, 4294967295u, 1u, var_0.x), countOneBits(vec4<u32>(var_0.x, arg_0.a.a, 52036u, 90344u))), arg_0.a.a)));
    let var_3 = Struct_4(Struct_1((~var_2.a.a & 114233u) | var_0.x, vec3<i32>((-1i | arg_0.a.b.x) | countOneBits(var_2.d.b.x), countOneBits(1i), countOneBits(1i))));
    let var_4 = ~abs(arg_0.a.b.zz);
    return 8358u;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = select(vec2<i32>(i32(-1i) * -u_input.a.x, 1i), reverseBits(_wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.zw), ~u_input.a.xz)), true);
    let var_1 = Struct_1(4294967295u, ~_wgslsmith_sub_vec3_i32(u_input.a.wzw, u_input.a.ywy));
    global2 = array<vec3<f32>, 30>();
    let var_2 = Struct_2(var_1, -(~(-40004i)), Struct_1(~func_3(Struct_4(Struct_1(var_1.a, vec3<i32>(-48645i, arg_2, 2147483647i)))), u_input.a.wyx), Struct_1(var_1.a, var_1.b), vec2<u32>(_wgslsmith_div_u32(var_1.a, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 66971u), vec3<u32>(36650u, var_1.a, 13592u)))), 4294967295u));
    var var_3 = !any(vec3<bool>(false, false, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1, arg_1, -2147483647i), u_input.a) > -47846i));
    return Struct_4(Struct_1(~1u, ~var_2.a.b >> (~(vec3<u32>(4294967295u, arg_3.x, arg_3.x) ^ vec3<u32>(var_1.a, arg_3.x, var_2.d.a)) % vec3<u32>(32u))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec4_i32(firstLeadingBit(u_input.a), _wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(0i, u_input.a.x, arg_1.x, 0i)), u_input.a, ~(-u_input.a | vec4<i32>(2348i, arg_2.a.b.x, arg_2.a.b.x, 1849i))));
    var var_1 = global1.x;
    var var_2 = arg_2;
    global2 = array<vec3<f32>, 30>();
    var var_3 = select(vec2<bool>(any(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_3.x, true, arg_3.x, false), select(arg_3.x, true, true))), arg_0), arg_3, arg_0);
    return Struct_3(false, abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.wy, vec2<i32>(-8300i, -2147483647i)), u_input.a.yw | vec2<i32>(-26114i, 2147483647i)), vec2<i32>(arg_1.x & u_input.a.x, u_input.a.x))), 469f, arg_2.a.a);
}

fn func_5(arg_0: Struct_3) -> i32 {
    global2 = array<vec3<f32>, 30>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_0.d), vec4<u32>(4294967295u, arg_0.d, 4294967295u, 18194u))), reverseBits(firstTrailingBit(vec3<i32>(-13479i, u_input.a.x, -26360i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(35682u, 0u, 0u), vec3<u32>(arg_0.d, arg_0.d, arg_0.d)) % vec3<u32>(32u)))), -u_input.a.x, func_2(global1.x, countOneBits(_wgslsmith_clamp_i32(44046i, -4462i, u_input.a.x) | -2147483647i), max(-37227i, -29765i >> (reverseBits(arg_0.d) % 32u)), select(abs(vec2<u32>(arg_0.d, 44420u)), _wgslsmith_mult_vec2_u32(vec2<u32>(80135u, 4294967295u), vec2<u32>(arg_0.d, 4294967295u)), !vec2<bool>(arg_0.a, arg_0.a)) & ~abs(vec2<u32>(arg_0.d, 4294967295u))).a, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))), 0i, -2147483647i, countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.d, arg_0.d, 0u), vec4<u32>(58596u, arg_0.d, arg_0.d, arg_0.d)), ~arg_0.d))).a, _wgslsmith_add_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.d), vec2<u32>(60298u, arg_0.d)), select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, arg_0.d), vec2<bool>(arg_0.a, true))) >> (vec2<u32>(118865u, arg_0.d) % vec2<u32>(32u)), ~firstLeadingBit(~vec2<u32>(arg_0.d, arg_0.d))));
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2409f, _wgslsmith_f_op_f32(arg_0.c * 219f), global1.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1037f))))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-arg_0.c))))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~59066u, ~0u), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.e), reverseBits(var_0.e))), 30u)])));
    var_0 = global0[_wgslsmith_index_u32(~44049u, 15u)];
    return -arg_0.b ^ (~(-2147483647i) << (func_2(_wgslsmith_f_op_f32(-569f * _wgslsmith_f_op_f32(-arg_0.c)), -arg_0.b ^ (i32(-1i) * -46981i), var_0.d.b.x, vec2<u32>(max(11269u, 4294967295u), _wgslsmith_div_u32(var_0.d.a, var_0.d.a))).a.a % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    var var_1 = ~(~min(4294967295u, 1u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 415f, -678f, _wgslsmith_f_op_f32(floor(global1.x)));
    return Struct_1(4294967295u, vec3<i32>(~(-u_input.a.x), u_input.a.x, func_5(func_4(true, vec3<i32>(15626i, u_input.a.x, 1i), func_2(var_0, u_input.a.x, -22721i, vec2<u32>(0u, 4294967295u)), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1798f));
    let var_1 = Struct_2(func_1(), u_input.a.x, func_2(var_0, u_input.a.x, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x + 374f))), -51670i, -1i, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(49549u, 17024u))).a.b.x, vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))).a, func_1(), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, 1u), ~firstTrailingBit(vec2<u32>(1u, 1u)), var_0 == -896f), vec2<u32>(0u, select(20953u, 17345u, false) & abs(76273u)), vec2<u32>(~firstLeadingBit(30068u), 52444u)));
    var var_2 = func_4(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), var_1.d.a != 1u)) || all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false)), -abs(select(vec3<i32>(-13980i, u_input.a.x, 2395i), select(var_1.c.b, u_input.a.wzx, vec3<bool>(false, false, true)), vec3<bool>(false, false, false))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(1000f - -1446f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), 54662i, firstTrailingBit(u_input.a.x), firstTrailingBit(vec2<u32>(1u, var_1.d.a))), vec2<bool>(true, !any(vec2<bool>(true, true))));
    let var_3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_1.c.a, 4294967295u, var_1.a.a), var_1.d.a, 4294967295u), vec3<u32>(0u, var_1.d.a, 4294967295u) & ~vec3<u32>(1u, var_2.d, 60127u)));
    global2 = array<vec3<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e);
}

