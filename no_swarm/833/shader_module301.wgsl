struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_div_u32(758u, abs(4294967295u)), ~(~u_input.b), firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), reverseBits(vec2<u32>(4294967295u, 1u)))), 1007u) >> (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, u_input.b, reverseBits(1u), u_input.b)), reverseBits(reverseBits(~vec4<u32>(65897u, u_input.b, 1862u, 4294967295u))), vec4<u32>(u_input.b, _wgslsmith_sub_u32(10645u, u_input.b), 0u, _wgslsmith_sub_u32(4294967295u, u_input.b)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 32606u, 56159u, u_input.b), reverseBits(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 45472u) ^ u_input.b, u_input.b), ~1u), firstTrailingBit(1u), abs(2125u), ~u_input.b);
    var_0 = _wgslsmith_add_vec4_u32(~(~func_3(~(-1i), true, u_input.a.wxw)), abs(~vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 36325u, 1u, 4294967295u), vec4<u32>(88707u, 42378u, 47864u, var_0.x)), u_input.b)));
    var var_1 = vec3<bool>(select(any(vec3<bool>(true, true, all(vec2<bool>(true, false)))), !any(vec3<bool>(true, true, true)), false), all(select(vec2<bool>(all(vec2<bool>(true, false)), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), false);
    let var_2 = Struct_5(u_input.a.x);
    var_0 = ~abs(vec4<u32>(~countOneBits(u_input.b), 0u, _wgslsmith_sub_u32(0u, var_0.x), _wgslsmith_add_u32(~u_input.b, _wgslsmith_clamp_u32(u_input.b, var_0.x, 12774u))));
    return Struct_2(Struct_1(var_1.x), vec2<u32>(1u, var_0.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = !vec3<bool>(arg_1.a.a & false, true, arg_1.a.a);
    let var_1 = Struct_1(var_0.x);
    var var_2 = Struct_4(select(vec4<u32>(~(~1u), 0u, _wgslsmith_add_u32(arg_1.b.x, 93827u), ~arg_1.b.x), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.b.x, 107330u, 31945u, arg_1.b.x), vec4<u32>(arg_1.b.x, u_input.b, arg_1.b.x, 16473u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 4294967295u, u_input.b, arg_1.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 1u), vec4<u32>(arg_1.b.x, 18115u, u_input.b, u_input.b), vec4<u32>(u_input.b, 6716u, 4294967295u, arg_1.b.x)))), !any(select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(var_0.x, true, var_1.a, true), false))), firstLeadingBit(arg_0), firstLeadingBit(arg_1.b), arg_1, true);
    var var_3 = var_2.c >> ((var_2.a.yy << (_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.b, arg_1.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), vec2<u32>(68135u, 32543u))), _wgslsmith_mult_vec2_u32(var_2.a.zx, arg_1.b)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_4 = Struct_3(-_wgslsmith_mult_vec2_i32(vec2<i32>(22257i, _wgslsmith_sub_i32(0i, var_2.b)), _wgslsmith_add_vec2_i32(u_input.a.wz, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2440i), vec2<i32>(1i, -1682i)))), !var_2.e, var_2.d.a);
    return reverseBits(arg_1.b);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> bool {
    let var_0 = !(abs(u_input.a.x) > -(~0i)) & arg_2;
    let var_1 = all(vec4<bool>(true, u_input.b == _wgslsmith_mult_u32(min(u_input.b, u_input.b), ~0u), false, false));
    let var_2 = _wgslsmith_dot_vec2_u32(func_4(u_input.a.x, func_2()), ~firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) << (~(~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) << (u_input.b % 32u);
    let var_3 = Struct_5(firstTrailingBit(2147483647i));
    let var_4 = Struct_3(u_input.a.xw, true, Struct_1(arg_2));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var var_1 = Struct_1(select(!select(true, func_1(-650f, vec2<f32>(-1000f, -1284f), true), true), false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = 333f;
    let var_3 = 48647u < (_wgslsmith_add_u32(max(u_input.b, u_input.b), u_input.b) | u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(select(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)), reverseBits(vec4<u32>(0u, u_input.b, 44009u, 4294967295u)), true) | vec4<u32>(firstTrailingBit(12161u), ~13586u, 1u, _wgslsmith_add_u32(u_input.b, u_input.b)), ~(~firstLeadingBit(vec4<u32>(14920u, 15696u, u_input.b, u_input.b))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1851f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(412f, -293f), vec2<f32>(-1000f, -137f), var_3)), var_1.a) || true), _wgslsmith_f_op_f32(222f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2238f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(184f + 133f), _wgslsmith_f_op_f32(min(-1000f, -1609f))))))));
}

