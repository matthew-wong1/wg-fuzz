struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-371f, vec2<u32>(25327u, 13483u), -23667i, 41823u, vec2<i32>(17624i, -10537i)), Struct_1(-1000f, vec2<u32>(78707u, 4294967295u), -22082i, 4294967295u, vec2<i32>(-9301i, -1i)), Struct_1(104f, vec2<u32>(37938u, 39206u), -18230i, 4294967295u, vec2<i32>(1i, -1i)), Struct_1(-1248f, vec2<u32>(1753u, 1u), 0i, 1u, vec2<i32>(-23600i, -9969i)), Struct_1(183f, vec2<u32>(125147u, 1u), -1i, 63802u, vec2<i32>(8468i, 16136i)), Struct_1(-488f, vec2<u32>(35132u, 4294967295u), 33543i, 24515u, vec2<i32>(2147483647i, -1i)), Struct_1(969f, vec2<u32>(116553u, 1u), 1i, 0u, vec2<i32>(-10064i, 1i)), Struct_1(-934f, vec2<u32>(0u, 1u), -24370i, 72362u, vec2<i32>(2147483647i, 1i)), Struct_1(264f, vec2<u32>(0u, 20373u), 1i, 4294967295u, vec2<i32>(1i, -35100i)), Struct_1(473f, vec2<u32>(37364u, 23332u), 2147483647i, 4294967295u, vec2<i32>(-2839i, 2147483647i)), Struct_1(-2107f, vec2<u32>(0u, 0u), -43919i, 0u, vec2<i32>(-48800i, 1i)), Struct_1(513f, vec2<u32>(1u, 4294967295u), 27168i, 16414u, vec2<i32>(-30691i, -9479i)), Struct_1(738f, vec2<u32>(1u, 1u), 13800i, 35107u, vec2<i32>(0i, 2147483647i)), Struct_1(-207f, vec2<u32>(17559u, 4294967295u), 0i, 0u, vec2<i32>(12451i, -29053i)), Struct_1(652f, vec2<u32>(0u, 14680u), 2147483647i, 35140u, vec2<i32>(0i, 85010i)), Struct_1(-1459f, vec2<u32>(1u, 0u), 74901i, 4294967295u, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(156f, vec2<u32>(1u, 1u), 1i, 2225u, vec2<i32>(2147483647i, 1i)), Struct_1(716f, vec2<u32>(0u, 4083u), 1774i, 0u, vec2<i32>(-11106i, 2147483647i)), Struct_1(908f, vec2<u32>(40806u, 0u), 55455i, 45639u, vec2<i32>(25922i, 21721i)), Struct_1(-349f, vec2<u32>(1u, 0u), -10514i, 4294967295u, vec2<i32>(24536i, 1i)), Struct_1(-1795f, vec2<u32>(61903u, 47507u), -41188i, 0u, vec2<i32>(2147483647i, -1i)), Struct_1(1795f, vec2<u32>(1u, 1u), -1i, 4294967295u, vec2<i32>(22887i, i32(-2147483648))), Struct_1(458f, vec2<u32>(43216u, 0u), 0i, 66103u, vec2<i32>(26712i, -10246i)), Struct_1(879f, vec2<u32>(1u, 16614u), -8547i, 60539u, vec2<i32>(-21234i, 1975i)), Struct_1(504f, vec2<u32>(51482u, 4294967295u), -1i, 4294967295u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(1000f, vec2<u32>(1u, 0u), 18328i, 0u, vec2<i32>(12146i, 0i)), Struct_1(-328f, vec2<u32>(19171u, 75520u), i32(-2147483648), 1u, vec2<i32>(365i, -3941i)), Struct_1(-201f, vec2<u32>(14721u, 4294967295u), 25329i, 4294967295u, vec2<i32>(-1i, 21958i)), Struct_1(-2326f, vec2<u32>(17583u, 20073u), -7650i, 4294967295u, vec2<i32>(22942i, -1i)), Struct_1(-515f, vec2<u32>(35107u, 4294967295u), -829i, 4294967295u, vec2<i32>(-32471i, -1i)), Struct_1(1026f, vec2<u32>(17494u, 63917u), 1i, 0u, vec2<i32>(2147483647i, 2147483647i)));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(728f, vec2<u32>(4294967295u, 4294967295u), 2147483647i, 0u, vec2<i32>(-59281i, 12580i)), Struct_1(2174f, vec2<u32>(1u, 41378u), 2147483647i, 1u, vec2<i32>(2147483647i, 7803i)), Struct_1(869f, vec2<u32>(18117u, 35531u), 39274i, 4001u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-1843f, vec2<u32>(3740u, 3536u), 2147483647i, 0u, vec2<i32>(21006i, -30085i)), Struct_1(1592f, vec2<u32>(11508u, 4294967295u), 2147483647i, 0u, vec2<i32>(1i, 10214i)), Struct_1(-500f, vec2<u32>(10166u, 1u), 1i, 80244u, vec2<i32>(i32(-2147483648), 7314i)), Struct_1(266f, vec2<u32>(1u, 30315u), 2147483647i, 15282u, vec2<i32>(58837i, 37073i)), Struct_1(1946f, vec2<u32>(1u, 108383u), 1i, 35647u, vec2<i32>(-36708i, 13970i)), Struct_1(-1550f, vec2<u32>(1u, 4294967295u), 2147483647i, 77385u, vec2<i32>(-281i, 2147483647i)), Struct_1(1438f, vec2<u32>(88738u, 1u), 2147483647i, 30902u, vec2<i32>(-9688i, -46173i)), Struct_1(331f, vec2<u32>(482u, 4294967295u), 1i, 4294967295u, vec2<i32>(-15089i, -1i)), Struct_1(1000f, vec2<u32>(4294967295u, 0u), 2147483647i, 3017u, vec2<i32>(-74522i, 6728i)), Struct_1(462f, vec2<u32>(1u, 4294967295u), 1i, 1u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(1475f, vec2<u32>(5657u, 1u), 0i, 33767u, vec2<i32>(1i, -28418i)), Struct_1(2160f, vec2<u32>(4294967295u, 19016u), 2147483647i, 1u, vec2<i32>(-1422i, -1i)), Struct_1(-1400f, vec2<u32>(1u, 1u), -1i, 32850u, vec2<i32>(0i, -1i)), Struct_1(464f, vec2<u32>(3867u, 1u), -3864i, 4294967295u, vec2<i32>(-1i, 65995i)), Struct_1(-1000f, vec2<u32>(3922u, 53940u), 0i, 11806u, vec2<i32>(17535i, -8196i)), Struct_1(-1290f, vec2<u32>(32561u, 0u), -13388i, 11700u, vec2<i32>(2147483647i, 0i)), Struct_1(-683f, vec2<u32>(1u, 4294967295u), 8092i, 0u, vec2<i32>(-31001i, 2147483647i)), Struct_1(1632f, vec2<u32>(17574u, 0u), 1i, 51139u, vec2<i32>(2147483647i, -30034i)), Struct_1(-542f, vec2<u32>(39358u, 48129u), -25701i, 0u, vec2<i32>(0i, 0i)), Struct_1(-1786f, vec2<u32>(4294967295u, 40946u), -20082i, 10986u, vec2<i32>(-17388i, 13711i)), Struct_1(641f, vec2<u32>(1u, 80252u), 0i, 4294967295u, vec2<i32>(2147483647i, 3970i)), Struct_1(-1528f, vec2<u32>(1u, 44348u), 1i, 4294967295u, vec2<i32>(-10819i, -58297i)), Struct_1(439f, vec2<u32>(0u, 6643u), -1i, 27467u, vec2<i32>(-48774i, -12831i)), Struct_1(843f, vec2<u32>(4535u, 8053u), -1i, 4294967295u, vec2<i32>(i32(-2147483648), 1i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = u_input.b >> (_wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(9047u, arg_0.b.x, 1u)), vec3<u32>(~(~138096u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.d, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(9475u, 1u, 1u), vec3<u32>(66777u, arg_0.b.x, 64680u))), arg_0.b.x)) % 32u);
    var_0 = min(_wgslsmith_clamp_i32(~(-1i), min(19105i, ~0i), global1.x) ^ abs(abs(~u_input.b)), 4209i | _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(~(-1i), ~u_input.b, ~11848i)));
    global2 = array<Struct_1, 27>();
    global1 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(41262i, 37541i, 21088i), vec3<i32>(2147483647i, global1.x, 7559i)) ^ countOneBits(vec3<i32>(arg_0.c, -1i, -49292i)), -(~vec3<i32>(arg_0.c, 2665i, global1.x)));
    global1 = vec3<i32>(countOneBits(_wgslsmith_sub_i32(-global1.x, _wgslsmith_div_i32(-22i, global1.x))) | 1i, _wgslsmith_add_i32(global1.x, arg_0.c), i32(-1i) * -global1.x);
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-436f)), arg_0.a)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<i32> {
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    global1 = max(-(~vec3<i32>(1i, -2147483647i, u_input.b)), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, global1.x, 50971i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, arg_0), vec3<i32>(global1.x, arg_0, 20472i))) & (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_0), vec3<i32>(u_input.b, u_input.b, 16774i)) ^ (vec3<i32>(43151i, 45934i, -5240i) ^ vec3<i32>(arg_0, global1.x, -2147483647i)))) ^ -vec3<i32>(global1.x, global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, arg_0), vec2<i32>(1i, global1.x)), global1.yy));
    let var_0 = Struct_2(vec4<bool>(!all(vec3<bool>(false, false, false)) && (countOneBits(arg_0) <= ~(-50003i)), (u_input.c ^ 0u) <= (~u_input.a.x << (103356u % 32u)), all(vec3<bool>(u_input.b > 2479i, true, true)), !select(any(vec2<bool>(false, true)), false, 122f <= arg_2.x)), !(abs(u_input.c) == (u_input.c >> (u_input.c % 32u))), false && !all(vec4<bool>(false, false, false, true)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(f32(-1f) * -584f)) - arg_2.x), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(-123f, ~vec2<u32>(u_input.c, u_input.c), arg_0, ~11455u, max(global1.xx, global1.yy)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)))).x));
    let var_1 = ~u_input.b;
    return vec3<i32>(global1.x & countOneBits(abs(-2147483647i)), global1.x, firstLeadingBit(var_1));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = -(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(1953i, 2147483647i, global1.x), vec3<bool>(false, false, arg_2.x)), vec3<i32>(-1i, u_input.b, -2147483647i)), vec3<i32>(-u_input.b, global1.x ^ arg_1, arg_1)) ^ (abs(-vec3<i32>(-1i, u_input.b, -9551i)) & func_4(u_input.b, _wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec2<bool>(arg_2.x, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(357f, -770f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(460f - -457f), arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(sign(-1326f))))), vec2<u32>(38401u, ~u_input.a.x >> (25171u % 32u)), -var_0.x, 1u, -select(-vec2<i32>(33197i, arg_1), -global1.xx, arg_0) | max(var_0.xz, min(global1.yy, var_0.yz) >> (vec2<u32>(0u, arg_3.x) % vec2<u32>(32u))));
    let var_2 = 0u;
    let var_3 = Struct_2(!select(!arg_2, select(!vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_2.x, true, false), arg_2), !arg_0 && (104704u > var_1.d)), true, !(~(u_input.b >> (var_1.d % 32u)) < 17010i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(select(-522f, var_1.a, arg_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(abs(var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f - var_1.a)))));
    return -((vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(44694i, -181i, arg_1, var_1.e.x), vec4<i32>(-64363i, var_0.x, var_1.e.x, 1i)), arg_1 << (6872u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -16590i, var_1.c), var_0), -2147483647i) ^ ~firstTrailingBit(vec4<i32>(global1.x, 1i, var_1.c, 22975i))) | vec4<i32>(var_0.x, _wgslsmith_mult_i32(global1.x, 1i), _wgslsmith_mod_i32(~(-1i), ~global1.x), _wgslsmith_mod_i32(1i, -2147483647i)));
}

