struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(1741f, -1519f), 1u, vec4<bool>(false, true, true, true)), Struct_1(vec2<f32>(-988f, 1156f), 13216u, vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(-360f, 1258f), 1u, vec4<bool>(false, true, true, true)), Struct_1(vec2<f32>(490f, 858f), 97577u, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(-1837f, -1307f), 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(147f, -519f), 1u, vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(358f, -3300f), 0u, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(-1000f, 665f), 66016u, vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(-793f, 804f), 1u, vec4<bool>(false, true, true, false)), Struct_1(vec2<f32>(-711f, -1480f), 52034u, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(-442f, -402f), 8636u, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(-1326f, -209f), 4294967295u, vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(1087f, -369f), 50454u, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(-202f, -2057f), 31315u, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(1067f, 965f), 15617u, vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(677f, 828f), 3271u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(-1679f, 811f), 18325u, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(1217f, -582f), 0u, vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(-1000f, -1000f), 43959u, vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(-203f, 555f), 24159u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(1000f, -1093f), 14869u, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(395f, -133f), 62675u, vec4<bool>(false, false, true, true)));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1571f, -471f), 47688u, vec4<bool>(true, true, true, false));

var<private> global3: array<Struct_2, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    global2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.b, 0u), _wgslsmith_clamp_vec2_u32(abs(u_input.c.yy), firstLeadingBit(firstTrailingBit(u_input.c.zy)), vec2<u32>(1714u, ~27316u)))), 22u)];
    global2 = global1[_wgslsmith_index_u32(u_input.b, 22u)];
    let var_0 = select(select(select(!vec3<bool>(true, false, arg_0.b.c.x), vec3<bool>(true, arg_0.b.c.x & global2.c.x, arg_0.b.c.x), !(!arg_0.b.c.x)), arg_0.b.c.yww, (all(vec2<bool>(global2.c.x, false)) & global2.c.x) | !arg_0.b.c.x), !arg_0.b.c.wxw, true);
    global0 = ~1i;
    var var_1 = vec2<f32>(-244f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1804f)))), -445f)));
    return 0i;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_2(vec4<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, func_3(Struct_2(~vec4<i32>(-7152i, u_input.a.x, 0i, 2147483647i), Struct_1(global2.a, u_input.c.x, global2.c)), _wgslsmith_f_op_f32(-1f)), ~50094i), global1[_wgslsmith_index_u32(u_input.c.x, 22u)]);
    let var_1 = 32865i;
    global3 = array<Struct_2, 25>();
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1150f)), _wgslsmith_f_op_f32(-var_0.b.a.x)), 922u, !var_0.b.c);
    let var_3 = global3[_wgslsmith_index_u32(min(firstLeadingBit(u_input.b), 4294967295u) ^ 25590u, 25u)];
    return global2.b << (u_input.c.x % 32u);
}

fn func_1(arg_0: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-467f, global2.a.x, global2.a.x, 223f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, global2.a.x, global2.a.x, -1249f)), vec4<bool>(global2.c.x, false, true, true)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1248f, global2.a.x, global2.a.x)))))))));
    let var_1 = ~u_input.c.x;
    var var_2 = Struct_1(global2.a, func_2(min(global2.b, ~_wgslsmith_mult_u32(97758u, 18110u))), select(!global2.c, !global2.c, !global2.c.x));
    var var_3 = any(!select(global2.c.yww, !(!global2.c.wyx), !select(vec3<bool>(false, global2.c.x, false), global2.c.xxw, true)));
    let var_4 = global1[_wgslsmith_index_u32(select(max(max(_wgslsmith_dot_vec4_u32(vec4<u32>(51802u, var_1, var_1, var_2.b), u_input.c << (vec4<u32>(var_1, var_1, 1u, var_2.b) % vec4<u32>(32u))), ~(~99627u)), var_2.b), 4294967295u, true), 22u)];
    return _wgslsmith_add_vec4_u32(max(u_input.c, _wgslsmith_add_vec4_u32(abs(u_input.c), ~abs(vec4<u32>(0u, global2.b, u_input.b, var_1)))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, ~4294967295u), global2.b));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32((_wgslsmith_mult_u32(abs(1u), ~u_input.c.x) ^ ~_wgslsmith_mod_u32(42217u, 27797u)) ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(var_0, countOneBits(6610u))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), ~u_input.c), abs(func_1(global2.c.x)))), 22u)];
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~u_input.c, ~vec4<u32>(52115u, 32666u, var_0, var_0))), ~(~var_0)), 61789u, firstLeadingBit(_wgslsmith_mod_u32(var_0, 0u)) & u_input.b);
    let var_2 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(11702i, -93960i, ~u_input.a.x, 1i), vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), -6369i, abs(-2147483647i))) >> (firstTrailingBit(~select(vec4<u32>(global2.b, var_1.x, 0u, var_0), vec4<u32>(4294967295u, var_1.x, var_0, 0u), true)) % vec4<u32>(32u)), Struct_1(global2.a, _wgslsmith_clamp_u32(~403u, firstLeadingBit(var_0), var_0) >> (reverseBits(max(u_input.b, var_1.x)) % 32u), select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), false == (true == global2.c.x))));
    var var_3 = true;
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x - var_2.b.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.x, global2.a.x)), any(vec2<bool>(global2.c.x, global2.c.x))))), 0u, !vec4<bool>(true, ~var_1.x > ~29023u, !(var_2.b.c.x || global2.c.x), _wgslsmith_f_op_f32(ceil(-627f)) != _wgslsmith_f_op_f32(-var_2.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1761f, global2.a.x, var_2.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -465f, global2.a.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.a.x, -701f, global2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a.x, var_2.b.a.x, -1000f) * vec3<f32>(var_2.b.a.x, var_2.b.a.x, global2.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(676f, -2543f, var_2.b.a.x) + vec3<f32>(-1193f, 100f, var_2.b.a.x)))))), 1911f, -_wgslsmith_sub_i32(var_2.a.x, -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1764f, global2.a.x, -189f), vec3<f32>(-309f, global2.a.x, 2119f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), vec3<f32>(-608f, 2070f, 1714f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 1053f, 480f) * vec3<f32>(-1000f, 920f, global2.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-693f, 387f, 537f)))))));
}

