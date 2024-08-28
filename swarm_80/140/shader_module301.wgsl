struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, 1i, i32(-2147483648), 2147483647i, 1i, 24981i, 0i, 0i);

var<private> global1: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global1 = vec4<u32>(1u, abs(~arg_1.x), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(arg_2.a), ~arg_2.b.x), ~1u), global1.x);
    let var_0 = arg_2;
    global1 = arg_1;
    global1 = vec4<u32>(u_input.d.x, global1.x, var_0.a | _wgslsmith_div_u32(global1.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(57174u, 775u), 0u)), min(8630u, ~_wgslsmith_mod_u32(~arg_2.b.x, u_input.d.x & u_input.c)));
    global1 = vec4<u32>(17391u, arg_2.a, select(~(_wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(1u, 24059u)) << ((arg_1.x ^ 4294967295u) % 32u)), _wgslsmith_add_u32(24970u, arg_2.a), arg_0 != true), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(arg_1, ~u_input.d, vec4<u32>(0u, 56636u, 1u, 1u)), u_input.d));
    return -countOneBits(~(-2147483647i));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = array<i32, 8>();
    let var_0 = vec4<u32>(0u, 6564u | u_input.d.x, global1.x, u_input.d.x);
    global1 = vec4<u32>(~max(global1.x, global1.x), 0u, abs(reverseBits(arg_0)), ~(~(u_input.c & var_0.x))) >> (_wgslsmith_mod_vec4_u32(u_input.d, var_0) % vec4<u32>(32u));
    var var_1 = _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(var_0.x, 42057u) & u_input.c), 8u)], firstTrailingBit(global0[_wgslsmith_index_u32(~4294967295u | min(arg_1.b.x, var_0.x), 8u)]), ~(-max(global0[_wgslsmith_index_u32(arg_1.b.x, 8u)], arg_1.c.x))) >= _wgslsmith_add_i32(0i, min(~_wgslsmith_dot_vec3_i32(arg_1.c.xxy, vec3<i32>(-2147483647i, 1i, 870i)), func_3(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 31504u, 311u, 0u), var_0, u_input.d), arg_1)));
    var var_2 = 0i;
    return var_0.x;
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.d.x, func_2(global1.x, Struct_1(~1u, global1.yw, vec4<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(global1.x, 8u)], 55833i), abs(global0[_wgslsmith_index_u32(u_input.d.x, 8u)])))), ~1u, global1.x, ~_wgslsmith_mult_u32(~abs(global1.x), _wgslsmith_add_u32(~global1.x, global1.x)));
    global1 = ~(~(firstLeadingBit(vec4<u32>(31294u, 4840u, 19195u, u_input.d.x)) >> (vec4<u32>(9270u, 4294967295u, 0u << (u_input.d.x % 32u), u_input.d.x) % vec4<u32>(32u))));
    let var_1 = Struct_1(~select(0u, 4294967295u, false), countOneBits(countOneBits(reverseBits(u_input.d.zy))), vec4<i32>(select(_wgslsmith_mult_i32(19976i, global0[_wgslsmith_index_u32(~var_0.x, 8u)]), -_wgslsmith_sub_i32(2147483647i, 0i), true), -(~(-2147483647i)), -u_input.b, -u_input.b), func_3(true, ~(vec4<u32>(1u, 265u, global1.x, u_input.c) >> (~u_input.d % vec4<u32>(32u))), Struct_1(abs(var_0.x), var_0.yy, min(min(vec4<i32>(-1i, 43699i, u_input.a, 11162i), vec4<i32>(u_input.a, -2147483647i, -21958i, global0[_wgslsmith_index_u32(4294967295u, 8u)])), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], -1i, global0[_wgslsmith_index_u32(1u, 8u)], u_input.b))), -func_3(false, var_0, Struct_1(1u, vec2<u32>(global1.x, 13499u), vec4<i32>(39021i, -1i, u_input.a, -2147483647i), -2147483647i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(427f, -839f, 394f, -677f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(681f, 2286f, -1269f, 837f) + vec4<f32>(180f, -600f, 646f, 602f)))))) + vec4<f32>(1267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1190f)) - _wgslsmith_f_op_f32(-1032f + -147f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) * 1350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-951f)) + -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, -523f, 485f, 667f) * vec4<f32>(220f, 339f, -249f, -666f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-665f, 139f, 603f, -913f)))), vec4<f32>(1426f, 2837f, -1000f, _wgslsmith_f_op_f32(441f - -697f))))));
    let var_3 = var_1;
    return ~min(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 59902u, var_0.x, var_1.a), select(vec4<u32>(33204u, 131141u, 1u, global1.x), u_input.d, true)), vec4<u32>(var_1.a, 4294967295u, var_3.b.x, select(10654u, u_input.c, false)) >> (vec4<u32>(u_input.c >> (0u % 32u), _wgslsmith_dot_vec4_u32(var_0, u_input.d), 48568u, var_0.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(0u, 0u, 44703u, 22684u), vec4<u32>(72982u, u_input.c, global1.x, u_input.c) ^ u_input.d) ^ select(func_1(), _wgslsmith_mult_vec4_u32(~vec4<u32>(55250u, 13995u, u_input.d.x, global1.x), select(vec4<u32>(5179u, global1.x, global1.x, global1.x), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.c), true)), vec4<bool>(true, true, true, true)));
    let var_0 = ~28943u;
    global0 = array<i32, 8>();
    var var_1 = !vec2<bool>(true, (_wgslsmith_dot_vec2_i32(vec2<i32>(41453i, global0[_wgslsmith_index_u32(global1.x, 8u)]), vec2<i32>(1i, u_input.b)) == _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(28943u, 8u)]), vec2<i32>(-2699i, u_input.a))) || true);
    let var_2 = vec2<bool>(all(!select(vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), var_1.x))), true);
    var_1 = select(!var_2, !var_2, select(var_2, select(!var_2, vec2<bool>(true, var_0 == var_0), !var_2.x), vec2<bool>(var_1.x, true)));
    let var_3 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(54634u, 16117u, 0u, u_input.d.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), _wgslsmith_div_u32(54916u, u_input.c)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global1.zy, vec2<u32>(70329u, 4294967295u)), vec2<u32>(u_input.c, 0u)))), abs(~vec2<u32>(var_0 | u_input.d.x, select(75580u, var_0, var_1.x))), vec4<i32>(~(~u_input.b >> (var_0 % 32u)), -((u_input.a >> (55665u % 32u)) | func_3(false, vec4<u32>(35391u, u_input.c, u_input.c, 1u), Struct_1(28231u, vec2<u32>(30825u, var_0), vec4<i32>(u_input.b, u_input.b, 2147483647i, 12726i), 1i))), min(global0[_wgslsmith_index_u32(8696u, 8u)], 10118i), abs(~(~1i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(func_1().x, 8u)]), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(abs(global1.x), 8u)], 1i), u_input.a), u_input.b));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(135f, -1371f, -129f, 1242f) - vec4<f32>(615f, -560f, 1000f, -2473f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, 956f, 169f, 1465f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, 596f, 255f, -325f)))))), -(~u_input.a), ~vec4<u32>(~47262u, ~14300u >> (~var_3.a % 32u), ~_wgslsmith_mod_u32(var_3.a, var_4.a), 16860u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - 931f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(671f, -130f, 407f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1249f, 237f, -423f) + vec3<f32>(-1535f, 513f, 176f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(252f + -1075f), _wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(147f + 1196f))), !select(!vec3<bool>(var_1.x, var_2.x, var_2.x), !vec3<bool>(var_1.x, var_2.x, var_2.x), vec3<bool>(true, true, true)))));
}

