struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = (vec3<i32>(63375i, -16431i, -50678i | arg_3.b.x) >> (vec3<u32>(14628u, 85763u, firstLeadingBit(select(arg_1.c, 0u, arg_1.b.x))) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-reverseBits(vec3<i32>(-1i, 1i, arg_3.b.x)), vec3<i32>(firstTrailingBit(-51000i), 1i, _wgslsmith_sub_i32(arg_3.b.x, -37526i))), ~(-select(arg_3.b.yww, arg_3.b.wzy, vec3<bool>(arg_1.b.x, arg_3.a.x, true))), arg_3.b.yxz);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.d.x, arg_3.d.x)) * _wgslsmith_f_op_f32(-arg_3.d.x)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.d.x)), _wgslsmith_div_f32(-954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1120f, -525f)))));
    var var_1 = true;
    var var_2 = arg_3.b.x;
    let var_3 = ~(~0i);
    return firstLeadingBit(var_3);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    global0 = (arg_2.b.wyz ^ arg_2.b.xwz) << (arg_2.c % vec3<u32>(32u));
    let var_0 = firstTrailingBit(global0.x);
    global0 = -vec3<i32>(~(global0.x >> (_wgslsmith_div_u32(u_input.a, 0u) % 32u)), -6237i, -global0.x);
    let var_1 = false;
    let var_2 = _wgslsmith_div_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(arg_2.b.x, max(var_0, arg_0)), 1i, -(~(-22448i)), func_3(vec4<u32>(u_input.a, 51665u, arg_1.c, 1u) ^ vec4<u32>(35510u, 69889u, arg_2.c.x, arg_2.c.x), Struct_2(42567u, vec3<bool>(true, true, true), 19745u), u_input.a & 23523u, Struct_1(arg_2.a, arg_2.b, arg_2.c, vec4<f32>(arg_2.d.x, 755f, 1106f, arg_2.d.x)))), reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, 0i, 2147483647i, var_0), arg_2.b, vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_2.a.x)), select(arg_2.b, vec4<i32>(-1i, var_0, arg_2.b.x, 0i), vec4<bool>(true, var_1, arg_2.a.x, false))))), abs(~min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, 18258i, 1i), arg_2.b), -arg_2.b)));
    return global0.zx;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.xz, vec2<i32>(arg_1.x, global0.x)), firstTrailingBit(reverseBits(func_2(arg_1.x, arg_0, Struct_1(arg_0.b.xz, vec4<i32>(global0.x, arg_1.x, -2147483647i, global0.x), vec3<u32>(arg_0.a, 1u, 27432u), vec4<f32>(2419f, 1203f, 590f, 1127f))) | -arg_1.yx)));
    global0 = ~(-firstTrailingBit(arg_1) >> (_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(0u, 1u, 15552u)), vec3<u32>(~53877u, arg_0.a, _wgslsmith_div_u32(u_input.a, 0u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(select(vec2<bool>(true, false), !vec2<bool>(arg_0.b.x, any(arg_0.b.xz)), vec2<bool>(true, arg_0.b.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 0i, arg_1.x, -29214i) ^ vec4<i32>(-1i, 0i, var_0.x, -1i), vec4<i32>(global0.x, 1i, -29133i, var_0.x), arg_0.b.x), select(firstLeadingBit(vec4<i32>(var_0.x, -1i, var_0.x, arg_1.x)), -vec4<i32>(2147483647i, var_0.x, global0.x, var_0.x), true)), countOneBits(~vec4<i32>(global0.x, -20290i, -73846i, global0.x) & vec4<i32>(var_0.x, 2147483647i, 20713i, global0.x))), vec3<u32>(abs(1u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(~arg_0.a, arg_0.a)), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1998f, 1152f), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(min(-547f, 912f)), -628f) * vec4<f32>(_wgslsmith_f_op_f32(abs(-387f)), 1f, _wgslsmith_f_op_f32(step(-246f, 1051f)), _wgslsmith_f_op_f32(min(-1180f, 1000f))))));
    let var_2 = global0.x;
    var var_3 = abs(2147483647i);
    return 28242u;
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x) ^ vec4<i32>(3381i, global0.x, -1i, global0.x), vec4<i32>(global0.x, global0.x, 61723i, -1i) << (vec4<u32>(0u, u_input.a, u_input.a, 120u) % vec4<u32>(32u)))), vec4<i32>(global0.x, -45942i, global0.x, countOneBits(abs(global0.x))));
    let var_1 = !select(!arg_0.b.yx, !arg_0.b.zy, select(select(!arg_0.b.zz, !arg_0.b.xx, vec2<bool>(arg_0.b.x, arg_0.b.x)), select(!arg_0.b.xz, arg_0.b.zx, select(vec2<bool>(arg_0.b.x, false), arg_0.b.yx, arg_0.b.xy)), all(select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), arg_0.b.x))));
    let var_2 = _wgslsmith_sub_i32(~_wgslsmith_mult_i32(~reverseBits(global0.x), max(2147483647i, 0i)), 5726i);
    global0 = vec3<i32>(_wgslsmith_mult_i32(countOneBits(reverseBits(func_2(-5326i, arg_0, Struct_1(vec2<bool>(arg_0.b.x, true), vec4<i32>(20041i, -22624i, 35066i, 1i), vec3<u32>(arg_0.c, arg_0.a, arg_0.a), vec4<f32>(-1030f, -1100f, 1058f, -1753f))).x)), _wgslsmith_clamp_i32(-2147483647i, -var_0.x, -34015i) >> (4294967295u % 32u)), global0.x, (~global0.x ^ -var_0.x) ^ global0.x);
    var var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 1i, countOneBits(global0.x), var_2), vec4<i32>(_wgslsmith_div_i32(0i, var_2), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2, var_0.x, var_0.x), vec4<i32>(var_0.x, -1i, var_0.x, -1i)), var_2)) & _wgslsmith_add_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 32253i, var_2, var_0.x), vec4<i32>(var_0.x, var_2, 18029i, var_2)), ~vec4<i32>(52131i, var_0.x, 44842i, var_2)), vec4<i32>(var_0.x, var_2, var_2, var_2)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, -13485i, 2147483647i, global0.x), vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, var_2, var_2)));
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(~var_0.yx, firstTrailingBit(_wgslsmith_mult_vec2_i32(var_3.yy, global0.zy)))), min(global0.x, -(~reverseBits(-8799i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(vec3<i32>(3467i, global0.x, _wgslsmith_mult_i32((global0.x ^ global0.x) << (1070u % 32u), global0.x << (u_input.a % 32u))));
    let var_0 = 0u;
    global0 = vec3<i32>(func_4(Struct_2(firstLeadingBit(func_1(Struct_2(u_input.a, vec3<bool>(false, true, false), 4294967295u), vec3<i32>(19431i, global0.x, global0.x))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), func_1(Struct_2(26662u, vec3<bool>(false, true, false), 1u), ~vec3<i32>(global0.x, global0.x, global0.x)))), _wgslsmith_mod_i32(global0.x, global0.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 0i, global0.x), firstLeadingBit(vec3<i32>(global0.x, global0.x, 16032i)))), select(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, -2147483647i))), max(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(1i, 1i, global0.x)), abs(vec3<i32>(24150i, -2147483647i, global0.x))), false)));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-global0.x, 1i), -17869i), vec2<i32>(-global0.x, -32840i)), -global0.x, -1i, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, global0.x), firstTrailingBit(~_wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(global0.x, global0.x)))));
    var var_2 = vec2<u32>(~(~func_1(Struct_2(1u, vec3<bool>(true, false, true), var_0), vec3<i32>(2147483647i, 0i, var_1.x))), max(u_input.a, var_0) << (~(~firstTrailingBit(u_input.a)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(-36602i, 30818i), 61388i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(674f + _wgslsmith_div_f32(578f, 301f))))), var_1.wyx);
}

