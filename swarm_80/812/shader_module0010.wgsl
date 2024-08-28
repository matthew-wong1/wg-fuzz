struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(44219u, 5591u, 0u), 36814i, 2147483647i);

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-304f, -440f), vec2<f32>(571f, 197f), vec2<f32>(1282f, -347f), vec2<f32>(-1428f, -1031f), vec2<f32>(-1000f, 612f), vec2<f32>(-765f, 387f), vec2<f32>(-1293f, -1726f), vec2<f32>(-1227f, 442f), vec2<f32>(1270f, -1410f), vec2<f32>(-169f, -883f), vec2<f32>(490f, 539f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(4294967295u, 11u)] - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u | arg_0.a, 26602u), 11u)]))));
    let var_2 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)));
    global2 = array<vec2<f32>, 11>();
    var var_3 = 4294967295u;
    return var_1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>) -> i32 {
    global2 = array<vec2<f32>, 11>();
    var var_0 = all(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), any(vec4<bool>(false, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_3(global1.a, 1i ^ (reverseBits(_wgslsmith_mod_i32(global1.c, 0i)) << (4294967295u % 32u)), _wgslsmith_mult_i32(-1i ^ _wgslsmith_add_i32(global1.b, ~global0.c), global0.b));
    var var_2 = vec2<bool>(true, true & ((global1.c >= ~0i) && true));
    let var_3 = var_2.x || !(all(vec3<bool>(var_2.x, false, true)) || !(var_2.x == false));
    return 31276i >> (~(global1.a.x >> (u_input.a.x % 32u)) % 32u);
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    global1 = Struct_3(global0.a, -1i, _wgslsmith_mod_i32(22263i, func_4(vec4<f32>(1f, _wgslsmith_f_op_f32(814f + 2782f), _wgslsmith_f_op_f32(func_3(Struct_1(1u), Struct_1(0u))), _wgslsmith_f_op_f32(-824f - -387f)), vec4<u32>(u_input.a.x, global1.a.x, arg_0.a.x, 10104u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(25187u, 4294967295u, global0.a.x, arg_0.a.x), vec4<u32>(1u, 1u, 36016u, global0.a.x)) % vec4<u32>(32u)))));
    global0 = Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global0.a, ~vec3<u32>(global0.a.x, arg_0.a.x, 0u)), countOneBits(vec3<u32>(1u, 18114u, u_input.a.x))), global1.a), _wgslsmith_sub_i32(2147483647i, -global1.b), 1i);
    var var_0 = Struct_3(global1.a, 49950i, 24656i);
    global2 = array<vec2<f32>, 11>();
    let var_1 = arg_0;
    return -vec3<i32>(~max(_wgslsmith_sub_i32(-1i, -1i), firstLeadingBit(var_0.b)), _wgslsmith_mult_i32(-(20742i ^ global1.c), -34355i), 13206i);
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(select(vec3<u32>(global0.a.x, 25952u, ~1u), global0.a, vec3<bool>(true, !any(vec2<bool>(true, false)), ~18091u == global0.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(22255i, 32147i, global0.b), func_2(Struct_3(vec3<u32>(global1.a.x, 11757u, 0u), global0.c, 26988i))), firstLeadingBit(-36922i)) | (1i >> (_wgslsmith_add_u32(countOneBits(global0.a.x), max(u_input.a.x, global1.a.x)) % 32u)), global0.c);
    let var_0 = Struct_1(abs(~u_input.a.x));
    let var_1 = select(true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), (~global0.a.x >= ~40255u) | false) | true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f)), -818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(~0u), var_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-685f, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_div_f32(107f, var_2.x))), _wgslsmith_f_op_f32(ceil(2092f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, 503f, -755f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, var_2.x, var_2.x)))))))));
    return Struct_2(var_0, var_2.x, vec4<bool>(!any(vec4<bool>(var_1, true, true, var_1)), true, true, true), vec2<i32>(-_wgslsmith_sub_i32(global1.b << (global0.a.x % 32u), select(global1.c, 2147483647i, var_1)), _wgslsmith_div_i32(~(-global0.c), reverseBits(-global0.b))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(global0.a.x, 11u)];
    let var_1 = func_1().a;
    var var_2 = var_1;
    let var_3 = func_1().a;
    let var_4 = Struct_2(Struct_1(global0.a.x), _wgslsmith_f_op_f32(arg_3.x + -738f), !vec4<bool>(any(vec4<bool>(false, arg_0, true, arg_0)), false, (var_2.a == 1u) | !arg_0, all(vec2<bool>(arg_0, arg_1.c.x))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -arg_1.d, vec2<i32>(1i, 0i ^ arg_1.d.x), select(arg_1.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, arg_1.d.x), arg_1.d, vec2<i32>(11096i, 2147483647i)), vec2<bool>(false, arg_1.c.x))));
    return var_4;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> StorageBuffer {
    global2 = array<vec2<f32>, 11>();
    var var_0 = any(select(!select(select(arg_1.c.yyw, vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, true, true)), !vec3<bool>(arg_1.c.x, arg_1.c.x, false), true), vec3<bool>(all(!vec2<bool>(arg_1.c.x, arg_1.c.x)), func_1().c.x || arg_1.c.x, !(arg_1.b == 190f)), ~(~1u) != arg_0.x));
    var_0 = !(!(!arg_1.c.x));
    var var_1 = vec2<u32>(12454u, u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -1255f, arg_1.b) * vec3<f32>(-1025f, arg_1.b, arg_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(539f, arg_1.b, 415f) * vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))))))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(32259u, 11u)])))), ~reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, -95776i, -15291i), vec3<i32>(global0.c, -1i, -2147483647i))) | arg_2.zxz, var_2.xx, -56616i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(firstTrailingBit(abs(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 37188u), vec2<u32>(0u, global0.a.x)), ~global1.a.x, ~u_input.a.x))), func_5(any(vec4<bool>(true, true, true, true)), func_1(), func_1().a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(915f - -1000f))), -1475f, -245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2180f) * -616f))), vec4<i32>(reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -24104i), vec2<i32>(global0.c, global0.b)))), global1.b, 3843i, _wgslsmith_mult_i32(global1.c, -1i)));
}

