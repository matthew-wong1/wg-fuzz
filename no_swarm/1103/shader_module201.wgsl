struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(20312u, 32337u, 14259u, 29095u, 59936u, 4914u, 0u, 0u, 69568u, 26042u, 45824u, 0u, 108679u, 35458u);

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(19690i, 48010i), vec2<i32>(0i, 31792i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-97584i, 2147483647i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<bool> {
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    global0 = array<u32, 14>();
    return select(!vec3<bool>(true, all(vec3<bool>(arg_2.b.c, false, true)), _wgslsmith_clamp_i32(arg_2.c.d.x, 17034i, arg_2.c.d.x) < _wgslsmith_dot_vec4_i32(arg_2.b.d, vec4<i32>(arg_2.c.d.x, 23678i, -8401i, arg_2.b.d.x))), select(arg_2.c.b, vec3<bool>(true, any(select(arg_0, vec4<bool>(false, arg_0.x, false, arg_0.x), arg_2.b.c)), arg_2.c.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(130f + -257f))) <= _wgslsmith_f_op_f32(floor(arg_1.x))), vec3<bool>(!arg_2.b.b.x, arg_0.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    let var_0 = arg_0.b.zz;
    var var_1 = Struct_1(~(~(~vec2<u32>(57129u, 38317u))), arg_0.b, any(!select(select(arg_2.wyx, vec3<bool>(var_0.x, var_0.x, true), arg_2.xyy), func_3(arg_2, vec2<f32>(-120f, arg_1.d), arg_1, vec2<u32>(arg_0.a.x, 1u)), !vec3<bool>(arg_2.x, arg_1.b.b.x, false))), ~arg_1.b.d, ~36313u);
    var var_2 = max(arg_0.d.x, _wgslsmith_sub_i32(~(var_1.d.x >> (1u % 32u)), _wgslsmith_mod_i32(16794i, -17101i)));
    let var_3 = Struct_2(-293f, Struct_1(~(~(~u_input.c.wx)), select(!(!arg_0.b), var_1.b, arg_1.b.b), !var_0.x, abs(-_wgslsmith_mod_vec4_i32(var_1.d, vec4<i32>(-16405i, 56071i, -22574i, 2147483647i))), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, var_1.e), firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 14u)]))), arg_0, _wgslsmith_f_op_f32(floor(arg_1.d)), -1i);
    var_2 = arg_1.e;
    return -1i;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<vec2<i32>, 4>();
    let var_0 = func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) + vec2<f32>(_wgslsmith_f_op_f32(round(1380f)), _wgslsmith_f_op_f32(ceil(-1251f)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f + 835f)) * 1f), Struct_1(vec2<u32>(4294967295u, 10642u) << (_wgslsmith_clamp_vec2_u32(u_input.c.zw, u_input.c.wx, vec2<u32>(0u, global0[_wgslsmith_index_u32(35986u, 14u)])) % vec2<u32>(32u)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), _wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 791i)) << (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59305u, 14u)], 14u)], 14u)], 49965u, 17868u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 14u)] ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(0u, 14u)]), 14u)], 14u)]), Struct_1(vec2<u32>(1u, u_input.b), vec3<bool>(any(vec4<bool>(true, true, false, false)), false, true), true, vec4<i32>(-1i) * -arg_0, u_input.b), 684f, arg_0.x), ~(~min(u_input.c.xx, countOneBits(u_input.c.zy)))).zx;
    global0 = array<u32, 14>();
    global1 = array<vec2<i32>, 4>();
    global1 = array<vec2<i32>, 4>();
    return Struct_1(min(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(46693u, 4294967295u) & vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), u_input.c.ww ^ vec2<u32>(31835u, u_input.c.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(77874u, 14u)], 4294967295u), abs(vec2<u32>(4178u, global0[_wgslsmith_index_u32(u_input.a, 14u)]))) & ~u_input.c.wy), select(vec3<bool>(true, var_0.x, var_0.x), !(!(!vec3<bool>(var_0.x, false, var_0.x))), vec3<bool>(false, var_0.x, func_3(!vec4<bool>(var_0.x, false, var_0.x, false), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-482f, 1090f), vec2<f32>(-830f, -1000f))), Struct_2(294f, Struct_1(u_input.c.zx, vec3<bool>(false, var_0.x, var_0.x), var_0.x, arg_0, 58825u), Struct_1(u_input.c.xw, vec3<bool>(var_0.x, var_0.x, true), var_0.x, vec4<i32>(arg_0.x, 0i, arg_0.x, arg_0.x), 4294967295u), 1000f, arg_0.x), ~u_input.c.wy).x)), !(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11937u, 14u)], 14u)], 14u)] <= max(_wgslsmith_div_u32(u_input.c.x, 14090u), 4294967295u)), abs(arg_0), ~(~u_input.c.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = false;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), func_4(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 0i, 10599i), vec4<i32>(-1i, 1i, 2653i, 0i)), -35821i, -26355i, func_2(Struct_1(arg_0.xz, vec3<bool>(false, true, true), false, vec4<i32>(16984i, -13889i, -21328i, 0i), global0[_wgslsmith_index_u32(1805u, 14u)]), Struct_2(arg_1, Struct_1(vec2<u32>(u_input.c.x, arg_0.x), vec3<bool>(false, false, true), false, vec4<i32>(-1546i, -28531i, -24946i, -42384i), arg_0.x), Struct_1(arg_0.xx, vec3<bool>(true, false, true), true, vec4<i32>(0i, 8608i, -1i, -2147483647i), 0u), arg_1, 0i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))))), func_4(func_4(-(~vec4<i32>(32827i, 34400i, 47907i, -59080i))).d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1297f, -1000f)), _wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -433f)))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), -(max(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 14u)], 4u)]) ^ _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(arg_0.x, 4u)], vec2<i32>(3035i, 1i)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global1 = array<vec2<i32>, 4>();
    let var_0 = func_1(~abs(u_input.c), _wgslsmith_f_op_f32(-arg_2.d));
    let var_1 = arg_0;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    return !(arg_1.c.b.x && !(!(50537i == arg_0.d.x)));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: bool) -> vec3<i32> {
    global1 = array<vec2<i32>, 4>();
    var var_0 = u_input.c;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f + 1317f)) + _wgslsmith_f_op_f32(f32(-1f) * -1305f)) - 1394f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f);
    let var_2 = func_1(~_wgslsmith_div_vec4_u32(u_input.c >> (vec4<u32>(var_0.x, 11306u, var_0.x, var_0.x) % vec4<u32>(32u)), u_input.c), var_1.x);
    var var_3 = ~vec2<u32>(111313u, u_input.c.x);
    return _wgslsmith_add_vec3_i32(~(-func_4(_wgslsmith_mod_vec4_i32(var_2.b.d, vec4<i32>(-2147483647i, -47118i, arg_0.x, -582i))).d.zzx), vec3<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_div_i32(firstTrailingBit(-1i), arg_2)), 8054i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~countOneBits(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(global0[_wgslsmith_index_u32(38632u, 14u)], 70098u))))), 14u)];
    let var_1 = func_6(-(((vec3<i32>(-1i, 0i, -81730i) << (u_input.c.xyy % vec3<u32>(32u))) << (firstLeadingBit(u_input.c.yyy) % vec3<u32>(32u))) << (vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.c.wy), select(1u, 23453u, false)) % vec3<u32>(32u))), ~2147483647i, ~(reverseBits(-39991i << (global0[_wgslsmith_index_u32(4294967295u, 14u)] % 32u)) ^ 1i), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), func_5(Struct_1(u_input.c.xw, vec3<bool>(true, false, false), true, vec4<i32>(0i, 3662i, -60496i, -2147483647i), u_input.b), func_1(u_input.c, 884f), Struct_2(653f, Struct_1(vec2<u32>(48181u, 0u), vec3<bool>(false, false, false), false, vec4<i32>(29807i, -9736i, -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(0u, 14u)]), Struct_1(vec2<u32>(0u, 48696u), vec3<bool>(true, false, true), true, vec4<i32>(0i, 0i, 0i, 31403i), global0[_wgslsmith_index_u32(u_input.b, 14u)]), -1300f, 179i)))));
    let var_2 = Struct_1(u_input.c.zw, vec3<bool>(true, (_wgslsmith_div_i32(var_1.x, var_1.x) == -var_1.x) && true, func_4(reverseBits(vec4<i32>(var_1.x, 57554i, 27296i, 2147483647i)) ^ select(vec4<i32>(var_1.x, 30122i, 0i, -2147483647i), vec4<i32>(-2147483647i, var_1.x, -39683i, var_1.x), vec4<bool>(false, true, true, false))).c), true, vec4<i32>(var_1.x, -8669i, -var_1.x >> (global0[_wgslsmith_index_u32(u_input.c.x, 14u)] % 32u), func_1(~u_input.c, -1000f).c.d.x), 17233u);
    let var_3 = -2147483647i;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.c.zwz | u_input.c.zxy), _wgslsmith_mod_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 4294967295u, 4294967295u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 14u)], 21267u) & vec3<u32>(var_2.a.x, var_2.e, u_input.c.x))), func_1(vec4<u32>(var_2.a.x, _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(1u, u_input.a)), ~0u, _wgslsmith_mod_u32(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 14u)])), 1311f).c.e), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~44999u, var_2.e)), _wgslsmith_div_vec2_u32(u_input.c.wy, var_2.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(836f, _wgslsmith_f_op_f32(-1115f - 410f), _wgslsmith_f_op_f32(f32(-1f) * -688f), -1132f) + vec4<f32>(_wgslsmith_f_op_f32(676f - -252f), func_1(u_input.c, 1000f).d, 789f, _wgslsmith_f_op_f32(step(969f, -1127f)))))), abs(-reverseBits(22528i)), _wgslsmith_add_u32(4294967295u ^ (u_input.b << (0u % 32u)), _wgslsmith_sub_u32(~var_2.e, u_input.b) & (global0[_wgslsmith_index_u32(1u, 14u)] | (var_2.e << (33609u % 32u)))), ~_wgslsmith_sub_u32(~var_2.e, 8868u));
}

