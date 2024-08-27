struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<i32>(-23801i, 0i);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(min(arg_1, arg_1), abs(u_input.b.x))), 4294967295u), 13602u);
    global0 = arg_2;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, 10506u, 18261u), vec4<u32>(0u, var_1, 1u, 32320u)), ~var_1)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_1, 0u), select(~vec3<u32>(arg_1, var_1, 4294967295u), firstLeadingBit(u_input.b.zxw), all(vec3<bool>(false, false, false)))), min(u_input.b.x | select(var_1, 1u, false), 69931u)));
}

fn func_2() -> i32 {
    global0 = Struct_1(reverseBits(~1i));
    global0 = Struct_1(-global0.a);
    global0 = Struct_1(abs(-3421i) << (~(~func_3(vec2<i32>(0i, 2147483647i), u_input.b.x, Struct_1(41961i))) % 32u));
    var var_0 = -1253f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(453f - 1035f), 1f)) * -1165f), -1827f)));
    return -3158i;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(-(abs(countOneBits(vec3<i32>(16241i, -32595i, 0i))) >> (u_input.b.xyx % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -23592i, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(func_2(), select(global0.a, -76959i, false)), select(-2147483647i, 2147483647i, true), ~(arg_0.a | global0.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(-arg_2.x);
    let var_1 = min(-_wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-28111i, arg_0.x, arg_0.x), arg_2), arg_2, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), arg_0), vec3<i32>(arg_1, (arg_1 ^ firstTrailingBit(arg_2.x)) ^ -45355i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, -7998i, 11576i, arg_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a, arg_2.x, -1i, global0.a), vec4<i32>(9876i, 26271i, arg_1, 2147483647i)), vec4<i32>(arg_0.x, arg_2.x, arg_1, 2147483647i)), max(~vec4<i32>(arg_0.x, -3477i, 30722i, -52627i), -vec4<i32>(arg_1, -40124i, global0.a, arg_0.x)))));
    var var_2 = ~u_input.b.zz;
    let var_3 = !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    let var_4 = var_1 & -min(~vec3<i32>(global0.a, arg_2.x, 1i), var_1);
    return Struct_1(arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    return func_4(func_1(func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0.a, -19467i), vec3<i32>(global0.a, -2147483647i, arg_0.a)) << (vec3<u32>(1u, 20378u, 0u) % vec3<u32>(32u)), _wgslsmith_add_i32(arg_0.a, global0.a), -(vec3<i32>(arg_0.a, arg_0.a, arg_0.a) << (u_input.b.wzz % vec3<u32>(32u))), _wgslsmith_f_op_f32(488f - _wgslsmith_f_op_f32(f32(-1f) * -364f)))), arg_0.a, max(firstTrailingBit(~firstLeadingBit(vec3<i32>(arg_0.a, arg_0.a, arg_0.a))), abs(-func_1(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(368f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(221f)))))));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global0.a);
    var_0 = func_5(func_4(~(vec3<i32>(arg_0.a, arg_2.a, 1i) & vec3<i32>(-1897i, global0.a, -2147483647i)), _wgslsmith_mod_i32(firstLeadingBit(~(-2147483647i)), arg_1), vec3<i32>(-22099i, _wgslsmith_dot_vec2_i32(vec2<i32>(10960i, arg_0.a), vec2<i32>(var_0.a, arg_1)) & (global0.a | -40381i), -firstTrailingBit(global0.a)), 1462f), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~62606u, ~69512u), u_input.b.xw), u_input.b.zw), ~4294967295u);
    global0 = func_4((~(-vec3<i32>(1i, 44079i, arg_2.a)) << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 24837u, 15746u), vec3<u32>(u_input.a, 12212u, u_input.b.x))) % vec3<u32>(32u))) ^ firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(29669i, 0i, -17018i), max(vec3<i32>(-21371i, -1i, arg_1), vec3<i32>(1i, 68186i, global0.a)))), -select(_wgslsmith_mod_i32(global0.a, arg_1), ~(~global0.a), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), ~_wgslsmith_mult_vec3_i32(-select(vec3<i32>(2428i, global0.a, -25560i), vec3<i32>(-2147483647i, arg_2.a, 0i), false), countOneBits(vec3<i32>(-46978i, -1i, var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3185f))))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -134f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-729f, 1000f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, 537f) * vec2<f32>(1593f, -671f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(880f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -234f)), vec2<bool>(true, true))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1435f))));
    var var_2 = ~_wgslsmith_add_vec2_u32(abs(u_input.b.xy), _wgslsmith_mod_vec2_u32(select(min(vec2<u32>(4294967295u, 4294967295u), u_input.b.zx), ~u_input.b.xz, vec2<bool>(true, true)), u_input.b.wy));
    return func_4(vec3<i32>(reverseBits(_wgslsmith_mult_i32(-2147483647i, arg_2.a >> (var_2.x % 32u))), arg_0.a, 17447i), i32(-1i) * -318i, firstLeadingBit(vec3<i32>(reverseBits(24421i), abs(global0.a), arg_1)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1436f, 1487f))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 860f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), -102f)));
    let var_1 = false;
    var var_2 = -485f;
    global0 = func_6(Struct_1(global0.a), global0.a, func_5(func_4(~vec3<i32>(-2147483647i, 0i, global0.a), -global0.a, _wgslsmith_add_vec3_i32(max(vec3<i32>(0i, 1i, global0.a), vec3<i32>(-14318i, global0.a, global0.a)), func_1(Struct_1(-19449i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * var_0.x)), select(~vec2<u32>(0u, 1u), u_input.b.zw, !any(vec2<bool>(var_1, var_1))), firstLeadingBit(0u) << (countOneBits(_wgslsmith_mult_u32(7561u, 30037u)) % 32u)));
    let var_3 = func_4(vec3<i32>(-global0.a | _wgslsmith_mod_i32(-global0.a, global0.a ^ global0.a), global0.a, countOneBits(~global0.a)), 1i, vec3<i32>(~1i, global0.a, global0.a) | vec3<i32>(0i, global0.a, -21649i), -462f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1774f, var_0.x)));
}

