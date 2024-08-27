struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(71212u, 22706u);

var<private> global1: array<bool, 17> = array<bool, 17>(false, true, false, true, true, false, false, false, true, true, false, false, true, false, true, false, true);

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), 1157f, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), 148f, vec4<bool>(false, true, false, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), -486f, vec4<bool>(false, false, true, true))));

var<private> global3: vec3<u32> = vec3<u32>(0u, 63167u, 1u);

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), 688f, vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), -1000f, vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), -1223f, vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), -1426f, vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), -1112f, vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), 1300f, vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), 1000f, vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), -1091f, vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), -293f, vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), 585f, vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), -471f, vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), 1000f, vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), 417f, vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), -1000f, vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), -165f, vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), 1643f, vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), -1216f, vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), -589f, vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), -1693f, vec4<bool>(true, false, false, true)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -275f))) * _wgslsmith_f_op_f32(max(-282f, -2079f))))), 664f, _wgslsmith_f_op_f32(ceil(-1490f)));
    let var_1 = max(firstLeadingBit(vec4<i32>(18144i, ~(-23861i), _wgslsmith_add_i32(-2147483647i, firstTrailingBit(-2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(2147483647i, 1i, -1i)))), -vec4<i32>(~1i, ~1220i, ~(-1i), -1i));
    var var_2 = 1u;
    global2 = array<Struct_2, 3>();
    var var_3 = ~(~18517u);
    return !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)] && global1[_wgslsmith_index_u32(0u, 17u)], true, all(vec2<bool>(true, true))), select(vec4<bool>(global1[_wgslsmith_index_u32(~61015u, 17u)], global1[_wgslsmith_index_u32(global3.x, 17u)] && true, true, false), select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(8479u, 17u)], global1[_wgslsmith_index_u32(3507u, 17u)], global1[_wgslsmith_index_u32(9000u, 17u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 17u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(15580u, 17u)], global1[_wgslsmith_index_u32(global3.x, 17u)], global1[_wgslsmith_index_u32(global3.x, 17u)])), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global3.x, 17u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 17u)], false, global1[_wgslsmith_index_u32(global3.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global1[_wgslsmith_index_u32(34954u, 17u)], global1[_wgslsmith_index_u32(81135u, 17u)], false, global1[_wgslsmith_index_u32(1u, 17u)]), global1[_wgslsmith_index_u32(global0.x, 17u)]), true)), global1[_wgslsmith_index_u32(~(~max(global0.x, 1u)), 17u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    var var_1 = Struct_3(!any(!vec2<bool>(false, arg_2)));
    var var_2 = Struct_2(Struct_1(!(!arg_0.d), vec4<bool>((19342u << (global0.x % 32u)) <= reverseBits(0u), false, arg_2, all(func_3().wzx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 2298f) * arg_0.c) + arg_0.c), vec4<bool>(true, var_1.a, all(!arg_0.a.wy), true)));
    var_0 = _wgslsmith_f_op_f32(var_2.a.c * -1171f);
    let var_3 = vec3<bool>(arg_0.b.x, !(!(!arg_2)), select(var_1.a, var_2.a.d.x, true));
    return true;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_4(Struct_1(!func_3(), func_3(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1405f, arg_0.a.c))), _wgslsmith_f_op_f32(1000f - arg_0.a.c)), !func_3()), (vec2<i32>(abs(-2147483647i), _wgslsmith_div_i32(18259i, -2147483647i)) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.b, global0.x), u_input.b) % vec2<u32>(32u))) | vec2<i32>(max(-2147483647i, 1i), min(0i, 0i)), !(!(!(1000f >= arg_0.a.c))));
    global0 = _wgslsmith_clamp_vec2_u32(u_input.a.zw, ~(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.x), global3.zx) | global3.zy) ^ (_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.a.xz) | u_input.a.xw), ~global3.yz);
    var var_1 = arg_0.a.c;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -692f);
    let var_2 = countOneBits(u_input.a);
    return Struct_3(!(!global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(61032u, 4294967295u, u_input.c), 17u)]));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_2, 3>();
    let var_0 = -43085i;
    global0 = vec2<u32>(45230u, _wgslsmith_mult_u32(abs(0u), abs(4294967295u)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, ~_wgslsmith_mult_u32(u_input.c & global0.x, 4294967295u), _wgslsmith_div_u32(u_input.b, abs(_wgslsmith_add_u32(0u, global3.x)))), vec4<u32>(~(global0.x ^ abs(4294967295u)), 82440u & abs(select(global3.x, 4294967295u, global1[_wgslsmith_index_u32(62116u, 17u)])), u_input.b, firstLeadingBit(0u))), 3u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1149f, -2045f, arg_2)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(var_1.a.c - arg_2), 155f)))));
    return Struct_1(!var_1.a.a, var_1.a.d, _wgslsmith_f_op_f32(f32(-1f) * -207f), vec4<bool>(true, true, all(!var_1.a.a), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3.a;
    var var_1 = 0u;
    global1 = array<bool, 17>();
    var var_2 = func_5(func_2(Struct_2(Struct_1(!vec4<bool>(false, arg_2, arg_3.a.a.x, var_0.d.x), select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 17u)], arg_2, arg_3.a.b.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_1, 17u)], false), vec4<bool>(arg_3.a.d.x, arg_2, arg_2, false)), arg_3.a.c, var_0.a))), func_2(Struct_2(Struct_1(!vec4<bool>(arg_3.a.d.x, false, global1[_wgslsmith_index_u32(global3.x, 17u)], var_0.d.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false), _wgslsmith_f_op_f32(-arg_3.a.c), !var_0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.c)));
    global4 = array<Struct_1, 19>();
    return func_2(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u) ^ ~vec2<u32>(global3.x, 27279u), ~(~vec2<u32>(global3.x, u_input.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 26608u), 1u), select(vec2<u32>(global3.x, global3.x), abs(u_input.a.yx), global1[_wgslsmith_index_u32(u_input.b, 17u)] | true))), min(global3.x, ~_wgslsmith_dot_vec3_u32(~u_input.a.ywx, vec3<u32>(0u, global3.x, u_input.c) << (u_input.a.zww % vec3<u32>(32u)))), any(!select(vec2<bool>(global1[_wgslsmith_index_u32(6766u, 17u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(92068u, 17u)], global1[_wgslsmith_index_u32(64205u, 17u)]), global1[_wgslsmith_index_u32(u_input.b, 17u)])), global2[_wgslsmith_index_u32(36482u, 3u)]);
    global3 = ~countOneBits(~(~(~u_input.a.zxx)));
    let var_2 = ~u_input.a;
    global0 = ~(u_input.a.xz >> (firstLeadingBit(firstTrailingBit(countOneBits(vec2<u32>(global3.x, u_input.a.x)))) % vec2<u32>(32u)));
    var var_3 = func_1(vec2<u32>(firstLeadingBit(0u), 44908u), ~_wgslsmith_dot_vec3_u32(~var_2.www, u_input.a.www), all(!vec2<bool>(!global1[_wgslsmith_index_u32(1u, 17u)], func_2(global2[_wgslsmith_index_u32(global3.x, 3u)]).a)), Struct_2(Struct_1(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global3.x, 17u)], global1[_wgslsmith_index_u32(58856u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.x, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)], var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1480f), vec4<bool>(false, func_4(global4[_wgslsmith_index_u32(4294967295u, 19u)], vec2<i32>(15595i, -55537i), global1[_wgslsmith_index_u32(var_2.x, 17u)]), true, false))));
    var var_4 = func_1(countOneBits(vec2<u32>(~global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, var_2.x), u_input.a), vec4<u32>(u_input.b, 4294967295u, global0.x, 4294967295u)))), ~(~(global3.x >> (_wgslsmith_add_u32(global3.x, u_input.a.x) % 32u))), func_5(func_2(Struct_2(func_5(Struct_3(var_1.a), Struct_3(var_3.a), -693f))), func_2(Struct_2(global4[_wgslsmith_index_u32(26978u, 19u)])), -455f).a.x, global2[_wgslsmith_index_u32(~1u, 3u)]);
    var var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(499f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(abs(select(vec2<i32>(-38565i, -1i), -vec2<i32>(72378i, -1i), any(vec2<bool>(false, true)))), vec2<i32>(firstLeadingBit(countOneBits(2147483647i)), ~1i)), -min(~vec3<i32>(47631i, 2801i, -2147483647i), vec3<i32>(-38670i, _wgslsmith_clamp_i32(-30308i, 34082i, -2147483647i), -1i)), var_5.x, vec3<u32>(var_2.x, 0u, _wgslsmith_sub_u32(u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(-abs(_wgslsmith_div_vec4_i32(vec4<i32>(17699i, -74i, 1i, 2147483647i), vec4<i32>(2147483647i, -1i, -29688i, -19690i))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 4599i, 0i, -2147483647i), firstTrailingBit(vec4<i32>(2147483647i, -15041i, -2147483647i, -1i)), min(vec4<i32>(-2147483647i, -10254i, 2147483647i, 0i), vec4<i32>(-1i, 1484i, 0i, 2147483647i)))));
}

