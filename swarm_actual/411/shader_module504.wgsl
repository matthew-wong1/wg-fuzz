struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(38283u, 16407u, 61781u), vec3<u32>(46232u, 22040u, 40437u), vec3<u32>(0u, 44922u, 4294967295u), vec3<u32>(0u, 0u, 1310u), vec3<u32>(101998u, 4294967295u, 51241u), vec3<u32>(4294967295u, 28592u, 1u), vec3<u32>(1u, 438u, 67241u), vec3<u32>(1u, 1u, 0u), vec3<u32>(57868u, 59833u, 62790u), vec3<u32>(27828u, 4294967295u, 1u), vec3<u32>(57784u, 84352u, 74059u), vec3<u32>(1u, 1u, 1u), vec3<u32>(29978u, 55712u, 56636u), vec3<u32>(6651u, 4294967295u, 79747u), vec3<u32>(40556u, 29985u, 11852u), vec3<u32>(34542u, 0u, 1u), vec3<u32>(0u, 27039u, 8029u), vec3<u32>(35322u, 0u, 4294967295u), vec3<u32>(57173u, 32386u, 33090u), vec3<u32>(1u, 1u, 0u), vec3<u32>(62312u, 1u, 4294967295u), vec3<u32>(48494u, 18558u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(45170u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 18768u, 75328u), vec3<u32>(45124u, 4294967295u, 21636u), vec3<u32>(4294967295u, 11984u, 47466u), vec3<u32>(42410u, 0u, 1u), vec3<u32>(4294967295u, 6935u, 1u));

