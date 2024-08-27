struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_4(Struct_3(false, 18529i, Struct_2(false, -60179i, 26132u, 1u, false))), 2147483647i, vec4<u32>(77121u, 0u, 131214u, 1u)), Struct_5(Struct_4(Struct_3(false, -35606i, Struct_2(false, -5296i, 40805u, 32292u, true))), 1i, vec4<u32>(0u, 49035u, 28326u, 4038u)), Struct_5(Struct_4(Struct_3(true, 7363i, Struct_2(false, 1i, 20654u, 56692u, true))), 8189i, vec4<u32>(30876u, 3845u, 0u, 1u)), Struct_5(Struct_4(Struct_3(false, 2147483647i, Struct_2(false, -9798i, 1u, 0u, true))), 2147483647i, vec4<u32>(4294967295u, 28335u, 0u, 0u)), Struct_5(Struct_4(Struct_3(true, 1i, Struct_2(false, 7134i, 30093u, 38088u, false))), 0i, vec4<u32>(10911u, 22252u, 1u, 0u)), Struct_5(Struct_4(Struct_3(false, 21191i, Struct_2(false, 964i, 208u, 17332u, false))), 34290i, vec4<u32>(35573u, 20728u, 1u, 46255u)), Struct_5(Struct_4(Struct_3(true, 1i, Struct_2(true, -31559i, 1u, 4294967295u, false))), 10899i, vec4<u32>(0u, 0u, 3792u, 4294967295u)), Struct_5(Struct_4(Struct_3(false, 1i, Struct_2(true, 138i, 54172u, 4294967295u, false))), 25892i, vec4<u32>(1u, 1u, 64463u, 2732u)), Struct_5(Struct_4(Struct_3(false, 2147483647i, Struct_2(true, 0i, 0u, 0u, false))), 57350i, vec4<u32>(27701u, 1977u, 14617u, 4294967295u)), Struct_5(Struct_4(Struct_3(true, -1i, Struct_2(false, 0i, 14520u, 80840u, false))), 32118i, vec4<u32>(28598u, 60045u, 15070u, 24421u)), Struct_5(Struct_4(Struct_3(true, 2147483647i, Struct_2(true, -798i, 1u, 0u, true))), 1i, vec4<u32>(1u, 62837u, 68555u, 12755u)), Struct_5(Struct_4(Struct_3(false, 0i, Struct_2(false, 2147483647i, 1u, 96017u, true))), -1i, vec4<u32>(18542u, 33548u, 63617u, 0u)), Struct_5(Struct_4(Struct_3(false, 39825i, Struct_2(true, 4580i, 38382u, 296u, true))), 37410i, vec4<u32>(13790u, 0u, 1u, 0u)), Struct_5(Struct_4(Struct_3(false, 1606i, Struct_2(false, -3578i, 4294967295u, 0u, true))), 0i, vec4<u32>(4294967295u, 59161u, 0u, 1u)), Struct_5(Struct_4(Struct_3(false, -23549i, Struct_2(false, -1i, 40640u, 0u, true))), i32(-2147483648), vec4<u32>(0u, 473u, 21491u, 41555u)), Struct_5(Struct_4(Struct_3(false, 25825i, Struct_2(true, -57085i, 26702u, 1u, false))), 20100i, vec4<u32>(73434u, 76156u, 1u, 71793u)), Struct_5(Struct_4(Struct_3(true, -32008i, Struct_2(true, -13160i, 1u, 78784u, false))), i32(-2147483648), vec4<u32>(34228u, 1u, 1u, 11329u)), Struct_5(Struct_4(Struct_3(true, 2147483647i, Struct_2(true, i32(-2147483648), 70569u, 1u, true))), -62193i, vec4<u32>(1u, 81474u, 1u, 1u)), Struct_5(Struct_4(Struct_3(false, 5156i, Struct_2(true, -1932i, 71049u, 4294967295u, true))), 31376i, vec4<u32>(10079u, 0u, 7017u, 51822u)), Struct_5(Struct_4(Struct_3(false, 17154i, Struct_2(true, 9323i, 4294967295u, 0u, false))), -4432i, vec4<u32>(0u, 71859u, 4294967295u, 0u)), Struct_5(Struct_4(Struct_3(true, 49404i, Struct_2(true, -1i, 92601u, 27774u, true))), 2147483647i, vec4<u32>(4294967295u, 1u, 4294967295u, 4491u)), Struct_5(Struct_4(Struct_3(true, i32(-2147483648), Struct_2(true, 12611i, 4294967295u, 0u, false))), -1i, vec4<u32>(0u, 24680u, 1u, 58435u)), Struct_5(Struct_4(Struct_3(true, i32(-2147483648), Struct_2(false, 15270i, 0u, 83981u, true))), 1i, vec4<u32>(0u, 4294967295u, 4294967295u, 24539u)), Struct_5(Struct_4(Struct_3(false, i32(-2147483648), Struct_2(true, 38497i, 0u, 0u, true))), 71583i, vec4<u32>(33060u, 43822u, 4294967295u, 0u)), Struct_5(Struct_4(Struct_3(true, i32(-2147483648), Struct_2(true, 0i, 1u, 33176u, false))), 2147483647i, vec4<u32>(42062u, 22281u, 1u, 0u)), Struct_5(Struct_4(Struct_3(false, -1i, Struct_2(false, 7792i, 0u, 4294967295u, false))), -1i, vec4<u32>(4294967295u, 10836u, 21614u, 5710u)), Struct_5(Struct_4(Struct_3(false, -33764i, Struct_2(true, 69832i, 1u, 1u, false))), 43766i, vec4<u32>(4294967295u, 16639u, 4294967295u, 4294967295u)), Struct_5(Struct_4(Struct_3(false, 33084i, Struct_2(false, -83918i, 36917u, 0u, false))), -1i, vec4<u32>(1u, 1u, 31842u, 9789u)), Struct_5(Struct_4(Struct_3(true, 0i, Struct_2(true, -1i, 1u, 67573u, true))), 2090i, vec4<u32>(4294967295u, 0u, 25904u, 0u)));

