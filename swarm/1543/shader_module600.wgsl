struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 27>;

var<private> global2: vec4<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-global0.a.x);
    global1 = array<i32, 27>();
    var var_1 = Struct_1(false, ~abs(vec4<u32>(23299u, 61015u, 1u, 0u) >> (vec4<u32>(0u, u_input.b, 1u, global2.x) % vec4<u32>(32u))) | ~(select(vec4<u32>(u_input.d, 56485u, u_input.d, u_input.d), vec4<u32>(261u, 0u, 49639u, 142290u), true) & ~vec4<u32>(1u, global0.b.x, 1u, u_input.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 17952i), vec2<i32>(23557i, 49591i)), vec2<i32>(-2147483647i, u_input.e) ^ vec2<i32>(-1i, 1i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5981u, global0.b.x, u_input.b) >> (vec3<u32>(22018u, 4294967295u, global0.b.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(36289u, u_input.d, 1u))), 27u)]), _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(2147483647i, 6743i)), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(global1[_wgslsmith_index_u32(1u, 27u)], u_input.e)))), true, countOneBits(-26105i));
    let var_2 = true;
    let var_3 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.b.x ^ u_input.b, min(global2.x, 52966u)) ^ vec3<u32>(global0.b.x, _wgslsmith_clamp_u32(var_1.b.x, 14100u, u_input.a), _wgslsmith_mult_u32(35095u, 2647u)), ~global2.yxx));
    return var_1.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_2(global0.a, vec2<u32>(~26032u, 0u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), vec2<u32>(_wgslsmith_mod_u32(u_input.b << (global0.b.x % 32u), 0u) | firstTrailingBit(0u), 31599u));
    let var_2 = !select(!select(select(vec3<bool>(false, true, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(false, false, arg_1)), vec3<bool>(true, true, false), true), !select(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, false, arg_1), true), vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true))), vec3<bool>(!arg_1, arg_1, !(false && arg_1)));
    global2 = firstLeadingBit(~(~arg_2));
    global0 = var_1;
    return 2147483647i;
}

