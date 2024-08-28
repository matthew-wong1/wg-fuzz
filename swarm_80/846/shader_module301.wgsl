struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<f32> {
    global0 = Struct_1(~firstTrailingBit(min(global0.a, countOneBits(global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.b, vec2<f32>(arg_1.b.x, 1622f))) - vec2<f32>(arg_0, -888f))))), arg_1.c, ~arg_1.d << (_wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, arg_2.x, arg_2.x)), _wgslsmith_mult_vec3_u32(~arg_2, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, arg_2.x), vec3<u32>(0u, arg_2.x, 20966u)))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, 513f), vec3<f32>(368f, 262f, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, global0.b.x, arg_0)), select(vec3<bool>(arg_1.c, arg_1.c, false), vec3<bool>(arg_1.c, true, arg_1.c), false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2938f - 1613f), _wgslsmith_f_op_f32(trunc(arg_0.b.x))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(min(-348f, _wgslsmith_div_f32(arg_2.x, arg_2.x))), 857f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, arg_0.b.x, arg_2.x, -1140f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, arg_0.b.x, 827f, global0.b.x))))))));
    global0 = Struct_1(abs(vec3<i32>(_wgslsmith_mod_i32(82136i, u_input.a.x) << (countOneBits(arg_1) % 32u), u_input.a.x, _wgslsmith_sub_i32(0i, u_input.a.x) & -26162i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -129f) + _wgslsmith_f_op_f32(f32(-1f) * -2165f)), arg_0, vec3<u32>(~arg_1, ~1u, arg_1 << (0u % 32u)))).zx), arg_0.c, vec3<i32>(_wgslsmith_mod_i32(~(~arg_0.d.x), u_input.a.x), firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29604i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.d.x, -1i, global0.d.x), vec4<i32>(u_input.a.x, global0.a.x, global0.a.x, -2147483647i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, -13506i, -32898i, 1i), vec4<i32>(arg_0.d.x, 34802i, 19466i, u_input.a.x)), u_input.a.x))));
    global0 = arg_0;
    global0 = arg_0;
    global0 = arg_0;
    return ~vec4<u32>((arg_1 << (~arg_1 % 32u)) >> (arg_1 % 32u), ~(~_wgslsmith_clamp_u32(45361u, 32695u, 6457u)), min(4294967295u, ~(0u >> (arg_1 % 32u))), firstTrailingBit(max(16542u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(0u, arg_1, 0u, 0u)))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_2;
    return min(global0.a, select(_wgslsmith_mod_vec3_i32(vec3<i32>(-global0.a.x, arg_0, arg_2.d.x), vec3<i32>(-57226i >> (arg_3.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.x, arg_1, arg_1, arg_0), vec4<i32>(0i, arg_2.a.x, 50096i, arg_1)), ~global0.a.x)), vec3<i32>(1i, arg_1, select(arg_2.d.x, u_input.a.x, global0.c)) << (~min(vec3<u32>(arg_3.x, arg_3.x, arg_3.x), vec3<u32>(arg_3.x, arg_3.x, 27342u)) % vec3<u32>(32u)), select(vec3<bool>(var_0.b.x == arg_2.b.x, true, any(vec2<bool>(true, global0.c))), select(vec3<bool>(true, true, true), vec3<bool>(global0.c, global0.c, arg_2.c), arg_3.x > 4294967295u), vec3<bool>(false, var_0.c, true))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~countOneBits(~u_input.a.x);
    let var_1 = Struct_1(vec3<i32>(max(_wgslsmith_mult_i32(firstLeadingBit(global0.d.x), u_input.a.x), 2147483647i >> (firstLeadingBit(1u) % 32u)), -(~global0.d.x), ~_wgslsmith_div_i32(abs(0i), u_input.a.x)), _wgslsmith_f_op_vec2_f32(global0.b * global0.b), !(all(select(vec3<bool>(true, global0.c, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false))) && all(vec2<bool>(false, false))), vec3<i32>(global0.d.x ^ ~(~0i), ~1i, u_input.a.x));
    var var_2 = Struct_1(func_5(-18664i, u_input.a.x ^ _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_add_i32(28177i, global0.a.x)), Struct_1(global0.a, vec2<f32>(1000f, -1034f), false, u_input.a), func_4(Struct_1(-vec3<i32>(u_input.a.x, global0.a.x, -45012i), vec2<f32>(var_1.b.x, var_1.b.x), !arg_0, vec3<i32>(u_input.a.x, global0.a.x, u_input.a.x)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(15101u, 3226u, 1u, 41250u), vec4<u32>(45798u, 0u, 37538u, 4294967295u))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-var_1.b.x), Struct_1(var_1.a, vec2<f32>(-1888f, var_1.b.x), global0.c, vec3<i32>(91782i, u_input.a.x, -1i)), vec3<u32>(57162u, 66801u, 36620u))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x))), global0.b.x), !arg_0, _wgslsmith_mult_vec3_i32(vec3<i32>(2276i, i32(-1i) * -1i, min(global0.d.x, 1i)), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, global0.a.x, global0.a.x), -reverseBits(u_input.a))));
    global0 = var_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.b.x, -673f)))));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = func_2(global0.c);
    let var_0 = Struct_1((abs(vec3<i32>(global0.a.x, 0i, -27778i)) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 0i, -13598i), global0.d))) | u_input.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), global0.b)))))), !global0.c, _wgslsmith_add_vec3_i32(select(reverseBits(vec3<i32>(3814i, u_input.a.x, global0.d.x)), reverseBits(u_input.a), select(vec3<bool>(false, false, global0.c), !vec3<bool>(false, true, global0.c), vec3<bool>(global0.c, global0.c, global0.c))), _wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(-14546i, -48622i, global0.a.x) & -global0.d)));
    global0 = var_0;
    let var_1 = true;
    let var_2 = true;
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, arg_0.b, true, u_input.a);
    global0 = Struct_1(global0.d, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)), arg_1))), all(vec4<bool>(true, true, !any(vec3<bool>(global0.c, true, arg_0.c)), any(vec4<bool>(false, global0.c, arg_0.c, arg_0.c)))), -(~vec3<i32>(abs(global0.a.x), arg_0.a.x, var_0.d.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, func_1(arg_0.b.x, _wgslsmith_f_op_f32(-arg_1)).b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -2342f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, var_0.b.x, var_0.c)), var_0.b.x, 435f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -942f, 599f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(639f, arg_1, 928f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-345f, 1073f, arg_1), vec3<f32>(global0.b.x, arg_0.b.x, -227f), vec3<bool>(true, true, arg_0.c))))))));
    var var_2 = -global0.d.x;
    let var_3 = arg_0.c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 15709u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26340u, 4294967295u, 1u, 1u), ~vec4<u32>(0u, 0u, 6387u, 2878u), vec4<u32>(8177u, 1u, 0u, 1u))) & vec4<u32>(1u, ~1u, min(1u, 17959u), _wgslsmith_div_u32(countOneBits(49000u), countOneBits(31437u))), vec4<u32>(4294967295u, _wgslsmith_mult_u32(0u, countOneBits(_wgslsmith_mod_u32(33795u, 35196u))), 1u, select(1u, 1u, global0.c | global0.c) ^ 4294967295u));
    var var_1 = func_6(func_1(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(225f - global0.b.x))), 970f), -1499f);
    let var_2 = _wgslsmith_div_vec4_i32(select(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-34117i, global0.a.x, -1i, u_input.a.x), vec4<i32>(-3779i, 3605i, u_input.a.x, -9353i)), vec4<i32>(-24612i, global0.a.x, 2147483647i, u_input.a.x)), max(vec4<i32>(1i, var_1.d.x, 75285i, abs(global0.a.x)), ~vec4<i32>(u_input.a.x, var_1.d.x, -2147483647i, 0i)), select(select(select(vec4<bool>(true, false, global0.c, var_1.c), vec4<bool>(var_1.c, global0.c, true, global0.c), global0.c), vec4<bool>(var_1.c, global0.c, false, true), !vec4<bool>(global0.c, global0.c, true, global0.c)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_1.c, true))), -countOneBits(-(vec4<i32>(2147483647i, u_input.a.x, var_1.d.x, var_1.a.x) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) % vec4<u32>(32u)))));
    var var_3 = !any(!vec2<bool>(all(vec3<bool>(false, global0.c, false)), true));
    var_3 = var_1.c;
    var var_4 = 0i;
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yx);
}

