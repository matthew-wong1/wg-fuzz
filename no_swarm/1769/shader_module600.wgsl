struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1260f, 770f, -1187f, 336f), vec4<f32>(207f, -377f, -562f, -191f), vec4<f32>(1000f, 846f, -637f, 1000f), vec4<f32>(1929f, -1000f, 276f, 697f), vec4<f32>(1972f, 222f, 712f, 1673f), vec4<f32>(-777f, 1252f, 135f, 2336f), vec4<f32>(384f, -681f, -352f, 271f), vec4<f32>(-816f, -199f, -1067f, -156f), vec4<f32>(-233f, -130f, 1201f, 687f), vec4<f32>(-105f, -110f, 208f, -1000f), vec4<f32>(-706f, 1080f, 623f, 447f), vec4<f32>(783f, 428f, -746f, 540f), vec4<f32>(956f, -1074f, 515f, -1129f), vec4<f32>(1248f, -576f, 1236f, -1207f), vec4<f32>(1250f, 971f, 939f, 964f), vec4<f32>(226f, 1979f, 2230f, -1545f), vec4<f32>(243f, 1962f, -141f, 603f), vec4<f32>(589f, -723f, -529f, -2733f), vec4<f32>(-270f, 106f, -694f, -1684f), vec4<f32>(1149f, 344f, -168f, 101f), vec4<f32>(1739f, 535f, 529f, 2018f), vec4<f32>(486f, -1218f, 724f, 1052f), vec4<f32>(-711f, 1978f, -210f, -650f));

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 14> = array<i32, 14>(2147483647i, i32(-2147483648), -25111i, 1i, 8922i, -1i, i32(-2147483648), 1i, 1i, -45793i, -45572i, -1i, 21684i, 0i);

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(50703u, vec4<bool>(false, false, false, true)), Struct_2(26303u, vec4<bool>(false, true, false, false)), Struct_2(34829u, vec4<bool>(true, false, false, false)), Struct_2(27098u, vec4<bool>(true, false, false, true)), Struct_2(21654u, vec4<bool>(false, true, false, false)), Struct_2(18387u, vec4<bool>(false, false, false, true)), Struct_2(1u, vec4<bool>(true, false, false, true)), Struct_2(29610u, vec4<bool>(false, true, true, true)), Struct_2(38177u, vec4<bool>(false, true, false, true)), Struct_2(0u, vec4<bool>(false, true, false, false)), Struct_2(1u, vec4<bool>(true, false, true, true)), Struct_2(1u, vec4<bool>(false, true, true, false)), Struct_2(32542u, vec4<bool>(true, false, true, true)), Struct_2(10153u, vec4<bool>(false, true, false, true)), Struct_2(1u, vec4<bool>(true, false, true, false)), Struct_2(65577u, vec4<bool>(true, true, false, true)), Struct_2(4294967295u, vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = ~(~arg_1.a.x);
    global3 = array<Struct_2, 17>();
    global2 = array<i32, 14>();
    var var_1 = Struct_1(select(vec4<u32>(1u, 8895u, ~0u | (u_input.a.x ^ u_input.a.x), ~0u), _wgslsmith_add_vec4_u32(countOneBits(arg_1.a & vec4<u32>(var_0, 116712u, var_0, 1u)), vec4<u32>(1u ^ u_input.a.x, ~var_0, ~1u, ~var_0)), !vec4<bool>(!arg_1.d, true | arg_1.d, !arg_1.d, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_mod_i32(firstTrailingBit(global2[_wgslsmith_index_u32(1047u, 14u)]), arg_0.x), true, arg_1.e);
    var var_2 = Struct_2(~_wgslsmith_add_u32(reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 6727u, 0u)), _wgslsmith_clamp_u32(var_0, var_1.a.x, u_input.a.x) >> (68682u % 32u)), !select(!vec4<bool>(true, var_1.d, false, global1.x), !(!vec4<bool>(true, false, arg_1.d, var_1.d)), all(!vec3<bool>(var_1.d, var_1.d, global1.x))));
    return vec3<f32>(-749f, -1013f, var_1.e.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = 51640u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(369f, -1481f, arg_0)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(1549f * -2173f), _wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_vec3_f32(func_3(abs(vec3<i32>(2147483647i, 5106i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), Struct_1(vec4<u32>(u_input.a.x, 24168u, u_input.a.x, u_input.a.x), vec2<f32>(-1188f, arg_0), 3461i, true, vec2<f32>(arg_0, -653f)))))));
    var_0 = _wgslsmith_dot_vec2_u32(u_input.a.zx, _wgslsmith_mult_vec2_u32(abs(u_input.a.yx), vec2<u32>(firstTrailingBit(~1u), _wgslsmith_div_u32(1u, 10342u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(~vec3<i32>(~firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), i32(-1i) * -1i, select(1i, 59176i, global1.x)), Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 34197u, u_input.a.x, 51695u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) << (vec4<u32>(2476u, u_input.a.x, u_input.a.x, 7053u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx)))), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)] | global2[_wgslsmith_index_u32(0u, 14u)], -1066i) << (u_input.a.x % 32u), any(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), !vec2<bool>(true, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(122f * var_1.x), 1275f)))));
    var var_3 = Struct_1(~_wgslsmith_sub_vec4_u32(reverseBits(reverseBits(vec4<u32>(1u, 9097u, 26052u, 63120u))), select(vec4<u32>(1u, 0u, 0u, 3116u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 41170u, 94925u), vec4<u32>(37773u, 1u, 1u, 80055u)), any(vec4<bool>(global1.x, true, false, false)))), var_2.xz, ~max(global2[_wgslsmith_index_u32(u_input.a.x, 14u)] | global2[_wgslsmith_index_u32(u_input.a.x, 14u)], ~2147483647i) & -(_wgslsmith_dot_vec2_i32(vec2<i32>(73238i, global2[_wgslsmith_index_u32(0u, 14u)]), vec2<i32>(8248i, 2147483647i)) & _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), true, vec2<f32>(_wgslsmith_div_f32(1092f, var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-2147483647i, 7128i, global2[_wgslsmith_index_u32(1u, 14u)]), Struct_1(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec2<f32>(347f, var_1.x), 0i, false, vec2<f32>(-563f, var_1.x)))).x * _wgslsmith_f_op_f32(round(500f)))))));
    return Struct_2((_wgslsmith_div_u32(u_input.a.x, min(var_3.a.x, var_3.a.x)) ^ ~13071u) ^ firstTrailingBit(4294967295u), !(!select(!vec4<bool>(global1.x, false, var_3.d, global1.x), !vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, true, var_3.d, global1.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = -abs(vec4<i32>(1i, arg_2, arg_2, ~0i));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 0i, -2147483647i), Struct_1(vec4<u32>(0u, 0u, arg_0.a, u_input.a.x), vec2<f32>(arg_1, 352f), 0i, false, vec2<f32>(arg_1, arg_1)))).x, 927f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1857f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 1402f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 315f)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1473f) + vec2<f32>(arg_1, arg_1))))));
    var var_2 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, reverseBits(arg_0.a), _wgslsmith_mod_u32(4294967295u, arg_0.a), _wgslsmith_mult_u32(arg_0.a, 0u)), ~vec4<u32>(4294967295u, 95819u, 4294967295u, 11166u) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(39097u, 86031u, u_input.a.x, u_input.a.x))) | _wgslsmith_sub_vec4_u32(abs(min(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, 0u), vec4<u32>(4294967295u, u_input.a.x, arg_0.a, 12944u))), ~vec4<u32>(10549u, arg_0.a, 8181u, 3940u)));
    var var_3 = Struct_1(vec4<u32>(max(~arg_0.a, ~arg_0.a), arg_0.a, abs(~11019u), ~76342u << (u_input.a.x % 32u)) ^ countOneBits((vec4<u32>(var_2.x, var_2.x, 1u, 52011u) ^ vec4<u32>(1u, arg_0.a, 1u, 4294967295u)) << (~vec4<u32>(4294967295u, 17902u, arg_0.a, var_2.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-1430f, 990f)) - vec2<f32>(var_1.x, arg_1)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, 382f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 462f) * vec2<f32>(336f, arg_1)), select(vec2<bool>(global1.x, false), arg_0.b.yy, vec2<bool>(false, arg_0.b.x))))))), global2[_wgslsmith_index_u32(arg_0.a, 14u)], false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0.xyx, Struct_1(vec4<u32>(23289u, u_input.a.x, 24662u, u_input.a.x), vec2<f32>(var_1.x, -856f), global2[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_0.b.x, vec2<f32>(872f, 467f)))).x)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, -790f) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -907f), vec2<f32>(arg_1, -581f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(936f, var_1.x), vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1052f, arg_1) + vec2<f32>(arg_1, 197f)), global1.zy))))));
    global0 = array<vec4<f32>, 23>();
    return abs(firstTrailingBit(_wgslsmith_div_u32(74232u ^ u_input.a.x, 29125u >> (1u % 32u))) >> (4294967295u % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), u_input.a.x) ^ func_4(func_2(1f), _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(abs(-3092f))), 0i), !vec4<bool>(-498f < _wgslsmith_f_op_f32(floor(231f)), true, true, 4294967295u <= _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 14>();
    var var_0 = u_input.a.x;
    var var_1 = func_1(true);
    var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.a, ~40901u), 24124i, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(2726u, 14u)]), vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_1(~vec4<u32>(34477u, u_input.a.x, u_input.a.x, var_1.a), vec2<f32>(-2390f, 880f), ~(-10128i), true, vec2<f32>(-1297f, 779f)))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-200f * -909f))), -419f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-606f)), _wgslsmith_f_op_f32(max(-822f, _wgslsmith_f_op_f32(742f * 492f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

