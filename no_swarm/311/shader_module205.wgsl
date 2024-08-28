struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-770f, -961f, 185f, 103f), vec4<bool>(false, false, false, true), -1133f, -198f, vec2<i32>(2147483647i, 0i)), Struct_1(vec4<f32>(1249f, 285f, -1504f, 516f), vec4<bool>(false, false, true, true), 501f, 484f, vec2<i32>(-13625i, -61966i)), Struct_1(vec4<f32>(1000f, 284f, 1120f, -539f), vec4<bool>(false, false, false, false), 662f, 1229f, vec2<i32>(0i, 2147483647i)), Struct_1(vec4<f32>(2087f, -159f, -880f, -700f), vec4<bool>(false, false, false, true), 162f, 422f, vec2<i32>(2147483647i, 0i)), Struct_1(vec4<f32>(1765f, -1180f, 1398f, -989f), vec4<bool>(true, false, true, true), -569f, -1144f, vec2<i32>(2147483647i, -52359i)), Struct_1(vec4<f32>(2246f, -125f, -757f, 249f), vec4<bool>(true, true, false, true), 851f, -702f, vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<f32>(407f, 519f, -636f, -742f), vec4<bool>(false, true, false, false), 2148f, -203f, vec2<i32>(-11792i, -7760i)), Struct_1(vec4<f32>(708f, 732f, 1000f, -1220f), vec4<bool>(false, true, true, false), 321f, -130f, vec2<i32>(2147483647i, 0i)), Struct_1(vec4<f32>(-588f, 167f, -1683f, 308f), vec4<bool>(true, true, true, true), -1475f, 610f, vec2<i32>(9921i, -32964i)), Struct_1(vec4<f32>(1444f, -1580f, 367f, -142f), vec4<bool>(false, false, true, true), -923f, -1000f, vec2<i32>(-1i, 0i)), Struct_1(vec4<f32>(168f, -1552f, -1000f, 1368f), vec4<bool>(true, false, false, true), 549f, 2440f, vec2<i32>(i32(-2147483648), -15456i)), Struct_1(vec4<f32>(-163f, -1000f, -353f, 620f), vec4<bool>(true, true, true, false), 687f, -120f, vec2<i32>(44328i, 11483i)), Struct_1(vec4<f32>(717f, -189f, 734f, 847f), vec4<bool>(false, true, true, false), 1709f, 399f, vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<f32>(-2639f, -1259f, -1341f, -1081f), vec4<bool>(false, false, true, true), -247f, 841f, vec2<i32>(-30207i, -6333i)), Struct_1(vec4<f32>(-1785f, 871f, -1319f, 857f), vec4<bool>(false, true, false, false), 244f, -551f, vec2<i32>(2229i, -17472i)), Struct_1(vec4<f32>(297f, 168f, -2597f, 1032f), vec4<bool>(false, false, false, false), -1728f, -127f, vec2<i32>(45410i, -8428i)), Struct_1(vec4<f32>(1089f, -817f, -2361f, -461f), vec4<bool>(true, false, true, true), -491f, 231f, vec2<i32>(0i, -25429i)), Struct_1(vec4<f32>(-1839f, 795f, 529f, -232f), vec4<bool>(false, false, false, false), 1129f, 1426f, vec2<i32>(7556i, -1i)), Struct_1(vec4<f32>(-277f, -966f, -801f, 931f), vec4<bool>(false, true, true, false), -551f, 467f, vec2<i32>(23049i, -45112i)));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-844f, -386f, 1036f, 1774f), vec4<bool>(true, true, true, false), -1000f, 1774f, vec2<i32>(i32(-2147483648), -20509i));

