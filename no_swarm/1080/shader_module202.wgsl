struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec3<f32> {
    let var_0 = select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], !arg_0.a), select(!vec2<bool>(!arg_0.a, any(vec4<bool>(true, true, false, arg_0.a))), vec2<bool>(true, true), arg_0.a), any(vec3<bool>(arg_0.a, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 14u)])), 46212u > arg_1.x)));
    let var_1 = !(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 14u)], arg_0.a, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec3<bool>(arg_0.a, false, false)))));
    var var_2 = arg_0.b;
    var_2 = 870f;
    let var_3 = Struct_3(any(select(vec4<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(24087u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(4171u, 14u)])), all(var_0), true), select(vec4<bool>(global0[_wgslsmith_index_u32(44888u, 14u)], true, global0[_wgslsmith_index_u32(0u, 14u)], var_1.x), !vec4<bool>(var_1.x, false, var_0.x, true), vec4<bool>(var_1.x, true, global0[_wgslsmith_index_u32(u_input.b, 14u)], false)), vec4<bool>(false, true, true, var_1.x))), -791f, arg_0.c, Struct_2(arg_0.b));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1437f), 1624f, 882f);
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_2(-119f);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(false, var_0.a, var_0.a, var_0), vec3<u32>(94300u, 6209u, u_input.b), ~vec3<u32>(1u, 10417u, arg_0))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-953f + var_0.a), _wgslsmith_f_op_f32(max(-382f, var_0.a))))))));
    global0 = array<bool, 14>();
    let var_2 = Struct_2(var_0.a);
    global0 = array<bool, 14>();
    return ~vec3<u32>(max(0u, u_input.b), arg_0 ^ arg_0, _wgslsmith_div_u32(u_input.b, firstTrailingBit(4294967295u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a, -207f)), -154f, _wgslsmith_f_op_f32(arg_1.a * 1058f))) + vec3<f32>(145f, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(true, arg_1.a, arg_1.a, arg_1), vec3<u32>(u_input.b, 1u, arg_0.x) << (arg_0 % vec3<u32>(32u)), ~vec3<u32>(u_input.b, u_input.b, u_input.b))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a, arg_1.a) * vec3<f32>(-177f, -1000f, -443f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a)))))))));
    var var_1 = firstLeadingBit(~countOneBits(-select(vec3<i32>(1i, -2264i, -7377i), vec3<i32>(arg_2.c, 50061i, u_input.a), arg_2.b)));
    let var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), arg_2.b && false), select(!select(vec2<bool>(arg_2.a, arg_2.b), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 14u)]), vec2<bool>(false, false)), vec2<bool>(true, true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], true), vec2<bool>(true, true), arg_2.a), vec2<bool>(true, false), u_input.b != 11054u)), select(!select(vec2<bool>(arg_2.a, global0[_wgslsmith_index_u32(0u, 14u)]), vec2<bool>(arg_2.a, false), arg_2.b), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], false)), select(vec2<bool>(true, true), vec2<bool>(false, arg_2.b), false), vec2<bool>(true, true)), !select(true, global0[_wgslsmith_index_u32(45473u, 14u)], arg_2.a)));
    return arg_1;
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(min(firstLeadingBit(func_2(31085u)), ~abs(~vec3<u32>(u_input.b, u_input.b, 4294967295u))), Struct_2(276f), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 14u)], all(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(20414u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], true), false)), -1i));
    var_0 = Struct_2(-546f);
    var var_1 = ~_wgslsmith_sub_u32(1u, 1u) << (0u % 32u);
    let var_2 = Struct_3(true, _wgslsmith_f_op_f32(max(-1661f, var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1276f - var_0.a))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f * -1427f)), _wgslsmith_f_op_f32(select(-857f, _wgslsmith_f_op_f32(select(1055f, var_0.a, false)), true)))));
    var_0 = func_4(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(17116u, u_input.b, 0u) | (vec3<u32>(0u, 4709u, 40623u) & vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(abs(u_input.b), u_input.b, func_2(u_input.b).x))), func_4(~(vec3<u32>(42212u, u_input.b, 0u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(26449u, 4294967295u, 13983u))), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(20206u, 105548u, u_input.b), firstLeadingBit(vec3<u32>(u_input.b, 1u, 4294967295u))), func_4(~vec3<u32>(u_input.b, 37316u, 4294967295u), var_2.d, Struct_1(var_2.a, var_2.a, u_input.a)), Struct_1(any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b, 14u)])), true, 2147483647i)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)) == 0i, global0[_wgslsmith_index_u32(u_input.b, 14u)], (-27509i >> (u_input.b % 32u)) ^ u_input.a)), Struct_1(var_2.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~min(0u, u_input.b), u_input.b), 14u)], _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a), vec2<i32>(3054i, u_input.a)), countOneBits(vec2<i32>(1i, u_input.a)))));
    return Struct_3(any(select(!select(vec4<bool>(true, var_2.a, true, true), vec4<bool>(true, var_2.a, true, var_2.a), global0[_wgslsmith_index_u32(34746u, 14u)]), select(select(vec4<bool>(var_2.a, var_2.a, global0[_wgslsmith_index_u32(4538u, 14u)], false), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(17517u, 14u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(110800u, 14u)], false, var_2.a, var_2.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(5940u, 14u)], true, global0[_wgslsmith_index_u32(u_input.b, 14u)]), true), select(vec4<bool>(true, false, true, var_2.a), vec4<bool>(false, true, true, false), true)), !(!vec4<bool>(true, var_2.a, global0[_wgslsmith_index_u32(u_input.b, 14u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + var_0.a), 428f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))), 416f, var_2.d);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    var var_0 = vec4<u32>(u_input.b, abs(103338u), 0u, ~42037u) | vec4<u32>(0u, ~1u, select(~15302u, 1u, true), 6728u);
    var var_1 = var_0.yyw;
    let var_2 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), var_1.zy)), ~82680u), ~(~vec2<u32>(~7585u, var_0.x)));
    var var_3 = u_input.a;
    var var_4 = arg_3;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37584u;
    global0 = array<bool, 14>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1723f - -730f), _wgslsmith_f_op_f32(floor(-1000f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1897f) - -1294f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f))), func_1(), vec3<i32>(23089i, _wgslsmith_add_i32(~(-5882i), -18446i), min(0i, -u_input.a)))));
    var var_2 = Struct_1(true, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 14u)], ~72768i);
    var_2 = Struct_1(true, func_1().a, _wgslsmith_sub_i32(-1i, 2147483647i));
    var_0 = 34245u;
    let var_3 = func_4(vec3<u32>(74953u, ~(~func_2(4294967295u).x), abs(u_input.b)), var_1, Struct_1(all(!(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(55734u, 14u)]))), global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(reverseBits(var_2.c), 13276i), 1i), vec2<i32>(-u_input.a, -(0i ^ var_2.c))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, var_1.a, 1439f, func_1().c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(720f, -694f, 1920f, -1821f)))), _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.a)), -vec4<i32>(u_input.a, -1i, 2147483647i, 1i)), _wgslsmith_sub_vec4_i32(reverseBits(select(vec4<i32>(var_2.c, var_2.c, -25917i, 2147483647i), vec4<i32>(u_input.a, var_2.c, var_2.c, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 14u)])), select(vec4<i32>(u_input.a, var_2.c, var_2.c, 0i) | vec4<i32>(u_input.a, 8448i, -7295i, 1i), vec4<i32>(var_2.c, u_input.a, u_input.a, u_input.a), !vec4<bool>(false, var_2.a, var_2.b, var_2.a)))));
}