var<private> global1: array<f32, 11>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(102820u, 1u, 4294967295u), -9241i, vec4<i32>(i32(-2147483648), 2147483647i, 29736i, -1i), -172f, vec2<u32>(18621u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.d, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-10283i, global2.b, 2147483647i), arg_1.c.x, _wgslsmith_div_i32(arg_0, 4870i)), arg_1.c.zzy) | vec3<i32>(1i, i32(-1i) * -arg_2.b.x, _wgslsmith_mult_i32(1i, 1i)));
    let var_1 = min(~(~(~reverseBits(17081u))), u_input.d.x);
    global0 = array<vec3<u32>, 30>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, -1295f))));
    let var_3 = Struct_2(_wgslsmith_sub_vec3_u32(~select(arg_1.a, ~vec3<u32>(u_input.a, 4294967295u, 0u), true), _wgslsmith_mod_vec3_u32(vec3<u32>(9717u, ~61767u, _wgslsmith_add_u32(var_1, u_input.a)), ~(~vec3<u32>(3760u, u_input.a, 4294967295u)))), -68016i, global2.c, 918f, vec2<u32>(1u, ~114030u));
    return _wgslsmith_add_u32(~(~45369u), u_input.c);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(~vec4<i32>(_wgslsmith_div_i32(23858i, 37980i), 17360i >> (~arg_0.e.x % 32u), arg_1.b, -global2.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1189f, arg_1.d, global2.d))))));
    var var_2 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), arg_1.a.x < arg_0.e.x)));
    var var_3 = i32(-1i) * -firstLeadingBit(global2.c.x);
    let var_4 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1919f)) + _wgslsmith_f_op_f32(-var_4.d)) - var_4.d), abs(var_0.zwz));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> i32 {
    global1 = array<f32, 11>();
    let var_0 = func_3(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 48555u), ~select(u_input.b.wzx, vec3<u32>(u_input.b.x, 14970u, 0u), false)), -1i, global2.c | firstTrailingBit(_wgslsmith_add_vec4_i32(global2.c, vec4<i32>(40355i, global2.c.x, global2.b, 19382i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 498f))), max(~(~arg_0.xy), vec2<u32>(func_2(arg_1.x, Struct_2(u_input.b.wyw, 12979i, vec4<i32>(2147483647i, global2.c.x, arg_1.x, global2.b), -1024f, global2.a.yx), Struct_1(-769f, arg_1)), countOneBits(94622u)))), Struct_2(global2.a, arg_1.x, ~global2.c & firstLeadingBit(_wgslsmith_mult_vec4_i32(global2.c, global2.c)), global1[_wgslsmith_index_u32(~1433u, 11u)], ~abs(vec2<u32>(u_input.c, global2.e.x))));
    var var_1 = 316f;
    global2 = Struct_2(_wgslsmith_mod_vec3_u32(reverseBits(max(global2.a, vec3<u32>(u_input.a, 30075u, 26128u) & global0[_wgslsmith_index_u32(57381u, 30u)])), vec3<u32>(min(max(42014u, 44334u), ~4294967295u), ~(~u_input.c), 56433u)), 672i, firstTrailingBit(-countOneBits(global2.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.e.x, 11u)] + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(51229u, 11u)], global2.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1161f, global1[_wgslsmith_index_u32(global2.e.x, 11u)])))))), global2.a.xz);
    let var_2 = _wgslsmith_add_vec4_i32(-max(global2.c, vec4<i32>(1i, -global2.b, -global2.b, var_0.b.x)), vec4<i32>(-(i32(-1i) * -2147483647i), -(~(37821i << (arg_0.x % 32u))), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits(0i), -var_0.b.x, _wgslsmith_add_i32(arg_1.x, -7046i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-692i, var_0.b.x) >> (global2.a.zx % vec2<u32>(32u)), var_0.b.zy))));
    return firstLeadingBit(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~u_input.b.wyx, ~1990i, _wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(global2.b, global2.c.x, 16669i, -14551i)), vec4<i32>(~0i, 2147483647i, _wgslsmith_div_i32(-25082i, 1i), ~global2.c.x) >> (u_input.b % vec4<u32>(32u))), global2.d, countOneBits(countOneBits(countOneBits(vec2<u32>(8479u, u_input.c)))));
    let var_1 = Struct_1(var_0.d, vec3<i32>(global2.b, _wgslsmith_clamp_i32(0i, ~global2.b, -var_0.b), func_1(vec4<u32>(55479u, 4294967295u, var_0.a.x, 0u), ~var_0.c.xww, vec4<bool>(true, true, false, true))) ^ _wgslsmith_mod_vec3_i32(max(~vec3<i32>(var_0.c.x, 9611i, global2.c.x), var_0.c.zxz & vec3<i32>(var_0.b, -17165i, 95i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c.ywx, vec3<i32>(var_0.c.x, 1i, var_0.c.x)), global2.c.xzy)));
    let var_2 = Struct_2(var_0.a, global2.c.x, select(global2.c, var_0.c | -(~var_0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)))), -1000f, vec2<u32>(_wgslsmith_dot_vec3_u32(~abs(u_input.b.zyw), vec3<u32>(_wgslsmith_sub_u32(var_0.a.x, 2994u), ~0u, ~global2.a.x)), reverseBits(countOneBits(global2.a.x))));
    var var_3 = var_1.b.x;
    let var_4 = var_2;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)), var_1.b);
    var var_6 = vec4<bool>(all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), true, !(global2.e.x == u_input.c), false);
    let var_7 = func_3(Struct_2(firstTrailingBit(~vec3<u32>(101367u, 1u, 1u)), select(firstLeadingBit(2147483647i), ~(~(-35539i)), true), global2.c, -643f, ~(max(vec2<u32>(90157u, var_2.a.x), var_4.e) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a.x, 4294967295u), vec2<u32>(u_input.c, var_2.a.x)))), var_2);
    let var_8 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_7.a * var_1.a), _wgslsmith_div_f32(233f, global2.d), global2.d) + vec3<f32>(_wgslsmith_f_op_f32(min(397f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, -1270f, global1[_wgslsmith_index_u32(0u, 11u)])) * vec3<f32>(var_7.a, var_7.a, var_2.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(639f, 100f, var_1.a), vec3<f32>(1948f, var_1.a, -424f), vec3<bool>(false, false, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-372f, 162f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(max(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 42422u, var_4.e.x, var_0.a.x)), reverseBits(var_4.e.x))), _wgslsmith_dot_vec3_i32(max(~(vec3<i32>(-2147483647i, -9891i, -94402i) | var_1.b), func_3(var_0, Struct_2(vec3<u32>(var_0.a.x, 42834u, var_2.e.x), 28383i, vec4<i32>(global2.b, -1i, -20619i, var_7.b.x), var_0.d, var_4.a.zz)).b), var_2.c.ywz), vec3<u32>(13257u, select(global2.a.x >> (~99109u % 32u), _wgslsmith_dot_vec4_u32(u_input.b, select(u_input.b, vec4<u32>(43023u, var_0.a.x, 37192u, global2.a.x), var_6.x)), !var_6.x), abs(61319u)), global2.c.wx);
}

