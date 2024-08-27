struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(1u, 129565u, 382u, 25476u);

var<private> global3: f32;

var<private> global4: vec2<f32> = vec2<f32>(288f, 1157f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_0.wx;
    global2 = vec4<u32>(arg_2.x, 1u, select(reverseBits(4294967295u), ~global2.x, arg_0.x & var_0.x), ~(~(global2.x << (6566u % 32u))));
    var var_1 = -170f;
    let var_2 = Struct_1(vec2<i32>(min(-21948i, max(~global1.b.a.x, -2656i >> (global2.x % 32u))), global1.a.a.x));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.d))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    global1 = Struct_2(Struct_1(vec2<i32>(arg_2, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(global1.a.a.x, 53630i, arg_2))))), arg_0.b, select(vec4<i32>(countOneBits(i32(-1i) * -7117i), 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global1.c.xzz, global1.c.wxz), global1.c.wyy | global1.c.wxy), arg_0.b.a.x), global1.c, vec4<bool>(true, true, true, _wgslsmith_f_op_f32(round(1619f)) > _wgslsmith_f_op_f32(ceil(-1000f)))), global1.d);
    var var_0 = 2147483647i;
    global2 = _wgslsmith_div_vec4_u32(~(~abs(~vec4<u32>(global2.x, 4294967295u, global2.x, 11095u))), abs(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global2.yw, global2.xx), global2.x), ~49268u & global2.x, max(global2.x, global2.x) << (_wgslsmith_sub_u32(59392u, 1911u) % 32u), firstTrailingBit(global2.x))));
    global0 = global2.x != ~25459u;
    var var_1 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(min(reverseBits(1077u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, 0u), vec4<u32>(543u, 49592u, global2.x, 100494u))), 94382u, global2.x), ~(reverseBits(vec3<u32>(global2.x, 13010u, global2.x)) & ~global2.www)), min(~(~global2.yzx ^ vec3<u32>(global2.x, 4294967295u, global2.x)), _wgslsmith_mod_vec3_u32(~global2.zxz, _wgslsmith_mod_vec3_u32(~vec3<u32>(31532u, global2.x, 4294967295u), vec3<u32>(3298u, global2.x, global2.x)))), !(!vec3<bool>(true, true, all(vec4<bool>(false, false, true, true)))));
    return vec4<u32>(var_1.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(56317u), ~_wgslsmith_add_u32(var_1.x, 1u)), ~0u, ~var_1.x), _wgslsmith_add_u32(0u, ~global2.x), 14509u);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> vec2<i32> {
    let var_0 = abs(countOneBits(~_wgslsmith_clamp_u32(42932u, global2.x, _wgslsmith_add_u32(2661u, arg_2))));
    let var_1 = any(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, false), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))) || (arg_0.x == !any(vec3<bool>(false, false, arg_0.x)));
    var var_2 = Struct_1(abs(global1.c.wx));
    global2 = ~func_4(Struct_2(Struct_1(vec2<i32>(u_input.a, 12431i)), Struct_1(global1.c.yy), min(global1.c, vec4<i32>(58790i, 10609i, 0i, u_input.b)), _wgslsmith_f_op_f32(func_3(!vec4<bool>(true, arg_0.x, true, var_1), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, true, true), false), ~vec4<u32>(arg_2, 1u, 44412u, 0u)))), Struct_1(~vec2<i32>(u_input.a, global1.b.a.x)), _wgslsmith_div_i32(u_input.b & 0i, 1i));
    let var_3 = vec2<i32>(select(50910i, u_input.b, !var_1), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(global1.a.a.x, -1i), -var_2.a.x, 2147483647i & u_input.a)), global1.c.xww));
    return vec2<i32>(-33951i, u_input.a);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = !any(vec4<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(false, false)), true));
    let var_0 = ~(reverseBits(-u_input.b) | _wgslsmith_add_i32(global1.c.x, arg_2.a.x));
    var var_1 = Struct_2(arg_1, arg_1, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -global1.c, global1.c), _wgslsmith_div_vec4_i32(countOneBits(global1.c) ^ global1.c, -global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1279f * global4.x) + _wgslsmith_f_op_f32(-global1.d)));
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28228u, 0u, 0u, 0u), func_4(Struct_2(arg_1, arg_1, var_1.c, 1192f), arg_2, 1i)), ~(~global2.x), global2.x, global2.x)), ~_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.x, 64770u, 0u), vec4<u32>(4294967295u, global2.x, 0u, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 0u, 18017u), _wgslsmith_mult_vec4_u32(vec4<u32>(6072u, 4294967295u, 4294967295u, 38762u), vec4<u32>(0u, global2.x, global2.x, global2.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = ~((select(vec4<u32>(global2.x, 1u, global2.x, 36968u) & vec4<u32>(90009u, 5060u, 1u, global2.x), vec4<u32>(46910u, global2.x, 24082u, 0u) & vec4<u32>(global2.x, global2.x, 42645u, global2.x), arg_1) << (~vec4<u32>(global2.x, 1u, global2.x, global2.x) % vec4<u32>(32u))) << (func_5(~(u_input.a >> (18261u % 32u)), Struct_1(func_2(arg_1.zx, global2.x, global2.x)), global1.b) % vec4<u32>(32u)));
    global4 = arg_0.yz;
    var var_1 = ~vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(25042i, global1.c.x), reverseBits(u_input.a)), 557i & _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(-17333i, u_input.a, 19472i, global1.c.x))) & (~_wgslsmith_div_vec2_i32(global1.c.zw, ~global1.b.a) | _wgslsmith_mult_vec2_i32(global1.b.a, _wgslsmith_div_vec2_i32(global1.c.zy, vec2<i32>(0i, global1.b.a.x) >> (var_0.xy % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_clamp_vec2_i32(global1.a.a, -(~select(-vec2<i32>(1i, -1i), vec2<i32>(0i, u_input.b), false)), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.c.wy, _wgslsmith_add_vec2_i32(~global1.a.a, vec2<i32>(-49988i, var_1.x))), ~(-(i32(-1i) * -198i))));
    var_1 = vec2<i32>(-1i, i32(-1i) * -52912i) >> (global2.yz % vec2<u32>(32u));
    return Struct_2(Struct_1(global1.c.yz), global1.a, ~vec4<i32>(min(select(1i, var_2.x, false), _wgslsmith_div_i32(2147483647i, var_2.x)), ~u_input.b, var_1.x >> ((0u << (var_0.x % 32u)) % 32u), -_wgslsmith_sub_i32(var_1.x, -16542i)), _wgslsmith_f_op_f32(-1595f - 375f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(~(vec2<i32>(0i, 19126i) | global1.c.xx))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2048f, -1000f, global4.x) + vec3<f32>(global4.x, 1377f, global4.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2266f, -2179f, global1.d))))))), vec4<bool>(any(vec3<bool>(true, true, true)), true, false, (u_input.a < countOneBits(102202i)) && false));
    global1 = Struct_2(global1.b, func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, global4.x, -779f) - vec3<f32>(-360f, var_1.d, -1351f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(291f, global4.x, -1618f), vec3<f32>(var_1.d, global4.x, -811f), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, global4.x, 829f)) - vec3<f32>(var_1.d, -551f, -1770f)), true)), vec4<bool>(any(vec3<bool>(false, true, true)), true, true, !all(vec3<bool>(true, false, true)))).b, _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.c.xwz, var_1.c.wyz), -2147483647i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.a.a.x, var_0.a.x), global1.c.yzw)), vec4<i32>(~u_input.a, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, global1.c.x), var_1.c.x), -select(u_input.b, 29698i, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1888f)))) - 859f)));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d, global1.d, -516f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, -465f) + vec3<f32>(global4.x, var_1.d, -1227f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global1.d, var_1.d))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, true), true, all(vec3<bool>(true, true, false)), true), true));
    let var_2 = ~vec4<u32>(select(global2.x, global2.x, select(false, true, true) && true), global2.x, 0u, firstLeadingBit(1u));
    var var_3 = Struct_1(vec2<i32>(-global1.b.a.x, _wgslsmith_add_i32((1i | var_1.a.a.x) ^ global1.a.a.x, var_1.c.x)));
    global1 = Struct_2(var_1.a, Struct_1(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d, global1.d, -1401f), vec3<f32>(-352f, 313f, 1569f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -2366f, 364f))), vec4<bool>(true, true, true, true)).b.a), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(-global4.x))));
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-294f, -670f, global4.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1778f, -1000f, global1.d) + vec3<f32>(1000f, var_1.d, var_1.d)))))), vec4<bool>(true, false, false, true));
    let var_5 = _wgslsmith_f_op_f32(floor(304f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, -339f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.x, -1490f)))))), vec2<f32>(_wgslsmith_f_op_f32(681f - global4.x), _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(floor(global4.x)))))), -firstTrailingBit(-var_4.c));
}

