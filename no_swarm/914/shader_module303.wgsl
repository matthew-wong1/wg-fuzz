struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: i32;

var<private> global2: vec3<i32> = vec3<i32>(45931i, i32(-2147483648), 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = vec3<i32>(global2.x, global2.x, ~global2.x);
    global0 = array<bool, 1>();
    var var_0 = vec4<i32>(-(i32(-1i) * -_wgslsmith_sub_i32(26335i, global2.x)), 2147483647i, _wgslsmith_dot_vec3_i32(~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-32324i, arg_0.e, arg_0.e), vec3<i32>(0i, -2147483647i, arg_0.e), vec3<i32>(arg_0.e, arg_0.e, 50300i))), -vec3<i32>(-1i >> (arg_0.a.x % 32u), ~global2.x, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(21511i, arg_0.e, select(1i, 1i, true)), vec3<i32>(-15913i << (arg_0.a.x % 32u), firstTrailingBit(global2.x), arg_0.e) << ((reverseBits(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) ^ _wgslsmith_add_vec3_u32(u_input.b.wzx, u_input.b.xyx)) % vec3<u32>(32u))));
    let var_1 = arg_0.c;
    return vec4<bool>(arg_0.c.x, true, all(select(arg_0.c, !arg_0.c, select(select(arg_0.c, arg_0.c, true), !arg_0.c, arg_0.c))), true);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    global0 = array<bool, 1>();
    let var_0 = vec3<u32>(~(~(~4294967295u)), ~(min(~16315u, 1u) << (1u % 32u)), firstTrailingBit(1u));
    global1 = -1i;
    var var_1 = countOneBits(~(~(-1i)));
    var var_2 = 471f;
    return arg_2;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = _wgslsmith_add_i32(23087i, -35735i);
    global0 = array<bool, 1>();
    global2 = vec3<i32>(func_4(26306u, any(func_3(Struct_1(vec2<u32>(40809u, 4294967295u), -243f, vec3<bool>(false, global0[_wgslsmith_index_u32(57148u, 1u)], false), arg_0, 2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(40918i, 6363i, global2.x), -vec3<i32>(global2.x, 10336i, -1i)), ~vec4<i32>(-27847i, global2.x, global2.x, global2.x) & (vec4<i32>(18697i, global2.x, 2147483647i, global2.x) & vec4<i32>(global2.x, global2.x, global2.x, -107i))) & max((0i | global2.x) | -13369i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), global2.yz)), 38745i, -9202i);
    global1 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstTrailingBit(2147483647i), 0i, ~(-2147483647i), _wgslsmith_clamp_i32(0i, global2.x, -2147483647i))), ~(-countOneBits(vec4<i32>(global2.x, global2.x, 15032i, -2147483647i)))) | (0i >> (~((u_input.b.x | 0u) | ~u_input.b.x) % 32u));
    var var_0 = true;
    return Struct_1(vec2<u32>(1283u, u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0)))), select(vec3<bool>(true, true, true), vec3<bool>(false, select(any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])), true, true), true), vec3<bool>(false, select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u)], -53754i > global2.x, false), select(arg_0 > 929f, -212f <= arg_0, select(global0[_wgslsmith_index_u32(10863u, 1u)], true, false)))), arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -12128i, _wgslsmith_mod_i32(-global2.x, 50164i)), ~(~global2.yz)));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = -(vec3<i32>(-1i) * -(~firstTrailingBit(vec3<i32>(-10803i, -1i, global2.x))));
    global1 = -(~(min(global2.x, firstLeadingBit(global2.x)) | -global2.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f * 1116f) + 812f))));
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(240f)));
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * var_1.d));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) * var_2.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * 1000f), 486f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1443f) - _wgslsmith_f_op_f32(808f * 1158f)), _wgslsmith_f_op_f32(f32(-1f) * -724f))), _wgslsmith_f_op_f32(-980f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1899f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1435f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f + -671f) - 1f)) + -183f), _wgslsmith_f_op_f32(740f + 696f));
    global0 = array<bool, 1>();
    var var_1 = Struct_1(firstLeadingBit(select(_wgslsmith_mod_vec2_u32(u_input.b.zx, u_input.b.ww) ^ u_input.b.zx, abs(u_input.b.yx ^ u_input.b.xy), global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_f32(var_0.x, -534f)))), func_2(-188f).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1433f), -global2.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -307f);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_0.yzy - _wgslsmith_f_op_vec3_f32(abs(var_0.yyy)));
    global1 = -func_4(var_1.a.x, any(func_3(Struct_1(vec2<u32>(4294967295u, u_input.b.x), var_3.x, vec3<bool>(global0[_wgslsmith_index_u32(31906u, 1u)], false, var_1.c.x), -1253f, global2.x))) || any(!var_1.c.yy), -4300i, firstLeadingBit(vec4<i32>(27673i, global2.x, var_1.e, -2549i)) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, var_1.e), vec2<i32>(global2.x, 36577i)), 0i, countOneBits(20590i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_1.a.x, 35245u & func_2(var_1.b).a.x), -779f, min(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.a, var_1.a), _wgslsmith_dot_vec3_u32(u_input.b.yzy, u_input.b.xww << (vec3<u32>(u_input.b.x, var_1.a.x, 1u) % vec3<u32>(32u))), var_1.a.x, u_input.a), vec4<u32>(123383u, 1u, 0u, abs(53918u))), _wgslsmith_add_vec4_i32(vec4<i32>(-18171i, min(16425i & var_1.e, -49335i), var_1.e, select(_wgslsmith_add_i32(-26183i, global2.x), abs(var_1.e), global0[_wgslsmith_index_u32(4294967295u, 1u)] & false)), vec4<i32>(~global2.x, firstLeadingBit(_wgslsmith_mult_i32(-1i, var_1.e)), -38803i, _wgslsmith_mult_i32(0i, -global2.x))), var_3.x);
}

