struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(11939u, 49264u), vec2<bool>(false, true), 1u, vec2<i32>(0i, -11358i), vec3<i32>(-15538i, 0i, 1i)), Struct_1(vec2<u32>(11532u, 35495u), vec2<bool>(false, false), 1u, vec2<i32>(5705i, 1i), vec3<i32>(i32(-2147483648), -45200i, -1i)), Struct_1(vec2<u32>(4294967295u, 90911u), vec2<bool>(false, false), 7034u, vec2<i32>(30321i, 2147483647i), vec3<i32>(0i, -25406i, -61153i)), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, false), 1u, vec2<i32>(30063i, 2147483647i), vec3<i32>(-1i, -56417i, -51816i)), Struct_1(vec2<u32>(55394u, 80737u), vec2<bool>(false, false), 4294967295u, vec2<i32>(-21213i, 57849i), vec3<i32>(i32(-2147483648), 18328i, 6497i)), Struct_1(vec2<u32>(67371u, 1u), vec2<bool>(false, false), 25174u, vec2<i32>(52278i, -1i), vec3<i32>(1i, 1i, -49057i)), Struct_1(vec2<u32>(100428u, 60253u), vec2<bool>(false, true), 1u, vec2<i32>(0i, 27894i), vec3<i32>(-6868i, 2147483647i, 4258i)), Struct_1(vec2<u32>(62167u, 24114u), vec2<bool>(false, false), 11u, vec2<i32>(-36938i, -71984i), vec3<i32>(1i, -1i, 45552i)), Struct_1(vec2<u32>(1u, 31414u), vec2<bool>(false, true), 32967u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(47223i, 1i, 1i)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true), 69552u, vec2<i32>(-9366i, 1i), vec3<i32>(-53285i, -1i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false), 56641u, vec2<i32>(-1i, 0i), vec3<i32>(0i, 0i, 1i)), Struct_1(vec2<u32>(4294967295u, 30867u), vec2<bool>(false, false), 1u, vec2<i32>(-18876i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec2<u32>(4294967295u, 77692u), vec2<bool>(false, false), 37805u, vec2<i32>(0i, -7431i), vec3<i32>(i32(-2147483648), 1i, -9550i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true), 46496u, vec2<i32>(-12536i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 50179i)), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(false, false), 4294967295u, vec2<i32>(1i, 0i), vec3<i32>(-13241i, 0i, 0i)), Struct_1(vec2<u32>(4514u, 1u), vec2<bool>(true, true), 7346u, vec2<i32>(32731i, i32(-2147483648)), vec3<i32>(-15971i, 12483i, 0i)), Struct_1(vec2<u32>(5651u, 40233u), vec2<bool>(false, true), 0u, vec2<i32>(40806i, 2705i), vec3<i32>(12393i, -42426i, 8215i)), Struct_1(vec2<u32>(0u, 7952u), vec2<bool>(true, true), 11118u, vec2<i32>(2147483647i, 2147483647i), vec3<i32>(-22281i, 9725i, 1i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true), 4294967295u, vec2<i32>(-9627i, i32(-2147483648)), vec3<i32>(-5613i, 2147483647i, 1i)), Struct_1(vec2<u32>(39374u, 1u), vec2<bool>(true, false), 82933u, vec2<i32>(i32(-2147483648), 12187i), vec3<i32>(29559i, -17878i, 11944i)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false), 87891u, vec2<i32>(-28977i, 1318i), vec3<i32>(0i, 11382i, 0i)), Struct_1(vec2<u32>(5131u, 1u), vec2<bool>(true, false), 4294967295u, vec2<i32>(0i, -2995i), vec3<i32>(34492i, -39662i, -1i)), Struct_1(vec2<u32>(20795u, 97882u), vec2<bool>(false, true), 4294967295u, vec2<i32>(1i, -15679i), vec3<i32>(0i, 0i, -1i)), Struct_1(vec2<u32>(0u, 28927u), vec2<bool>(false, false), 2419u, vec2<i32>(0i, -6238i), vec3<i32>(23191i, -5608i, 0i)), Struct_1(vec2<u32>(38062u, 62067u), vec2<bool>(true, false), 17183u, vec2<i32>(1i, -10743i), vec3<i32>(i32(-2147483648), 9608i, 53626i)), Struct_1(vec2<u32>(0u, 18030u), vec2<bool>(false, false), 1u, vec2<i32>(-11425i, 6011i), vec3<i32>(1i, -20202i, 0i)), Struct_1(vec2<u32>(32813u, 0u), vec2<bool>(false, true), 21730u, vec2<i32>(i32(-2147483648), -2221i), vec3<i32>(-27043i, 2147483647i, 2147483647i)), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, true), 103607u, vec2<i32>(29178i, -1i), vec3<i32>(-8846i, i32(-2147483648), 0i)), Struct_1(vec2<u32>(50129u, 30382u), vec2<bool>(false, true), 4294967295u, vec2<i32>(-1i, -5553i), vec3<i32>(1i, 57590i, -52461i)), Struct_1(vec2<u32>(41459u, 46219u), vec2<bool>(true, true), 109613u, vec2<i32>(i32(-2147483648), -26614i), vec3<i32>(i32(-2147483648), 39071i, 41696i)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(false, false), 1u, vec2<i32>(-9240i, -51186i), vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(vec2<u32>(67120u, 1u), vec2<bool>(true, false), 4294967295u, vec2<i32>(1i, 34508i), vec3<i32>(-974i, -48494i, -26498i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(342f, 1048f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, 769f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, 408f) + vec2<f32>(-1000f, 110f)))))));
    let var_1 = ~(~vec4<u32>(min(u_input.a & u_input.a, 0u ^ u_input.c), ~52772u, 40556u, u_input.d << (1u % 32u)));
    var var_2 = var_1;
    let var_3 = true;
    return ~countOneBits(var_2.yxw);
}