fn func_2(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = Struct_1(all(vec2<bool>(false, true)), firstLeadingBit(vec4<u32>(87116u, _wgslsmith_mult_u32(1u, 0u), 4294967295u, 1u)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.wzy, _wgslsmith_div_vec3_f32(vec3<f32>(1427f, -1078f, -425f), global0.a.xzx), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, -651f, 1535f))))), func_3(), vec4<u32>(1u, 17186u, ~global2.x, select(u_input.c.x, global0.b.x, false)) >> (vec4<u32>(abs(1u), ~17382u, _wgslsmith_add_u32(u_input.c.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(0u, 0u))) % vec4<u32>(32u)), vec2<i32>(firstLeadingBit(u_input.e), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-37000i, 2147483647i, -23223i, global1[_wgslsmith_index_u32(global2.x, 27u)]), vec4<i32>(1i, -20864i, global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(global0.b.x, 27u)])), ~vec4<i32>(u_input.e, u_input.e, -1i, -17328i)))), false, global1[_wgslsmith_index_u32(~45287u, 27u)]);
    var var_1 = Struct_2(vec4<f32>(-884f, 507f, 1636f, -1132f), _wgslsmith_add_vec2_u32(var_0.b.xy, firstTrailingBit(vec2<u32>(0u, ~global0.b.x))));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(-select(-vec3<i32>(var_0.c, global1[_wgslsmith_index_u32(1u, 27u)], 24833i), ~vec3<i32>(global1[_wgslsmith_index_u32(global2.x, 27u)], 2147483647i, var_0.c), !vec3<bool>(var_0.a, var_0.d, var_0.a)), ~(select(vec3<i32>(2147483647i, 0i, 164i), vec3<i32>(u_input.e, var_0.e, u_input.e), vec3<bool>(false, false, var_0.a)) >> (~var_0.b.zyz % vec3<u32>(32u)))), max(-2147483647i, 9815i));
    let var_3 = !(!select(select(!vec2<bool>(var_0.a, var_0.d), select(vec2<bool>(false, var_0.d), vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.a)), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.d), var_0.a)), select(vec2<bool>(true, true), !vec2<bool>(var_0.a, false), any(vec2<bool>(var_0.d, false))), vec2<bool>(var_0.d, all(vec2<bool>(false, var_0.a)))));
    var var_4 = vec3<i32>(var_0.e, u_input.e, 0i);
    return vec3<u32>(0u, _wgslsmith_mod_u32(1u, var_0.b.x), _wgslsmith_add_u32(var_0.b.x, countOneBits(93771u)) ^ 10754u);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = u_input.a >> (arg_1.a.x % 32u);
    var_0 = ~1u;
    let var_1 = Struct_1(1000f < global0.a.x, firstLeadingBit(~vec4<u32>(_wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x), u_input.b, _wgslsmith_div_u32(4294967295u, 61560u), _wgslsmith_mult_u32(0u, arg_1.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(53097u, 27u)], arg_0), vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 27u)]) & vec2<i32>(u_input.e, arg_0)), -22209i), min(vec2<i32>(min(22447i, 0i), u_input.e), ~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 11431i) >> (~global2.xw % vec2<u32>(32u)))), true, global1[_wgslsmith_index_u32((firstTrailingBit(_wgslsmith_add_u32(arg_1.a.x, u_input.a)) ^ arg_1.a.x) << (~global2.x % 32u), 27u)]);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, -676f, -1143f, -1000f))))), global0.a, true)) * _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.x & 0u, _wgslsmith_dot_vec2_u32(global2.wx, global2.yx)), ~vec2<u32>(global2.x, arg_1.a.x)) << (~reverseBits(u_input.c >> (vec2<u32>(var_1.b.x, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = global0.a.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(exp2(global0.a))), _wgslsmith_f_op_vec4_f32(max(global0.a, global0.a)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.b.x, u_input.a), max(vec2<u32>(18213u, abs(50838u)), reverseBits(~u_input.c))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = -21814i;
    var var_1 = func_5(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global0.b.x, 27u)] >> (55362u % 32u), 1i), (i32(-1i) * -1i) >> (~global0.b.x % 32u))), Struct_3(func_2(global0.a)));
    global1 = array<i32, 27>();
    var var_2 = 0u;
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(47357i, var_0, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(-21528i, u_input.e, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(0i, -1376i, -1i)), ~vec3<i32>(-21260i, global1[_wgslsmith_index_u32(global0.b.x, 27u)], global1[_wgslsmith_index_u32(global2.x, 27u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0, -17588i), vec3<i32>(13048i, u_input.e, -41456i)) | ~vec3<i32>(24840i, 35100i, global1[_wgslsmith_index_u32(0u, 27u)]), ~vec3<i32>(var_0, -14191i, u_input.e) << ((global2.wwy | vec3<u32>(6434u, 4294967295u, 0u)) % vec3<u32>(32u))), max(vec3<i32>(func_4(vec3<f32>(305f, global0.a.x, arg_0), false, vec4<u32>(var_1.b.x, var_1.b.x, 0u, global2.x), vec2<i32>(-40832i, -37171i)), firstLeadingBit(u_input.e), ~global1[_wgslsmith_index_u32(50977u, 27u)]), abs(-vec3<i32>(u_input.e, 68622i, -32243i)))) << (global2.xwz % vec3<u32>(32u));
    return func_5(var_3.x, Struct_3(min(global2.wxz, global2.wzw)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    global1 = array<i32, 27>();
    var var_0 = func_5(global1[_wgslsmith_index_u32(1u, 27u)], Struct_3(~(~vec3<u32>(arg_1.b.x, global2.x, arg_1.b.x) | max(global2.xyx, vec3<u32>(u_input.c.x, arg_1.b.x, 4294967295u)))));
    let var_1 = vec2<u32>(global2.x, arg_1.b.x >> (var_0.b.x % 32u)) & _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global2.wy, var_0.b), u_input.c ^ vec2<u32>(u_input.b, 1802u));
    let var_2 = min(1i, _wgslsmith_dot_vec2_i32(arg_0.wz, vec2<i32>(reverseBits(-u_input.e), arg_0.x)));
    global2 = ~_wgslsmith_sub_vec4_u32(~(~reverseBits(vec4<u32>(0u, global0.b.x, var_1.x, var_1.x))), firstTrailingBit((vec4<u32>(u_input.b, u_input.d, 1u, arg_1.b.x) >> (vec4<u32>(107247u, global0.b.x, 12295u, 29627u) % vec4<u32>(32u))) << (~vec4<u32>(1u, global2.x, var_0.b.x, 8544u) % vec4<u32>(32u))));
    return 4294967295u;
}

