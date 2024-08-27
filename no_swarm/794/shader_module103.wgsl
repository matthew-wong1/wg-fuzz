struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<f32>(196f, -1094f, 2268f, -1000f), vec4<u32>(49308u, 15970u, 4294967295u, 4294967295u), Struct_1(4294967295u, 1u, -1316f), 1u), Struct_2(vec4<f32>(-508f, -874f, 587f, -485f), vec4<u32>(4469u, 1u, 20530u, 21731u), Struct_1(86739u, 4294967295u, 503f), 4294967295u), Struct_2(vec4<f32>(645f, 1704f, 1191f, 1000f), vec4<u32>(1u, 26241u, 0u, 21338u), Struct_1(0u, 4294967295u, -1292f), 4294967295u), Struct_2(vec4<f32>(523f, -1324f, -636f, -500f), vec4<u32>(4294967295u, 11346u, 0u, 101529u), Struct_1(59606u, 58243u, 1000f), 53642u), Struct_2(vec4<f32>(-1042f, -2926f, -1398f, -172f), vec4<u32>(1u, 1u, 28971u, 15154u), Struct_1(1u, 61716u, 423f), 4294967295u), Struct_2(vec4<f32>(-1350f, 284f, 1548f, -678f), vec4<u32>(53924u, 0u, 4294967295u, 16097u), Struct_1(47213u, 4294967295u, -439f), 4294967295u), Struct_2(vec4<f32>(-261f, -269f, -668f, -798f), vec4<u32>(1u, 1u, 60113u, 0u), Struct_1(4294967295u, 1u, -1177f), 1u), Struct_2(vec4<f32>(-934f, 632f, -430f, -235f), vec4<u32>(50964u, 1u, 36464u, 0u), Struct_1(1u, 48518u, 1063f), 22557u), Struct_2(vec4<f32>(355f, 931f, -779f, 892f), vec4<u32>(109238u, 26464u, 17528u, 4294967295u), Struct_1(2767u, 4294967295u, -1581f), 4294967295u), Struct_2(vec4<f32>(-1160f, 1585f, -2581f, -770f), vec4<u32>(137650u, 52869u, 44834u, 4294967295u), Struct_1(30940u, 4294967295u, 1158f), 1u), Struct_2(vec4<f32>(949f, -1280f, 1000f, -144f), vec4<u32>(38919u, 4294967295u, 1u, 1u), Struct_1(1u, 0u, -359f), 0u), Struct_2(vec4<f32>(-159f, 445f, -1970f, 1000f), vec4<u32>(1u, 2203u, 4294967295u, 0u), Struct_1(83507u, 4294967295u, 313f), 47137u));

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_4) -> i32 {
    return ~_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.a, 2147483647i, -1i), _wgslsmith_div_i32(0i, ~1i)) << (u_input.d % 32u);
}

fn func_3() -> i32 {
    return -1i;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2898f, -1646f))), -265f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3650f, -916f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) - _wgslsmith_f_op_f32(max(-558f, -508f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 283f, 1340f, -586f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, 1153f, -400f, 869f)))), _wgslsmith_div_vec4_f32(vec4<f32>(149f, -122f, -744f, 756f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, -612f, -629f, 1371f)))))), u_input.c, Struct_1(~47367u, 1u, -993f), ~global1.c);
    var var_1 = vec3<i32>(u_input.b.x, func_3(), _wgslsmith_div_i32(_wgslsmith_sub_i32(max(u_input.b.x, 2147483647i), u_input.a & ~0i), func_3()));
    let var_2 = Struct_4(Struct_3(all(select(vec4<bool>(global1.b.x, global1.b.x, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, global1.a, false, true))), global1.b, firstLeadingBit(32818u)), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1853f, -954f, 1103f, 1043f)))), _wgslsmith_clamp_vec4_u32(var_0.b, (u_input.c & vec4<u32>(24426u, global1.c, 1u, 1u)) ^ ~vec4<u32>(u_input.c.x, u_input.d, 1u, 1u), select(~var_0.b, var_0.b | var_0.b, false & global1.b.x)), var_0.c, ~48987u));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(914f, -328f)) + var_0.a.ww));
    var var_4 = var_1.x;
    return 2921i | u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~countOneBits(func_1(Struct_4(Struct_3(true, global1.b, u_input.d), Struct_2(vec4<f32>(-589f, -905f, -1000f, -396f), vec4<u32>(u_input.c.x, 37175u, 60550u, 128581u), Struct_1(64227u, u_input.d, 521f), 4294967295u)))) > 18033i, global1.b, u_input.d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(757f, -517f))));
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(-15447i, 1i, 1i, 0i), _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), !vec4<bool>(var_0.b.x, global1.b.x, false, global1.a)), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.a, u_input.b.x, u_input.b.x)) << (~vec4<u32>(0u, 82055u, 44016u, 1u) % vec4<u32>(32u)))) | (abs(vec4<i32>(2147483647i, 1i, func_2(), 6031i)) & min(vec4<i32>(i32(-1i) * -59282i, u_input.a << (4294967295u % 32u), -2147483647i, u_input.a), -(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -1i) | vec4<i32>(-26434i, -8077i, u_input.a, -60342i))));
    var_2 = -((-u_input.b << (vec4<u32>(~global1.c, ~u_input.c.x, 50563u, u_input.d ^ var_0.c) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_2.x, -976i, 0i), _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), vec4<i32>(-1i, -62396i, reverseBits(u_input.b.x), i32(-1i) * -2147483647i)));
    let var_3 = Struct_4(Struct_3(global1.b.x, select(vec3<bool>(var_0.a, var_2.x <= u_input.a, true), global1.b, true), 1u), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -862f, -1316f, -467f)))), u_input.c ^ u_input.c, Struct_1(abs(0u), abs(~var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -886f)), max(global1.c, ~(1u & var_0.c))));
    let var_4 = vec3<f32>(var_3.b.c.c, var_3.b.a.x, _wgslsmith_f_op_f32(exp2(var_3.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.b.b), u_input.b, u_input.c.xzx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.a) + var_3.b.a))));
}

