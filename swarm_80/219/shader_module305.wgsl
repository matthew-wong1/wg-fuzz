struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec3<bool> {
    var var_0 = 69715i;
    var_0 = _wgslsmith_add_i32(firstLeadingBit(1i), u_input.b.x) ^ ~abs(2147483647i);
    var_0 = global1.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-551f, -2462f), global1.d.b))), global1.b.b, select(vec2<bool>(true, global1.d.d.x), select(global1.d.d, vec2<bool>(global1.b.d.x, global1.d.d.x), global1.b.d.x), !global1.b.d)))), vec2<f32>(_wgslsmith_f_op_f32(-1219f + global1.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1768f * _wgslsmith_f_op_f32(round(-401f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1545f))))), ~0u, !vec2<bool>(global1.d.d.x, global1.d.d.x));
    var_0 = u_input.b.x;
    return vec3<bool>(any(!vec2<bool>(true, all(vec3<bool>(false, var_1.d.x, global1.d.d.x)))), !(!global1.d.d.x), true);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = abs(~select(global1.b.c, 4294967295u, true)) << (u_input.a % 32u);
    global1 = Struct_2(_wgslsmith_add_vec4_i32(~(u_input.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(8787u, global1.d.c, 1u, u_input.d), vec4<u32>(4294967295u, global1.d.c, global1.b.c, global1.d.c)) % vec4<u32>(32u))), select(reverseBits(_wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(-21563i, 1i, -1i, -1i))), vec4<i32>(_wgslsmith_mod_i32(-1i, global1.e), firstLeadingBit(5647i), global0.x, 1i), any(arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.b.x, global1.b.b.x))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-623f)), -366f)), global1.d.b, global1.d.c, !func_2().xy), ~global1.c, Struct_1(global1.b.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.d.b.x, -877f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b.x, 3533f)) - _wgslsmith_div_vec2_f32(vec2<f32>(429f, global1.d.b.x), global1.b.a)))), u_input.c.x, arg_0.zx), 17901i >> (global1.d.c % 32u));
    var_0 = 74459u;
    var var_1 = !(!select(select(arg_0.yz, vec2<bool>(true, true), !arg_0.x), vec2<bool>(true, all(arg_0.yy)), !select(arg_0.x, global1.d.d.x, arg_0.x)));
    let var_2 = 1i;
    return all(func_2().xy);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<i32> {
    global1 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -556f)))))), _wgslsmith_f_op_vec2_f32(arg_2.a * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.b.x, -2727f))), _wgslsmith_f_op_vec2_f32(-arg_2.b)))), firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(global1.d.c, global1.d.c))) << (countOneBits(~arg_2.c) % 32u), !(!arg_2.d)), -abs(firstLeadingBit(vec3<i32>(arg_1, arg_1, -1i))), global1.d, _wgslsmith_clamp_i32(-8207i, max(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, -618i, -2147483647i, arg_1), firstLeadingBit(vec4<i32>(2147483647i, u_input.e.x, 22595i, global0.x))), global1.a.x), -19563i));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.b.b))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a - arg_2.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.b.x, arg_2.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-392f, arg_2.a.x), arg_2.b)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2025f - global1.d.a.x), _wgslsmith_f_op_f32(exp2(global1.b.b.x)))), _wgslsmith_f_op_f32(sign(-1312f))))), ~(0u & ~(~global1.d.c)), !func_2().yz);
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, global1.c.x, abs(-global1.a.x), arg_1), abs(vec4<i32>(~u_input.e.x, -47148i, -countOneBits(0i), select(~2147483647i, 1i, true))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(ceil(1860f))), -609f) + var_0.b), var_0.a, arg_3.x, global1.d.d);
    global0 = ~global1.a;
    return -(~vec4<i32>(-1i | u_input.b.x, _wgslsmith_dot_vec3_i32(global1.c, global1.a.wwz), global1.a.x, global0.x)) >> (~reverseBits(arg_3) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global0 = global1.a;
    var var_0 = arg_0.b.d.x;
    global0 = select(func_4(select(vec3<bool>(true, true, true), func_2(), select(arg_1.d.x, arg_0.b.d.x, func_3(vec4<bool>(true, true, true, true)))), _wgslsmith_add_i32(min(global1.c.x, _wgslsmith_mult_i32(u_input.e.x, u_input.e.x)), reverseBits(_wgslsmith_sub_i32(u_input.e.x, global1.e))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.b.b), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1372f, arg_1.a.x), arg_1.b)), select(vec2<bool>(false, arg_3), global1.b.d, vec2<bool>(false, global1.d.d.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(642f, -1676f) * arg_2.a))), 1u, !(!arg_0.b.d)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(31237u, 4294967295u, global1.b.c, u_input.d), vec4<u32>(7491u, 38101u, 1u, arg_0.b.c)) ^ min(vec4<u32>(4294967295u, 61229u, u_input.d, 0u), vec4<u32>(4826u, arg_1.c, 19086u, u_input.d)), vec4<u32>(abs(arg_2.c), 127301u, ~0u, _wgslsmith_sub_u32(1u, arg_2.c)))), _wgslsmith_sub_vec4_i32(global1.a, -vec4<i32>(0i, ~33764i, 1i, _wgslsmith_clamp_i32(-1i, global1.a.x, arg_0.c.x))), select(vec4<bool>(false, true, true, select(true, false, true)), vec4<bool>(all(vec3<bool>(global1.d.d.x, false, global1.d.d.x)) | true, true, arg_0.d.d.x, global1.d.d.x), select(select(!vec4<bool>(true, true, arg_2.d.x, arg_1.d.x), vec4<bool>(true, arg_1.d.x, arg_3, false), !vec4<bool>(arg_2.d.x, global1.b.d.x, false, true)), vec4<bool>(true & arg_1.d.x, true, arg_1.d.x, true), all(!arg_2.d))));
    global0 = -vec4<i32>(1i >> (abs(global1.b.c) % 32u), -(select(1i, -2147483647i, global1.b.d.x) << (~arg_1.c % 32u)), ~(i32(-1i) * -global1.e), u_input.e.x);
    var_0 = global1.d.d.x;
    return Struct_2(-(~u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.b * vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.d.a.x, -343f)), -204f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(958f, arg_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_2.b.x) + vec2<f32>(113f, 2035f)))), ~global1.d.c, arg_1.d), ~vec3<i32>(~(-2147483647i << (0u % 32u)), _wgslsmith_mod_i32(global0.x, global1.c.x), u_input.b.x & 15782i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_0.b.b.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2068f)))), arg_1.a.x), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.c, global1.b.c, 8901u, global1.d.c), vec4<u32>(u_input.c.x, 0u, 42511u, arg_2.c)), firstTrailingBit(vec4<u32>(arg_2.c, 59310u, 66610u, arg_1.c)), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0.b.d.x, true, arg_1.d.x, true), vec4<bool>(arg_0.d.d.x, false, arg_0.b.d.x, arg_3))), vec4<u32>(~u_input.a, reverseBits(1u), 0u, ~1u)), global1.d.d), u_input.e.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<f32> {
    let var_0 = vec3<bool>(!arg_1.d.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(331f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.b.x + arg_0.b.b.x))), any(select(vec2<bool>(true, arg_0.b.d.x || global1.d.d.x), vec2<bool>(true, true), vec2<bool>(false, true))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-642f, 567f, arg_1.a.x, -1000f), vec4<f32>(arg_0.b.b.x, global1.d.a.x, -332f, -866f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1299f, global1.b.b.x, 1512f, arg_1.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(arg_1.a.x, -659f)))), _wgslsmith_f_op_f32(-1309f * -974f), global1.d.b.x, global1.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.b.x))) * global1.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_2(global1.a, Struct_1(vec2<f32>(-1140f, -831f), global1.b.a, 39811u, global1.d.d), vec3<i32>(41150i, global1.c.x, u_input.b.x), global1.b, -1i), global1.d, Struct_1(vec2<f32>(-184f, 1546f), vec2<f32>(703f, -667f), 1u, vec2<bool>(global1.d.d.x, global1.d.d.x)), global1.d.d.x), global1.d, vec4<u32>(u_input.a, 4294967295u, u_input.a, global1.d.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.b.x, global1.d.a.x, global1.d.a.x, var_0) * vec4<f32>(505f, -645f, var_0, 589f))))), u_input.c.x);
}

