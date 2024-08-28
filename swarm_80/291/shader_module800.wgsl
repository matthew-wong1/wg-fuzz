struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

var<private> global3: vec4<u32>;

var<private> global4: array<f32, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_5(arg_2, Struct_3(-vec3<i32>(u_input.a, ~global1.x, u_input.a), Struct_1(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 1u), arg_2.b, min(global3.x, 0u))), !any(vec4<bool>(true, true, true, true)), vec4<u32>(14457u, _wgslsmith_add_u32(53051u, 1u), abs(_wgslsmith_div_u32(global2.a.x, global3.x)), _wgslsmith_dot_vec3_u32(~global3.yzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b, global2.a.x, 23276u), global3.xzy, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f - 1000f) + _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = -firstTrailingBit(countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -72904i), vec3<i32>(0i, -2147483647i, 2147483647i))));
    global2 = var_0.b.b;
    let var_2 = var_0.b.b;
    let var_3 = var_0.b.b;
    return _wgslsmith_f_op_f32(-1864f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)])));
}

fn func_2() -> vec4<i32> {
    global2 = Struct_1(global2.a);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -722f), vec4<bool>(true, true, true, true), Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global1.x), vec2<i32>(7670i, u_input.a)), 1u, -294f, _wgslsmith_add_i32(global1.x, 68848i)))) + global0[_wgslsmith_index_u32(global3.x, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-169f, global4[_wgslsmith_index_u32(6882u, 4u)])), -312f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u ^ global3.x, 4u)] + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1467u, 4u)], -662f))))));
    global4 = array<f32, 4>();
    global4 = array<f32, 4>();
    global4 = array<f32, 4>();
    return vec4<i32>(_wgslsmith_clamp_i32(global1.x, ~u_input.a, 1i), firstTrailingBit(0i), min(-9019i, abs(-2147483647i)), _wgslsmith_sub_i32(countOneBits(u_input.a), u_input.a << (~(~4294967295u) % 32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> u32 {
    global3 = vec4<u32>(global3.x, global2.a.x, global2.a.x ^ ~74156u, max(~(~4294967295u), select(_wgslsmith_div_u32(1u, 1u), global3.x, true)) >> (_wgslsmith_mod_u32(70560u, global2.a.x) % 32u));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(878f, global0[_wgslsmith_index_u32(global3.x, 4u)])), _wgslsmith_f_op_f32(floor(-1563f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, 63720u), 4u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(26725u, 4u)], -773f)))), 686f));
    var var_1 = vec2<bool>(false, false);
    global3 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(~4294967295u), 0u ^ _wgslsmith_mult_u32(global3.x, global2.a.x), global3.x, _wgslsmith_div_u32(global2.a.x, global3.x)), vec4<u32>(21219u << (global2.a.x % 32u), ~30652u, ~_wgslsmith_mod_u32(global3.x, global3.x), global2.a.x), vec4<u32>(global2.a.x, ~abs(0u), global3.x & ~global3.x, _wgslsmith_div_u32(global2.a.x ^ 12438u, global3.x))), abs(vec4<u32>(1u, global3.x, global2.a.x, 0u)), any(vec3<bool>(var_1.x, false, false)));
    let var_2 = Struct_3(arg_0.wyy, Struct_1(global3.zyw >> (global2.a % vec3<u32>(32u))), var_1.x, ~(~firstTrailingBit(vec4<u32>(global3.x, 1u, global3.x, global2.a.x) ^ vec4<u32>(global3.x, 2188u, global3.x, global3.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(global2.a.x), 26862u) ^ ~(abs(global2.a.x) & 4294967295u), 4u)]);
    return ~_wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(var_2.b.a.x, 6561u)), select(1u >> (1u % 32u), firstLeadingBit(min(4294967295u, 218u)), abs(global1.x) > global1.x));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_3(max(vec3<i32>(-14436i, u_input.a | -1i, 8347i), firstTrailingBit(arg_2.b.a)), Struct_1(select(~select(global3.zxw, vec3<u32>(52498u, 0u, 0u), vec3<bool>(false, arg_2.b.c, true)), ~vec3<u32>(0u, global2.a.x, 9571u), !select(vec3<bool>(false, true, arg_2.b.c), vec3<bool>(false, true, arg_2.b.c), vec3<bool>(true, true, arg_2.b.c)))), arg_2.b.c, select(_wgslsmith_sub_vec4_u32(select(arg_2.b.d, vec4<u32>(21335u, 0u, 31116u, 14982u), vec4<bool>(arg_2.b.c, true, true, arg_2.b.c)), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, 1u, arg_1.b, global3.x), arg_2.b.d)) ^ firstTrailingBit(arg_2.b.d), abs(reverseBits(arg_2.b.d ^ vec4<u32>(arg_2.b.b.a.x, 0u, arg_2.b.b.a.x, 0u))), !select(!vec4<bool>(true, true, false, arg_2.b.c), vec4<bool>(true, arg_2.b.c, false, false), vec4<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.c, arg_2.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -1676f));
    var var_1 = any(vec2<bool>(true, var_0.c));
    global2 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, ~global3.x, ~49690u), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b.a.x, arg_2.b.b.a.x), vec3<u32>(1241u, 61398u, var_0.b.a.x)))));
    var_1 = var_0.c;
    global0 = array<f32, 4>();
    return var_0.b;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = func_5(global4[_wgslsmith_index_u32(55439u, 4u)], Struct_4(arg_0, countOneBits(func_4(func_2(), ~arg_0.x, 1i)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16681u, 4u)]), 0i), Struct_5(Struct_4(arg_0, 33780u, global0[_wgslsmith_index_u32(global2.a.x, 4u)], global1.x), Struct_3(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 20101i, 11166i), vec3<i32>(u_input.a, 60268i, u_input.a)), -u_input.a), Struct_1(global2.a), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 4u)]) > global0[_wgslsmith_index_u32(global2.a.x, 4u)], ~vec4<u32>(global3.x, global2.a.x, global2.a.x, 1u), _wgslsmith_f_op_f32(floor(-1259f)))));
    var var_1 = Struct_4(_wgslsmith_mod_vec2_i32(arg_0, -vec2<i32>(2147483647i, 2147483647i << (0u % 32u))), _wgslsmith_sub_u32(1u, global2.a.x), _wgslsmith_f_op_f32(min(222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 4u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f))))), min(~countOneBits(_wgslsmith_clamp_i32(u_input.a, 45349i, global1.x)), ~(func_2().x >> (~global3.x % 32u))));
    global1 = var_1.a;
    var var_2 = -1735f;
    global2 = Struct_1(global2.a);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(global3.x, func_1(countOneBits(-vec2<i32>(107368i, u_input.a))), _wgslsmith_dot_vec3_u32(global3.xxw, vec3<u32>(~global2.a.x & global2.a.x, 38568u, 0u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(7071u, 4u)], vec4<bool>(false, true, false, true), Struct_4(vec2<i32>(-56897i, 1i), 1999u, global0[_wgslsmith_index_u32(123796u, 4u)], -2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1890f))), -279f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(2024f))))))));
    let var_2 = -2147483647i & select(16422i, -global1.x, !(_wgslsmith_mult_u32(1596u, var_0.x) < global2.a.x));
    var var_3 = 1u;
    let var_4 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))) + _wgslsmith_f_op_f32(1075f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.a.x, 4u)] * -700f)))), Struct_4(_wgslsmith_mod_vec2_i32(-select(vec2<i32>(global1.x, u_input.a), vec2<i32>(-11081i, global1.x), vec2<bool>(false, false)), vec2<i32>(-26489i, global1.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-435f)))), _wgslsmith_sub_i32(~(-global1.x), u_input.a)), Struct_5(Struct_4(~vec2<i32>(global1.x, -2147483647i) | -vec2<i32>(global1.x, -1i), ~var_0.x, _wgslsmith_f_op_f32(-var_1.x), countOneBits(_wgslsmith_clamp_i32(1i, u_input.a, global1.x))), Struct_3(abs(vec3<i32>(global1.x, global1.x, -1075i) & vec3<i32>(u_input.a, -1i, var_2)), func_5(-679f, Struct_4(vec2<i32>(16075i, u_input.a), global3.x, global0[_wgslsmith_index_u32(2405u, 4u)], -9635i), Struct_5(Struct_4(vec2<i32>(var_2, 1i), var_0.x, global4[_wgslsmith_index_u32(4294967295u, 4u)], global1.x), Struct_3(vec3<i32>(-1i, global1.x, -18705i), Struct_1(vec3<u32>(0u, var_0.x, global2.a.x)), true, vec4<u32>(40327u, 42776u, var_0.x, global2.a.x), 2226f))), !any(vec2<bool>(true, false)), vec4<u32>(81254u, var_0.x, global3.x, ~97680u), 1331f)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + global0[_wgslsmith_index_u32(var_0.x, 4u)]) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, var_4.a.x, 53551u, 547u), vec4<u32>(var_0.x, 20964u, global3.x, var_4.a.x)), 4u)]), 1204f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, var_1.x))))))));
    var var_6 = Struct_5(Struct_4(~vec2<i32>(global1.x, 2147483647i) >> (_wgslsmith_mod_vec2_u32(~global3.wy, ~var_4.a.xz) % vec2<u32>(32u)), 0u, global4[_wgslsmith_index_u32(func_4(vec4<i32>(firstTrailingBit(41686i), ~(-28498i), _wgslsmith_mod_i32(-1i, global1.x), ~72095i), -97502i, 0i), 4u)], firstTrailingBit(_wgslsmith_mod_i32(abs(-57100i), 1i))), Struct_3(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-70134i, 0i, var_2)), max(vec3<i32>(97203i, var_2, -12382i), abs(vec3<i32>(44708i, var_2, 0i))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, var_2, var_2), vec3<i32>(33366i, u_input.a, u_input.a))), func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1087f, -1106f, true)), _wgslsmith_f_op_f32(sign(var_1.x)))), Struct_4(reverseBits(vec2<i32>(u_input.a, u_input.a)), ~23368u, _wgslsmith_f_op_f32(f32(-1f) * -1929f), max(var_2, -5771i)), Struct_5(Struct_4(vec2<i32>(u_input.a, u_input.a), var_4.a.x, global4[_wgslsmith_index_u32(6483u, 4u)], 16078i), Struct_3(vec3<i32>(1i, 2147483647i, var_2), var_4, false, vec4<u32>(77104u, var_0.x, 1u, global3.x), 658f))), true, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 50551u, 72982u, 45598u), reverseBits(vec4<u32>(var_4.a.x, 21477u, 12535u, var_4.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_4.a.x, global2.a.x, global3.x), vec4<u32>(1u, var_4.a.x, 36532u, 21272u))) | firstLeadingBit(select(vec4<u32>(0u, global2.a.x, var_0.x, 1u), vec4<u32>(1u, 8328u, 0u, 32925u), vec4<bool>(true, var_5, var_5, var_5))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-240f, -307f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(77837u, 4u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_u32(~global2.a.x, 0u)), _wgslsmith_div_f32(-1000f, 305f), reverseBits(91580u >> (global2.a.x % 32u)));
}

