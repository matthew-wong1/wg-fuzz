struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = -766f;

var<private> global2: array<f32, 11>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_u32(abs(u_input.a.zyw), u_input.a.yzz);
    global2 = array<f32, 11>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.c.x, 1025f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(39077u, 11u)]))), arg_2.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, 877f, -325f, -942f) * _wgslsmith_f_op_vec4_f32(-arg_2.a)))), !(!vec4<bool>(arg_0.x, true, arg_0.x && arg_0.x, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(-138f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 11u)] * arg_2.a.x))), _wgslsmith_f_op_f32(-arg_2.a.x), global2[_wgslsmith_index_u32(48542u, 11u)]), vec3<f32>(-2149f, _wgslsmith_f_op_f32(-arg_2.e.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1405f * arg_2.c.a) + 936f)))), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.a, 625f, -881f, global2[_wgslsmith_index_u32(0u, 11u)]))))), arg_2.c, arg_2.b, (-1i << (u_input.c.x % 32u)) | arg_1, arg_2.e));
    return 29671i;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    global1 = 452f;
    global0 = firstTrailingBit(vec4<i32>(-2147483647i, -8290i, func_3(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_1.b.x, arg_0)), 21893i, arg_1.d), ~arg_1.d.e.b ^ abs(21243i))) ^ vec4<i32>(abs(global0.x), global0.x, 1i, ~(-countOneBits(u_input.b.x)));
    var var_0 = min(countOneBits(vec3<i32>(-43334i, 1i, arg_2.a.d) ^ global0.zxx) << (vec3<u32>(18187u, u_input.c.x, 6388u) % vec3<u32>(32u)), reverseBits(vec3<i32>(arg_2.a.e.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, arg_1.d.e.b, 1i, u_input.b.x), -vec4<i32>(2147483647i, u_input.d, arg_1.d.b.b, 2147483647i)), ~firstLeadingBit(-23634i))));
    var_0 = select(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -2147483647i, 2147483647i), countOneBits(vec3<i32>(0i, -2147483647i, u_input.b.x))), firstLeadingBit(arg_2.a.d), -_wgslsmith_mod_i32(-1i, 2147483647i)) & ((vec3<i32>(arg_1.d.c.b, global0.x, 2147483647i) >> (_wgslsmith_mod_vec3_u32(u_input.c, u_input.a.www) % vec3<u32>(32u))) ^ global0.yww), min(-(~vec3<i32>(u_input.b.x, 2147483647i, var_0.x)), vec3<i32>(-58723i, i32(-1i) * -2147483647i, ~arg_2.a.c.b) | vec3<i32>(-3874i, ~(-2147483647i), _wgslsmith_dot_vec3_i32(global0.yyy, global0.yyx))), true);
    var var_1 = ~(~u_input.a) >> (vec4<u32>(u_input.a.x, 1u, 4294967295u, ~u_input.c.x << (u_input.c.x % 32u)) % vec4<u32>(32u));
    return !arg_1.b.x || any(vec4<bool>(arg_1.b.x, any(select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_1.b.x, false, false, true))), !arg_0, arg_0));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    let var_0 = Struct_5(-48365i);
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(45643u, 11u)])), _wgslsmith_f_op_f32(min(arg_1.e.c.x, -182f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 11u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(74363u, 11u)]) - _wgslsmith_f_op_f32(-arg_2.a.x)))), arg_1.b.c.x));
    var var_3 = Struct_2(vec4<f32>(2080f, _wgslsmith_f_op_f32(-arg_1.e.a), 223f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 11u)])))))), arg_1.c, arg_1.b, _wgslsmith_clamp_i32(reverseBits(11285i), arg_1.c.b, -24402i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(40248u, 11u)] - global2[_wgslsmith_index_u32(0u, 11u)]))), ~2147483647i, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(floor(arg_2.c.x)))))));
    let var_4 = arg_1;
    return all(vec3<bool>(true, true, true));
}

