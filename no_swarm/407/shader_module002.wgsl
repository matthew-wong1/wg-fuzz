struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec4<f32> = vec4<f32>(-1370f, -952f, 1000f, -1277f);

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(-2011f, -863f), vec3<f32>(-864f, -1610f, 1836f), 0u, vec4<i32>(-1342i, 1i, -7541i, -35545i), -105f), Struct_1(vec2<f32>(292f, 599f), vec3<f32>(297f, -1854f, 1041f), 4294967295u, vec4<i32>(0i, -1954i, -1i, 1i), 212f), Struct_1(vec2<f32>(-582f, -208f), vec3<f32>(910f, 134f, 562f), 15181u, vec4<i32>(25i, 1i, 1i, 1i), 890f), Struct_1(vec2<f32>(284f, 1347f), vec3<f32>(-1000f, -1159f, 115f), 41382u, vec4<i32>(-24384i, -1i, 0i, -7218i), 1068f), Struct_1(vec2<f32>(-628f, -275f), vec3<f32>(-736f, 866f, 1400f), 18090u, vec4<i32>(i32(-2147483648), 55083i, 2147483647i, 0i), 1806f), Struct_1(vec2<f32>(-231f, 175f), vec3<f32>(1334f, 267f, 1330f), 4294967295u, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 0i), 234f), Struct_1(vec2<f32>(831f, 286f), vec3<f32>(-962f, -113f, -115f), 1u, vec4<i32>(i32(-2147483648), 4636i, i32(-2147483648), -1i), -1458f), Struct_1(vec2<f32>(-1018f, 1130f), vec3<f32>(234f, 583f, 458f), 1u, vec4<i32>(1860i, 1i, -43697i, 29587i), 2016f), Struct_1(vec2<f32>(1001f, 174f), vec3<f32>(1693f, 904f, 560f), 1u, vec4<i32>(45051i, 20040i, 2147483647i, -1i), -893f), Struct_1(vec2<f32>(1033f, 330f), vec3<f32>(618f, 1550f, -1146f), 0u, vec4<i32>(i32(-2147483648), 26006i, 2214i, 18421i), -538f), Struct_1(vec2<f32>(-1746f, 1970f), vec3<f32>(-438f, -1091f, 1066f), 4294967295u, vec4<i32>(14036i, 30589i, -27201i, -53364i), -664f), Struct_1(vec2<f32>(217f, -468f), vec3<f32>(750f, 423f, 1042f), 4294967295u, vec4<i32>(53230i, -41011i, 1i, i32(-2147483648)), -689f), Struct_1(vec2<f32>(195f, -506f), vec3<f32>(253f, 973f, -2183f), 0u, vec4<i32>(27782i, -14428i, 57647i, 0i), -1000f), Struct_1(vec2<f32>(690f, 610f), vec3<f32>(-340f, 1000f, 509f), 0u, vec4<i32>(-9528i, 0i, 0i, 4107i), -1381f), Struct_1(vec2<f32>(1280f, -985f), vec3<f32>(595f, 1535f, -731f), 402u, vec4<i32>(-33646i, -5923i, -1i, i32(-2147483648)), -422f), Struct_1(vec2<f32>(820f, 318f), vec3<f32>(-2478f, -431f, -1194f), 4294967295u, vec4<i32>(i32(-2147483648), -19253i, 0i, -1i), 170f), Struct_1(vec2<f32>(1189f, -577f), vec3<f32>(-1072f, 1838f, -1533f), 0u, vec4<i32>(1i, 26949i, -3869i, -19725i), 804f), Struct_1(vec2<f32>(-516f, 750f), vec3<f32>(958f, 1337f, -389f), 0u, vec4<i32>(0i, -51504i, i32(-2147483648), 1i), -1000f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    return firstTrailingBit(0u);
}

fn func_2() -> i32 {
    global0 = array<vec4<bool>, 13>();
    global3 = array<Struct_1, 16>();
    var var_0 = vec4<i32>(1i, -2147483647i, 0i, 1i);
    var var_1 = !global0[_wgslsmith_index_u32(72073u, 13u)];
    var var_2 = !var_1.x;
    return (~reverseBits(1i) ^ (_wgslsmith_add_i32(~7301i, var_0.x) >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u))) | -select(0i, -1i, !var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = vec4<u32>(countOneBits(114608u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, 0u) >> ((u_input.a.zy | u_input.a.zy) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(23557u, 4294967295u)), u_input.a.xx)), u_input.a.x, arg_0.c);
    var var_1 = ~(~(max(4294967295u, u_input.a.x) >> (~33540u % 32u)) & var_0.x);
    var_1 = firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(~(6353u ^ u_input.a.x), var_0.x), arg_0.c));
    global3 = array<Struct_1, 16>();
    let var_2 = func_2();
    return _wgslsmith_div_u32(arg_0.c, ~(~7817u ^ countOneBits(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xz), ~func_1(vec2<i32>(2147483647i, -20921i), global2.xz, Struct_1(vec2<f32>(-674f, global2.x), global2.xzz, 0u, vec4<i32>(-19372i, -5774i, 1i, -13865i), global2.x), vec4<u32>(u_input.a.x, 5405u, 1u, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x))), 0u);
    var var_1 = vec4<i32>(0i, abs(func_2() | 75414i) >> ((firstTrailingBit(~33655u) << (func_3(global1[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_f_op_f32(step(global2.x, -166f))) % 32u)) % 32u), 1i, firstTrailingBit(func_2()));
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(reverseBits(18511i) ^ _wgslsmith_add_i32(-10302i, _wgslsmith_mult_i32(668i, var_1.x)), -2147483647i), ~_wgslsmith_div_i32(abs(select(var_1.x, var_1.x, true)), _wgslsmith_sub_i32(~var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 2147483647i, 11823i), var_1.yxx))));
    let var_4 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true);
    global1 = array<Struct_1, 30>();
    var var_5 = select(!(!(!vec2<bool>(var_4.x, false))), !select(select(vec2<bool>(false, false), var_4.xy, true), !vec2<bool>(true, var_4.x), select(vec2<bool>(var_4.x, var_4.x), vec2<bool>(false, var_4.x), vec2<bool>(var_4.x, var_4.x))), vec2<bool>(true != any(select(vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(var_4.x, true, var_4.x), var_4.x)), !all(var_4) | all(!vec2<bool>(var_4.x, false))));
    global3 = array<Struct_1, 16>();
    let var_6 = ~_wgslsmith_clamp_i32(8306i, _wgslsmith_mod_i32(-(~(-2147483647i)), var_1.x), ~var_1.x ^ -33090i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))), var_1.xyy, _wgslsmith_f_op_vec2_f32(global2.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.yx, global2.zx, var_4.zz))))), u_input.a);
}

