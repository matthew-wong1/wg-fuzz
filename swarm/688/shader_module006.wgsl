struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2.a;
    var var_1 = vec4<i32>(-65587i, -2147483647i, u_input.a.x, _wgslsmith_mult_i32(i32(-1i) * -(2147483647i << (var_0.a.x % 32u)), -_wgslsmith_add_i32(firstLeadingBit(u_input.c), u_input.a.x)));
    var var_2 = !(!(!(!vec3<bool>(false, arg_1, arg_1))));
    var_1 = u_input.a;
    let var_3 = Struct_3(var_1.x << (_wgslsmith_clamp_u32(87140u, arg_2.a.a.x, arg_2.a.a.x) % 32u));
    return -23338i;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = ~u_input.b;
    var var_1 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(~(-2147483647i)), u_input.a.x, ~arg_1, 1i), -_wgslsmith_mult_vec4_i32(vec4<i32>(7561i, -1i, 39209i, u_input.c), ~vec4<i32>(8267i, -18720i, 0i, arg_1))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.a, -7668i, 26277i), vec4<i32>(-15058i, var_1.a, var_1.a, 19173i)), 0i), _wgslsmith_mod_i32(51929i, u_input.a.x), 25828i), reverseBits(u_input.a.yyz) | u_input.a.wwy), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(-1i), func_3(-1256f, false, Struct_2(Struct_1(vec4<u32>(27513u, arg_2.a.a.x, arg_0, arg_2.a.a.x)), 68845u))), -10649i));
    var var_3 = Struct_3(~(-2147483647i));
    var var_4 = reverseBits(min(var_3.a, _wgslsmith_mod_i32(43914i, 1i)) >> (~_wgslsmith_mod_u32(~u_input.d.x, 4294967295u) % 32u));
    return Struct_3(2147483647i);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_2(76252u, ~(-_wgslsmith_add_i32(u_input.a.x, ~0i)), Struct_2(Struct_1(vec4<u32>(arg_0.x, arg_3.a.x, 6094u & arg_2.a.x, u_input.b)), _wgslsmith_mod_u32(~4294967295u, ~1u)));
    var var_1 = Struct_2(Struct_1(~(~firstTrailingBit(vec4<u32>(18743u, u_input.b, 4294967295u, 35717u)))), ~arg_2.a.x);
    let var_2 = any(vec4<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) != true, false));
    let var_3 = ~arg_2.a;
    var var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(6992u, u_input.d.x, u_input.b, 0u), vec4<u32>(~1u, 0u, ~1u, 17606u))), u_input.b);
    let var_1 = func_1(vec3<u32>(59377u, 31531u, var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, -1515f, 522f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(720f, -1000f, 1023f) - vec3<f32>(1037f, 614f, 862f)))))), var_0.a, Struct_1(vec4<u32>(~var_0.a.a.x ^ 1u, u_input.b, ~(~var_0.b), u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.a, 1i, ~0i, u_input.a.x));
}