fn func_2() -> i32 {
    var var_0 = func_3(_wgslsmith_mult_i32(-(~(-15760i)), 1i));
    let var_1 = vec3<u32>(u_input.e, 1u, var_0.x) | vec3<u32>(21974u, ~u_input.a, _wgslsmith_add_u32(57587u, u_input.b));
    var_0 = ~vec3<u32>(var_1.x ^ ~(var_0.x ^ u_input.d), ~(u_input.e << (_wgslsmith_add_u32(1u, var_1.x) % 32u)), var_1.x);
    var var_2 = vec3<bool>(any(vec4<bool>(true, true, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i) >= ~(-34675i), true || any(vec4<bool>(false, false, true, true)))), true, false);
    var_0 = var_1;
    return -(~2147483647i);
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_0 = ~vec4<i32>(_wgslsmith_add_i32(abs(min(-2147483647i, -15517i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 5443i), vec2<i32>(-13887i, -25065i)), vec2<i32>(1i, 0i))), reverseBits(_wgslsmith_add_i32(~1i, func_2())), -39388i, _wgslsmith_div_i32(max(-2147483647i >> (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -2147483647i, -10256i), vec4<i32>(14252i, 6946i, 2147483647i, -1i))), countOneBits(_wgslsmith_mod_i32(0i, 2147483647i))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(45893u, ~u_input.b, 1u >> (firstTrailingBit(57235u) % 32u)) << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(arg_0, arg_0)), 84178u) % 32u), 32u)], !(!vec3<bool>(27264u >= arg_0, any(vec2<bool>(true, false)), select(false, true, false))));
    return Struct_2(Struct_1(var_1.a.a, vec2<bool>(true, true), 0u, var_1.a.e.xy, vec3<i32>(var_0.x, countOneBits(-8360i), -(~50905i))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(abs(vec4<u32>(61491u, 0u, 9512u, u_input.a)), ~vec4<u32>(36763u, 0u, u_input.a, u_input.c), true), vec4<u32>(68878u, u_input.c, u_input.a, u_input.c)), ~vec4<u32>(firstLeadingBit(0u), 15010u, 20212u, ~68529u)));
    var var_1 = var_0.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))));
}

