struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    global0 = select(!(!(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(false, global0.x)))), vec2<bool>(false, all(vec4<bool>(select(false, false, false), global0.x, global0.x == true, !arg_1))), true);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -108f) - vec4<f32>(-405f, arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a))) + _wgslsmith_f_op_vec4_f32(exp2(arg_0.a)))), -max(vec4<i32>(arg_0.b.x, arg_0.b.x, 141i >> (u_input.a % 32u), firstTrailingBit(u_input.b)), reverseBits(_wgslsmith_div_vec4_i32(arg_0.b, arg_0.b))));
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.b.x, -2147483647i)), vec2<i32>(1i, arg_0.b.x)), -22890i), 0i), -704i);
    var_1 = ~(u_input.d.xx & ~u_input.c.yz);
    var_1 = _wgslsmith_add_vec2_i32(select(firstTrailingBit(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(var_0.b.x, 6259i))), var_0.b.xx, false), var_0.b.zw);
    return select(vec3<bool>(!global0.x || true, global0.x, 57207u <= u_input.a), select(vec3<bool>(global0.x & true, all(select(vec4<bool>(true, arg_1, arg_1, global0.x), vec4<bool>(true, global0.x, arg_1, false), vec4<bool>(global0.x, true, global0.x, false))), select(select(global0.x, true, global0.x), u_input.b == arg_0.b.x, global0.x)), vec3<bool>(global0.x, all(select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(global0.x, true))), select(select(true, global0.x, global0.x), !arg_1, !global0.x)), true), select(vec3<bool>(-1308f < _wgslsmith_f_op_f32(step(-119f, 160f)), all(select(vec3<bool>(false, arg_1, false), vec3<bool>(true, global0.x, arg_1), vec3<bool>(true, true, true))), true), vec3<bool>(any(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(arg_1, arg_1, true, global0.x), arg_1)), arg_1 & (u_input.a <= 1u), any(!vec2<bool>(arg_1, true))), global0.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    let var_0 = func_3(Struct_1(arg_0.a.a, -vec4<i32>(-u_input.b, abs(arg_0.a.b.x), max(arg_0.a.b.x, arg_0.c.x), 1i)), true);
    var var_1 = vec4<u32>(~(u_input.a & reverseBits(~u_input.a)), u_input.a, ~_wgslsmith_dot_vec3_u32(max(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 0u), vec3<bool>(var_0.x, global0.x, false)), ~vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 70644u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), ~vec3<u32>(77342u, 16980u, 4294967295u))), ~(~52836u));
    return reverseBits(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, abs(0u), var_1.x, ~u_input.a), countOneBits(reverseBits(vec4<u32>(1u, 93887u, 0u, 0u)))), firstLeadingBit(vec4<u32>(firstTrailingBit(u_input.a), ~var_1.x, _wgslsmith_add_u32(8087u, 1u), ~57072u)), all(vec2<bool>(false, any(vec2<bool>(global0.x, var_0.x))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~func_2(Struct_2(Struct_1(vec4<f32>(633f, 1252f, 605f, -205f), vec4<i32>(2147483647i, arg_0, -17202i, arg_0)), -571f, vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-1000f * -1160f)));
    let var_1 = select(~(~vec4<u32>(9349u, var_0.x, 0u, u_input.a) | vec4<u32>(_wgslsmith_mod_u32(u_input.a, var_0.x), var_0.x, ~24531u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x & var_0.x, ~22698u, u_input.a ^ var_0.x, ~u_input.a), (vec4<u32>(var_0.x, 4294967295u, 2524u, u_input.a) | vec4<u32>(24073u, var_0.x, u_input.a, 48236u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 21616u, u_input.a, 37684u), vec4<u32>(1u, var_0.x, 15737u, var_0.x))) << (~vec4<u32>(abs(0u), ~var_0.x, 4043u, 0u) % vec4<u32>(32u)), false);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(275f, 597f, -608f, -656f) * vec4<f32>(-1912f, 567f, -329f, 1311f))), abs(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, -1i, u_input.c.x, -46275i)), firstTrailingBit(vec4<i32>(1i, arg_0, u_input.b, -1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-443f)), _wgslsmith_f_op_f32(-228f + 157f)))), _wgslsmith_mod_vec2_i32(u_input.c.xx, -u_input.d.yz));
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1931f + 1f), var_2.b, var_2.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b, var_2.a.a.x), _wgslsmith_f_op_f32(var_2.a.a.x + -285f), global0.x))), (reverseBits(var_2.a.b) & _wgslsmith_mod_vec4_i32(vec4<i32>(-10037i, -32530i, 99337i, u_input.c.x), var_2.a.b)) >> (abs(vec4<u32>(var_0.x, u_input.a, var_1.x, var_1.x)) % vec4<u32>(32u))), var_2.b, vec2<i32>(var_2.a.b.x, -_wgslsmith_clamp_i32(0i, -2147483647i, arg_0)) & _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_mod_vec2_i32(u_input.c.zx, ~vec2<i32>(arg_0, arg_0))));
    let var_4 = var_2.a.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1262f, 737f, 417f, var_4.x) * var_4), vec4<f32>(var_4.x, -573f, -700f, -125f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_4)))), -_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, var_3.c.x, 1774i, 26300i), _wgslsmith_div_vec4_i32(var_3.a.b, vec4<i32>(2147483647i, var_2.c.x, -1i, u_input.d.x)) | (var_3.a.b << (vec4<u32>(1u, 0u, u_input.a, 29070u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c | _wgslsmith_add_vec3_i32(~vec3<i32>(min(u_input.d.x, 1i), 0i, _wgslsmith_div_i32(u_input.b, u_input.c.x)), u_input.d);
    var var_1 = func_1(_wgslsmith_dot_vec3_i32(u_input.c, u_input.d) >> (u_input.a % 32u));
    global0 = select(vec2<bool>(true, true), !vec2<bool>(global0.x, _wgslsmith_mult_u32(74967u, u_input.a) <= ~1u), any(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), false), select(vec2<bool>(true, false), vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, true))) & true);
    var var_2 = Struct_1(var_1.a, -(~var_1.b));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1783f, 1930f)), var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(1489f - var_2.a.x)) - var_2.a)), var_2.b);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), -108f, _wgslsmith_f_op_f32(var_1.a.x - -552f), -781f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, -637f, var_1.a.x, var_2.a.x))), vec4<f32>(595f, -1213f, -1368f, var_2.a.x)), vec4<bool>(func_3(Struct_1(vec4<f32>(var_2.a.x, 406f, var_2.a.x, var_2.a.x), vec4<i32>(2147483647i, -2147483647i, 0i, -1i)), global0.x).x, 724f < var_1.a.x, !global0.x, select(false, true, false)))), vec4<i32>((var_0.x | -2147483647i) ^ _wgslsmith_div_i32(u_input.d.x, -1i), _wgslsmith_sub_i32(-15614i, -u_input.d.x), -u_input.b & firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.x, var_2.b.x, var_0.x, var_2.b.x), var_2.b), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, -1i, var_0.x, -14512i), vec4<i32>(0i, -1614i, var_1.b.x, var_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_2.a.x, var_1.a.x)), _wgslsmith_f_op_f32(exp2(var_2.a.x)))), var_1.b.xz);
    let var_4 = var_3;
    var var_5 = func_1(-1i).a.zx;
    let var_6 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~vec4<u32>(u_input.a, abs(u_input.a), _wgslsmith_mult_u32(1u, 24712u), 11459u)), min(vec4<u32>(reverseBits(u_input.a), func_2(Struct_2(var_3.a, var_4.a.a.x, var_0.zz), 829f).x, 0u, _wgslsmith_add_u32(5622u, 2781u)) | ~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(53793u, 0u, 25043u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 1u)))), reverseBits(vec4<i32>(-1i, i32(-1i) * -1i, 8242i, select(var_2.b.x, reverseBits(var_3.c.x), global0.x))), _wgslsmith_clamp_i32(abs(-2147483647i), ~(var_2.b.x | 1i), var_3.c.x));
}

