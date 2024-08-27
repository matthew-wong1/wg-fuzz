struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(5323u, arg_2), vec2<u32>(arg_3, arg_2)), reverseBits(firstTrailingBit(u_input.a)))), ~u_input.a);
    let var_1 = all(!vec4<bool>(all(vec4<bool>(true, true, true, true)), false, false, all(vec4<bool>(true, true, false, false))));
    var var_2 = Struct_2(Struct_1(1i), ~firstLeadingBit(u_input.b.x), Struct_1(0i), Struct_1(_wgslsmith_clamp_i32(2147483647i, -_wgslsmith_add_i32(-2147483647i, 1i), ~(~(-9377i)))));
    let var_3 = -10504i;
    var var_4 = vec4<i32>(1i, select(_wgslsmith_mult_i32(-432i, 0i), ~(-var_2.c.a), var_1), var_3, var_3);
    return min(abs(~arg_3 >> (0u % 32u)), reverseBits(4294967295u)) >> (~1u % 32u);
}

fn func_2() -> vec3<f32> {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(-1i, -6103i, 2147483647i), vec3<i32>(24933i, 2147483647i, 6149i)), reverseBits(~vec3<i32>(-2147483647i, -14524i, 35886i))), -(~(~40267i))), _wgslsmith_mult_i32(min(0i, -1i) << ((_wgslsmith_dot_vec3_u32(u_input.b.wxz, vec3<u32>(58466u, u_input.a.x, 11429u)) << (~u_input.a.x % 32u)) % 32u), 1i));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0), var_0), 29946i), 1i, var_0.x | -29335i));
    var var_2 = Struct_1(var_1.a);
    let var_3 = u_input.b.x >> ((func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(600f, 1757f, 137f, 603f), _wgslsmith_div_vec4_f32(vec4<f32>(722f, 1725f, -548f, -682f), vec4<f32>(-204f, -509f, 222f, 651f)))), 161f, _wgslsmith_mult_u32(~1u, ~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b.xyx, u_input.b.xyz), ~0u)) << (u_input.b.x % 32u)) % 32u);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(339f, 808f, -937f)))))))));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = vec3<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))) & !(!all(vec2<bool>(true, false))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, -797f, -942f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-2292f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-322f, -1185f)))), -768f)));
    let var_2 = arg_0;
    var_0 = !vec3<bool>(!((0u > arg_0.b) || true), !(arg_0.c.a > var_2.a.a), !var_0.x);
    let var_3 = ~firstTrailingBit(~_wgslsmith_add_i32(abs(-1i), _wgslsmith_sub_i32(-2147483647i, -1i)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(i32(-1i) * -21127i, 1i), abs(~(~vec2<i32>(-79215i, 1i)))));
    var var_1 = Struct_1(i32(-1i) * -32611i);
    var_1 = Struct_1(0i);
    let var_2 = vec3<bool>(any(!vec3<bool>(true, func_1(Struct_2(Struct_1(var_1.a), u_input.a.x, Struct_1(-2147483647i), Struct_1(var_1.a))), true)), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)) != true, true);
    var_0 = Struct_1(-var_1.a | var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, _wgslsmith_clamp_i32(firstLeadingBit(~(-19820i)), var_1.a, var_1.a));
}