fn func_5(arg_0: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 11u)])))), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-754f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 11u)])), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 4294967295u), 11u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 431f, global2[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 1745f, -1247f) + vec3<f32>(443f, global2[_wgslsmith_index_u32(36189u, 11u)], global2[_wgslsmith_index_u32(64221u, 11u)])), !vec3<bool>(false, arg_0, false))), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, true))))));
    let var_1 = vec4<bool>(all(select(vec3<bool>(arg_0, !arg_0, arg_0), vec3<bool>(arg_0, any(vec4<bool>(false, true, false, false)), select(arg_0, false, arg_0)), false)), arg_0, func_2(global0.x <= _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.b, u_input.d, u_input.d, global0.x)), select(vec4<i32>(-24328i, 6600i, global0.x, var_0.b), vec4<i32>(global0.x, 0i, 52547i, var_0.b), arg_0)), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 1000f, 970f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-287f, -526f, 705f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<f32>(global2[_wgslsmith_index_u32(133825u, 11u)], 946f, 444f, var_0.c.x))), vec4<bool>(arg_0, all(vec3<bool>(false, arg_0, false)), arg_0, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], var_0.a, 1143f)), Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -328f, var_0.a, global2[_wgslsmith_index_u32(1u, 11u)]), var_0, var_0, _wgslsmith_mult_i32(global0.x, -2147483647i), Struct_1(global2[_wgslsmith_index_u32(0u, 11u)], u_input.b.x, vec3<f32>(var_0.c.x, global2[_wgslsmith_index_u32(0u, 11u)], -454f)))), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(106f, var_0.c.x, 674f, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<f32>(-632f, var_0.a, var_0.c.x, var_0.c.x))), var_0, Struct_1(422f, -55034i, vec3<f32>(-1295f, 1112f, var_0.a)), ~1i, Struct_1(var_0.c.x, 14010i, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 337f, -782f))))), !(!arg_0));
    let var_2 = Struct_5(1i);
    var var_3 = var_2;
    let var_4 = abs(_wgslsmith_mod_u32(32985u, 4294967295u));
    return firstTrailingBit(~46426u);
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<i32>(9250i, ~26705i, (i32(-1i) * -(-1i << (u_input.a.x % 32u))) | _wgslsmith_dot_vec3_i32(global0.yzy, vec3<i32>(~u_input.e, u_input.d, -31919i >> (0u % 32u))), -1i >> (func_5(func_4(func_2(true, Struct_4(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], 1000f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(false, true, true, false), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], -640f, -1159f), Struct_2(vec4<f32>(-528f, global2[_wgslsmith_index_u32(1u, 11u)], 838f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), Struct_1(global2[_wgslsmith_index_u32(49665u, 11u)], -26053i, vec3<f32>(1768f, global2[_wgslsmith_index_u32(4294967295u, 11u)], -819f)), Struct_1(2068f, u_input.b.x, vec3<f32>(global2[_wgslsmith_index_u32(29919u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -1001f)), global0.x, Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 38971i, vec3<f32>(186f, -555f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)])))), Struct_3(Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(14992u, 11u)]), Struct_1(global2[_wgslsmith_index_u32(25991u, 11u)], global0.x, vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 645f, -782f)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -1i, vec3<f32>(-497f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), -1i, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 2147483647i, vec3<f32>(-1391f, 745f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]))))), Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], -352f, -591f), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 11u)], 0i, vec3<f32>(global2[_wgslsmith_index_u32(1u, 11u)], 486f, -883f)), Struct_1(1387f, global0.x, vec3<f32>(158f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])), 1i, Struct_1(-1445f, global0.x, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(36783u, 11u)]))), Struct_4(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)], -1000f), vec4<bool>(false, false, false, false), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(12140u, 11u)], -2079f), Struct_2(vec4<f32>(2041f, -515f, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), Struct_1(-770f, global0.x, vec3<f32>(-1048f, 1022f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 26110i, vec3<f32>(global2[_wgslsmith_index_u32(0u, 11u)], 2060f, -401f)), u_input.e, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 11u)], 15691i, vec3<f32>(-1000f, 1859f, global2[_wgslsmith_index_u32(1u, 11u)])))))) % 32u));
    var var_1 = vec3<i32>(u_input.b.x, -global0.x, _wgslsmith_add_i32(var_0.x, ~0i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 11u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(405f, -1912f)) - _wgslsmith_f_op_f32(floor(388f))))) * global2[_wgslsmith_index_u32(u_input.a.x, 11u)]);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1000f, 1551f, 1f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x ^ 4294967295u, 11u)])), _wgslsmith_mult_i32(~(-1i), -1i), vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + global2[_wgslsmith_index_u32(u_input.c.x, 11u)])))), firstLeadingBit(19365i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10223u, 11u)]), _wgslsmith_f_op_f32(ceil(1635f)))))), -28367i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 11u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) * var_2)), global0.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(-1508f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19005u, 11u)]), _wgslsmith_f_op_f32(var_2 - 262f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1113f, 1000f, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_2, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.c.x - var_3.b.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(min(-448f, _wgslsmith_f_op_f32(step(-797f, -958f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 11u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(890f * _wgslsmith_f_op_f32(868f - var_3.a.x))) * var_3.c.a));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a - vec4<f32>(-1003f, _wgslsmith_f_op_f32(select(-690f, var_2, true)), _wgslsmith_f_op_f32(sign(var_3.a.x)), -568f))), vec4<bool>(!select(true, false, true) & (true != all(vec2<bool>(false, false))), true && all(vec4<bool>(true, true, true, true)), func_4(u_input.c.x >= u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, var_2, 2133f, var_3.a.x)), var_3.e, var_3.c, firstLeadingBit(1i), Struct_1(-704f, global0.x, var_3.a.zzz)), Struct_4(_wgslsmith_f_op_vec4_f32(round(var_3.a)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(exp2(var_3.c.c)), var_3)), !(!any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.e.c), vec3<f32>(global2[_wgslsmith_index_u32(~u_input.c.x, 11u)], var_2, _wgslsmith_f_op_f32(f32(-1f) * -1837f)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), vec3<bool>(all(vec2<bool>(false, true)), true, true), _wgslsmith_f_op_f32(max(619f, var_3.a.x)) <= var_2))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_3.a, _wgslsmith_f_op_vec4_f32(max(var_3.a, var_3.a)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2460f, 411f, var_2, -669f) + var_3.a), _wgslsmith_f_op_vec4_f32(-var_3.a))), var_3.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.b.c.x)))), ~(-55598i), var_3.c.c), _wgslsmith_div_i32(~2147483647i, -2147483647i), var_3.b));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_2) -> StorageBuffer {
    global0 = select(vec4<i32>(-12293i, _wgslsmith_mod_i32(1i, -min(-20131i, -1i)), -4907i, -(arg_2.b.b ^ -13442i) & _wgslsmith_mult_i32(~3193i, 2147483647i | u_input.e)), vec4<i32>(arg_2.b.b, -1i, arg_0.d.c.b, ~arg_2.d), arg_0.b);
    var var_0 = any(arg_0.b.wwx);
    let var_1 = Struct_5(max(_wgslsmith_clamp_i32(arg_2.c.b, -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, arg_0.d.b.b, -10907i), global0.wzz)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, arg_1.x), u_input.e ^ 0i)) << (_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(~u_input.a.zy, min(u_input.a.yz, vec2<u32>(1u, u_input.c.x)))) % 32u));
    let var_2 = arg_0.b.x | (84517u == (53452u >> (u_input.a.x % 32u)));
    let var_3 = true;
    return StorageBuffer(u_input.a, ~u_input.a.x, _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), vec3<u32>(26410u, 0u, 42569u)) & ~(vec3<u32>(u_input.c.x, 21382u, u_input.a.x) ^ u_input.c), abs(abs(u_input.c >> (vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(39050u, 29203u, 2947u)), _wgslsmith_clamp_vec3_u32(u_input.a.zxw, u_input.a.xxx, vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(20068u, 37648u, u_input.a.x), u_input.a.ywz) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 1u, 15257u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(min(u_input.a.xzz, countOneBits(~(~vec3<u32>(87290u, u_input.c.x, 6118u)))), u_input.a.wyx);
    let x = u_input.a;
    s_output = func_6(func_1(), _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b.x >> (var_0.x % 32u)), 29714i, -2147483647i, abs(global0.x)), abs(vec4<i32>(-58634i, _wgslsmith_add_i32(global0.x, -2147483647i), func_1().d.c.b, _wgslsmith_mult_i32(30706i, u_input.b.x)))), func_1().d);
}

