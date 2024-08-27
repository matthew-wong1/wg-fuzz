struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 0u, 41998u);

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 18>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> f32 {
    global3 = Struct_1(vec4<bool>(any(vec3<bool>(all(global1.b.a.ywz), true, global3.a.x)), global3.a.x, global3.a.x, global1.c.x));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = ~(~(~(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, u_input.a)) & (vec3<u32>(global0.x, u_input.a, global0.x) << (vec3<u32>(1u, global0.x, u_input.a) % vec3<u32>(32u))))));
    let var_0 = abs(_wgslsmith_add_i32(global1.a.x << (~(global0.x & 0u) % 32u), -2147483647i));
    global0 = ~firstLeadingBit((~vec3<u32>(118928u, 0u, u_input.a) >> (~vec3<u32>(12553u, 7940u, global0.x) % vec3<u32>(32u))) ^ ~vec3<u32>(76221u, 1u, global0.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    var var_2 = -217f;
    return global1.e;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(max(abs(~2843u), 29619u), 0u, ~global0.x), ~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global0.x, 0u, global0.x)) & vec3<u32>(54448u, global0.x, global0.x), ~vec3<u32>(1u, 34420u, u_input.a) ^ abs(vec3<u32>(0u, 23387u, 0u))), vec3<u32>((abs(61384u) << (u_input.a % 32u)) | ~(global0.x << (0u % 32u)), (~18918u << ((4294967295u >> (u_input.a % 32u)) % 32u)) | _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 13225u)), vec2<u32>(u_input.a, 14948u)), u_input.a));
    var var_0 = max(4294967295u, 4294967295u);
    var var_1 = vec4<u32>(1u, 4558u, global0.x, 4294967295u) >> (vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(global0.x, ~1u)), min(~global0.x, ~select(global0.x, 1u, global3.a.x)), firstTrailingBit(2970u >> (min(u_input.a, 1u) % 32u)), firstTrailingBit(~(u_input.a << (4294967295u % 32u)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(1180f, 360f, -796f), _wgslsmith_div_f32(-753f, 650f), global1.a.x)))));
    global3 = func_2(func_2(Struct_1(!(!global3.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)))), ~(-_wgslsmith_add_i32(-21320i, -14650i))), _wgslsmith_f_op_f32(-631f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(1149f, -1508f, 481f), _wgslsmith_f_op_f32(min(-1000f, 232f)), -5694i << (global0.x % 32u))))), -26475i << (_wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), ~72544u), 27807u) % 32u));
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(364f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(956f, -530f, 1220f), -357f, global1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-937f, -640f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f * -914f) + _wgslsmith_div_f32(-1191f, -896f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(func_1(vec3<f32>(-1216f, -244f, -300f), -638f, global1.a.x)))) * 1081f)));
    let var_1 = (~min(~vec3<u32>(global0.x, u_input.a, 19877u), ~vec3<u32>(20672u, 68978u, 0u)) & ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(global0.x, u_input.a), 13460u)) & vec3<u32>(_wgslsmith_mult_u32(1u, 1u) ^ global0.x, 17614u, 1u);
    global3 = func_2(Struct_1(global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1130f)) * -1000f), _wgslsmith_mult_i32(-33548i, _wgslsmith_mod_i32(max(global1.a.x, _wgslsmith_sub_i32(-2147483647i, global1.a.x)), -global1.a.x | reverseBits(-33702i))));
    var var_2 = var_1.xz;
    var var_3 = vec3<f32>(-1414f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0)))) - _wgslsmith_f_op_f32(func_3()))));
    var_2 = vec2<u32>(_wgslsmith_mod_u32(var_1.x, 13123u ^ (_wgslsmith_mod_u32(var_1.x, 4294967295u) | u_input.a)), abs(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_i32(23033i, global1.a.x) ^ abs(global1.a.x)), global1.a, -1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) * 1411f))), -379f);
}

