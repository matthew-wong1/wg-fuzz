struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(vec3<i32>(-104712i, 45820i, i32(-2147483648)), vec3<i32>(-16071i, -8664i, 0i), 1198f, vec4<bool>(true, true, true, false)), Struct_5(vec3<i32>(-1i, -4907i, 6509i), vec3<i32>(-1i, -43762i, -1i), 937f, vec4<bool>(true, false, false, false)), Struct_5(vec3<i32>(4453i, 16204i, 31669i), vec3<i32>(-8859i, 48236i, -69921i), 1000f, vec4<bool>(true, true, false, true)), Struct_5(vec3<i32>(2147483647i, 1i, -83i), vec3<i32>(2147483647i, -38155i, 0i), -1303f, vec4<bool>(true, true, false, true)), Struct_5(vec3<i32>(-1i, 1i, -7149i), vec3<i32>(0i, 0i, 0i), 2543f, vec4<bool>(false, false, true, true)), Struct_5(vec3<i32>(-41576i, 53664i, 994i), vec3<i32>(0i, -10406i, 0i), -2867f, vec4<bool>(false, false, false, false)), Struct_5(vec3<i32>(-1i, i32(-2147483648), 45684i), vec3<i32>(i32(-2147483648), 1i, -7930i), 622f, vec4<bool>(true, true, false, false)), Struct_5(vec3<i32>(28250i, -54634i, -6053i), vec3<i32>(5581i, 1i, -1i), 311f, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(1i, -6648i, -22878i), vec3<i32>(-1i, -29555i, -75660i), -351f, vec4<bool>(false, false, true, false)), Struct_5(vec3<i32>(1i, 1i, -3237i), vec3<i32>(i32(-2147483648), 39576i, i32(-2147483648)), 672f, vec4<bool>(true, true, false, true)), Struct_5(vec3<i32>(-1i, 1i, 32854i), vec3<i32>(0i, -2716i, 2147483647i), 457f, vec4<bool>(false, true, false, false)), Struct_5(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, -1i, 7949i), 424f, vec4<bool>(false, false, true, true)), Struct_5(vec3<i32>(i32(-2147483648), -1i, -17907i), vec3<i32>(0i, 2147483647i, 0i), 1785f, vec4<bool>(true, true, true, false)), Struct_5(vec3<i32>(55696i, -1i, i32(-2147483648)), vec3<i32>(0i, -17318i, -53878i), 1081f, vec4<bool>(false, true, false, false)), Struct_5(vec3<i32>(0i, -33826i, -6917i), vec3<i32>(67813i, 1i, 33760i), 1000f, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(16476i, 40180i, 1i), vec3<i32>(4799i, 2147483647i, 20825i), 154f, vec4<bool>(true, true, false, true)), Struct_5(vec3<i32>(i32(-2147483648), -42745i, 0i), vec3<i32>(-2462i, 2147483647i, 0i), 1606f, vec4<bool>(false, false, false, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(true, 6343i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.b.wx, vec2<f32>(-680f, 494f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -307f)), arg_2.a.a))), vec3<u32>(~_wgslsmith_mod_u32(arg_2.d.d.x, 109500u), 37640u << (1u % 32u), 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.b.x, true)), arg_2.d.c.x, arg_0.b.x)) * vec4<f32>(arg_0.a.c.x, arg_2.c.x, -2610f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -797f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.a.c.x, -390f, 1182f) * arg_2.c), _wgslsmith_f_op_vec4_f32(arg_2.b + vec4<f32>(arg_2.b.x, arg_2.a.c.x, arg_0.c.x, arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, -108f, 724f, arg_0.d.c.x) + arg_0.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1030f, arg_2.d.c.x, arg_2.b.x)))))), arg_0.a, select(arg_0.e, vec3<bool>(true, arg_2.e.x, any(vec4<bool>(true, true, false, arg_0.a.a))), !(!(!arg_2.e))));
    global0 = array<Struct_5, 17>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.c.x, _wgslsmith_f_op_f32(589f - 1941f))), arg_2.b.wx, !select(!var_0.e.yy, vec2<bool>(false, var_0.d.a), arg_1))), vec2<f32>(1f, 1f));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = arg_2.xx;
    let var_1 = Struct_3(Struct_1(false, -(arg_2.x | (1i | arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(arg_0, -8004i, vec2<f32>(arg_1.x, -1118f), vec3<u32>(980u, 4294967295u, u_input.b)), vec4<f32>(arg_1.x, 663f, arg_1.x, 652f), vec4<f32>(-343f, arg_1.x, 132f, arg_1.x), Struct_1(arg_0, 29159i, vec2<f32>(1431f, -1817f), vec3<u32>(u_input.c, u_input.b, 1u)), vec3<bool>(true, false, arg_0)), arg_0, Struct_2(Struct_1(false, arg_2.x, vec2<f32>(1000f, -296f), vec3<u32>(4294967295u, 4294967295u, u_input.c)), vec4<f32>(arg_1.x, -1679f, arg_1.x, -1812f), vec4<f32>(-199f, 776f, arg_1.x, -1081f), Struct_1(arg_0, 0i, arg_1, vec3<u32>(1u, u_input.c, 0u)), vec3<bool>(arg_0, arg_0, true)), 68355u)))), ~vec3<u32>(~56650u, u_input.c ^ 1u, _wgslsmith_add_u32(1u, u_input.b))), Struct_1(arg_0, countOneBits(_wgslsmith_mult_i32(-1i, arg_2.x)), arg_1, _wgslsmith_mult_vec3_u32(firstTrailingBit(select(vec3<u32>(14174u, 49308u, u_input.c), vec3<u32>(u_input.c, 31276u, 1u), vec3<bool>(false, true, false))), ~(~vec3<u32>(64976u, u_input.c, u_input.b)))), vec2<bool>(true, all(vec2<bool>(any(vec3<bool>(arg_0, false, true)), arg_0))), Struct_2(Struct_1(false, (arg_2.x >> (0u % 32u)) << ((u_input.c >> (53261u % 32u)) % 32u), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - -835f)), ~vec3<u32>(0u, 4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, 1491f, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -508f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(2205f)), arg_1.x)), arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(true, -20359i, vec2<f32>(arg_1.x, -135f), vec3<u32>(u_input.b, u_input.c, 26610u)), vec4<f32>(484f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-506f, arg_1.x, arg_1.x, -1000f), Struct_1(true, var_0.x, arg_1, vec3<u32>(118519u, 4294967295u, 0u)), vec3<bool>(true, arg_0, false)), arg_0, Struct_2(Struct_1(true, -1i, vec2<f32>(arg_1.x, arg_1.x), vec3<u32>(u_input.c, 36472u, 1u)), vec4<f32>(-219f, 707f, 293f, 685f), vec4<f32>(-158f, arg_1.x, arg_1.x, -1932f), Struct_1(false, var_0.x, vec2<f32>(1000f, 327f), vec3<u32>(0u, 57596u, u_input.c)), vec3<bool>(arg_0, arg_0, arg_0)), 0u)).x)), Struct_1(all(!vec4<bool>(false, false, arg_0, true)), var_0.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(arg_1)), _wgslsmith_f_op_vec2_f32(-arg_1))), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, 18701u, u_input.b)), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, 91928u)))), vec3<bool>(!arg_0, true, true)), Struct_1(all(select(!vec4<bool>(true, false, true, arg_0), vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, false))), u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(398f * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(false, u_input.d.x, vec2<f32>(arg_1.x, arg_1.x), vec3<u32>(4294967295u, u_input.c, u_input.c)), vec4<f32>(arg_1.x, 736f, 414f, 912f), vec4<f32>(1000f, arg_1.x, 882f, -349f), Struct_1(false, u_input.e.x, vec2<f32>(arg_1.x, 1000f), vec3<u32>(0u, 0u, u_input.c)), vec3<bool>(arg_0, false, arg_0)), arg_0, Struct_2(Struct_1(true, 2147483647i, arg_1, vec3<u32>(4294967295u, u_input.c, u_input.b)), vec4<f32>(-681f, -713f, 764f, arg_1.x), vec4<f32>(1000f, -209f, -1110f, arg_1.x), Struct_1(arg_0, -2147483647i, arg_1, vec3<u32>(u_input.c, 1u, 20795u)), vec3<bool>(true, arg_0, true)), 1u)).x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, 5447u), vec3<u32>(35442u, u_input.b, 77779u), vec3<u32>(0u, 1u, u_input.b)), ~vec3<u32>(25403u, u_input.b, 4294967295u), vec3<bool>(arg_0, arg_0, arg_0)) ^ ~(vec3<u32>(u_input.c, u_input.b, 26043u) >> (vec3<u32>(27865u, 1u, u_input.b) % vec3<u32>(32u)))));
    var var_2 = -504f;
    return Struct_3(var_1.a, Struct_1(false, countOneBits(-1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.d.c.x, 646f) * var_1.b.c))), ~abs(~var_1.a.d)), !(!select(var_1.c, var_1.c, all(vec4<bool>(false, false, var_1.b.a, true)))), Struct_2(Struct_1(true, 0i, _wgslsmith_f_op_vec2_f32(trunc(arg_1)), vec3<u32>(~u_input.b, 4294967295u, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f - -1516f) - _wgslsmith_f_op_f32(arg_1.x * -366f)), -1533f, _wgslsmith_div_f32(-1254f, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), var_1.d.d.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.c.x))), _wgslsmith_div_f32(arg_1.x, -1107f)), Struct_1(true, _wgslsmith_clamp_i32(2147483647i, min(0i, arg_2.x), var_1.d.d.b), arg_1, ~(var_1.b.d ^ var_1.a.d)), !(!select(var_1.d.e, var_1.d.e, false))), var_1.e);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = 0i;
    let var_1 = ~(~arg_0.d.d.d);
    let var_2 = 0u | arg_1.a.d.x;
    global0 = array<Struct_5, 17>();
    var var_3 = !vec4<bool>(true, false, false | !(arg_2 & false), arg_0.e.c.x >= arg_1.a.c.x);
    return arg_0.e.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    let var_0 = select(vec4<bool>(!func_4(func_2(false, vec2<f32>(1000f, arg_0), vec3<i32>(-7824i, u_input.d.x, 1i)), Struct_2(Struct_1(false, -16071i, arg_2, vec3<u32>(arg_1, 1u, 21412u)), vec4<f32>(720f, arg_2.x, arg_2.x, -1031f), vec4<f32>(-626f, 234f, arg_0, arg_2.x), Struct_1(true, u_input.a.x, arg_2, vec3<u32>(u_input.b, 23916u, 61964u)), vec3<bool>(true, true, true)), true, _wgslsmith_add_vec3_u32(vec3<u32>(35438u, arg_1, arg_1), vec3<u32>(31163u, u_input.b, u_input.c))), false, all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), true || any(vec3<bool>(true, true, true))), vec4<bool>(true, true, 640f >= func_2(all(vec4<bool>(true, false, false, true)), arg_2, vec3<i32>(u_input.d.x, u_input.d.x, 17562i)).e.c.x, false), any(vec3<bool>(func_4(Struct_3(Struct_1(true, u_input.a.x, arg_2, vec3<u32>(4950u, arg_1, arg_1)), Struct_1(true, u_input.e.x, vec2<f32>(-532f, arg_2.x), vec3<u32>(9989u, arg_1, u_input.c)), vec2<bool>(true, true), Struct_2(Struct_1(true, -40238i, vec2<f32>(1282f, 1588f), vec3<u32>(1u, 1u, 1u)), vec4<f32>(1000f, arg_0, -2263f, arg_0), vec4<f32>(266f, arg_0, arg_0, 737f), Struct_1(false, u_input.e.x, vec2<f32>(arg_2.x, 1771f), vec3<u32>(arg_1, u_input.b, arg_1)), vec3<bool>(false, true, true)), Struct_1(false, 75055i, arg_2, vec3<u32>(u_input.b, 1u, u_input.c))), Struct_2(Struct_1(true, u_input.e.x, arg_2, vec3<u32>(1360u, u_input.b, u_input.b)), vec4<f32>(1571f, -413f, 346f, 368f), vec4<f32>(-331f, -1677f, 1044f, -546f), Struct_1(false, -2147483647i, vec2<f32>(691f, arg_0), vec3<u32>(u_input.b, 30140u, 4294967295u)), vec3<bool>(true, true, false)), true, countOneBits(vec3<u32>(arg_1, 8740u, arg_1))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), false)));
    var var_1 = var_0.x;
    var var_2 = global0[_wgslsmith_index_u32(arg_1, 17u)];
    var_1 = false;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, abs(0u), u_input.b), vec3<u32>(u_input.c, _wgslsmith_sub_u32(13302u, u_input.b), 92321u >> (u_input.b % 32u))) >> (~countOneBits(vec3<u32>(1u, 14058u, 22975u)) % vec3<u32>(32u))) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(110353u, u_input.b), select(0u, 1u, false), ~0u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.b, 75254u, 46879u), vec3<u32>(u_input.b, 6215u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 1u), vec3<u32>(4294967295u, 18039u, 0u)))) | _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.b)), ~(~vec3<u32>(54395u, 4294967295u, 160553u)))) % vec3<u32>(32u));
    var_0 = ~(~(~vec3<u32>(var_0.x, 42530u, var_0.x) >> ((vec3<u32>(28626u, u_input.b, 1u) & vec3<u32>(1u, 1u, 0u)) % vec3<u32>(32u))) >> ((vec3<u32>(4294967295u, 20445u, ~45589u) | ~(vec3<u32>(var_0.x, 4294967295u, u_input.c) << (vec3<u32>(4294967295u, 82639u, 65797u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(min(~(~46989u), 43652u)), _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~4294967295u, func_1(-253f, _wgslsmith_dot_vec2_u32(vec2<u32>(3712u, var_0.x), vec2<u32>(4294967295u, var_0.x)), vec2<f32>(1000f, -684f))))), 17u)];
    var var_2 = ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.b, 4294967295u, 1u), vec4<u32>(57561u, u_input.c, 0u, var_0.x)) >> (select(vec4<u32>(var_0.x, var_0.x, var_0.x, 3661u), ~vec4<u32>(u_input.b, 38146u, 0u, u_input.c), var_1.d.x) % vec4<u32>(32u))));
    var var_3 = Struct_4(func_2(func_2(func_4(func_2(false, vec2<f32>(var_1.c, var_1.c), vec3<i32>(var_1.b.x, var_1.b.x, u_input.d.x)), func_2(true, vec2<f32>(var_1.c, var_1.c), var_1.b).d, all(var_1.d), var_2.xyz), vec2<f32>(_wgslsmith_f_op_f32(843f + 1349f), 1f), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(var_1.b.x, -2147483647i, u_input.e.x)) >> (var_2.xww % vec3<u32>(32u))).a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-315f, -149f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(111f, 390f))), var_1.d.xy))), u_input.d), func_2(all(var_1.d.xw), vec2<f32>(-1480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_1.c) * _wgslsmith_f_op_f32(-var_1.c))), ~(~countOneBits(var_1.b))).d);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<i32>(30084i, 0i)));
}

