struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 68634u, 75584u, 4294967295u), vec4<u32>(25723u, 61533u, 4294967295u, 0u), vec4<u32>(1u, 6053u, 2870u, 0u), vec4<u32>(17365u, 19565u, 1u, 9901u), vec4<u32>(65494u, 21625u, 0u, 11217u), vec4<u32>(3561u, 1u, 93764u, 26938u), vec4<u32>(0u, 4294967295u, 1u, 3327u), vec4<u32>(4294967295u, 4294967295u, 55985u, 0u), vec4<u32>(4294967295u, 66460u, 77095u, 0u), vec4<u32>(15109u, 13097u, 82401u, 4294967295u));

var<private> global2: array<i32, 26>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(677f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1261f, _wgslsmith_f_op_f32(-210f + -653f)))), true)), 387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(128f, 3091f)), -2274f))))));
    global0 = _wgslsmith_f_op_f32(-var_0.x);
    let var_1 = var_0.xy;
    var var_2 = Struct_1(1u, true | (u_input.a.x < (u_input.a.x & min(u_input.a.x, 30465u))));
    global1 = array<vec4<u32>, 10>();
    return _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~abs(~vec3<i32>(-2103i, 1i, 14113i)), vec3<i32>(global2[_wgslsmith_index_u32(var_2.a, 26u)], global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 26u)], ~global2[_wgslsmith_index_u32(var_2.a, 26u)]) ^ select(_wgslsmith_add_vec3_i32(vec3<i32>(-2621i, global2[_wgslsmith_index_u32(var_2.a, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<i32>(11540i, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec3<i32>(52351i, -1i, global2[_wgslsmith_index_u32(var_2.a, 26u)]) | vec3<i32>(10180i, 33847i, global2[_wgslsmith_index_u32(var_2.a, 26u)]), false)), abs((vec3<i32>(6836i, global2[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i) ^ (vec3<i32>(global2[_wgslsmith_index_u32(var_2.a, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(var_2.a, 26u)]) & vec3<i32>(-2491i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -16362i))) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a, 101026u, 72288u), vec3<u32>(102424u, 66734u, var_2.a)) << (vec3<u32>(var_2.a, 17082u, 7973u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = select(vec3<i32>(3712i, -2147483647i, countOneBits(-7340i) << (abs(u_input.a.x) % 32u)), select(vec3<i32>(abs(arg_0), arg_0, -2428i), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 1i, arg_0)), vec3<bool>(true, true, true)) & select(~(-vec3<i32>(5965i, global2[_wgslsmith_index_u32(14330u, 26u)], -19963i)), func_3(), _wgslsmith_div_f32(1215f, 302f) != _wgslsmith_f_op_f32(sign(402f))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, false, false), true), vec3<bool>(all(vec4<bool>(true, true, false, true)), u_input.a.x > (1u & u_input.a.x), select(true, all(vec4<bool>(false, true, false, true)), true)), !select(false, true, true)));
    global0 = -1000f;
    var var_1 = Struct_1(41721u, all(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let var_2 = vec4<i32>(5534i, 2147483647i, 0i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, abs(var_0.x), _wgslsmith_add_i32(-9083i, -13037i), -42057i)), select(vec4<i32>(arg_0, -13502i, -12070i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2249i, -6394i), vec4<i32>(var_0.x, arg_0, -2147483647i, var_0.x)), !vec4<bool>(true, true, false, var_1.b)) ^ ((vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 26u)], -38570i, var_0.x) ^ vec4<i32>(-107069i, -2147483647i, 1683i, arg_0)) >> (~global1[_wgslsmith_index_u32(var_1.a, 10u)] % vec4<u32>(32u)))));
    global1 = array<vec4<u32>, 10>();
    return Struct_4(vec3<bool>(true, var_1.b, false), vec3<u32>(~4294967295u, ~firstTrailingBit(0u | u_input.a.x), 55075u), Struct_1(99775u, select(-22599i >= var_2.x, !var_1.b, true)), Struct_2(19162u, Struct_1(firstTrailingBit(countOneBits(4294967295u)), u_input.a.x > max(4294967295u, var_1.a)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(var_1.a, 0u), (17451u << (1u % 32u)) >> (_wgslsmith_mult_u32(var_1.a, 9513u) % 32u), _wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)))), Struct_3(!vec2<bool>(u_input.a.x == 1u, !var_1.b), var_2));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-547f, _wgslsmith_f_op_f32(max(367f, -386f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2702f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(380f - -422f), _wgslsmith_f_op_f32(1000f - 313f), true != arg_3.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, _wgslsmith_f_op_f32(f32(-1f) * -430f), 296f, -1460f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), -1824f, _wgslsmith_f_op_f32(f32(-1f) * -120f), 598f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(920f, -1137f, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f + 388f))))));
    let var_1 = arg_1;
    var var_2 = func_2(_wgslsmith_mult_i32(1i, select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 42931u), arg_3.b.zy ^ vec2<u32>(arg_3.d.a, arg_0.x)), 26u)], -28486i, var_1.x))).e;
    var_2 = Struct_3(select(select(vec2<bool>(all(var_1.wz), func_2(arg_2).e.a.x), vec2<bool>(all(vec2<bool>(false, true)), false), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3.e.b.x, arg_2), arg_3.e.b.yxx)).a.zx), !vec2<bool>(true, arg_1.x & false), !arg_1.x), ~vec4<i32>(~(-49196i), -30612i, _wgslsmith_mod_i32(firstTrailingBit(var_2.b.x), var_2.b.x), -2147483647i));
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(arg_0.x, 10u)]), vec4<u32>(31944u, arg_3.b.x, 37205u, ~func_2(34793i).b.x)), abs(global1[_wgslsmith_index_u32(~(~(~87106u)), 10u)]));
    return arg_3.e.b.zz;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1895f)), -403f), -2038f)))));
    let var_0 = ~func_4(vec4<u32>(1u, u_input.a.x, ~18023u, u_input.a.x), !vec4<bool>(true, u_input.a.x != u_input.a.x, any(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(u_input.a.x, 26u)] < 0i), -65034i, func_2(0i));
    global2 = array<i32, 26>();
    global1 = array<vec4<u32>, 10>();
    global1 = array<vec4<u32>, 10>();
    return Struct_1(~(~(~u_input.a.x)), any(func_2(countOneBits(var_0.x) << ((73830u << (u_input.a.x % 32u)) % 32u)).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~1u, func_1(), ~u_input.a.x);
    global2 = array<i32, 26>();
    let var_1 = vec2<u32>(u_input.a.x, var_0.b.a | var_0.b.a);
    var var_2 = func_2(~global2[_wgslsmith_index_u32(~var_1.x, 26u)]).d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, _wgslsmith_f_op_f32(f32(-1f) * -898f)));
    global1 = array<vec4<u32>, 10>();
    global1 = array<vec4<u32>, 10>();
    let var_4 = _wgslsmith_mult_u32(~min(35188u, _wgslsmith_clamp_u32(firstTrailingBit(0u), 0u, ~var_1.x)), ~(~(~u_input.a.x)) | _wgslsmith_mult_u32(~(~0u), ~(~u_input.a.x)));
    global2 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(var_1 | _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 29310u), vec2<u32>(var_1.x, u_input.a.x)))));
}

