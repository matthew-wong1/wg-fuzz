struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(1671f, 647f), vec2<f32>(-1798f, -1224f), vec2<f32>(461f, -554f), vec2<f32>(1081f, 705f), vec2<f32>(-268f, -144f), vec2<f32>(882f, 2036f), vec2<f32>(-1853f, -130f), vec2<f32>(1196f, 1102f), vec2<f32>(694f, 792f), vec2<f32>(-108f, 796f), vec2<f32>(1000f, 424f), vec2<f32>(-211f, 2391f), vec2<f32>(-436f, -104f), vec2<f32>(-1645f, -2100f), vec2<f32>(232f, -1014f), vec2<f32>(1006f, -288f), vec2<f32>(199f, -728f), vec2<f32>(-577f, -1115f), vec2<f32>(1707f, 2084f), vec2<f32>(134f, -830f), vec2<f32>(1483f, -551f), vec2<f32>(-1277f, -1000f), vec2<f32>(-1000f, 295f), vec2<f32>(1004f, -781f), vec2<f32>(947f, 1000f), vec2<f32>(388f, -823f), vec2<f32>(-692f, 445f), vec2<f32>(881f, 1453f));

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(4294967295u, vec3<f32>(478f, 1000f, -797f), vec4<i32>(i32(-2147483648), -1i, -18013i, -66114i)), Struct_1(1u, vec3<f32>(494f, -1225f, 1197f), vec4<i32>(38270i, -32333i, 37068i, -42563i)), Struct_1(74082u, vec3<f32>(1773f, 1948f, 654f), vec4<i32>(2147483647i, 0i, 14980i, 10829i)), Struct_1(0u, vec3<f32>(-980f, 560f, 1000f), vec4<i32>(-36341i, -6471i, 0i, 0i)), Struct_1(3787u, vec3<f32>(-1384f, 1000f, 2051f), vec4<i32>(-1i, 0i, 436i, 30383i)), Struct_1(61189u, vec3<f32>(-630f, -408f, -1251f), vec4<i32>(1i, 0i, -10131i, -1i)), Struct_1(0u, vec3<f32>(-704f, -1315f, 150f), vec4<i32>(-15460i, 8384i, -1i, 2147483647i)), Struct_1(1u, vec3<f32>(-571f, -1410f, 790f), vec4<i32>(-11087i, 2147483647i, 1i, 0i)), Struct_1(1u, vec3<f32>(-2018f, -770f, -357f), vec4<i32>(2147483647i, -3934i, 8092i, -60627i)), Struct_1(6053u, vec3<f32>(-444f, 671f, -800f), vec4<i32>(0i, 28831i, 1i, 29452i)), Struct_1(4768u, vec3<f32>(795f, 921f, 1203f), vec4<i32>(-55594i, -1117i, 33976i, 1i)), Struct_1(1u, vec3<f32>(-2355f, 393f, 1357f), vec4<i32>(1i, 1i, 34677i, -1i)), Struct_1(58592u, vec3<f32>(-394f, 110f, 187f), vec4<i32>(1i, -1i, 0i, 1i)), Struct_1(0u, vec3<f32>(-204f, 308f, 1417f), vec4<i32>(27039i, -1i, 47437i, -1i)), Struct_1(3667u, vec3<f32>(-2378f, 152f, -108f), vec4<i32>(-7284i, 2147483647i, 4904i, 2147483647i)), Struct_1(0u, vec3<f32>(305f, -1000f, 943f), vec4<i32>(1i, 2147483647i, 44453i, 49134i)), Struct_1(21007u, vec3<f32>(993f, 638f, -1268f), vec4<i32>(-24221i, 2147483647i, -1i, -40781i)), Struct_1(0u, vec3<f32>(491f, -1039f, -304f), vec4<i32>(20633i, 2147483647i, 2147483647i, -39555i)), Struct_1(1u, vec3<f32>(821f, 1684f, 886f), vec4<i32>(72748i, 1174i, 3189i, 0i)), Struct_1(0u, vec3<f32>(-1127f, 106f, -306f), vec4<i32>(-15337i, -1i, 1i, 98485i)), Struct_1(0u, vec3<f32>(-631f, -1126f, -1444f), vec4<i32>(-33333i, 2147483647i, -1i, 63328i)), Struct_1(7456u, vec3<f32>(1694f, 373f, 174f), vec4<i32>(-7739i, 974i, 73437i, -1i)), Struct_1(36657u, vec3<f32>(-1000f, 1467f, -1069f), vec4<i32>(4250i, -1i, i32(-2147483648), -10015i)), Struct_1(0u, vec3<f32>(897f, -640f, 1054f), vec4<i32>(26017i, -11736i, 15840i, -21683i)), Struct_1(0u, vec3<f32>(-310f, 1797f, -1838f), vec4<i32>(9562i, 21756i, -31722i, 0i)), Struct_1(4294967295u, vec3<f32>(998f, 2683f, 756f), vec4<i32>(-76130i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(9282u, vec3<f32>(1000f, 1243f, -1000f), vec4<i32>(0i, 0i, 2147483647i, -7123i)), Struct_1(44634u, vec3<f32>(-913f, -1417f, 523f), vec4<i32>(0i, 2147483647i, -1i, -50096i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global3 = array<Struct_1, 28>();
    global2 = array<vec2<f32>, 28>();
    return 0u <= u_input.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 28>();
    var var_0 = false;
    var var_1 = global0.x;
    global2 = array<vec2<f32>, 28>();
    var var_2 = arg_1;
    return -212f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(!(!vec4<bool>(false, true, func_3(), true)), Struct_1(~0u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), abs(vec4<i32>(0i, global0.x, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)))));
    global3 = array<Struct_1, 28>();
    let var_1 = global3[_wgslsmith_index_u32(9230u, 28u)];
    global0 = var_1.c.zxy;
    let var_2 = true;
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, ~(~var_1.a)), 1u), var_1.b, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 30914i, 22647i), vec4<i32>(1i, var_1.c.x, 43501i, u_input.b))));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~((vec3<i32>(arg_0.x, arg_0.x, -2147483647i) & vec3<i32>(u_input.b, arg_0.x, 35697i)) >> (firstTrailingBit(vec3<u32>(57165u, 20714u, u_input.c.x)) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, 22038i))), vec3<i32>(~(~(-997i)), global0.x, 1i));
    var var_1 = func_2();
    let var_2 = -436f;
    global3 = array<Struct_1, 28>();
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) * 785f)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 28>();
    let var_0 = -2843f;
    let var_1 = Struct_1(~(func_1(countOneBits(global0.zy)) & ~u_input.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 234f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))))), select(vec4<i32>(1i, 1i, -46120i, i32(-1i) * -2147483647i) >> (~vec4<u32>(0u, u_input.c.x, 45897u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(0i, u_input.b, u_input.b, _wgslsmith_clamp_i32(global0.x, global0.x, 1i) << (0u % 32u)), true));
    global3 = array<Struct_1, 28>();
    global2 = array<vec2<f32>, 28>();
    var var_2 = Struct_1(~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(685f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -1747f))))), vec4<i32>(0i, _wgslsmith_sub_i32(1i, u_input.b), global0.x << ((_wgslsmith_mod_u32(1u, u_input.a) | firstLeadingBit(24211u)) % 32u), _wgslsmith_dot_vec3_i32(var_1.c.yzw, _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_1.c.x, global0.x, u_input.b), var_1.c.zzz, true), vec3<i32>(u_input.b, var_1.c.x, global0.x) >> (vec3<u32>(var_1.a, var_1.a, 1u) % vec3<u32>(32u))))));
    let var_3 = func_2();
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, u_input.a)), u_input.c), _wgslsmith_f_op_vec3_f32(-var_3.b), -vec4<i32>(firstTrailingBit(-21440i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i), var_1.c.xxx), -4175i, ~(-2147483647i)) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, 1u, 4294967295u, 41171u), vec4<u32>(var_1.a, 57793u, 26645u, var_2.a)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4075u, 1u, var_2.a, var_3.a), vec4<u32>(var_1.a, var_2.a, 0u, 12400u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c.x, var_3.a, 1u, var_2.a), vec4<u32>(var_3.a, 34053u, 4294967295u, u_input.a), false), ~vec4<u32>(var_2.a, 1u, var_3.a, var_3.a), vec4<u32>(8237u, var_3.a, var_3.a, 1u)), all(vec3<bool>(false, false, false))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-1f), 574f);
}

