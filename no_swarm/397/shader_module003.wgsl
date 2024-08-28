struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-361f, 67387u, vec3<u32>(25384u, 4294967295u, 42434u)), Struct_1(175f, 4294967295u, vec3<u32>(0u, 58226u, 51599u)), Struct_1(241f, 1u, vec3<u32>(33065u, 1u, 3868u)), Struct_1(452f, 4294967295u, vec3<u32>(12604u, 1u, 1u)), Struct_1(2193f, 4294967295u, vec3<u32>(25072u, 8180u, 29178u)), Struct_1(281f, 111955u, vec3<u32>(32268u, 0u, 68720u)), Struct_1(1000f, 0u, vec3<u32>(1u, 23973u, 66318u)), Struct_1(-1919f, 5365u, vec3<u32>(4743u, 54683u, 43835u)), Struct_1(-1185f, 49495u, vec3<u32>(71264u, 3305u, 62912u)), Struct_1(-358f, 1u, vec3<u32>(1u, 1u, 0u)), Struct_1(-1614f, 4294967295u, vec3<u32>(1u, 1u, 0u)), Struct_1(-1116f, 81692u, vec3<u32>(43098u, 1u, 26100u)), Struct_1(687f, 26598u, vec3<u32>(30436u, 1u, 1u)), Struct_1(2270f, 4294967295u, vec3<u32>(15682u, 1u, 42215u)), Struct_1(-107f, 4294967295u, vec3<u32>(1u, 23952u, 1u)), Struct_1(1603f, 35253u, vec3<u32>(31227u, 58316u, 0u)), Struct_1(593f, 0u, vec3<u32>(1u, 80206u, 55605u)), Struct_1(771f, 4294967295u, vec3<u32>(4369u, 1u, 3689u)), Struct_1(-1000f, 81704u, vec3<u32>(0u, 1u, 1u)), Struct_1(-439f, 11173u, vec3<u32>(4294967295u, 19243u, 1u)), Struct_1(-810f, 47424u, vec3<u32>(91760u, 48346u, 34469u)), Struct_1(301f, 53866u, vec3<u32>(114456u, 1u, 22811u)), Struct_1(2383f, 12637u, vec3<u32>(4294967295u, 41952u, 20377u)));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(253f, 66707u, vec3<u32>(43301u, 4294967295u, 68434u)), Struct_1(-257f, 22667u, vec3<u32>(29744u, 27390u, 1u)), Struct_1(403f, 38845u, vec3<u32>(0u, 0u, 94293u)), Struct_1(1358f, 1u, vec3<u32>(0u, 4294967295u, 49127u)), Struct_1(1252f, 0u, vec3<u32>(0u, 0u, 33647u)), Struct_1(-972f, 0u, vec3<u32>(6525u, 0u, 23022u)), Struct_1(-257f, 14371u, vec3<u32>(1u, 0u, 0u)), Struct_1(302f, 16714u, vec3<u32>(30296u, 1829u, 3078u)), Struct_1(2451f, 26571u, vec3<u32>(124094u, 3834u, 37347u)), Struct_1(371f, 1u, vec3<u32>(47906u, 50202u, 13781u)), Struct_1(839f, 4294967295u, vec3<u32>(39074u, 14314u, 38101u)), Struct_1(-616f, 4294967295u, vec3<u32>(0u, 37004u, 29433u)), Struct_1(1000f, 1u, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(-609f, 1u, vec3<u32>(5767u, 0u, 1u)), Struct_1(-1504f, 18130u, vec3<u32>(91u, 86155u, 14774u)), Struct_1(-1000f, 1u, vec3<u32>(15616u, 16302u, 32021u)), Struct_1(1673f, 4294967295u, vec3<u32>(1u, 44820u, 31558u)), Struct_1(-850f, 4294967295u, vec3<u32>(4294967295u, 1u, 13109u)), Struct_1(-1798f, 3934u, vec3<u32>(4294967295u, 19362u, 41092u)), Struct_1(973f, 4294967295u, vec3<u32>(1u, 0u, 43641u)), Struct_1(918f, 0u, vec3<u32>(65688u, 41549u, 12607u)), Struct_1(-1221f, 1u, vec3<u32>(0u, 1u, 36621u)), Struct_1(-644f, 0u, vec3<u32>(4294967295u, 63939u, 78776u)), Struct_1(2557f, 92u, vec3<u32>(1669u, 4040u, 1u)), Struct_1(1208f, 28525u, vec3<u32>(4294967295u, 31490u, 77468u)), Struct_1(-535f, 113010u, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(-929f, 1u, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(2385f, 29017u, vec3<u32>(61290u, 15441u, 4294967295u)), Struct_1(1372f, 64040u, vec3<u32>(19838u, 1u, 14834u)), Struct_1(763f, 30001u, vec3<u32>(4294967295u, 1u, 9723u)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> bool {
    let var_0 = !arg_0;
    global1 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -462f);
    let var_2 = vec2<bool>(any(!(!vec4<bool>(arg_0, true, var_0, var_0))) | false, all(select(vec3<bool>(false == var_0, var_0, true), vec3<bool>(var_0 == false, select(arg_0, true, false), true), vec3<bool>(false, true, any(vec4<bool>(var_0, var_0, true, var_0))))));
    let var_3 = countOneBits(~u_input.a);
    return true;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 30>();
    let var_0 = select(vec3<u32>(u_input.b.x, 11871u, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), ~u_input.b), ~vec3<u32>(1u, 1u, 70965u)), func_3(!(!all(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1199f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -719f), 1f)), 334u, firstLeadingBit(~_wgslsmith_mult_u32(1u, 24391u))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f - -1490f)))), _wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(max(264f, 1f)))), u_input.b.x, var_0);
    let var_2 = vec3<bool>(!all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)))), 778f < var_1.a, any(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)) | false);
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u) | (abs(~var_1.c.zy) & (u_input.b.zx & countOneBits(var_0.yy))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(52129u, 13579u), ~var_1.b), var_1.c.yy));
    return var_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1425f, -2025f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1428f + 455f), _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(-1634f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(1756f)))))));
    let var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), any(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), func_3(true, vec4<f32>(-748f, 233f, 1603f, -1012f), u_input.b.x, 1u)), vec2<bool>(true, true))), true);
    let var_2 = var_1.x;
    global0 = array<Struct_1, 23>();
    let var_3 = vec4<i32>((8291i & (countOneBits(u_input.a) | ~(-2147483647i))) | (~(u_input.a | u_input.a) >> (u_input.b.x % 32u)), countOneBits(u_input.a), 1i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, 0i, u_input.a, 0i) & vec4<i32>(u_input.a, u_input.a, 1i, 0i)), ~vec4<i32>(2147483647i, -52937i, -1i, u_input.a) >> ((vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 64351u) | vec4<u32>(3995u, 61648u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))));
    return global0[_wgslsmith_index_u32(countOneBits(29883u) ^ ~select(~(u_input.b.x << (0u % 32u)), 1u, all(var_1.xy)), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(min(~58674u, 0u) >> (countOneBits(16762u) % 32u), 30u)];
    let var_1 = ~(~vec3<u32>(1u, 46968u, ~firstLeadingBit(0u)));
    var_0 = Struct_1(var_0.a, 39573u, u_input.b);
    var var_2 = 660f;
    var var_3 = func_1();
    var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(651i, u_input.a)), min(vec2<i32>(-2386i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), firstTrailingBit(~1u) >> (var_3.c.x % 32u), u_input.a);
}

