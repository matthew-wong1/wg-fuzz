struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, vec3<f32>(-926f, -922f, -508f), true, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<f32>(294f, 480f, -1505f), true, vec3<bool>(false, true, true)), Struct_1(27919u, vec3<f32>(610f, 1133f, 171f), true, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<f32>(206f, -1621f, 970f), false, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<f32>(1011f, 796f, -485f), true, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<f32>(606f, 114f, 1791f), false, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<f32>(2865f, 808f, 602f), false, vec3<bool>(true, true, false)), Struct_1(1u, vec3<f32>(538f, -254f, 450f), true, vec3<bool>(false, true, true)), Struct_1(41093u, vec3<f32>(-1326f, 2406f, 392f), false, vec3<bool>(false, false, false)), Struct_1(15842u, vec3<f32>(1312f, -846f, 1400f), false, vec3<bool>(true, true, false)), Struct_1(1u, vec3<f32>(139f, 1012f, 1000f), false, vec3<bool>(false, true, true)), Struct_1(1u, vec3<f32>(-1177f, -208f, 120f), false, vec3<bool>(false, false, true)), Struct_1(1u, vec3<f32>(-1566f, -433f, -857f), false, vec3<bool>(true, false, false)), Struct_1(31264u, vec3<f32>(887f, 1318f, 833f), false, vec3<bool>(true, true, true)), Struct_1(17384u, vec3<f32>(-2168f, -1294f, -535f), false, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<f32>(940f, 287f, 2919f), true, vec3<bool>(false, false, false)), Struct_1(1u, vec3<f32>(-1019f, 174f, 1682f), false, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<f32>(1358f, -1796f, 229f), true, vec3<bool>(true, false, false)), Struct_1(0u, vec3<f32>(369f, -2324f, -1271f), false, vec3<bool>(true, false, true)), Struct_1(64753u, vec3<f32>(1626f, -415f, 1482f), false, vec3<bool>(true, false, true)), Struct_1(1u, vec3<f32>(-431f, -1009f, -1000f), true, vec3<bool>(false, true, true)), Struct_1(0u, vec3<f32>(-448f, 2561f, 1007f), true, vec3<bool>(true, false, false)), Struct_1(21161u, vec3<f32>(239f, 1082f, -316f), false, vec3<bool>(true, false, false)), Struct_1(4294967295u, vec3<f32>(-307f, -753f, -145f), true, vec3<bool>(false, false, true)), Struct_1(89290u, vec3<f32>(-555f, -678f, 426f), true, vec3<bool>(false, true, false)), Struct_1(71890u, vec3<f32>(1220f, -392f, -1000f), false, vec3<bool>(false, true, false)), Struct_1(0u, vec3<f32>(1467f, 770f, 909f), true, vec3<bool>(true, false, true)), Struct_1(0u, vec3<f32>(-1766f, -436f, -566f), true, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<f32>(-478f, 690f, -321f), true, vec3<bool>(false, false, false)), Struct_1(1u, vec3<f32>(236f, -2779f, 1393f), true, vec3<bool>(false, true, true)), Struct_1(1u, vec3<f32>(1000f, -982f, -1141f), false, vec3<bool>(true, true, true)), Struct_1(0u, vec3<f32>(-1051f, -1929f, 1119f), true, vec3<bool>(false, false, false)));

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(1u, 43470u, 41090u, 19373u), vec4<u32>(12183u, 4294967295u, 15915u, 44610u), vec4<u32>(4294967295u, 1u, 1u, 26534u), vec4<u32>(0u, 15750u, 1u, 0u), vec4<u32>(63098u, 75405u, 0u, 94252u), vec4<u32>(4294967295u, 58954u, 76920u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(49535u, 1u, 4294967295u, 49763u), vec4<u32>(1u, 4294967295u, 17914u, 28464u), vec4<u32>(38467u, 16570u, 11707u, 0u), vec4<u32>(8481u, 4294967295u, 4294967295u, 28956u), vec4<u32>(4294967295u, 43599u, 43664u, 41797u), vec4<u32>(1u, 20046u, 1u, 1u), vec4<u32>(1u, 0u, 42169u, 9824u), vec4<u32>(4294967295u, 9609u, 13514u, 4294967295u), vec4<u32>(27586u, 0u, 40883u, 0u), vec4<u32>(65232u, 12609u, 26382u, 1u), vec4<u32>(68239u, 12052u, 0u, 4294967295u), vec4<u32>(31039u, 29689u, 4294967295u, 0u), vec4<u32>(4604u, 1u, 1u, 52270u));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0u, vec3<f32>(-1428f, -612f, -114f), true, vec3<bool>(true, false, true)), Struct_1(34560u, vec3<f32>(-481f, 1000f, 1006f), false, vec3<bool>(false, false, false)), Struct_1(59638u, vec3<f32>(-973f, -104f, -975f), true, vec3<bool>(false, true, true)), Struct_1(0u, vec3<f32>(-182f, 1180f, -482f), true, vec3<bool>(false, true, true)), Struct_1(111968u, vec3<f32>(-754f, -1000f, -1788f), true, vec3<bool>(false, true, false)), Struct_1(47723u, vec3<f32>(-262f, -423f, 815f), true, vec3<bool>(true, false, true)), Struct_1(0u, vec3<f32>(-799f, -2079f, 879f), true, vec3<bool>(false, false, false)), Struct_1(0u, vec3<f32>(-1000f, -1384f, -641f), false, vec3<bool>(true, true, true)), Struct_1(21430u, vec3<f32>(-1375f, -1204f, -155f), false, vec3<bool>(false, true, true)), Struct_1(8928u, vec3<f32>(-1045f, -928f, -1209f), false, vec3<bool>(true, true, true)), Struct_1(4374u, vec3<f32>(915f, 2464f, 933f), false, vec3<bool>(true, true, false)), Struct_1(11893u, vec3<f32>(-1021f, 174f, -336f), true, vec3<bool>(true, false, false)), Struct_1(1u, vec3<f32>(-1060f, -1290f, 484f), false, vec3<bool>(true, false, true)), Struct_1(1u, vec3<f32>(1000f, 691f, 1560f), false, vec3<bool>(false, false, false)), Struct_1(36279u, vec3<f32>(-934f, -352f, 1311f), true, vec3<bool>(false, true, false)), Struct_1(1u, vec3<f32>(889f, -1638f, 901f), true, vec3<bool>(true, true, false)), Struct_1(1u, vec3<f32>(1006f, 298f, -1000f), true, vec3<bool>(false, false, false)), Struct_1(0u, vec3<f32>(1000f, -2450f, 724f), false, vec3<bool>(false, false, true)), Struct_1(0u, vec3<f32>(424f, -1217f, -220f), true, vec3<bool>(true, false, false)), Struct_1(12368u, vec3<f32>(-972f, -1409f, -2792f), true, vec3<bool>(true, false, true)), Struct_1(1u, vec3<f32>(-1035f, 102f, -1256f), true, vec3<bool>(true, true, true)), Struct_1(10627u, vec3<f32>(-324f, -1003f, -1000f), true, vec3<bool>(false, false, false)), Struct_1(43298u, vec3<f32>(-1763f, 1623f, 1866f), true, vec3<bool>(false, false, true)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b.x, 0i, arg_0.x, 2147483647i), -_wgslsmith_mod_vec4_i32(vec4<i32>(53081i, u_input.b.x, -47841i, arg_0.x), u_input.b)));
    var var_1 = vec3<bool>(arg_2.d.x, all(select(vec3<bool>(all(vec3<bool>(true, arg_2.d.x, true)), false, any(vec4<bool>(false, arg_1, arg_2.d.x, arg_1))), arg_2.d, arg_2.d)), all(vec3<bool>(_wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(22690i, 2147483647i)) == countOneBits(u_input.b.x), !arg_1, arg_2.c)));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(48471i, -arg_0.x, i32(-1i) * -2147483647i), -(u_input.b.xwx | vec3<i32>(-696i, arg_0.x, arg_0.x))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -2147483647i, var_0.x), arg_0) & arg_0.x, var_0.x | ((-1i >> (u_input.a % 32u)) | 1i)), vec3<i32>(8643i, var_0.x, ~var_0.x));
    let var_3 = var_0.zy;
    var var_4 = arg_2;
    return 1u;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 32>();
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.c), 32u)];
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(abs(~_wgslsmith_mult_u32(~var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, u_input.a, u_input.a), vec3<u32>(41637u, 9356u, 75740u))))), 32u)];
    var_1 = Struct_1(func_3(_wgslsmith_clamp_vec4_i32(~u_input.b, abs(u_input.b), vec4<i32>(u_input.b.x, 29584i, 1i, -4585i) << (~global1[_wgslsmith_index_u32(9580u, 20u)] % vec4<u32>(32u))), false, Struct_1(_wgslsmith_mult_u32(firstLeadingBit(u_input.c), max(0u, var_0.a)), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), false, var_1.d)), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.c, select(vec3<bool>(var_0.c, all(!vec4<bool>(var_0.d.x, var_1.c, false, var_1.d.x)), var_1.c), !select(select(var_0.d, vec3<bool>(var_1.d.x, true, var_0.d.x), vec3<bool>(var_1.d.x, var_1.c, true)), vec3<bool>(false, var_1.d.x, true), any(vec3<bool>(var_1.d.x, var_0.d.x, var_1.d.x))), any(vec4<bool>(var_1.d.x, true, false, false)) | !all(vec3<bool>(var_0.d.x, var_0.d.x, true))));
    var var_2 = global0[_wgslsmith_index_u32(~4294967295u, 32u)];
    return Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - var_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, -1667f, 776f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1429f, var_0.b.x, -123f), vec3<f32>(-350f, var_2.b.x, 155f))))), !(!var_1.d.x), var_0.d);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = false;
    let var_1 = func_2();
    global2 = array<Struct_1, 23>();
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u & var_1.a, 23u)];
    return any(vec2<bool>(!select(var_1.c, any(vec4<bool>(var_2.c, false, true, var_1.d.x)), var_1.c), select(true, true, any(vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 20>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b));
    let var_2 = var_0.c;
    var var_3 = abs(abs(i32(-1i) * -16449i));
    var var_4 = !select(var_0.d.yy, vec2<bool>(var_0.c, var_0.d.x), vec2<bool>(func_1(_wgslsmith_add_i32(u_input.b.x, 12220i)), select(true, true, var_0.d.x) && true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -541f)))));
}