fn func_1() -> vec3<u32> {
    var var_0 = ~_wgslsmith_add_vec4_i32(~select(select(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(global1.x, global1.x, -2147483647i, -17142i), vec4<bool>(false, false, false, false)), ~vec4<i32>(global1.x, 2147483647i, u_input.b, 8994i), vec4<bool>(true, true, true, true)), -func_2(true, ~global1.x, vec4<bool>(true, false, false, true), vec4<u32>(u_input.c, 4294967295u, 40572u, u_input.c)));
    let var_1 = Struct_2(select(vec4<bool>(false, true, false, any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), true), !(!select(true, true, true))), false, all(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -286f)))))))));
    global0 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(abs(reverseBits(u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x), vec4<u32>(1u, 62795u, u_input.a.x, 40494u)), u_input.a.x)), u_input.a.x);
    return ~(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 0u, u_input.a.x) & min(~vec3<u32>(1u, 20031u, u_input.c), ~abs(vec3<u32>(0u, 26348u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    let var_2 = abs(vec4<u32>(select(var_0.x, 23897u, false), ~4294967295u, ~u_input.a.x, _wgslsmith_mod_u32(45904u, 4294967295u)) & ~max(vec4<u32>(1850u, 4294967295u, 41689u, 30197u), vec4<u32>(4441u, var_0.x, var_0.x, var_0.x))) << (vec4<u32>(29503u, abs(u_input.a.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, 56875u, u_input.a.x)), firstTrailingBit(vec3<u32>(53698u, var_0.x, var_0.x)) ^ ~vec3<u32>(var_0.x, 0u, u_input.a.x)), var_0.x) % vec4<u32>(32u));
    var_0 = ~vec3<u32>(~(~0u), 100076u, ~(~(~u_input.c)));
    var var_3 = global0[_wgslsmith_index_u32(~1u, 31u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(42143u, 4103i, _wgslsmith_f_op_f32(ceil(var_3.a)));
}

