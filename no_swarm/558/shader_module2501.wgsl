struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(1u), Struct_3(4294967295u), Struct_3(0u), Struct_3(76213u), Struct_3(80736u), Struct_3(4294967295u), Struct_3(3545u), Struct_3(1u), Struct_3(62394u), Struct_3(56685u), Struct_3(0u), Struct_3(1u), Struct_3(1u), Struct_3(2229u), Struct_3(7486u), Struct_3(27492u), Struct_3(1u), Struct_3(394u), Struct_3(3216u), Struct_3(0u), Struct_3(73986u), Struct_3(21811u), Struct_3(1u), Struct_3(1u), Struct_3(4294967295u), Struct_3(1u));

var<private> global1: vec3<u32>;

var<private> global2: vec2<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> bool {
    global0 = array<Struct_3, 26>();
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(-(u_input.a & u_input.c), -38460i >> ((global1.x ^ 4294967295u) % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, countOneBits(2147483647i)), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-25426i, u_input.a), -vec2<i32>(-6621i, u_input.a))));
    var var_2 = Struct_3(var_0.a.a);
    var_1 = u_input.a;
    return !var_0.a.c;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_u32(global1.x, 4294967295u) << (countOneBits(u_input.b) % 32u), -273f, select(false, true, false) && true)), !select(vec3<bool>(func_3(Struct_4(Struct_2(Struct_1(u_input.b, global2.x, true)), vec3<bool>(true, false, false), false, arg_0)), all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, false, true, false)))), !(_wgslsmith_f_op_f32(491f + 100f) <= _wgslsmith_div_f32(global2.x, arg_0)) | true, arg_0);
    var var_1 = vec4<f32>(global2.x, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.d))))), -729f);
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    var var_2 = -420f;
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = Struct_3(abs(arg_1.a));
    global1 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(firstLeadingBit(arg_1.a | global1.x), countOneBits(arg_1.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(4696u, arg_1.a), global1.xz | vec2<u32>(arg_0.d.a.a, 1u)))), ~(~(~vec3<u32>(40557u, 1u, 0u)) | vec3<u32>(arg_1.a, global1.x, ~arg_0.b.a.a)));
    let var_1 = _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(-arg_0.c, -2147483647i, 1i, u_input.a | 0i)), select(abs(~arg_3 & -arg_3), arg_3, arg_0.a.c), -vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-8376i, u_input.a), arg_0.c), arg_0.c, ~(arg_0.c & u_input.a)));
    var var_2 = any(vec3<bool>(-238f >= global2.x, arg_0.a.a.a.c, arg_0.d.a.c));
    var_0 = Struct_3(var_0.a);
    return arg_0;
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = select(!vec4<bool>(arg_0.d.a.c, true, arg_0.a.b.x, select(arg_0.a.b.x, true, !arg_0.a.c)), !(!select(!vec4<bool>(true, arg_0.b.a.c, arg_0.b.a.c, arg_0.b.a.c), select(vec4<bool>(false, arg_0.d.a.c, true, arg_0.a.b.x), vec4<bool>(arg_0.d.a.c, arg_0.d.a.c, false, arg_0.b.a.c), vec4<bool>(arg_0.b.a.c, true, true, arg_0.a.b.x)), arg_0.b.a.c)), select(true, func_3(Struct_4(Struct_2(arg_0.d.a), arg_0.a.b, select(false, arg_0.d.a.c, arg_0.b.a.c), 1107f)), true));
    var var_1 = Struct_4(arg_0.d, !var_0.zyx, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(513f + global2.x) - _wgslsmith_f_op_f32(f32(-1f) * -625f)));
    let var_2 = arg_0;
    let var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-72471i, u_input.c), vec2<i32>(-66259i, 2147483647i) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a.a, arg_0.a.a.a.a), vec2<u32>(45268u, global1.x)) % vec2<u32>(32u))), _wgslsmith_mult_i32(-reverseBits(u_input.c), var_2.c)), 33770i, min(arg_0.c, abs(~var_2.c)) >> (firstLeadingBit(~(~var_1.a.a.a)) % 32u));
    global1 = abs(_wgslsmith_div_vec3_u32(select(~vec3<u32>(arg_0.b.a.a, arg_0.d.a.a, arg_0.b.a.a), vec3<u32>(~50911u, ~var_1.a.a.a, _wgslsmith_mult_u32(56186u, var_1.a.a.a)), 125604u < ~var_1.a.a.a), vec3<u32>(select(u_input.b, var_2.b.a.a, false), firstTrailingBit(~47031u), firstTrailingBit(u_input.b))));
    return func_4(Struct_5(var_2.a, func_4(arg_0, Struct_3(~0u), vec3<f32>(_wgslsmith_div_f32(172f, -1000f), _wgslsmith_div_f32(536f, arg_0.d.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1332f)), vec4<i32>(-1i) * -vec4<i32>(-1i, 78287i, 2147483647i, var_2.c)).d, abs(_wgslsmith_sub_i32(-arg_0.c, ~(-1i))), Struct_2(var_2.b.a)), Struct_3(u_input.b), vec3<f32>(246f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(arg_0.a.a.a.b, -1000f))), -469f), abs(vec4<i32>(88374i, _wgslsmith_mult_i32(0i, min(u_input.a, arg_0.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, arg_0.c), vec3<i32>(-71662i, 29305i, 1i)), u_input.c))).a.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = !func_4(Struct_5(Struct_4(arg_0, func_2(171f).b, 1160f >= global2.x, global2.x), func_2(_wgslsmith_f_op_f32(global2.x * global2.x)).a, u_input.c, arg_0), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.b, 2258f, 2292f), vec3<f32>(-384f, 1566f, -891f)) - vec3<f32>(global2.x, 353f, 477f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1168f, global2.x, arg_0.a.b)))), _wgslsmith_mult_vec4_i32(-vec4<i32>(16999i, -14749i, 21513i, -12762i), abs(vec4<i32>(u_input.a, -33580i, 2147483647i, u_input.c)))).a.b;
    global0 = array<Struct_3, 26>();
    var var_1 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(1f * global2.x), func_5(func_4(func_4(Struct_5(Struct_4(Struct_2(arg_0.a), var_0, var_0.x, 839f), Struct_2(arg_0.a), u_input.c, Struct_2(arg_0.a)), Struct_3(u_input.b), vec3<f32>(-797f, global2.x, global2.x), vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.c)), arg_1, vec3<f32>(global2.x, 927f, 111f), countOneBits(vec4<i32>(-25547i, 25466i, -12835i, 1i)))).a.c));
    var_1 = arg_0;
    var var_2 = Struct_1(~firstTrailingBit(arg_1.a >> (_wgslsmith_mod_u32(u_input.b, 5030u) % 32u)), var_1.a.b, !var_0.x);
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    var var_0 = 1u;
    global0 = array<Struct_3, 26>();
    var_0 = 1u;
    return func_6(func_5(func_4(Struct_5(func_2(-124f), func_2(global2.x).a, -14225i, func_2(global2.x).a), Struct_3(16742u), vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_div_f32(1204f, global2.x)), ~(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.c) << (vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b) % vec4<u32>(32u))))), global0[_wgslsmith_index_u32(~u_input.b, 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec3<u32>(~(~4294967295u), ~(~_wgslsmith_sub_u32(53395u, u_input.b)), u_input.b);
    var var_0 = !(!(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false)))));
    var var_1 = !vec4<bool>(var_0.x, !var_0.x, any(select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true), var_0.xyy), vec3<bool>(true, true, var_0.x))), !(true == var_0.x));
    var var_2 = ~(4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b), 0u, ~37164u), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 0u, u_input.b) >> (vec3<u32>(69959u, u_input.b, 36567u) % vec3<u32>(32u)), ~vec3<u32>(60068u, u_input.b, 0u))) % 32u));
    var var_3 = Struct_5(Struct_4(Struct_2(Struct_1(~u_input.b, 2891f, !var_1.x)), vec3<bool>(_wgslsmith_f_op_f32(-global2.x) == _wgslsmith_f_op_f32(-global2.x), any(vec2<bool>(var_0.x, var_1.x)), !var_1.x), any(!var_0.ww) && true, global2.x), func_1(), 40086i, Struct_2(func_6(func_6(func_6(Struct_2(Struct_1(4294967295u, global2.x, var_1.x)), Struct_3(global1.x)), global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_3(~u_input.b)).a));
    var_3 = Struct_5(var_3.a, func_2(_wgslsmith_f_op_f32(-global2.x)).a, min(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), -vec2<i32>(49228i, 10287i))), _wgslsmith_mod_i32(firstTrailingBit(33302i), -u_input.a) << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_3.d.a.a, global1.x, 23999u), func_2(482f).a.a.a) % 32u)), Struct_2(func_2(var_3.d.a.b).a.a));
    var_1 = select(select(vec4<bool>(12708i >= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(2147483647i, -2147483647i)), reverseBits(u_input.c) >= firstLeadingBit(1i), true, func_2(func_6(var_3.b, Struct_3(0u)).a.b).b.x), !(!select(vec4<bool>(var_1.x, var_0.x, true, false), vec4<bool>(false, var_3.b.a.c, false, var_0.x), var_3.d.a.c)), var_1.x), vec4<bool>(var_1.x, firstTrailingBit(81137i) < var_3.c, reverseBits(max(u_input.c, -51821i)) <= 45135i, var_3.d.a.c), -var_3.c > select(_wgslsmith_dot_vec3_i32(vec3<i32>(-14591i, u_input.c, var_3.c) ^ vec3<i32>(u_input.a, 0i, u_input.a), min(vec3<i32>(2147483647i, var_3.c, -2147483647i), vec3<i32>(u_input.a, var_3.c, 2147483647i))), 1i, global2.x <= global2.x));
    let var_4 = abs(_wgslsmith_div_vec2_i32(select(abs(vec2<i32>(0i, -1i)), firstTrailingBit(vec2<i32>(-44886i, -1i)), all(vec4<bool>(var_1.x, var_1.x, var_3.d.a.c, true))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, 32472i))) << (~global1.yx % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(40045i, 1i)), -(~min(max(vec3<i32>(0i, u_input.c, var_4.x), vec3<i32>(7936i, var_4.x, u_input.c)), firstTrailingBit(vec3<i32>(0i, 44654i, -2147483647i)))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, var_3.c, u_input.a), vec3<i32>(-1i, var_4.x, -2147483647i)), 1479i));
}

