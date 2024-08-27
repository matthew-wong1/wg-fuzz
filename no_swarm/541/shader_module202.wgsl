struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-41130i, 66281i, 0i, 2147483647i, 0i, i32(-2147483648), 0i, 2147483647i, 27972i, 1i, -1i, 2147483647i, 1i, -1i, 16123i, -1i, 0i, -2992i, 2147483647i, -43263i, 33256i, 1i, -1i, -1i, 1i, -46594i, 33604i, i32(-2147483648), 1i, 2147483647i, 51147i, -43074i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(min(select(vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<i32>(46566i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), true), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))) | _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 9362i)), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 9829i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i))), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(9621u, 32u)], -16499i, 0i), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(6850u, 32u)], 1i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(0u, 4294967295u)), 32u)])), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), !vec4<bool>(u_input.a.x >= u_input.a.x, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), true), !vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), ~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(24352u, u_input.a.x), ~88717u, reverseBits(4294967295u), ~u_input.a.x)));
    global0 = array<i32, 32>();
    return any(var_0.c);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_1(-1i, !vec3<bool>(false, 0i <= _wgslsmith_clamp_i32(-1559i, 35169i, 1i), all(vec4<bool>(false, false, true, false))), vec4<bool>(!(!all(vec2<bool>(true, true))), true & (-28057i == ~global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true & func_3()), select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), func_3() & true), vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), false), true), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a >> (vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, ~u_input.a.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zz), min(1u, u_input.a.x)), _wgslsmith_mod_u32(1u, ~29369u), 0u, max(u_input.a.x, 2051u) >> ((71579u >> (1u % 32u)) % 32u))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(25080u, 32u)], var_0.b, !vec4<bool>(arg_0.x >= _wgslsmith_f_op_f32(f32(-1f) * -472f), var_0.b.x, false, any(select(vec3<bool>(false, var_0.c.x, var_0.b.x), vec3<bool>(var_0.d.x, var_0.b.x, false), true))), select(var_0.d, vec2<bool>(select(true, var_0.b.x, false) & true, !var_0.b.x), !vec2<bool>(var_0.c.x && false, func_3())), _wgslsmith_div_vec4_u32(var_0.e, countOneBits(min(var_0.e, min(u_input.a, u_input.a)))));
    let var_2 = var_0.e.x;
    var var_3 = arg_0.x;
    let var_4 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(10327i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), global0[_wgslsmith_index_u32(0u, 32u)], -1i, -27949i), vec4<i32>(-1i) * -vec4<i32>(0i, -15476i, var_0.a, 66295i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(var_1.e.x, 32u)], 40555i, var_0.a), vec4<i32>(29961i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i, 46609i)) >> (firstTrailingBit(1u) % 32u), firstLeadingBit(7074i), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 11923i, var_1.a, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<i32>(var_1.a, global0[_wgslsmith_index_u32(var_1.e.x, 32u)], var_1.a, 39507i))));
    return ~1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    global0 = array<i32, 32>();
    var var_0 = -446f;
    var_0 = 1430f;
    var var_1 = Struct_1(0i, arg_0.b, arg_0.c, vec2<bool>(arg_0.c.x, any(arg_0.d)), arg_0.e);
    let var_2 = ~(~(26738u & _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x), arg_0.e), func_2(vec2<f32>(-246f, -1000f)))));
    return !(!arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(565f));
    var var_1 = select(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, func_1(Struct_1(-2147483647i, vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), vec2<bool>(true, false), u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(26259u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i, 14804i))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 32u)] >= abs(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec4<bool>(false, !any(vec4<bool>(false, true, false, true)) & false, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), true));
    var_1 = select(!vec4<bool>(any(!var_1.wyz), !all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, var_1.x, all(select(var_1.xw, var_1.yy, true))), vec4<bool>(var_1.x, reverseBits(41071u) > ~u_input.a.x, true, var_1.x), vec4<bool>(var_1.x, any(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), select(true, true, false), true)), select(select(vec4<bool>(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !var_1.x, true, var_1.x || var_1.x), vec4<bool>(any(var_1.yz), var_1.x, false, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), all(vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, false, var_1.x, var_1.x), var_1.x), vec4<bool>(var_1.x, var_1.x, true, true)), var_1.x));
    var_1 = !(!vec4<bool>(~(-1i) != _wgslsmith_mod_i32(36300i, global0[_wgslsmith_index_u32(14238u, 32u)]), false, false, any(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)))));
    let var_2 = firstLeadingBit(select(vec2<i32>(-1i, -2147483647i) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 15061u), abs(vec2<u32>(u_input.a.x, 1u)), u_input.a.zz) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-37995i, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 32u)])), abs(vec2<i32>(global0[_wgslsmith_index_u32(69351u, 32u)], 0i))), vec2<bool>(true, true)));
    let var_3 = vec2<bool>(!var_1.x, true);
    var var_4 = Struct_1(51407i, vec3<bool>(true, all(!(!var_1.yx)), !(!var_1.x)), vec4<bool>(any(select(var_1.xx, !vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, var_3.x))), true, any(var_1.yyz), func_1(Struct_1(var_2.x, !vec3<bool>(false, var_3.x, true), vec4<bool>(false, false, true, true), select(vec2<bool>(false, false), vec2<bool>(true, var_3.x), vec2<bool>(true, true)), abs(vec4<u32>(22195u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-13696i, global0[_wgslsmith_index_u32(20211u, 32u)], -2147483647i, global0[_wgslsmith_index_u32(3029u, 32u)]), vec4<i32>(0i, 1i, 1i, 50052i), max(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 0i), vec4<i32>(-32678i, -57868i, var_2.x, -32734i))))), var_1.zz, vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(select(~u_input.a.x, u_input.a.x >> (0u % 32u), func_3()), firstTrailingBit(u_input.a.x & u_input.a.x)), max(~func_2(vec2<f32>(-915f, 2586f)), 40196u), abs(u_input.a.x)));
    var var_5 = 25473i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-607f)), 394f)), 361f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-923f, 1492f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, 362f) - vec2<f32>(275f, -1006f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1421f)))), select(!(!var_4.b.zx), var_1.xw, all(vec4<bool>(false, true, var_4.c.x, var_3.x))))), abs(u_input.a.yyw));
}

