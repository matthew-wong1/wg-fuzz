struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 60142u, ~(~25608u), min(_wgslsmith_clamp_u32(47813u, u_input.a.x, 20409u) ^ _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.x)), u_input.a);
    var var_1 = u_input.a;
    var var_2 = Struct_1(-321f, ~_wgslsmith_mult_i32(reverseBits(arg_0.b), 28384i | arg_0.b));
    var var_3 = select(vec3<i32>(1i, -min(arg_0.b, -2647i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, 0i), vec2<i32>(arg_0.b, 23516i)), ~arg_0.b)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.b, var_2.b, 29894i), vec3<i32>(arg_0.b, -32702i, 2147483647i)), vec3<i32>(39878i, 5526i, 0i)), vec3<i32>(arg_0.b << (32525u % 32u), 2147483647i, ~(-2147483647i))), -(~var_2.b) <= _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2962i, 10445i, arg_0.b, -1i)), vec4<i32>(-33488i, var_2.b, arg_0.b, 1i))) & -_wgslsmith_div_vec3_i32(abs(firstLeadingBit(vec3<i32>(1i, var_2.b, arg_0.b))), vec3<i32>(arg_0.b << (u_input.a.x % 32u), var_2.b, var_2.b));
    return _wgslsmith_f_op_f32(max(var_2.a, arg_0.a));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(307f, -550f, true)))), 26796i)))));
    var var_1 = any(vec4<bool>(false, true, true, !any(vec2<bool>(true, false)))) && true;
    let var_2 = -(_wgslsmith_sub_vec3_i32(countOneBits(countOneBits(vec3<i32>(2147483647i, 2253i, -34856i))), vec3<i32>(1i, 0i, 1i)) << (vec3<u32>(max(~12195u, 71421u), ~0u, 1u | ~u_input.a.x) % vec3<u32>(32u)));
    let var_3 = Struct_1(1227f, -_wgslsmith_dot_vec2_i32(var_2.zy, -var_2.yz) | _wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec2_i32(var_2.xy | vec2<i32>(var_2.x, 1i), var_2.zz)));
    let var_4 = !select(select(vec3<bool>(all(vec2<bool>(true, true)), true, var_3.b != var_3.b), vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec2<bool>(true, false)))), select(vec3<bool>(var_0 < 165f, false, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), true), true), false);
    return true & !select(all(vec2<bool>(var_4.x, var_4.x)), true, true);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), ~1i);
    let var_1 = any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), func_2()));
    var_0 = arg_1;
    return ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 13038u, u_input.a.x, 19286u), vec4<u32>(40586u, 60444u, 72105u, 21403u)), u_input.a) & ~(~25675u), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.a.zy, abs(u_input.a.yw));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-764f, -724f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-832f, -1344f))), vec2<bool>(false, false))) + vec2<f32>(_wgslsmith_f_op_f32(min(-730f, 1228f)), -1000f)), vec2<f32>(-462f, -285f)));
    var_0 = vec2<u32>(~u_input.a.x, 17885u ^ var_0.x);
    var_0 = firstTrailingBit(~(~vec2<u32>(1u, u_input.a.x)) >> (u_input.a.zx % vec2<u32>(32u)));
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~u_input.a.x), 1u), func_1(var_0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~(27048i << (1u % 32u))), ~(~abs(u_input.a))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))) - -310f)), abs(8182i));
    var var_3 = vec3<i32>(-2147483647i, var_2.b, 2147483647i);
    let var_4 = select(vec2<bool>(any(vec2<bool>(true, true)), false), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(all(vec3<bool>(true, false, true)), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !(var_3.x > -2147483647i)));
    var_0 = abs(~(~vec2<u32>(~u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(select(reverseBits(vec4<i32>(23717i, -45222i, 9455i, 2147483647i)) & vec4<i32>(2147483647i, -636i, -45591i, var_3.x), select(min(vec4<i32>(19521i, -2147483647i, -1i, var_2.b), vec4<i32>(2147483647i, var_3.x, 1i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(49209i, var_3.x, var_2.b, -2147483647i), vec4<i32>(0i, var_3.x, var_2.b, var_3.x)), vec4<bool>(var_4.x, true, var_4.x, var_4.x)), false), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_2.b, 0i, var_3.x), vec3<i32>(-1i, var_2.b, var_2.b)), ~vec3<i32>(var_2.b, var_3.x, -7403i)), _wgslsmith_mult_i32(2147483647i, abs(var_3.x)), abs(select(2147483647i, var_2.b, var_4.x)), -var_2.b)));
}