fn func_7(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(true, vec4<u32>(global2.x, ~arg_3.a.x, _wgslsmith_add_u32(global2.x, func_5(func_4(global0.a.yyw, false, vec4<u32>(arg_3.a.x, arg_3.a.x, global0.b.x, arg_3.a.x), arg_1.zy), Struct_3(global2.xwz)).b.x), _wgslsmith_dot_vec3_u32(arg_3.a, _wgslsmith_mult_vec3_u32(global2.wzz, vec3<u32>(76195u, arg_3.a.x, 1u)))), u_input.e, firstTrailingBit(global1[_wgslsmith_index_u32(1u, 27u)] & 0i) > global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, arg_0), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), u_input.c)) | ~41041u, 27u)], u_input.e);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(arg_2 + 1432f)))));
    var var_2 = Struct_3(firstTrailingBit(abs(var_0.b.xzw)));
    global1 = array<i32, 27>();
    let var_3 = func_3();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0.b.x, 27u)], 1i, global1[_wgslsmith_index_u32(0u, 27u)])), firstTrailingBit(vec4<i32>(-2147483647i, -1i, u_input.e, global1[_wgslsmith_index_u32(1u, 27u)]))), func_1(global0.a.x)), reverseBits(vec3<i32>(-2234i, ~_wgslsmith_mult_i32(9883i, 40408i), 1i)), func_5(~(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.a, 27u)]), Struct_3(_wgslsmith_mod_vec3_u32(global2.wxy, vec3<u32>(1u, 21340u, 0u)))).a.x, Struct_3(global2.xwy));
    var var_1 = vec3<bool>(false, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global2.x), ~var_0.a.x), u_input.b) >= ~(~func_1(1000f).b.x), true);
    var var_2 = _wgslsmith_mod_i32(43557i, -57538i);
    var_0 = Struct_3(_wgslsmith_clamp_vec3_u32(var_0.a, ~_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(114865u, var_0.a.x, 0u), abs(vec3<u32>(27563u, 235u, u_input.c.x))), vec3<u32>(_wgslsmith_clamp_u32(global2.x, ~4294967295u, global2.x), global2.x, ~(~global0.b.x))));
    var var_3 = vec2<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(func_2(vec4<f32>(global0.a.x, -402f, 332f, 157f)).x, ~0u), ~global2.x >> (14430u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f + _wgslsmith_f_op_f32(max(-814f, func_5(u_input.e, Struct_3(vec3<u32>(global2.x, u_input.d, global2.x))).a.x))) - -607f), -u_input.e, ~(-_wgslsmith_mod_vec4_i32(-vec4<i32>(39269i, 1i, -28292i, global1[_wgslsmith_index_u32(global2.x, 27u)]), firstTrailingBit(vec4<i32>(0i, 2147483647i, u_input.e, global1[_wgslsmith_index_u32(var_3.x, 27u)])))), vec4<i32>(global1[_wgslsmith_index_u32(59582u, 27u)], _wgslsmith_sub_i32(abs(~u_input.e), ~_wgslsmith_dot_vec4_i32(vec4<i32>(34279i, u_input.e, 0i, 2147483647i), vec4<i32>(-66222i, global1[_wgslsmith_index_u32(10054u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], -1i))), 17649i, func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(global0.a.wyz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(551f, 187f, global0.a.x) + global0.a.zzx))), _wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, var_1.x)) > _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 12832u), vec4<u32>(1u, 101138u, 15273u, u_input.c.x), firstTrailingBit(vec4<u32>(global2.x, 12474u, 118809u, 5503u))), firstLeadingBit(~vec2<i32>(41796i, -25061i)))), global0.a.zy);
}