var<private> global2: vec4<u32> = vec4<u32>(1u, 4853u, 0u, 0u);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-404f, -186f, -318f, 2152f), vec4<bool>(false, false, false, false), -766f, 2135f, vec2<i32>(-4436i, 0i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.c;
    let var_1 = false;
    let var_2 = select(!global1.b, !global3.b, !(-(~global1.e.x) == global3.e.x));
    return global0[_wgslsmith_index_u32(~19032u, 19u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = func_2();
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.b, ~min(u_input.c.x, 4294967295u)), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(global2.wzz, global2.xwz)), u_input.c.x), 135469u, 4294967295u);
    var var_1 = Struct_1(global3.a, vec4<bool>(!(global3.c >= _wgslsmith_f_op_f32(-global1.c)), global1.b.x, arg_0.b.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), global3.a.x, select(vec2<i32>(u_input.e.x, 17231i), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, global3.e.x, -31198i, arg_0.e.x), arg_1), func_2().e.x), any(global1.b) && global1.b.x));
    global2 = vec4<u32>(var_0.x, 0u, ~1u, ~u_input.b) >> (((vec4<u32>(_wgslsmith_sub_u32(37945u, var_0.x), abs(var_0.x), 4294967295u, global2.x) | min(abs(vec4<u32>(global2.x, var_0.x, var_0.x, 78565u)), ~vec4<u32>(u_input.b, global2.x, global2.x, global2.x))) ^ (select(vec4<u32>(8867u, global2.x, 76775u, u_input.c.x) << (vec4<u32>(global2.x, 4294967295u, 20671u, var_0.x) % vec4<u32>(32u)), max(vec4<u32>(4294967295u, global2.x, u_input.b, u_input.c.x), vec4<u32>(0u, 0u, 0u, var_0.x)), all(var_1.b.yzx)) << (~vec4<u32>(1u, global2.x, var_0.x, 86330u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global2 = ~(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(19523u, 1u, 67296u, 13986u), vec4<u32>(1u, global2.x, 65031u, 62207u)) | ~vec4<u32>(var_0.x, 38165u, 4294967295u, 0u)) >> (abs(vec4<u32>(var_0.x >> (var_0.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23346u, 4294967295u), global2.zyz), global2.x | var_0.x, countOneBits(0u))) % vec4<u32>(32u)));
    return arg_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    global0 = array<Struct_1, 19>();
    var var_1 = global1.a.www;
    global0 = array<Struct_1, 19>();
    var var_2 = ~select(-vec4<i32>(_wgslsmith_div_i32(global1.e.x, global1.e.x), -1i, ~var_0.e.x, var_0.e.x | var_0.e.x), func_3(func_2(), vec4<i32>(min(-2147483647i, global1.e.x), 68982i, _wgslsmith_sub_i32(global1.e.x, global3.e.x), ~global3.e.x)), any(!global1.b.zx) || true);
    return global0[_wgslsmith_index_u32(0u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1038f);
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1317f)));
    let var_2 = ~3521u;
    var var_3 = (vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(-u_input.e.yzx, select(vec3<i32>(-2147483647i, 2147483647i, var_0.e.x), vec3<i32>(-17661i, u_input.e.x, -35903i), vec3<bool>(false, true, true)))) << (~global2.zxy % vec3<u32>(32u));
    let var_4 = func_1(-1538f);
    let var_5 = Struct_1(vec4<f32>(134f, 429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.x, var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -2444f)))), 591f), !vec4<bool>(true, false, var_0.b.x, !global3.b.x), _wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * -333f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-43469i, abs(70200i)), -vec2<i32>(var_0.e.x >> (2713u % 32u), 5620i)));
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, -866f, -1000f, var_4.d) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), var_6.c, var_4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1293f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(798f * -402f), _wgslsmith_f_op_f32(floor(var_4.a.x)), global3.c, global3.c), vec4<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(global1.a.x * -945f), var_4.c, _wgslsmith_div_f32(var_5.c, -925f))))), _wgslsmith_f_op_vec3_f32(-var_5.a.wzy), vec4<i32>(u_input.e.x, global3.e.x, _wgslsmith_mod_i32(2880i, ~(var_4.e.x >> (3240u % 32u))), u_input.d.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.d, global3.a.x)) + _wgslsmith_f_op_f32(-1000f + 598f)), _wgslsmith_f_op_f32(-211f * global1.c)), -612f));
}

