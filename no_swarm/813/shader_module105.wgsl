struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<u32> = vec2<u32>(5185u, 23772u);

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-25234i, 0i), vec2<i32>(-74145i, -14908i), vec2<i32>(-12533i, -25414i), vec2<i32>(0i, -22282i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-11135i, 4276i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 8907i), vec2<i32>(i32(-2147483648), 24345i), vec2<i32>(2147483647i, -16802i), vec2<i32>(i32(-2147483648), 94209i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(24396i, -1i), vec2<i32>(i32(-2147483648), -11557i), vec2<i32>(1i, -33026i), vec2<i32>(2147483647i, 32062i), vec2<i32>(-78369i, -41588i), vec2<i32>(-26477i, -9238i), vec2<i32>(38434i, -8052i), vec2<i32>(-3922i, 0i), vec2<i32>(6580i, -63331i), vec2<i32>(-46940i, 6817i), vec2<i32>(16919i, 19454i), vec2<i32>(1i, -28150i), vec2<i32>(3681i, 30166i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 17360i), vec2<i32>(-1i, i32(-2147483648)));

var<private> global3: u32;

var<private> global4: array<vec4<i32>, 11>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(u_input.c) | ~reverseBits(50826u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), ~(~u_input.a))), u_input.a);
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(u_input.b.x, -21133i), _wgslsmith_add_vec3_i32(vec3<i32>(43238i | u_input.b.x, u_input.b.x, -u_input.b.x), u_input.b.wzy), vec4<bool>(false, true, all(vec2<bool>(false, true)), true == all(vec4<bool>(true, true, true, false))), -((vec4<i32>(19607i, u_input.b.x, u_input.b.x, -2147483647i) ^ u_input.b) | max(global4[_wgslsmith_index_u32(58780u, 11u)], vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_1(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, -2147483647i), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(63021i, u_input.b.x, 0i), u_input.b.yxx)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.ywx, u_input.b.zyy), u_input.b.zxy), min(firstLeadingBit(u_input.b.ywz), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))), u_input.b.zzy), select(vec4<bool>(false, true, all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, 72507u == global1.x, true)), ~vec4<i32>(~u_input.b.x, -33323i, _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(0u, 29u)], u_input.b.xz), -3221i)), select(u_input.b, -global4[_wgslsmith_index_u32(u_input.c, 11u)] | select(vec4<i32>(u_input.b.x, 1i, 3273i, -50772i), abs(global4[_wgslsmith_index_u32(24471u, 11u)]), all(vec2<bool>(true, true))), vec4<bool>(false, true, true, !all(vec2<bool>(false, true)))));
    global0 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 140129u, global1.x) & vec3<u32>(global1.x, 101174u, u_input.a.x)), vec3<u32>(57445u, u_input.a.x, u_input.a.x) ^ vec3<u32>(0u, global1.x, 1u)), _wgslsmith_mod_u32(4294967295u, ~global1.x << ((68623u ^ global1.x) % 32u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(281u, 36001u) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), 1u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2382f, 544f) - _wgslsmith_f_op_f32(max(-426f, -402f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(491f)), _wgslsmith_f_op_f32(abs(-727f)), true))), true)), 855f, _wgslsmith_f_op_f32(step(-238f, 1f)));
    let var_2 = true;
    return var_0.a.c.x;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = ~vec3<u32>(_wgslsmith_mult_u32(~abs(global1.x), ~(~arg_0)), global1.x, min(70888u, arg_0));
    global3 = var_0.x;
    var var_1 = Struct_1(_wgslsmith_mod_i32(u_input.b.x, -1i), reverseBits(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-49683i, u_input.b.x, 1i) | vec3<i32>(1i, u_input.b.x, 46040i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 12221i), vec3<i32>(u_input.b.x, 2147483647i, 0i)) ^ u_input.b.xxz, u_input.b.wxy)), !vec4<bool>((global1.x >> (1u % 32u)) == ~var_0.x, func_3(), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), vec4<i32>(u_input.b.x, u_input.b.x << (select(1u, 0u | var_0.x, true) % 32u), ~1i, -(~26307i) ^ u_input.b.x));
    global3 = global1.x;
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0, var_0.x), global1.x, u_input.c) | (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(50084u, global1.x, arg_0, arg_0), vec4<u32>(arg_0, 1u, arg_0, u_input.a.x), vec4<u32>(var_0.x, var_0.x, 0u, arg_0)), ~vec4<u32>(global1.x, 1u, arg_0, 1u)), ~abs(vec4<u32>(0u, 0u, u_input.a.x, 7564u))) ^ u_input.c);
    return any(!vec4<bool>(true, select(var_1.c.x, false, var_1.c.x), 13473u >= global1.x, all(vec4<bool>(var_1.c.x, true, true, var_1.c.x)))) | var_1.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = vec4<i32>(0i, _wgslsmith_add_i32(abs(countOneBits(select(2147483647i, 0i, true))), 0i), 2147483647i, _wgslsmith_add_i32(-(i32(-1i) * -u_input.b.x), _wgslsmith_mult_i32(0i, i32(-1i) * -40837i)));
    var var_1 = global4[_wgslsmith_index_u32(firstTrailingBit(arg_1.x >> (_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 30877u), vec2<u32>(global1.x, global1.x))), countOneBits(arg_1.zy)) % 32u)), 11u)];
    var var_2 = func_3();
    let var_3 = global1.x;
    let var_4 = Struct_2(Struct_1(max(_wgslsmith_div_i32(-1i, _wgslsmith_div_i32(var_1.x, 2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, var_1.x, -2147483647i), var_0.xxx), ~vec3<i32>(var_1.x, -2147483647i, 0i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-13568i, 1i, 6561i) >> (reverseBits(vec3<u32>(16827u, 95251u, u_input.c)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, 1777i, var_1.x)), u_input.b.xwy >> (arg_1 % vec3<u32>(32u))), var_1.yzx), !(!(!arg_0)), vec4<i32>(abs(var_1.x), ~_wgslsmith_sub_i32(var_0.x, 8508i), 0i, abs(var_0.x >> (global1.x % 32u)))), Struct_1((~var_0.x ^ _wgslsmith_mod_i32(var_0.x, var_0.x)) << (select(reverseBits(global1.x), arg_1.x, arg_2) % 32u), min(~vec3<i32>(-38878i, u_input.b.x, u_input.b.x) | var_0.yyy, _wgslsmith_add_vec3_i32(select(vec3<i32>(15454i, var_1.x, var_1.x), var_0.yzw, arg_0.x), vec3<i32>(var_0.x, 2147483647i, var_1.x))), !vec4<bool>(true, arg_0.x, select(arg_0.x, true, arg_0.x), !arg_0.x), firstTrailingBit(_wgslsmith_mult_vec4_i32(-u_input.b, vec4<i32>(var_0.x, -15934i, 40296i, -7939i)))), vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, u_input.b.x)), global2[_wgslsmith_index_u32(global1.x & ~arg_1.x, 29u)]), _wgslsmith_dot_vec4_i32(u_input.b, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(10737i, 0i, -2147483647i, var_0.x), u_input.b))), abs(var_0.x)));
    return Struct_3(~9738u, Struct_2(var_4.a, var_4.a, abs(_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(41660u, 11u)]))), Struct_2(var_4.a, var_4.b, ~_wgslsmith_sub_vec4_i32(global4[_wgslsmith_index_u32(arg_1.x, 11u)] ^ vec4<i32>(6790i, 9410i, u_input.b.x, 18898i), global4[_wgslsmith_index_u32(global1.x, 11u)])), Struct_1(var_1.x, vec3<i32>(_wgslsmith_clamp_i32(2147483647i, var_1.x, -var_4.c.x), abs(_wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(u_input.b.x, 2147483647i))), var_0.x), select(vec4<bool>(!arg_2, arg_2 & true, any(arg_0.wxy), true), !vec4<bool>(var_4.b.c.x, var_4.b.c.x, false, var_4.b.c.x), select(arg_0, !vec4<bool>(true, arg_0.x, true, var_4.b.c.x), arg_0.x)), vec4<i32>(var_1.x, 0i, var_4.b.d.x, -2147483647i)));
}

