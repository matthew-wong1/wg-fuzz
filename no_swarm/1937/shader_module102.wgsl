struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec4<bool> {
    return !(!select(vec4<bool>(select(true, true, false), true, true, select(true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true));
}

fn func_1() -> bool {
    let var_0 = firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 1u, 0u), vec4<u32>(62967u, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, 1u, 11872u, 2486u) % vec4<u32>(32u)))));
    global0 = 4294967295u;
    let var_1 = vec2<bool>(true, !any(!func_2()));
    global0 = 0u;
    let var_2 = Struct_3(true | all(var_1));
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_3(false);
    global0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, -328f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_2.c) - vec2<f32>(-912f, -573f)), vec2<bool>(true, true)))), vec2<f32>(arg_2.a, arg_2.c))) * vec2<f32>(-466f, _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c), 156f)))));
    let var_2 = arg_2;
    let var_3 = max(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 18141i, u_input.a.x, u_input.a.x)), vec4<i32>(-1i, 1i, u_input.a.x, -30956i)), firstLeadingBit(-vec4<i32>(5903i, -2147483647i, -1i, 14889i))), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(1i, -11498i), -2147483647i, -10630i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_2.e.x, 4294967295u), ~0u, min(1u, arg_1.b), countOneBits(u_input.b.x)) >> (~arg_2.e % vec4<u32>(32u)), arg_2.e, vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.e.zxy, ~u_input.b), _wgslsmith_div_u32(~31166u, var_2.b.x | 50804u), 33858u, _wgslsmith_add_u32(22450u, u_input.b.x))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) + _wgslsmith_f_op_f32(min(-1872f, -606f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * arg_2.c)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = ~abs(abs(~firstTrailingBit(1u)));
    global0 = max(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(1u, u_input.b.x) | min(u_input.b.xy, vec2<u32>(u_input.b.x, 5015u))) ^ 1u);
    var var_0 = Struct_3(all(arg_0));
    global0 = u_input.b.x;
    let var_1 = Struct_2(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -875f))), abs(countOneBits(u_input.b.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1094f) - 2106f))), false, min(vec4<u32>(select(0u, u_input.b.x & 4294967295u, false), 36440u, 0u, ~(u_input.b.x >> (53538u % 32u))), ((vec4<u32>(1u, 13875u, u_input.b.x, 1u) & vec4<u32>(u_input.b.x, 1u, 32456u, 4294967295u)) | abs(vec4<u32>(u_input.b.x, 73890u, u_input.b.x, u_input.b.x))) | vec4<u32>(u_input.b.x, 27711u, ~u_input.b.x, u_input.b.x)));
    return Struct_1(true | (_wgslsmith_div_i32(abs(u_input.a.x), u_input.a.x ^ 59410i) == -7282i), max(~reverseBits(1u), u_input.b.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_clamp_u32(11252u, 4294967295u, 4294967295u);
    let var_0 = Struct_3(all(!func_2().zy));
    global0 = 37474u;
    var var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f + -925f))))), u_input.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f))), true, arg_0);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~min(_wgslsmith_clamp_u32(1u, ~17644u, 4294967295u >> (1u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 37975u, u_input.b.x), u_input.b), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u))));
    var var_1 = func_5(vec4<u32>(1u, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(39573u, 0u, u_input.b.x), u_input.b)), (u_input.b.x << (_wgslsmith_clamp_u32(u_input.b.x, 51253u, 0u) % 32u)) & firstLeadingBit(~18247u), 5610u), func_4(!vec3<bool>(func_1(), var_0.a || true, true | var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_1(var_0.a, u_input.b.x), Struct_2(600f, u_input.b.xz, 333f, var_0.a, vec4<u32>(u_input.b.x, var_0.b, var_0.b, 4294967295u)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-283f, -1745f, var_0.a)) + 1f)), all(select(!vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(false, false, var_0.a), vec3<bool>(true, var_0.a, var_0.a)))));
    var var_2 = Struct_2(589f, u_input.b.zy, 2130f, any(!(!vec2<bool>(var_0.a, true))) || (!(var_0.a || var_0.a) | (true | any(vec3<bool>(var_1.a, false, var_0.a)))), abs(~(vec4<u32>(var_0.b, 57521u, var_0.b, 20259u) << ((vec4<u32>(4294967295u, u_input.b.x, 85052u, u_input.b.x) | vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))));
    global0 = 4294967295u;
    var_0 = Struct_1(var_2.b.x < _wgslsmith_sub_u32(4294967295u, var_0.b), abs(_wgslsmith_div_u32(0u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, var_2.c, var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * 142f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a, var_2.a, 692f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, 1951f, var_2.c) + vec3<f32>(var_2.a, var_2.a, var_2.c)))))));
}

