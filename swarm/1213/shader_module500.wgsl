struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 14355u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 2368i, 25000i) << (u_input.c % vec3<u32>(32u))) >> (min(global0.yyy, min(vec3<u32>(11049u, 0u, u_input.a), global0.xxw)) % vec3<u32>(32u))), select(vec3<i32>(-22414i, reverseBits(5317i), 1i), vec3<i32>(1i, 1i, 1i), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))));
    let var_1 = global0.x;
    let var_2 = select(vec4<bool>(true, all(vec4<bool>(all(vec2<bool>(true, false)), true, false, true)), _wgslsmith_mod_u32(min(55052u, u_input.c.x), ~u_input.c.x) != ~u_input.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, -1i, var_0.x), max(11734i, 0i)) > -29289i), vec4<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), true, all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec3<bool>(true, true, true))), vec4<bool>(false, any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(276f, -2290f)) * _wgslsmith_f_op_f32(sign(-1208f)))) + -1304f), _wgslsmith_f_op_f32(round(-1000f)), 1f);
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(~var_0.x, _wgslsmith_dot_vec3_i32(var_0, var_0), reverseBits(0i)), abs(var_0))), 0i);
    return _wgslsmith_div_u32(abs(global0.x), 1u);
}

fn func_2() -> Struct_1 {
    global0 = vec4<u32>(func_3(), u_input.c.x, min(~min(0u, 1u >> (u_input.b % 32u)), max(0u, ~global0.x)), _wgslsmith_sub_u32(countOneBits(u_input.b), _wgslsmith_div_u32(u_input.a, 89472u)));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1402f, _wgslsmith_f_op_f32(980f + -528f)))))));
    var var_1 = Struct_1(global0.x, !(!vec4<bool>(true, select(false, true, false), true, true)), global0.x, ~vec2<i32>(firstLeadingBit(-1i), select(_wgslsmith_div_i32(-2147483647i, -1i), ~60764i, true)), true);
    var var_2 = vec3<u32>(global0.x | _wgslsmith_mult_u32(func_3(), var_1.c >> (~u_input.a % 32u)), global0.x, func_3());
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, 486f)), _wgslsmith_f_op_vec2_f32(var_0.a * var_0.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)))));
    return Struct_1(_wgslsmith_add_u32(~var_1.a, ~firstLeadingBit(~15103u)), !(!vec4<bool>(!var_1.e, var_1.e, true, false)), ~func_3(), -(-vec2<i32>(var_1.d.x, var_1.d.x) & _wgslsmith_div_vec2_i32(abs(var_1.d), min(var_1.d, vec2<i32>(var_1.d.x, -10104i)))), false);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = global0.x;
    var var_1 = func_2();
    var_1 = Struct_1(~var_1.a, var_1.b, max(36850u, countOneBits(arg_3.x)), var_1.d, !(arg_3.x != ~(arg_3.x << (arg_3.x % 32u))));
    let var_2 = select(37686i, 1i, var_1.e);
    let var_3 = func_2();
    return ~(~_wgslsmith_add_u32(~u_input.c.x, countOneBits(global0.x))) >= ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(global0.x, 4294967295u >> (u_input.a % 32u)), _wgslsmith_sub_u32(u_input.c.x, 1u), _wgslsmith_dot_vec3_u32(global0.xyx, abs(vec3<u32>(46657u, global0.x, 643u))), 1u << (_wgslsmith_mod_u32(u_input.c.x, global0.x) % 32u)), vec4<u32>(~1u, u_input.c.x, _wgslsmith_sub_u32(global0.x, u_input.a), 49550u));
    var var_0 = select(vec4<i32>(-1i) * -(~vec4<i32>(0i, -2147483647i, -2147483647i, -2147483647i)), vec4<i32>(-min(2147483647i, max(0i, 0i)), 1i, abs(select(16490i, 1i, true)), 37239i), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), true, any(vec3<bool>(any(vec3<bool>(true, false, true)), func_1(864f, Struct_2(vec2<f32>(-799f, -1359f)), vec3<f32>(1160f, -1000f, 1000f), vec2<u32>(1u, u_input.c.x)), true)), !(-629f != _wgslsmith_f_op_f32(sign(1639f)))));
    global0 = select(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, u_input.a) | vec4<u32>(u_input.c.x, u_input.a, 90064u, u_input.b), vec4<u32>(u_input.c.x, global0.x, global0.x, global0.x) << (vec4<u32>(6541u, u_input.a, global0.x, global0.x) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, u_input.b, global0.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(12978u, global0.x, 6847u, u_input.c.x), vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(60868u, 4294967295u, u_input.a, 66169u)), vec4<u32>(1u, u_input.b, 1u, global0.x) | vec4<u32>(45131u, u_input.a, global0.x, global0.x)))), select(~(~firstLeadingBit(vec4<u32>(0u, u_input.b, global0.x, 44874u))), firstLeadingBit(vec4<u32>(global0.x, u_input.b, global0.x, 1u)) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0.x, 4294967295u, global0.x, 4294967295u)), vec4<u32>(1u, global0.x, 2776u, global0.x)) % vec4<u32>(32u)), !vec4<bool>(true, true, func_2().e, var_0.x <= -29045i)), true);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-571f, -455f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(731f, 512f) + vec2<f32>(-1262f, -983f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, -184f))))));
    var var_2 = _wgslsmith_mult_u32(global0.x, ~global0.x);
    var_1 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

