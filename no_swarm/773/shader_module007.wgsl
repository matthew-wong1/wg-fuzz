struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_clamp_i32(1i, -1i, u_input.a.x)), u_input.a.x), -(~u_input.a.x));
    let var_1 = 1i;
    let var_2 = Struct_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(688u, 25u)], 0u), vec2<u32>(global0[_wgslsmith_index_u32(5215u, 25u)], 57263u)), 36797u), 25u)], 25u)]);
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(i32(-1i) * -1i, var_0 ^ -55456i), select(u_input.a.yx, -vec2<i32>(-2147483647i, u_input.a.x) ^ vec2<i32>(1i, -9221i), !any(vec4<bool>(true, true, true, false)))), firstTrailingBit(~_wgslsmith_div_vec2_i32(u_input.a.zy, firstTrailingBit(u_input.a.zy))));
    global0 = array<u32, 25>();
    return var_2;
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<u32, 25>();
    let var_0 = Struct_2(func_2(), 10743i, firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(countOneBits(1u), 25u)], global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 25u)]), 25u)], 63034u)));
    global0 = array<u32, 25>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-269f - -615f), _wgslsmith_f_op_f32(ceil(-827f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1509f - -1997f)) + -1075f)));
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(false, ~global0[_wgslsmith_index_u32(0u, 25u)] != min(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(82483u, 25u)])), all(vec4<bool>(false, all(vec2<bool>(false, true)), true, arg_0 == arg_0))), vec2<bool>(true, any(vec3<bool>(true, true, true))), !all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68754u, 25u)], 25u)], 25u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.a, 25u)], 25u)])));
    return -1529f;
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2();
    global0 = array<u32, 25>();
    var_0 = Struct_1(~1u);
    global0 = array<u32, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-12140i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(706f * _wgslsmith_f_op_f32(f32(-1f) * -132f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, 1276f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, 444f)), vec2<f32>(-247f, 506f), select(vec2<bool>(false, true), vec2<bool>(false, false), true)))))));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_1.x, var_1.x, 2029f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(485f, 678f, 172f, -734f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 685f, var_1.x, 103f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -1220f, var_1.x, var_1.x)))))))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, arg_3, arg_0, arg_3), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 25u)], 25u)], global0[_wgslsmith_index_u32(0u, 25u)], arg_0, 8796u)), vec4<u32>(718u, 1u, 43762u, arg_3)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 26220u, 4294967295u, arg_3), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3, arg_0, 0u, arg_3), vec4<u32>(arg_3, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 25u)], 25u)], arg_0, arg_0))))), ~u_input.a.x, firstTrailingBit(vec3<u32>(arg_3, arg_0, arg_3)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a, 4294967295u) & vec2<u32>(0u, 6474u), vec2<u32>(42742u, abs(arg_0.c.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, min(_wgslsmith_clamp_i32(-14301i, 71585i, -1i), arg_1.x ^ u_input.a.x), _wgslsmith_div_i32(arg_1.x, arg_0.b)), vec3<i32>(-2147483647i, -35425i, 2147483647i) << (_wgslsmith_mod_vec3_u32(~arg_0.c, vec3<u32>(40055u, arg_0.a.a, 4294967295u)) % vec3<u32>(32u))), vec3<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 65476u, arg_0.c.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(arg_0.a.a, 25u)], 28393u, arg_0.a.a)) ^ ~arg_0.c.x) | 31227u, 4855u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(arg_0.c, vec3<u32>(arg_0.a.a, arg_0.a.a, 1u)), ~arg_0.c), arg_0.c)));
    var var_2 = var_0.a;
    var_2 = 1u ^ (min(0u, 78446u) ^ arg_0.c.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(208f * 160f), 630f) - -1341f)), -179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1572f))));
    return var_1.a;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec4_i32(-(~max(vec4<i32>(u_input.a.x, 0i, -1i, arg_3.b), vec4<i32>(1i, 1i, u_input.a.x, 1i))), vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, -16806i, arg_3.b, -22415i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -6422i, -1i, 0i), vec4<i32>(2100i, u_input.a.x, arg_3.b, arg_3.b), vec4<i32>(56172i, u_input.a.x, -25800i, u_input.a.x))), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.b, u_input.a.x), ~u_input.a.zx), u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -35538i), 21707i)));
    var var_1 = var_0.wx;
    var var_2 = all(select(vec3<bool>(true, true, false), vec3<bool>(!any(vec3<bool>(false, true, false)), false, any(vec2<bool>(true, true)) == any(vec4<bool>(false, true, true, false))), false));
    var var_3 = arg_3.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~_wgslsmith_add_u32(19234u, arg_1.a), ~1u << (0u % 32u)), _wgslsmith_sub_vec3_u32(arg_3.c, arg_3.c));
    var_2 = all(!vec4<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true)), -38667i > firstTrailingBit(2147483647i)));
    return Struct_1(~arg_3.a.a | 69125u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-167f, 1262f)), _wgslsmith_f_op_f32(1567f - 632f), -751f, _wgslsmith_f_op_f32(1354f * -1311f)), vec4<f32>(_wgslsmith_div_f32(-269f, 317f), _wgslsmith_f_op_f32(max(-1137f, 1046f)), 662f, _wgslsmith_f_op_f32(trunc(-632f))), vec4<bool>(true, true, true, true)))), func_5(func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(28586u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27239u, 25u)], 25u)], 42725u), vec3<u32>(432u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43482u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 58032u)), vec3<u32>(42546u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + vec4<f32>(442f, 201f, -569f, 1454f)), abs(-vec4<i32>(1i, 1i, 1i, 13631i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 16050u) >> (vec3<u32>(global0[_wgslsmith_index_u32(3837u, 25u)], 4294967295u, 25523u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(20377u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(15232u, 25u)]), vec3<u32>(14274u, 1u, global0[_wgslsmith_index_u32(84992u, 25u)]))), 25u)]), abs(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-14634i, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 5809i, 2147483647i))))), -1000f, func_4(1u, vec4<f32>(_wgslsmith_f_op_f32(sign(-1825f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-857f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 708f), _wgslsmith_f_op_f32(269f * -341f)))), select(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1794i), -(~vec4<i32>(2147483647i, 0i, -4300i, -2147483647i)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), ~1u));
    global0 = array<u32, 25>();
    let var_1 = Struct_2(var_0, u_input.a.x, vec3<u32>(var_0.a, 14984u, _wgslsmith_add_u32(0u, ~global0[_wgslsmith_index_u32(1u, 25u)]) << (~func_2().a % 32u)));
    global0 = array<u32, 25>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_div_f32(-1904f, -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(-122f, u_input.a.x, ~u_input.a.zy);
}