fn func_1() -> i32 {
    let var_0 = ~firstLeadingBit(65776u);
    let var_1 = func_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false))), vec3<u32>(52509u, ~reverseBits(~64823u), select(_wgslsmith_add_u32(4294967295u, min(4294967295u, u_input.a.x)), ~62620u, true)), func_2(~global1.x));
    global2 = array<vec2<i32>, 29>();
    let var_2 = select(!var_1.b.b.c.zzz, var_1.d.c.yxw, false);
    let var_3 = false;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(4294967295u) << ((u_input.c ^ _wgslsmith_add_u32(~61841u, ~min(4294967295u, global1.x))) % 32u);
    let var_0 = u_input.b.yyx;
    let var_1 = Struct_1(func_1(), u_input.b.wyx, select(!vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, true, false, true)), true, true), func_4(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), abs(vec3<u32>(4294967295u, 0u, 1u) >> (vec3<u32>(11930u, 1u, u_input.a.x) % vec3<u32>(32u))), true).c.a.c, select(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), all(vec3<bool>(false, true, true)), true)), -firstLeadingBit(vec4<i32>(-36220i, 1i, 6456i, 20283i)));
    global4 = array<vec4<i32>, 11>();
    var var_2 = vec4<i32>(var_0.x, ~(~max(var_1.b.x, var_1.a) ^ func_1()), -14175i, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(~40305u, ~u_input.c, ~u_input.a.x), 13411u), ~global1.x, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 14897u, 64637u, u_input.c), vec4<u32>(13700u, global1.x, 78108u, u_input.a.x)), ~vec4<u32>(0u, global1.x, u_input.c, 25069u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1192u, u_input.c, u_input.c, global1.x), vec4<u32>(49167u, u_input.c, global1.x, 33537u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.a.x, u_input.c) | vec4<u32>(18190u, global1.x, global1.x, global1.x), vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.a.x) | vec4<u32>(1u, 0u, u_input.c, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(29779u, global1.x, u_input.a.x, 51090u), vec4<u32>(global1.x, 1u, 10628u, global1.x))), vec4<u32>(u_input.c & global1.x, _wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(40364u, 4294967295u, 2438u), vec3<u32>(global1.x, 19553u, u_input.c)), ~u_input.c)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 41497u, 16957u, global1.x), vec4<u32>(0u, 1u, u_input.c, global1.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, 4294967295u, u_input.a.x), vec4<u32>(global1.x, 4294967295u, 6488u, global1.x)))), var_2.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(1582f)), -730f, _wgslsmith_f_op_f32(f32(-1f) * -169f)));
}

