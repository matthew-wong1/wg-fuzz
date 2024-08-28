struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 21>;

var<private> global2: array<bool, 6>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(round(961f)));
    return select(select(vec3<bool>(_wgslsmith_f_op_f32(step(750f, arg_2.x)) >= _wgslsmith_f_op_f32(-270f - arg_0), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.e.x, u_input.e.x, global2[_wgslsmith_index_u32(0u, 6u)]), u_input.e.x, 4294967295u), 21u)], select(true, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.e.x, 6u)])))), vec3<bool>(select(any(vec3<bool>(true, global2[_wgslsmith_index_u32(91884u, 6u)], global2[_wgslsmith_index_u32(u_input.e.x, 6u)])), false, true), ~7548u <= countOneBits(u_input.e.x), global2[_wgslsmith_index_u32(u_input.e.x, 6u)]), all(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], true))), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(56409u, 21u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global2[_wgslsmith_index_u32(1u, 6u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)]))), vec3<bool>(global2[_wgslsmith_index_u32(75708u, 6u)], false, global1[_wgslsmith_index_u32(2835u, 21u)]));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1183f * _wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.x)))))), _wgslsmith_f_op_f32(-1063f - global0.x)));
    var var_1 = vec3<u32>(35080u, _wgslsmith_mult_u32(u_input.e.x, 1u), _wgslsmith_clamp_u32(u_input.e.x, ~u_input.e.x, ~u_input.e.x));
    var var_2 = ~_wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(u_input.a.x, arg_0.x, 4644i)), 0i), vec4<i32>(arg_1.x << (var_1.x % 32u), select(arg_0.x, arg_0.x, true), min(1i, 1i), arg_0.x)), min(firstTrailingBit(vec4<i32>(60451i, -2105i, 0i, u_input.d.x)), vec4<i32>(countOneBits(arg_1.x), u_input.b.x >> (u_input.e.x % 32u), arg_1.x, _wgslsmith_sub_i32(0i, u_input.a.x))));
    var var_3 = _wgslsmith_f_op_f32(abs(-1551f));
    var_1 = vec3<u32>(_wgslsmith_div_u32(min(max(abs(10652u), var_1.x), _wgslsmith_div_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(53183u, u_input.e.x)))), var_1.x), abs(~(~_wgslsmith_clamp_u32(u_input.e.x, var_1.x, 18767u))), select(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.e, u_input.e), vec3<u32>(~1u, u_input.e.x, 33987u | var_1.x)), abs(5106u), any(vec3<bool>(false, all(arg_2.a), global0.x >= -1707f))));
    return vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1266f, _wgslsmith_div_f32(global0.x, 752f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(func_4(abs(abs(~arg_0.xy << (u_input.e.yx % vec2<u32>(32u)))), select(-(vec2<i32>(-1i) * -arg_0.yy), -vec2<i32>(firstLeadingBit(arg_3), arg_0.x), true | !select(false, global1[_wgslsmith_index_u32(72788u, 21u)], global1[_wgslsmith_index_u32(5537u, 21u)])), Struct_2(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(16756u, 21u)], global1[_wgslsmith_index_u32(40423u, 21u)], global2[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 6u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], false)), func_3(-173f, 584f, vec4<f32>(-859f, arg_1.a, 890f, 323f)), global1[_wgslsmith_index_u32(~u_input.e.x, 21u)]))));
    let var_0 = ~(~0u);
    global1 = array<bool, 21>();
    var var_1 = Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(43213u >> (reverseBits(~4294967295u) % 32u), 6u)], global1[_wgslsmith_index_u32(~1u, 21u)], !func_3(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(arg_3, u_input.c.x), vec2<i32>(arg_0.x, 29680i), Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], true, global1[_wgslsmith_index_u32(var_0, 21u)])))).x, arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a.x, arg_2.a.x, 594f))).x));
    return Struct_1(select(vec4<u32>(37322u, 2775u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 70590u, var_0, 1u), vec4<u32>(u_input.e.x, 50220u, 36406u, var_0)), var_0), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27132u, 19721u), u_input.e)), ~countOneBits(~vec4<u32>(35880u, u_input.e.x, 883u, 64086u)), -(arg_3 & u_input.a.x) < (_wgslsmith_add_i32(1i, arg_0.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_0.x, 1i), u_input.b.zzx))), select(select(vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 21u)], false, true, false)), false, true, var_1.a.x), select(select(vec4<bool>(var_1.a.x, false, true, global2[_wgslsmith_index_u32(var_0, 6u)]), vec4<bool>(var_1.a.x, true, global1[_wgslsmith_index_u32(52451u, 21u)], global2[_wgslsmith_index_u32(var_0, 6u)]), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.e.x, 6u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0, 6u)], global1[_wgslsmith_index_u32(15417u, 21u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], false), false), any(vec3<bool>(var_1.a.x, false, global1[_wgslsmith_index_u32(25490u, 21u)]))), all(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_0, 6u)], global1[_wgslsmith_index_u32(var_0, 21u)], global2[_wgslsmith_index_u32(10537u, 6u)]))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 21u)], true, global1[_wgslsmith_index_u32(var_0, 21u)], var_1.a.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1202u, 6u)], global2[_wgslsmith_index_u32(var_0, 6u)]), global2[_wgslsmith_index_u32(3989u, 6u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global2[_wgslsmith_index_u32(37846u, 6u)], false, false), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.e.x, 6u)], false), global1[_wgslsmith_index_u32(var_0, 21u)]), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(25014u, 6u)], global2[_wgslsmith_index_u32(u_input.e.x, 6u)], true))), !var_1.a.x));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(u_input.c, Struct_4(184f), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -789f) - vec3<f32>(global0.x, -1424f, 183f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, global0.x, 339f)))), ~u_input.a.x);
    var_0 = Struct_1(countOneBits(vec4<u32>(0u, func_2(-u_input.b.xzw, Struct_4(-1443f), Struct_3(vec3<f32>(-1000f, 656f, 218f)), _wgslsmith_add_i32(37262i, u_input.b.x)).a.x, 22663u, ~u_input.e.x)), func_2(~vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, -47167i), u_input.c.x, u_input.d.x & -1213i), Struct_4(1892f), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(948f, global0.x, global1[_wgslsmith_index_u32(18779u, 21u)])), -183f, 1f)), ~_wgslsmith_div_i32(select(8067i, 1806i, false), u_input.c.x)).b);
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-800f, _wgslsmith_f_op_f32(148f - global0.x), global2[_wgslsmith_index_u32(~u_input.e.x, 6u)])))), _wgslsmith_f_op_f32(-592f - 387f))), _wgslsmith_f_op_f32(-global0.x));
    global1 = array<bool, 21>();
    global2 = array<bool, 6>();
    return Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -601f))) + 1094f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 690f, 1002f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, -1277f, arg_0.a))))));
    let var_1 = _wgslsmith_sub_u32(min(select(u_input.e.x, min(min(54854u, 1u), 35062u << (u_input.e.x % 32u)), true), 0u), min(firstLeadingBit(0u), u_input.e.x));
    let var_2 = (~u_input.a.xwx >> (~(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x) & u_input.e) % vec3<u32>(32u))) ^ -vec3<i32>(1i, -7118i & (u_input.d.x >> (var_1 % 32u)), _wgslsmith_mult_i32(u_input.c.x, firstTrailingBit(-34421i)));
    let var_3 = Struct_2(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 4294967295u, var_1), vec4<u32>(4294967295u, u_input.e.x, 1u, 1u)) & ~var_1, 6u)], (true & arg_2.x) || arg_2.x, true), !vec3<bool>(true, global1[_wgslsmith_index_u32(var_1, 21u)], true), var_1 != 34732u));
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(955f + var_0.a.x), _wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(122f * 889f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(307f, 251f, arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1454f, 894f, 3022f))))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> StorageBuffer {
    global1 = array<bool, 21>();
    global2 = array<bool, 6>();
    var var_0 = arg_3.a;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - arg_0.a.x)), -665f, global0.x)));
    global1 = array<bool, 21>();
    return StorageBuffer(vec4<i32>(u_input.c.x, firstLeadingBit((i32(-1i) * -23079i) | _wgslsmith_sub_i32(arg_2.x, u_input.d.x)), 2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 1385i), 2147483647i), arg_2.x)), _wgslsmith_f_op_vec2_f32(-global0.zx), arg_3.a, var_0.wy, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(~arg_2, select(~arg_2, arg_2, select(vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, true), arg_1.b.x))), firstTrailingBit(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(u_input.e.x, _wgslsmith_add_u32(firstLeadingBit(u_input.e.x), ~1u));
    var_0 = _wgslsmith_add_u32(min(123u, _wgslsmith_mod_u32(1u, 9736u)), _wgslsmith_clamp_u32(reverseBits(~u_input.e.x | ~u_input.e.x), 14165u, u_input.e.x));
    var_0 = ~(~40020u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(155f, global0.x), _wgslsmith_f_op_f32(807f + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))) + _wgslsmith_f_op_f32(-983f + -2593f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(588f, global0.x), global0.x));
    let var_2 = -27705i;
    let var_3 = _wgslsmith_mult_u32(u_input.e.x, u_input.e.x);
    let x = u_input.a;
    s_output = func_6(func_5(func_1(), true, func_2(select(min(vec3<i32>(-2147483647i, u_input.d.x, -2147483647i), vec3<i32>(var_2, u_input.a.x, -5964i)), _wgslsmith_mod_vec3_i32(u_input.a.wwx, vec3<i32>(-2147483647i, -16956i, u_input.b.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], global2[_wgslsmith_index_u32(var_3, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_3, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 21u)], false), global1[_wgslsmith_index_u32(var_3, 21u)])), func_1(), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -230f, global0.x))), i32(-1i) * -var_2).b.wxw), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, var_2, ~var_2), u_input.b.yyy, ~(u_input.b.xzz & vec3<i32>(15740i, u_input.c.x, u_input.b.x))), Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_4(u_input.c.xy, vec2<i32>(-1i, u_input.a.x), Struct_2(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(27753u, 21u)])))).x, 1127f))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(354f, -209f, -1000f), vec3<f32>(993f, -632f, -591f), false)))), var_2), u_input.c, func_2(u_input.a.yyz, Struct_4(_wgslsmith_f_op_f32(1226f + global0.x)), func_5(func_1(), global1[_wgslsmith_index_u32(1u, 21u)], !(!vec3<bool>(global1[_wgslsmith_index_u32(var_3, 21u)], false, false))), _wgslsmith_sub_i32(firstLeadingBit(var_2) | var_2, var_2)));
}

