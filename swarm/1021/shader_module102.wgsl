struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    var var_0 = arg_2.c;
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.d.x, arg_2.d.x)), _wgslsmith_f_op_f32(select(-485f, -883f, false)), arg_2.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, 334f, -1040f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.d.x, -1444f, 357f))))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(-1399f - 522f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f * arg_2.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - arg_2.d.x))))));
    let var_2 = abs(~vec4<i32>(arg_2.c.d, -u_input.b.x, var_0.d, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 0i), vec2<i32>(-21990i, -8888i), vec2<bool>(false, false)), vec2<i32>(u_input.b.x, -40247i) ^ u_input.b)));
    var_0 = arg_0;
    return ~10537i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(-6520i, _wgslsmith_clamp_i32(1i, 0i, 1i)), firstTrailingBit(-2147483647i), -u_input.b.x, -u_input.b.x)), 0i, vec2<i32>(-func_3(Struct_2(u_input.a, u_input.a.x, 49740u, 0i), Struct_2(u_input.a, 4294967295u, u_input.a.x, u_input.b.x), Struct_3(u_input.a.x, vec4<u32>(u_input.a.x, 35448u, u_input.a.x, 33866u), Struct_2(vec4<u32>(1u, u_input.a.x, 40252u, u_input.a.x), u_input.a.x, 0u, u_input.b.x), vec2<f32>(-912f, -1438f))), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mult_i32(7662i, 11716i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, 5061i)))), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)) + 838f), _wgslsmith_f_op_f32(trunc(1257f))));
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_clamp_u32(u_input.a.x ^ 40756u, _wgslsmith_div_u32(~23939u, 4294967295u), abs(_wgslsmith_div_u32(u_input.a.x, ~(~u_input.a.x))));
    var_1 = ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x);
    var_1 = min(~_wgslsmith_sub_u32(55651u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 1u), ~vec3<u32>(u_input.a.x, 94079u, 10933u))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> i32 {
    var var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(select(-1586f, arg_0, false)), arg_0);
    let var_1 = func_2();
    let var_2 = arg_1.x;
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(44398u, u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_div_u32(u_input.a.x, 0u), 1u), _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, ~0u), u_input.a.x), u_input.b.x);
    var var_4 = Struct_3(countOneBits(16654u), ~vec4<u32>(var_3.b, var_3.a.x, var_3.b, ~min(u_input.a.x, var_3.a.x)), Struct_2(vec4<u32>(~(~1984u), ~(var_3.c >> (4572u % 32u)), 19700u, u_input.a.x), ~max(47294u, abs(var_3.b)), abs(9867u), _wgslsmith_div_i32(-var_1.b, arg_1.x) >> (reverseBits(var_3.c) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(-var_0.x))))));
    return var_4.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_add_i32(-20770i, func_1(_wgslsmith_f_op_f32(-2042f + 790f), vec4<i32>(-_wgslsmith_mult_i32(-18880i, var_0.x), 1i, max(u_input.b.x, -1i), u_input.b.x)));
    var var_2 = abs(u_input.a.xz & (vec2<u32>(31280u | u_input.a.x, reverseBits(u_input.a.x)) ^ u_input.a.zy));
    let var_3 = u_input.a.wzy;
    var var_4 = _wgslsmith_clamp_vec4_u32(~select(u_input.a | u_input.a, vec4<u32>(u_input.a.x, 15784u, 1u, 25238u), true) ^ (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_2.x, 3743u, var_3.x)), vec4<u32>(var_2.x, 1u, u_input.a.x, 0u)) >> (select(vec4<u32>(1u, var_3.x, 1u, var_2.x), u_input.a, vec4<bool>(true, false, false, false)) % vec4<u32>(32u))), vec4<u32>(var_2.x, ~abs(var_3.x), abs(1u), ~u_input.a.x) | u_input.a, ~(~_wgslsmith_mult_vec4_u32(~u_input.a, u_input.a)));
    var_4 = _wgslsmith_mod_vec4_u32(firstLeadingBit(~(~vec4<u32>(u_input.a.x, 4294967295u, var_3.x, 11055u))), firstLeadingBit(~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) & ((u_input.a | ~u_input.a) >> (u_input.a % vec4<u32>(32u))));
    var_4 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x >> (var_4.x % 32u), var_2.x, _wgslsmith_dot_vec2_u32(var_4.wx, vec2<u32>(153816u, u_input.a.x)), 0u), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_2.x, 34167u, 60068u, 1u))), ~(~reverseBits(vec4<u32>(41090u, 0u, var_2.x, 189171u))));
    let var_5 = 4294967295u;
    var_4 = vec4<u32>(~(var_4.x >> (16164u % 32u)) & (var_3.x | var_4.x), min(select(_wgslsmith_mult_u32(~25139u, u_input.a.x ^ 4294967295u), u_input.a.x, false), var_2.x), max(4294967295u, ~(firstLeadingBit(51680u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a.x, var_4.x), vec3<u32>(var_2.x, 52253u, 49782u)) % 32u))), ~33283u);
    let x = u_input.a;
    s_output = StorageBuffer(12351u >> (~4294967295u % 32u), 11363i, var_3);
}

