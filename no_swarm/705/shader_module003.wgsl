struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = u_input.b.zyw;
    global0 = _wgslsmith_dot_vec4_i32(abs(~reverseBits(vec4<i32>(0i, 1i, -19444i, 1i))), -_wgslsmith_add_vec4_i32(~vec4<i32>(11477i, 9873i, u_input.a.x, 13792i), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)))) >> (~(~firstTrailingBit(35353u)) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f + -581f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1484f)), 161f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -699f) - _wgslsmith_f_op_f32(trunc(-562f))))));
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + -163f), _wgslsmith_f_op_f32(836f * var_1.x)))), var_1.x, _wgslsmith_f_op_f32(-1516f + var_1.x)), vec3<bool>(true, var_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2228f + 1000f) + _wgslsmith_f_op_f32(-var_1.x)), var_1.x <= 1052f), -1285f);
    return var_2;
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: u32) -> vec2<i32> {
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(-2147483647i), _wgslsmith_div_i32(50050i, u_input.a.x) << (_wgslsmith_sub_u32(u_input.b.x, 14893u) % 32u)), max(u_input.a.zy, u_input.a.xy << (firstTrailingBit(vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec2<i32>(arg_2, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-27948i, arg_2, arg_1, 24356i), vec4<i32>(arg_2, arg_2, 0i, arg_1)), vec4<i32>(arg_1, 48620i, arg_1, 1i)))));
    global0 = u_input.a.x;
    var var_1 = all(arg_0.b) || any(vec4<bool>(!select(false, arg_0.b.x, true), true, arg_0.b.x, arg_0.b.x));
    global0 = -2147483647i;
    var_1 = arg_0.b.x;
    return vec2<i32>(arg_1, -2147483647i) & vec2<i32>(~_wgslsmith_sub_i32(arg_1, _wgslsmith_add_i32(-2147483647i, 27766i)), arg_2);
}

fn func_1() -> vec2<u32> {
    global0 = 6002i;
    let var_0 = firstLeadingBit(abs(reverseBits(func_3(func_2(u_input.b.x), u_input.a.x >> (u_input.b.x % 32u), ~(-1i), _wgslsmith_mult_u32(u_input.b.x, 0u)))));
    var var_1 = Struct_4(vec3<f32>(-494f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f), -2366f), -540f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-605f * 720f))))), func_2(77681u).b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, 783f) + _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 34753i, var_0.x, u_input.a.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.a.x)), u_input.a.x, 1i, 2147483647i), vec4<i32>(var_0.x, u_input.a.x >> (u_input.b.x % 32u), -9166i, var_0.x)), -firstTrailingBit(select(vec4<i32>(u_input.a.x, -1113i, u_input.a.x, 1i), vec4<i32>(var_0.x, u_input.a.x, var_0.x, var_0.x), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)))), 2147483647i);
    var var_3 = Struct_4(var_1.a, func_2(select(54507u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 13139u, 1u), vec4<u32>(4294967295u, 1u, 46273u, 22631u)), u_input.b), var_1.b.x)).b, -566f);
    return u_input.b.wz << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(_wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.b.xx) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))) | ~(~u_input.b.wz);
    global0 = 9756i;
    var var_1 = ~u_input.a;
    var_0 = func_1();
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-110f, -1315f, -2189f), vec3<f32>(-324f, 866f, -543f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-594f, -343f, -1928f)))))), select(!func_2(~u_input.b.x).b, select(vec3<bool>(u_input.a.x <= var_1.x, select(false, false, true), all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, func_2(var_0.x).b.x, false)), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), func_2(~u_input.b.x).b, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2238f)), 198f, func_2(43809u).b.x))) - -280f));
    global0 = 14863i;
    global0 = firstLeadingBit(select(u_input.a.x, u_input.a.x, -max(u_input.a.x, u_input.a.x) >= u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x ^ ~u_input.a.x), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(f32(-1f) * -368f)), func_2(0u).a.x)), _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * 381f))), true)), vec4<i32>(-11547i, max(_wgslsmith_sub_i32(-1i, -24538i) << (1u % 32u), -46061i), u_input.a.x, reverseBits(func_3(Struct_4(vec3<f32>(var_3, var_2.a.x, var_2.a.x), vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), -1246f), var_1.x, 40152i, 45114u).x | ~(-11028i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1259f, 195f), vec2<f32>(206f, 1721f)) * var_2.a.yz))))));
}

