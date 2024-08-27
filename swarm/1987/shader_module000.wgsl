struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = u_input.d.x;
    let var_1 = arg_0.a.x;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32((u_input.a << (u_input.d.x % 32u)) | -1i, -2147483647i) << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(8457u, u_input.d.x, 83585u) << (1u % 32u), _wgslsmith_div_u32(countOneBits(u_input.d.x), abs(1u)), _wgslsmith_dot_vec2_u32(~u_input.d.zx, u_input.d.xy)) % 32u), abs(reverseBits(~(~20914i))), 0i, ~u_input.a & firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.c), ~u_input.a)));
    var_2 = ~_wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.c, var_2.x, u_input.b, var_2.x)), select(firstLeadingBit(vec4<i32>(-1i, 39371i, var_2.x, 1i)), ~vec4<i32>(u_input.a, var_2.x, u_input.c, 38828i), vec4<bool>(false, false, false, false))) & vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(var_2.yw, vec2<i32>(u_input.b, -34514i)), var_2.x), var_2.x, u_input.b, (var_2.x & u_input.c) >> (select(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 47640u << (u_input.d.x % 32u), true) % 32u));
    let var_3 = Struct_1(arg_1, ~4294967295u, arg_0.a, _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.d.x) ^ ~(~vec4<u32>(u_input.d.x, u_input.d.x, 13179u, 79532u)), ~abs(~vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x))), u_input.d.x);
    return !(~max(~4294967295u, 1u) >= u_input.d.x);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.x)) * arg_3.x), select(_wgslsmith_add_u32(~1u, u_input.d.x), abs(~arg_1), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(max(arg_3, vec2<f32>(-1502f, 2269f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1448f - arg_3.x), -472f, false)))), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f * _wgslsmith_f_op_f32(arg_3.x - -792f)))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 41869u, u_input.d.x, 83171u), vec4<u32>(28030u, 1u, 0u, u_input.d.x), true), firstLeadingBit(vec4<u32>(arg_1, 60209u, u_input.d.x, arg_1))), vec4<u32>(~arg_2, 4294967295u, u_input.d.x, arg_2)), ~min(vec4<u32>(arg_2, 90684u, u_input.d.x, arg_2), countOneBits(vec4<u32>(u_input.d.x, arg_1, 4843u, 1u)))), 1u);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f + var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(var_0.c.x - arg_3.x))), -500f));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(771f, 914f));
    var var_3 = vec3<u32>(~arg_1, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_2), vec2<u32>(1u, 10234u)))), u_input.d.x);
    var var_4 = ~abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.c), -vec2<i32>(-2147483647i, -1341i)));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-198f)), var_1.a.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(abs(~abs(vec3<i32>(-1i, 24871i, 24999i))), _wgslsmith_div_vec3_i32(-(~firstTrailingBit(vec3<i32>(29989i, -35227i, u_input.c))), (vec3<i32>(62582i, 0i, u_input.c) & vec3<i32>(0i, -2147483647i, 1i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, 3215i, 0i), vec3<i32>(arg_3, -2147483647i, arg_3))));
    var var_1 = func_2(((-55583i | u_input.b) ^ -(-1i << (arg_1 % 32u))) < -1i, select(_wgslsmith_div_u32(~(u_input.d.x >> (0u % 32u)), ~u_input.d.x | abs(u_input.d.x)), arg_1, all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true))), u_input.d.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_2), arg_0.zz, vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(981f, arg_2) * vec2<f32>(1000f, 535f)))))));
    var var_2 = ~(~vec3<u32>(u_input.d.x, abs(arg_1), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 55840u, 49536u), vec4<u32>(arg_1, 4294967295u, 4294967295u, u_input.d.x)), arg_1)));
    var var_3 = -(-30712i << (arg_1 % 32u));
    return _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(37000u, 1u, _wgslsmith_clamp_u32(var_2.x, u_input.d.x, 0u)), ~(~u_input.d))), vec3<u32>(~(~(u_input.d.x << (arg_1 % 32u))), ~1u, 34622u << (~_wgslsmith_div_u32(4294967295u, arg_1) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), true));
    let var_1 = Struct_1(1252f, func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(510f, 1090f, 1138f, -289f))), _wgslsmith_mult_u32(1u, 1203u) ^ u_input.d.x, 424f, _wgslsmith_mult_i32(0i << (u_input.d.x % 32u), 50699i)) >> (~_wgslsmith_mod_u32(firstLeadingBit(u_input.d.x), ~u_input.d.x) % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(785f - -979f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 1481f), -531f, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1132f), -298f)))), vec4<u32>(~(~u_input.d.x), u_input.d.x, ~(~(u_input.d.x ^ u_input.d.x)), _wgslsmith_div_u32(~abs(74049u), u_input.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 1u), countOneBits(~(~vec4<u32>(0u, 14123u, u_input.d.x, u_input.d.x)))));
    var var_2 = firstLeadingBit(~u_input.c);
    var_2 = -2147483647i;
    var_2 = select(1i, 12797i, true);
    var_2 = u_input.b;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a ^ firstLeadingBit(u_input.a), _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.c))), -48403i), ~select(var_3.d, var_1.d, true), vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a, -30805i) << (var_1.d % vec4<u32>(32u)), vec4<i32>(~30915i, 18392i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.b, -2147483647i)))), abs(-u_input.a) ^ 1i), reverseBits(vec3<i32>(select(_wgslsmith_div_i32(-26804i, 2147483647i), abs(u_input.c), 1000f >= var_1.a), -countOneBits(-2147483647i), -_wgslsmith_add_i32(u_input.c, u_input.a))));
}

