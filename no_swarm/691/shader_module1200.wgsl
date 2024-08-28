struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(16201i, -66768i, 51360i), vec3<i32>(1i, 1i, -1i)));

var<private> global1: Struct_2;

var<private> global2: array<u32, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global0 = Struct_2(global0.a);
    var var_0 = Struct_1(countOneBits(select(~_wgslsmith_sub_vec3_i32(global0.a.a, global1.a.a), abs(global1.a.a & global1.a.b), select(true, true, false))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.a.a.x << (global2[_wgslsmith_index_u32(u_input.d, 13u)] % 32u), global1.a.b.x), i32(-1i) * -global1.a.b.x, abs(2147483647i)), vec3<i32>(global0.a.b.x, ~(global1.a.b.x << (global2[_wgslsmith_index_u32(1u, 13u)] % 32u)), 9249i)));
    global2 = array<u32, 13>();
    let var_1 = Struct_2(global1.a);
    global0 = Struct_2(Struct_1(vec3<i32>(firstTrailingBit(abs(u_input.b)), reverseBits(~global0.a.b.x), min(497i, -1i << (global2[_wgslsmith_index_u32(0u, 13u)] % 32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a.x, var_0.b.x, -37974i) | var_0.a, vec3<i32>(var_0.b.x, -2147483647i, global0.a.b.x)), global0.a.b.x >> (u_input.d % 32u), _wgslsmith_add_i32(var_1.a.b.x ^ 25814i, -9514i))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f), 1f) - -680f)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = abs(vec4<i32>(_wgslsmith_sub_i32(global0.a.b.x, u_input.b), global1.a.a.x, global1.a.a.x, global1.a.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(184f + -1195f))) * vec4<f32>(368f, 2686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1062f, 393f, -510f, 1143f), vec4<f32>(-658f, -1625f, 400f, -103f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, -1812f, 491f, -1000f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -1128f, -539f, -1884f)))))));
    global1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mod_i32(~2147483647i, global0.a.b.x), ~(u_input.b >> (u_input.c.x % 32u)), u_input.a), select(global0.a.b, var_0.wyy, !all(vec4<bool>(false, true, false, true)))));
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(reverseBits(-global1.a.a), global0.a.b, global1.a.b), var_0.wxx));
    let var_2 = u_input.d;
    return global1.a;
}

fn func_1() -> vec3<i32> {
    global0 = Struct_2(global1.a);
    let var_0 = -(~reverseBits((vec4<i32>(-15682i, -44389i, 93545i, -28005i) << (u_input.c % vec4<u32>(32u))) & vec4<i32>(u_input.b, global0.a.a.x, -2147483647i, -33005i)));
    let var_1 = func_2(~(~vec3<u32>(~1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82047u, 13u)], 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~3875u, 13u)], 13u)])));
    let var_2 = global0.a.a.xz;
    let var_3 = Struct_2(global0.a);
    return var_3.a.a ^ firstTrailingBit(-abs(_wgslsmith_clamp_vec3_i32(var_0.zzz, vec3<i32>(30282i, 1i, global1.a.b.x), var_3.a.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    global2 = array<u32, 13>();
    let var_0 = -595f;
    let var_1 = !vec4<bool>(!(!any(vec3<bool>(true, false, false))), all(vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, false)), false, true)), false, !all(vec2<bool>(true, true)));
    return Struct_2(func_2(vec3<u32>(u_input.c.x, arg_2, _wgslsmith_div_u32(arg_2 >> (1u % 32u), 1u))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = func_1().x;
    var var_1 = vec2<i32>(0i, 20805i | (firstTrailingBit(global0.a.b.x) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, arg_1, arg_0.a.b.x), arg_2.a.b) >> ((u_input.d | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], 13u)]) % 32u))));
    global0 = arg_2;
    global1 = arg_2;
    var var_2 = Struct_1(min(-arg_0.a.a, vec3<i32>(~global0.a.b.x | abs(arg_1), arg_2.a.a.x, 57691i)), vec3<i32>(var_0, arg_2.a.a.x >> (~(~11663u) % 32u), (1i | abs(arg_0.a.b.x)) | var_1.x));
    return global2[_wgslsmith_index_u32(firstTrailingBit(~(_wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(10196u, 1u)) | 4294967295u)), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(vec3<i32>(_wgslsmith_div_i32(global0.a.a.x, global1.a.a.x), firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2717i, u_input.a, -12106i, u_input.b), vec4<i32>(-5896i, global1.a.b.x, global0.a.b.x, global0.a.a.x))), func_1()), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, global1.a.a.x)), select(global0.a.b.yy, ~global0.a.b.zy, true)), _wgslsmith_sub_u32(u_input.d, _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(u_input.d, 13u)], ~u_input.d))), ~(-_wgslsmith_sub_i32(global1.a.b.x, 0i) << (firstLeadingBit(~global2[_wgslsmith_index_u32(6139u, 13u)]) % 32u)), func_4(func_4(func_2(vec3<u32>(1u, u_input.c.x, u_input.c.x)), vec2<i32>(global0.a.a.x | global1.a.a.x, -36996i), ~1u).a, -global1.a.a.yx, global2[_wgslsmith_index_u32(33156u, 13u)]));
    var var_1 = !(!select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-627f, 108f, 645f, 988f) * vec4<f32>(-235f, -421f, 445f, 2453f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1269f, 591f, 576f, -1443f), vec4<f32>(313f, 1437f, 611f, 1608f), var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1490f, -728f, 1303f, 2401f), vec4<f32>(550f, 1185f, 2381f, 1835f)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(425f)))), _wgslsmith_f_op_f32(f32(-1f) * -1468f), -1550f)));
    global0 = func_4(func_2(~max(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14903u, 13u)], 13u)], 1u), u_input.c.xwz)), vec2<i32>(_wgslsmith_add_i32(~global1.a.a.x ^ _wgslsmith_mod_i32(-11601i, global0.a.b.x), 2147483647i), select(48375i, ~u_input.b, true)), ~0u);
    var_0 = _wgslsmith_mod_u32(u_input.c.x, ~(~global2[_wgslsmith_index_u32(1u, 13u)] >> (u_input.d % 32u)));
    let var_3 = Struct_2(func_4(global0.a, global1.a.b.xy, _wgslsmith_sub_u32(func_5(Struct_2(global0.a), firstTrailingBit(-11019i), Struct_2(global1.a)), _wgslsmith_dot_vec3_u32(~u_input.c.xww, vec3<u32>(12319u, 1u, global2[_wgslsmith_index_u32(0u, 13u)]) & u_input.c.yyy))).a);
    let var_4 = 468f;
    let var_5 = !any(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), true));
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.x);
}

