struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<i32> = vec4<i32>(32872i, -16487i, 2147483647i, 1i);

var<private> global2: vec4<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    let var_0 = Struct_1(16415i, false, ~global2.wx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1426f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(floor(679f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f * -1000f) - 1000f))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(floor(2116f)) > _wgslsmith_f_op_f32(f32(-1f) * -866f)), vec4<bool>(false, true, true, true), vec4<bool>(any(vec4<bool>(false, true, false, false)), (global2.x | global2.x) == ~136491u, true, true)));
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = var_0;
    let var_4 = var_2.e.x;
    return all(!select(var_3.e.zww, select(var_3.e.xyx, select(var_2.e.xxz, var_3.e.wxx, var_1.e.zyw), select(vec3<bool>(var_2.e.x, false, var_0.e.x), vec3<bool>(var_2.b, var_1.e.x, false), var_2.e.x)), !var_3.e.xxx));
}

fn func_2() -> u32 {
    global2 = ~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(20903u, 34259u, global2.x, 66918u))) >> (vec4<u32>(global2.x, firstTrailingBit(35114u), global2.x, countOneBits(_wgslsmith_mod_u32(0u, 1u))) % vec4<u32>(32u)));
    let var_0 = ~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(global2.x >> (46269u % 32u), global2.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, global2.x, 4321u), global2.xwx)));
    let var_1 = Struct_1(21378i, true, global2.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(404f, -1264f, 1000f, 1239f) + vec4<f32>(-602f, -214f, 201f, 557f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, -717f, 1057f, -1129f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(-964f, _wgslsmith_f_op_f32(900f + -1000f))), 1f, 1060f, _wgslsmith_f_op_f32(f32(-1f) * -1136f))), select(vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), true, false, true), vec4<bool>(all(vec3<bool>(true, true, true)), (var_0 < 16258u) && false, !func_3(), true), !(~1u != _wgslsmith_mod_u32(2036u, var_0))));
    global2 = _wgslsmith_mult_vec4_u32(select((max(vec4<u32>(var_0, var_1.c.x, 66413u, 4294967295u), vec4<u32>(40749u, var_1.c.x, var_0, global2.x)) | ~vec4<u32>(0u, global2.x, var_1.c.x, 23492u)) & countOneBits(reverseBits(vec4<u32>(748u, 0u, 4294967295u, global2.x))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(15561u, global2.x, 39731u, global2.x), vec4<u32>(global2.x, global2.x, 0u, var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, global2.x, 1241u), vec4<u32>(0u, var_1.c.x, var_0, global2.x))) << (vec4<u32>(_wgslsmith_mod_u32(43331u, 43226u), 394u, var_1.c.x >> (global2.x % 32u), 0u) % vec4<u32>(32u)), var_1.e.x), abs(vec4<u32>(var_0, _wgslsmith_dot_vec2_u32(var_1.c, global2.yx << (var_1.c % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, global2.x, var_1.c.x, global2.x)), ~vec4<u32>(global2.x, 30921u, var_0, global2.x)), global2.x ^ var_0)));
    let var_2 = 0u;
    return max(4294967295u, abs(25290u));
}

fn func_1() -> i32 {
    let var_0 = any(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, -1i >= global1.x, true, select(false, false, true)), any(vec3<bool>(true, false, false)) | all(vec3<bool>(true, true, false))));
    global1 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(global1.x, global1.x, var_0), -21152i, global1.x, abs(global1.x)), vec4<i32>(global1.x, -1i, global1.x, 62920i) << (vec4<u32>(59789u, global2.x, global2.x, 0u) % vec4<u32>(32u)), ~vec4<i32>(global1.x, u_input.a.x, 38610i, 19520i)) >> ((vec4<u32>(~56433u, _wgslsmith_clamp_u32(7041u, 80475u, 71856u), global2.x, global2.x) >> (~vec4<u32>(28861u, 1u, global2.x, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = ~(~func_2());
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~global1.yx, -global1.yy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 0i), global1.wz)) << (global2.yy % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.a.zx, ~firstTrailingBit(global1.yx))), abs(_wgslsmith_sub_i32(0i, ~_wgslsmith_div_i32(global1.x, u_input.a.x))));
    global1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, -1i, global1.x, 1i), abs(vec4<i32>(-1i, global1.x, u_input.a.x, 41997i))) | -abs(vec4<i32>(u_input.a.x, 6823i, u_input.a.x, -2147483647i)), vec4<i32>(1i, _wgslsmith_div_i32(-u_input.a.x, -global1.x), 19556i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(52675i, -5285i, 21942i), vec3<i32>(u_input.a.x, global1.x, 0i))))), vec4<i32>(-1i, 26212i, -33021i, u_input.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-15889i, -505i, 21796i, 10606i), vec4<i32>(-36070i, u_input.a.x, global1.x, global1.x)), -2147483647i, -952i), min(select(vec4<i32>(global1.x, -1i, 53171i, u_input.a.x), vec4<i32>(0i, 10967i, -44901i, -16779i), true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -54290i) & vec4<i32>(49930i, global1.x, global1.x, u_input.a.x))), -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-21711i, 2147483647i, global1.x, -21880i), vec4<i32>(-56769i, global1.x, global1.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, global1.x, u_input.a.x))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global2.x << (14523u % 32u), 1u);
    var var_1 = ~firstTrailingBit(vec2<i32>(select(func_1(), ~0i, all(vec2<bool>(false, false))), -1i));
    let var_2 = Struct_1(var_1.x, all(vec4<bool>(true, true, true, true)) || true, ~firstLeadingBit(~vec2<u32>(1u, 29605u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-824f, 384f, -799f, 131f), vec4<f32>(-578f, 3240f, -1016f, -450f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-305f, 1699f, -695f, 1000f)))))), vec4<bool>(true, true, true, true));
    var var_3 = min(u_input.a, vec3<i32>(~(-2147483647i), -var_1.x, var_2.a));
    global1 = select(countOneBits(~abs(vec4<i32>(u_input.a.x, -14255i, -2147483647i, u_input.a.x))) | _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 61712i, -29836i, 1i), -abs(vec4<i32>(-1i, 1i, 2147483647i, -1i))), vec4<i32>(12081i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.a, -8600i, var_3.x), countOneBits(u_input.a), var_2.e.x), vec3<i32>(1i, func_1(), var_2.a)), -58662i >> (func_2() % 32u), 1i), vec4<bool>(var_2.e.x, true | (true | any(var_2.e.ww)), var_2.e.x, func_3()));
    let var_4 = select(select(vec2<bool>(true, true), var_2.e.zz, vec2<bool>(true, all(vec3<bool>(true, var_2.b, false)))), select(var_2.e.zz, var_2.e.yw, !select(vec2<bool>(true, var_2.b), var_2.e.xz, var_2.b)), var_2.e.yz);
    global2 = _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(_wgslsmith_mod_u32(global2.x, global2.x), ~60321u, _wgslsmith_sub_u32(var_0.x, var_0.x), min(2619u, 27492u))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(abs(vec4<u32>(0u, 33089u, var_0.x, global2.x))), ~(~vec4<u32>(var_0.x, 42437u, 0u, 18242u))), vec4<u32>(var_0.x, 0u, 1u, reverseBits(0u) ^ global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_2.d)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + _wgslsmith_f_op_f32(-var_2.d.x)), 170f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d.x))), var_2.d.x)), ~var_0.x);
}

