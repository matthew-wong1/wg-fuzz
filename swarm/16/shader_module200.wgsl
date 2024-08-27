struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(reverseBits(_wgslsmith_sub_vec4_u32(max(u_input.b, u_input.b), u_input.b)), ~firstTrailingBit(abs(vec3<u32>(u_input.a.x, 0u, 29401u) ^ u_input.b.yyw)), select(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, -18028i, global0.x), vec4<i32>(-2958i, global0.x, -57071i, global0.x), vec4<i32>(27394i, global0.x, global0.x, global0.x))), -vec4<i32>(-global0.x, global0.x, 2147483647i << (u_input.a.x % 32u), global0.x << (35699u % 32u)), vec4<bool>(true, !(u_input.b.x >= u_input.a.x), all(vec3<bool>(false, true, true)), !any(vec4<bool>(true, true, false, false)))));
    var var_1 = ~(~(vec2<u32>(u_input.a.x, reverseBits(var_0.a.x)) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, var_0.b.x), ~vec2<u32>(0u, 4294967295u))));
    let var_2 = Struct_1(select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(true, true, true)), global0.x <= 2147483647i, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true), any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), 1u, vec4<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), false)), select(false, var_1.x == var_1.x, !all(vec4<bool>(true, false, true, true))), false, true), vec4<bool>(true, !any(vec4<bool>(true, false, true, false)), true, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(1u, 0u, 1u, var_1.x)), _wgslsmith_dot_vec4_u32(var_0.a, u_input.b)) >= u_input.a.x));
    var var_3 = Struct_1(!vec4<bool>(var_2.b, !var_2.d.x, false, true), !var_2.d.x, ~(~countOneBits(_wgslsmith_add_u32(u_input.a.x, 4294967295u))), vec4<bool>(true != !all(var_2.e), false, true, true), !select(var_2.a, !select(var_2.d, vec4<bool>(var_2.d.x, true, var_2.e.x, var_2.b), var_2.a), select(vec4<bool>(false, false, false, var_2.b), !var_2.a, select(var_2.e, var_2.e, false))));
    global0 = select(vec3<i32>(global0.x, _wgslsmith_div_i32(6249i, firstTrailingBit(-1i)), ~(i32(-1i) * -2147483647i)), vec3<i32>(-countOneBits(~(-8083i)), ~(-36079i), ~(~_wgslsmith_div_i32(8185i, global0.x))), !any(select(select(vec4<bool>(var_2.e.x, false, false, var_2.b), vec4<bool>(var_2.b, var_3.d.x, false, false), vec4<bool>(true, var_2.e.x, true, var_2.e.x)), vec4<bool>(var_2.b, false, var_2.e.x, var_2.b), var_2.d)));
    return var_0.c.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = arg_2.b;
    var var_1 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0.x, -1i, global0.x)), arg_0.zzy) << ((firstTrailingBit(arg_2.a.zxx) ^ ~vec3<u32>(arg_2.a.x, 25047u, arg_2.b.x)) % vec3<u32>(32u))));
    global0 = abs(arg_0.zwy);
    var_1 = vec3<i32>(min(select(_wgslsmith_dot_vec4_i32(arg_2.c, ~arg_0), global0.x, true), -55031i), 7796i, -1i);
    let var_2 = Struct_2(vec4<u32>(~arg_2.a.x, ~1u, var_0.x, _wgslsmith_sub_u32(u_input.b.x, ~(~0u))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, arg_2.a.x, 13999u), abs(u_input.b.zzz))), reverseBits(vec4<i32>(8683i, var_1.x, arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, arg_2.c.x, arg_0.x, 9368i) & arg_2.c))));
    return var_0.zy;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(~func_4(vec4<i32>(_wgslsmith_div_i32(global0.x, arg_0.c.x), func_3(vec4<f32>(700f, -432f, -1197f, -960f)), ~8470i, 17921i), arg_1.x, arg_0), vec2<u32>(4294967295u, ~(max(23776u, 117782u) << (u_input.b.x % 32u))));
    var_0 = vec2<u32>(~abs(1u), 4294967295u);
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -func_3(vec4<f32>(333f, 253f, -1743f, -226f)), -21465i, 0i << (_wgslsmith_mult_u32(arg_0.a.x, u_input.b.x) % 32u)), ~(-(~arg_1))), countOneBits(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(25532i, 31652i, arg_0.c.x, global0.x), arg_1), ~max(vec4<i32>(-1i, 28700i, 0i, 2147483647i), vec4<i32>(2147483647i, global0.x, 1i, 0i)))));
    global0 = arg_1.zxz;
    let var_2 = global0.x;
    return _wgslsmith_f_op_f32(-270f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1526f))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, -1305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec4<u32>(1u, arg_2.x, 18530u, arg_3.b.x), vec3<u32>(0u, 1u, 0u), vec4<i32>(arg_3.c.x, global0.x, -2147483647i, -1i)), vec4<i32>(1i, arg_3.c.x, -13355i, 2147483647i), vec4<u32>(arg_2.x, 4294967295u, arg_0, arg_2.x)))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(531f - 1502f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-784f))))))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> vec2<u32> {
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, ~global0.x >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.b.x), firstTrailingBit(15923u)) % 32u), ~global0.x), ~(~(firstLeadingBit(vec3<i32>(30148i, 2147483647i, global0.x)) & -vec3<i32>(global0.x, 2147483647i, 9684i))));
    var var_0 = Struct_2(max(_wgslsmith_mult_vec4_u32(~vec4<u32>(61765u, 19430u, 1u, 0u), u_input.b), select(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 41342u, arg_0), vec4<u32>(4294967295u, u_input.b.x, arg_0, 1u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))) & (reverseBits(countOneBits(vec4<u32>(1u, arg_0, arg_0, u_input.a.x))) ^ min(vec4<u32>(59841u, 1u, 4294967295u, 31382u), vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x))), u_input.b.yyz, firstTrailingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(global0.x, 0i, global0.x, 35456i))), countOneBits(vec4<i32>(global0.x, global0.x, global0.x, 36006i)), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, global0.x, 12808i) | vec4<i32>(global0.x, global0.x, -2147483647i, -10898i)))));
    var_0 = Struct_2(vec4<u32>(1u, _wgslsmith_mult_u32(~u_input.a.x, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(17121u, ~20919u, arg_0, _wgslsmith_dot_vec2_u32(var_0.a.xy, var_0.a.zw)), countOneBits(_wgslsmith_add_vec4_u32(u_input.b, u_input.b))), abs(4294967295u)), u_input.b.wwx, var_0.c);
    var_0 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(max(u_input.b.x << (54754u % 32u), ~4294967295u), max(0u, u_input.a.x), ~56692u), abs(_wgslsmith_div_u32(4018u, u_input.b.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(36504u, var_0.a.x), var_0.b.zy)), 1u, max(var_0.b.x, 0u)), abs(u_input.b.wzy), vec4<i32>(countOneBits(-2147483647i), ~(~var_0.c.x), reverseBits(-2147483647i << (var_0.a.x % 32u)), global0.x));
    var var_1 = Struct_1(vec4<bool>(true, true, !all(vec3<bool>(false, true, false)) & true, -(38967i ^ global0.x) > _wgslsmith_add_i32(global0.x << (32765u % 32u), var_0.c.x)), true, u_input.a.x & ((~1u >> (arg_0 % 32u)) >> (var_0.b.x % 32u)), !vec4<bool>(all(vec4<bool>(true, true, false, true)), 4294967295u <= select(var_0.a.x, 0u, true), true, true), select(vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, true)), true), any(vec2<bool>(true, false))), false));
    return vec2<u32>(~(~var_0.a.x), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1u | _wgslsmith_div_u32(u_input.b.x, 8134u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1527f, 980f, -447f), _wgslsmith_f_op_vec3_f32(func_1(0u, global0.x, u_input.b, Struct_2(vec4<u32>(39434u, 4294967295u, 55072u, 32197u), vec3<u32>(1u, u_input.a.x, 1u), vec4<i32>(global0.x, -2147483647i, global0.x, -42753i)))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, 1000f, 753f) + vec3<f32>(-651f, 990f, -1314f))))) ^ vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(max(21671u, u_input.a.x), 1u)), u_input.a.x);
    var_0 = vec2<u32>(_wgslsmith_div_u32(15152u, ~(0u >> ((0u ^ u_input.a.x) % 32u))), select(~countOneBits(abs(1u)), u_input.a.x << (1u % 32u), all(vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(true, false))))));
    let var_1 = !(!select(vec3<bool>(all(vec3<bool>(true, true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), any(vec4<bool>(false, true, false, true)))));
    global0 = firstLeadingBit(-vec3<i32>(1i, global0.x, firstLeadingBit(-2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(floor(1f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 447f, 0i);
}