var<private> global1: vec3<f32> = vec3<f32>(624f, -925f, -1526f);

var<private> global2: array<u32, 7>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_5(Struct_4(Struct_3(any(vec3<bool>(false, false, false)), -2147483647i, Struct_2(true, _wgslsmith_add_i32(u_input.e.x, -1i), max(27594u, 0u), ~8637u, true))), countOneBits(-34273i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 6132u, global2[_wgslsmith_index_u32(4294967295u, 7u)], 1u), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 7u)], 1u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)])) % 32u)), select(~vec4<u32>(6382u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u, _wgslsmith_mod_u32(0u, 24929u)), vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 7u)], countOneBits(reverseBits(u_input.a.x)), _wgslsmith_mod_u32(~22524u, firstLeadingBit(global2[_wgslsmith_index_u32(49004u, 7u)])), 11123u), vec4<bool>(true, true, true, true)));
    return select(~_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.e.x, arg_0.x), ~_wgslsmith_clamp_i32(arg_1.x, var_0.b, 26185i)), _wgslsmith_dot_vec2_i32(~arg_1.yy, u_input.e), true);
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_1 = var_0.a;
    global4 = array<Struct_1, 28>();
    global4 = array<Struct_1, 28>();
    var var_2 = var_1.a.c.d;
    return !(~(-func_3(vec4<i32>(arg_1.a.c.b, arg_0, -57498i, -19898i), vec4<i32>(u_input.e.x, var_1.a.b, 51938i, 32102i))) < 1i);
}

fn func_1() -> u32 {
    var var_0 = select(vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), true)), ((12879u & u_input.d) > ~1u) && !func_2(-16776i, Struct_4(Struct_3(true, u_input.e.x, Struct_2(false, -46762i, 1u, 0u, true))), vec3<f32>(-228f, global1.x, global1.x)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, false, false)), true, false), global1.x < -663f), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, all(vec2<bool>(false, true)), u_input.e.x <= u_input.e.x, true), false == (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)] == 0u)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), select(false, true, true)), any(vec4<bool>(true, false, true, false)) | true)), select(select(vec4<bool>(false, true, global1.x != global1.x, all(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_2(u_input.c.x, Struct_4(Struct_3(false, 1i, Struct_2(false, -80958i, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 1u, false))), vec3<f32>(global1.x, global1.x, 154f)), true)), vec4<bool>(true, true, true, true), !(any(vec2<bool>(true, false)) && (844f != global1.x))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = _wgslsmith_clamp_vec2_u32(u_input.a.zz, ~var_1.c.ww ^ ~(reverseBits(vec2<u32>(1u, 1u)) ^ vec2<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 4294967295u)), u_input.a.zx);
    return _wgslsmith_div_u32(abs(~26214u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 0u), u_input.a.zy))) << (var_1.c.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(4771u)), 28u)];
    global0 = array<Struct_5, 29>();
    var var_1 = ~_wgslsmith_add_u32(firstLeadingBit(1u), ~u_input.a.x);
    var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(global2[_wgslsmith_index_u32(39u, 7u)]), var_0.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.d, 7u)])), _wgslsmith_mod_vec2_u32(var_0.a.xy, vec2<u32>(1u, var_0.a.x)) | vec2<u32>(18142u, global2[_wgslsmith_index_u32(4294967295u, 7u)]))), _wgslsmith_sub_u32(149810u, var_0.a.x));
    global0 = array<Struct_5, 29>();
    let var_2 = _wgslsmith_add_vec4_u32(~max(~var_0.a, vec4<u32>(_wgslsmith_mult_u32(53649u, var_0.a.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15499u, 7u)], 7u)] >> (u_input.d % 32u), 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], ~1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.a.yzy, vec3<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 7u)], var_0.a.x, 22372u)) >> (4294967295u % 32u), 20239u, func_1(), _wgslsmith_dot_vec2_u32(var_0.a.yx >> (var_0.a.xx % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 7u)], 7u)], u_input.d)))) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(4294967295u, 39736u, 59973u, var_0.a.x)), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

