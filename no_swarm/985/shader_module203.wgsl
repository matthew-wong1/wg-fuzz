struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: bool,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<f32, 15>;

var<private> global2: array<f32, 12> = array<f32, 12>(-1000f, 1000f, -506f, 1390f, -658f, -431f, -522f, 253f, -1421f, 795f, -186f, -1785f);

var<private> global3: array<Struct_2, 28>;

var<private> global4: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = u_input.d.x;
    let var_1 = abs(reverseBits(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 51804u)))));
    let var_2 = true;
    global4 = ~var_1.x;
    global0 = array<vec3<f32>, 12>();
    return _wgslsmith_mult_i32(10911i, i32(-1i) * -(var_0 | 1i));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(14659u, 15u)], 1382f, -1000f, 390f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1469f, 540f, -1807f)))), global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1877f, -702f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 15u)], -705f), -1036f)), !any(vec2<bool>(true, true))), vec2<i32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)]) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 15u)], 975f))), 30768i));
    global3 = array<Struct_2, 28>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(900f, 515f, -110f, -736f)))), global0[_wgslsmith_index_u32(1u, 12u)], vec4<f32>(arg_0.x, -987f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(31982u, 12u)])), _wgslsmith_f_op_f32(trunc(218f)))), any(select(select(vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.d), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, var_0.a.d, var_0.a.d, true), vec4<bool>(var_0.a.d, true, var_0.a.d, var_0.a.d), var_0.a.d), var_0.a.d))), _wgslsmith_clamp_vec2_i32(~select(~vec2<i32>(10503i, var_0.b.x), var_0.b, var_0.a.d), -vec2<i32>(-1i, arg_1), vec2<i32>(-1i, -abs(-9247i))));
    var_1 = Struct_2(var_1.a, _wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.wy));
    global1 = array<f32, 15>();
    return Struct_3(var_1.a, all(!select(select(vec3<bool>(var_0.a.d, var_1.a.d, var_0.a.d), vec3<bool>(var_1.a.d, var_1.a.d, var_1.a.d), true), !vec3<bool>(var_0.a.d, var_0.a.d, true), vec3<bool>(true, true, true))), ~vec3<u32>(firstTrailingBit(~28247u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 1u), vec2<u32>(9585u, 4294967295u)), vec2<u32>(1u, 1u)), 1u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_0.c.x, 15u)]))), global1[_wgslsmith_index_u32(arg_0.c.x, 15u)])), _wgslsmith_f_op_f32(-arg_1.b.a.b.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.d.x, u_input.c.x, u_input.b)), vec4<i32>(countOneBits(18648i), u_input.c.x, ~u_input.b, u_input.b)), (vec4<i32>(-1i) * -u_input.d) | u_input.a)).a;
    let var_1 = func_2(var_0.b.xz, -_wgslsmith_sub_i32(2147483647i, u_input.b << (1u % 32u)) | func_3(_wgslsmith_f_op_f32(-1787f * -1068f)));
    let var_2 = Struct_1(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), 876f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -321f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.a.a.wxw, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), arg_0.a.a.x, -1790f, var_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.b.x, arg_1.e.a.a.x, 128f, var_1.a.c.x))) - var_0.c), all(vec4<bool>(arg_1.c, _wgslsmith_f_op_f32(-var_1.a.b.x) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.c.x, 15u)]), arg_0.a.d, any(vec2<bool>(true, arg_1.b.a.d)))));
    let var_3 = ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.d.x >> ((arg_1.e.c.x ^ arg_1.e.c.x) % 32u), ~(-62124i >> (var_1.c.x % 32u)), min(52017i, abs(u_input.a.x))), select(abs(arg_1.d), arg_1.d, arg_0.a.d) << (var_1.c % vec3<u32>(32u)));
    let var_4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 546f) + _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.c.x << (33648u % 32u), 15u)])))), arg_1.e, !(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, var_1.c.x, arg_0.c.x, arg_0.c.x), vec4<u32>(arg_0.c.x, var_1.c.x, 4294967295u, 0u)) < var_1.c.x) != true, vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(-8756i, ~u_input.a.x)), u_input.c.x, -arg_1.d.x), Struct_3(Struct_1(vec4<f32>(1000f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, arg_0.c.x, var_1.c.x), var_1.c), 15u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 12u)], var_2.b.x), _wgslsmith_f_op_f32(abs(arg_1.e.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(round(-1794f)), _wgslsmith_f_op_f32(f32(-1f) * -1387f), -984f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.a + arg_1.b.a.c) + arg_0.a.c), var_2.d), true, vec3<u32>(0u, ~var_1.c.x, ~arg_1.e.c.x)));
    return _wgslsmith_div_u32(131315u, arg_1.b.c.x >> (~(~arg_0.c.x) % 32u)) != var_1.c.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<bool>(!func_4(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(336f, global1[_wgslsmith_index_u32(arg_0.x, 15u)]), vec2<f32>(global2[_wgslsmith_index_u32(59204u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]))), max(2147483647i, 0i)), Struct_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(7598u, 15u)], 1969f))), Struct_3(Struct_1(vec4<f32>(-382f, global1[_wgslsmith_index_u32(21166u, 15u)], -1000f, global2[_wgslsmith_index_u32(arg_0.x, 12u)]), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], 1000f, 1624f), vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], -369f, 789f, 1435f), false), false, vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), true, _wgslsmith_sub_vec3_i32(vec3<i32>(-13092i, 7795i, 1i), u_input.a.zyx), func_2(vec2<f32>(global1[_wgslsmith_index_u32(143381u, 15u)], 921f), u_input.d.x))), true, !(any(vec2<bool>(true, true)) && (_wgslsmith_f_op_f32(f32(-1f) * -354f) > global2[_wgslsmith_index_u32(arg_0.x & arg_0.x, 12u)])));
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 12u)], global2[_wgslsmith_index_u32(128952u, 12u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1074f, global2[_wgslsmith_index_u32(44978u, 12u)])))))), _wgslsmith_mod_i32(-u_input.c.x, -u_input.c.x) >> (arg_0.x % 32u));
    let var_2 = var_1.a.a.xw;
    return Struct_1(var_1.a.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.a.a.ywy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(19609u, 12u)], global0[_wgslsmith_index_u32(68310u, 12u)], var_0.x)))))), var_1.a.a, !var_0.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global2 = array<f32, 12>();
    let var_0 = abs(u_input.d);
    let var_1 = -var_0.x;
    global4 = max(~(~arg_1.c.x), 0u);
    let var_2 = Struct_4(vec2<f32>(arg_1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -486f)), func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(616f, _wgslsmith_f_op_f32(-1773f - arg_1.a.b.x)))), -(~_wgslsmith_mod_i32(-1i, var_0.x))), select(arg_0.x >= _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 15u)])), !func_4(arg_1, Struct_4(vec2<f32>(-763f, 1344f), Struct_3(Struct_1(vec4<f32>(-105f, arg_0.x, arg_1.a.a.x, -1664f), arg_1.a.b, vec4<f32>(829f, 487f, arg_0.x, -351f), arg_1.a.d), true, vec3<u32>(4294967295u, arg_1.c.x, arg_1.c.x)), arg_1.b, vec3<i32>(0i, -2147483647i, u_input.d.x), arg_1)), ~0u == _wgslsmith_dot_vec4_u32(vec4<u32>(34979u, 0u, 1u, 81592u) | vec4<u32>(5566u, arg_1.c.x, arg_1.c.x, 18628u), vec4<u32>(4294967295u, 0u, arg_1.c.x, arg_1.c.x))), abs(_wgslsmith_clamp_vec3_i32(-firstTrailingBit(vec3<i32>(-36583i, -14043i, var_1)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_0.x, u_input.c.x, 1i)), u_input.c, u_input.c), vec3<i32>(-2147483647i, var_1 | u_input.c.x, 2147483647i ^ var_0.x))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - arg_1.a.a.xx) * _wgslsmith_f_op_vec2_f32(-arg_0))), var_1));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), vec2<f32>(1831f, -1061f), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, global2[_wgslsmith_index_u32(1u, 12u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(9176u, 15u)], 859f) * vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -376f)) - vec2<f32>(global2[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 15u)])) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(556f, -656f), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(74598u, 12u)]), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -1519f)), select(vec2<bool>(false, false), vec2<bool>(true, true), false)))))), Struct_3(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 12u)], 482f) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], 812f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]) + vec2<f32>(-261f, -1000f))), Struct_3(func_1(vec2<u32>(0u, 4294967295u)), true, ~vec3<u32>(26766u, 0u, 0u))), true, ~vec3<u32>(1u, 1u, 1u)), false, vec3<i32>(_wgslsmith_mod_i32(1i, -1i), -abs(u_input.a.x), 0i), func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, global2[_wgslsmith_index_u32(0u, 12u)])) - vec2<f32>(global2[_wgslsmith_index_u32(103151u, 12u)], -1421f)))), 1i));
    var var_1 = var_0.b.c.x | ~var_0.b.c.x;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1159f, 895f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.a.a.x, 553f)))), all(select(vec2<bool>(var_0.e.b, true), vec2<bool>(true, false), true)) || !(!var_0.b.a.d))), var_0.d.x);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.c.x, abs(_wgslsmith_sub_u32(8334u, ~(104587u | var_0.b.c.x)))), 28u)];
    global2 = array<f32, 12>();
    var var_4 = var_3.a.a.zyz;
    let var_5 = vec4<i32>(_wgslsmith_mult_i32(~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(5658i, 22444i, var_0.d.x), var_0.d)), -29650i), ~1i, _wgslsmith_dot_vec3_i32(var_0.d, _wgslsmith_mod_vec3_i32(abs(firstLeadingBit(vec3<i32>(37284i, 1345i, 52119i))), ~max(vec3<i32>(0i, 0i, 0i), vec3<i32>(2147483647i, var_0.d.x, u_input.a.x)))), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.c.x, _wgslsmith_div_u32(var_2.c.x, 39092u), _wgslsmith_mult_u32(var_2.c.x, var_0.e.c.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.c.x, 36370u, 1u), abs(var_0.b.c))) << (49879u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(firstLeadingBit(vec3<i32>(var_0.d.x, -28351i, var_3.b.x)), vec3<i32>(u_input.a.x, -29297i, var_0.d.x), true), -reverseBits(vec3<i32>(u_input.d.x, -71320i, 2147483647i))), u_input.c), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_5.x, -64745i, u_input.c.x), u_input.a), u_input.b << (4294967295u % 32u), abs(var_0.d.x)), var_5));
}

