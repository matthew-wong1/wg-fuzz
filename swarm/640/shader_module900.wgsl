struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    return min(-select(_wgslsmith_clamp_i32(-1i, 24865i, 1i) << (~arg_0.c.x % 32u), -2147483647i, true), firstLeadingBit(0i) ^ _wgslsmith_mod_i32(1i >> ((0u << (u_input.b.x % 32u)) % 32u), abs(~8653i)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, -238f) - global1.a) - global1.a))), ~0u, _wgslsmith_add_vec2_u32(select(global1.c, ~vec2<u32>(u_input.a, 4294967295u) >> (~global1.c % vec2<u32>(32u)), select(any(vec4<bool>(false, false, true, true)), true, true)), _wgslsmith_div_vec2_u32(vec2<u32>(~86556u, 4294967295u), _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(global1.b, 4294967295u), false), u_input.b.yy))), 660f);
    let var_1 = ~(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) + vec2<f32>(1050f, -1134f)), min(0u, u_input.a), ~u_input.b.xy, _wgslsmith_f_op_f32(global1.d + var_0.d)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 272f)), ~global1.b, ~u_input.b.yx, _wgslsmith_div_f32(global1.d, var_0.a.x))) ^ (_wgslsmith_clamp_i32(select(29986i, -46207i, false), 0i, i32(-1i) * -2147483647i) & _wgslsmith_sub_i32(-2147483647i, 1i)));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(var_1, -1i) >> (~var_0.b % 32u), ~var_1 | max(2147483647i, -49115i), firstLeadingBit(_wgslsmith_div_i32(~1i, -8151i))), vec3<i32>(select(_wgslsmith_mod_i32(var_1, 55493i), ~1i, !all(vec2<bool>(false, true))), reverseBits(~var_1 >> (~0u % 32u)), 2147483647i), abs(countOneBits(-vec3<i32>(-1i, var_1, 5502i)) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, 47089i, -29082i)) & ~vec3<i32>(-1i, 0i, var_1))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -616f, var_0.d, -188f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1122f, -845f, -749f, _wgslsmith_f_op_f32(-1222f - global1.a.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(45234u, 29u)]), vec4<f32>(var_0.a.x, -1517f, -1554f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(809f, var_0.a.x, 1000f, -1113f), vec4<f32>(var_0.d, var_0.a.x, 746f, global1.d)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.wz) - _wgslsmith_f_op_vec2_f32(-var_0.a)))), ~0u, _wgslsmith_add_vec2_u32(~(~countOneBits(vec2<u32>(4294967295u, 4294967295u))), ~u_input.b.zx), global1.d);
    return var_2.yy;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_2;
    let var_1 = abs(vec2<i32>((arg_3.x & -1i) >> (max(64647u, 19704u) % 32u), -(~arg_3.x))) & -func_2();
    let var_2 = arg_2.c;
    global0 = array<vec4<f32>, 29>();
    var var_3 = _wgslsmith_dot_vec2_i32(arg_3.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(-var_1.x, _wgslsmith_div_i32(firstLeadingBit(var_1.x), var_1.x)), var_1));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(false, func_1(true, 171f, Struct_1(vec2<f32>(global1.a.x, global1.a.x), 11386u, vec2<u32>(1u, 4294967295u), global1.d), vec3<i32>(11847i, 2147483647i, -10100i)), true))), any(select(vec4<bool>(true, true, true, all(vec2<bool>(false, false))), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), global1.c.x >= abs(~global1.c.x), _wgslsmith_f_op_f32(-global1.d) <= global1.a.x);
    var var_1 = _wgslsmith_f_op_f32(-global1.a.x);
    let var_2 = Struct_1(global1.a, u_input.b.x, global1.c, global1.a.x);
    var_1 = var_2.d;
    let var_3 = max(global1.b, ~min(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global1.b, u_input.a, u_input.a), vec4<u32>(30862u, 100163u, 47271u, 117506u))), global1.b));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(_wgslsmith_sub_u32(20848u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 4294967295u, 1u, 4294967295u) & vec4<u32>(global1.c.x, 9484u, 0u, var_3), vec4<u32>(u_input.a, var_3, 1u, var_2.b))), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(var_2.b, u_input.b.x))), abs(~1u & ~(~var_2.c.x))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(11730i, -1i) << (vec2<u32>(4294967295u, var_2.b) % vec2<u32>(32u))), -_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -3729i), firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~var_3), ~(~var_2.c.x)), u_input.b.x));
}

