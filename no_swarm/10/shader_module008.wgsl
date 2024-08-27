struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(2957u, 10659u);

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<i32> {
    global0 = arg_0.yy;
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.c.x)), 314f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 300f, 108f, 1000f) * vec4<f32>(arg_1.c.x, var_0.a.x, arg_1.c.x, arg_1.c.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(-1070f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-629f + var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * var_0.a.x))), _wgslsmith_f_op_f32(min(626f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(trunc(arg_1.c.x))));
    global3 = min(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, global0.x), ~45419u), abs(arg_0.zy | arg_1.b.zz)), arg_2) >> (~(vec2<u32>(_wgslsmith_add_u32(global0.x, 1u), _wgslsmith_dot_vec3_u32(arg_1.b.xzw, vec3<u32>(3593u, arg_1.b.x, arg_1.b.x))) & ~firstTrailingBit(vec2<u32>(14745u, 1u))) % vec2<u32>(32u));
    global3 = arg_0.zx;
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-(-3190i << (arg_0.x % 32u)), 3054i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.a, 18132i), countOneBits(vec3<i32>(arg_1.a, arg_1.a, arg_1.a)))), ~(vec4<i32>(-2147483647i, arg_1.a, arg_1.a, arg_1.a) & vec4<i32>(arg_1.a, arg_1.a, -2147483647i, arg_1.a))), select(vec4<i32>(i32(-1i) * -1i, arg_1.a, (-2714i | arg_1.a) | abs(arg_1.a), 9339i << (firstTrailingBit(40358u) % 32u)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a, 2147483647i, arg_1.a, 2579i)), reverseBits(vec4<i32>(-11110i, 7873i, 2147483647i, -2147483647i))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 33297u), vec4<u32>(4294967295u, 56989u, 38287u, global0.x), arg_1.b) % vec4<u32>(32u)), vec4<bool>(any(vec2<bool>(true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), true | any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, false)))));
}

fn func_2() -> vec4<i32> {
    global0 = u_input.b.xx;
    var var_0 = u_input.b.x;
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(min(_wgslsmith_mod_vec4_i32(func_3(u_input.b.xyw, Struct_1(-2957i, vec4<u32>(global0.x, u_input.a, global3.x, 59681u), vec2<f32>(1220f, 2269f)), vec2<u32>(51320u, 19381u)), vec4<i32>(1i, 1i, 1i, 1i)), abs(-vec4<i32>(-54602i, -55637i, -35235i, 1i))), vec4<i32>(1i, 1i, 1i, 1i)), max(~vec4<i32>(-10082i, i32(-1i) * -2147483647i, 1i, _wgslsmith_mult_i32(-49047i, -1i)), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(27564i, 45080i, 1i, -27965i), vec4<i32>(58737i, -12610i, 71960i, -14416i))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !select(!vec4<bool>(all(vec2<bool>(arg_0.x, true)), true, !arg_0.x, arg_0.x), vec4<bool>(!arg_0.x, true, true, arg_0.x || false), vec4<bool>(select(arg_0.x, true, true), all(arg_0) || true, true, !any(vec2<bool>(arg_0.x, false))));
    global0 = vec2<u32>(~1u, 51602u);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(40427u, 17290u, u_input.a, global0.x) % vec4<u32>(32u)), abs(vec4<i32>(1i, 1i, 1i, 1i))), (vec4<i32>(-1i) * -vec4<i32>(-1533i, -24488i, 2147483647i, -1i)) ^ func_2()) << (global0.x % 32u);
    let var_2 = Struct_1(~_wgslsmith_div_i32(41597i, -13047i), firstLeadingBit(vec4<u32>(global3.x, global0.x, 17319u, global3.x)), arg_2.a.yz);
    var var_3 = var_2;
    return arg_2;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global3 = abs(arg_1);
    var var_0 = arg_0 & firstLeadingBit(vec3<i32>(-22149i, 53711i, -2147483647i));
    var var_1 = Struct_2(arg_2.a);
    var var_2 = 1i >> (global0.x % 32u);
    var_1 = func_1(vec3<bool>(true, true, true), vec4<u32>(~firstTrailingBit(arg_1.x), _wgslsmith_mod_u32(select(9350u, 0u, all(vec4<bool>(true, false, false, false))), global3.x), max(~_wgslsmith_mod_u32(global3.x, 1u), max(1u >> (global0.x % 32u), u_input.c)), arg_1.x), arg_2);
    return _wgslsmith_div_f32(1000f, -117f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<i32>(1i, 1i, 1i), vec2<u32>(1u, 8566u), func_1(vec3<bool>(false, false, false), vec4<u32>(1u, global3.x, global3.x, global3.x), Struct_2(vec3<f32>(1239f, -1000f, 579f))), func_1(vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, 46935u, 38103u, 1u), Struct_2(vec3<f32>(464f, 997f, -746f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1662f, -806f))), false, any(vec3<bool>(true, true, true)));
    global3 = select(vec2<u32>(4242u, ~reverseBits(global3.x)), ~_wgslsmith_mod_vec2_u32(u_input.b.yw, u_input.b.wz), vec2<bool>(-2147483647i == ((i32(-1i) * -18720i) << (~global3.x % 32u)), var_0.x || any(var_0.zy)));
    var_0 = select(!select(!vec3<bool>(true, true, var_0.x), select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), var_0.x), select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, true), true)), !vec3<bool>(true, !(var_0.x || true), true), vec3<bool>(true, true, var_0.x));
    let var_1 = select(-max(func_3(vec3<u32>(1u, u_input.b.x, 1u), Struct_1(-2147483647i, vec4<u32>(0u, 22340u, global3.x, 22917u), vec2<f32>(856f, 708f)), vec2<u32>(global3.x, u_input.b.x)).zz, -reverseBits(vec2<i32>(2147483647i, 1i))), -vec2<i32>(23529i, _wgslsmith_dot_vec3_i32(vec3<i32>(-17884i, -26973i, 63878i), firstTrailingBit(vec3<i32>(39360i, 0i, -5048i)))), var_0.x);
    let var_2 = reverseBits(global3.x);
    var var_3 = func_1(vec3<bool>(global3.x <= ~select(u_input.a, global3.x, var_0.x), true && var_0.x, var_0.x), u_input.b, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, 489f, -258f) + vec3<f32>(1951f, -1459f, -306f)), vec3<f32>(-1349f, 530f, -163f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -552f, 1667f)))))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec3_u32(u_input.b.ywx, vec3<u32>(global0.x, global0.x, 1u) | u_input.b.wxw) << (vec3<u32>(~1u, u_input.a & 0u, min(global0.x, global0.x)) % vec3<u32>(32u))) & ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.x, 0u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(global3.x, global3.x, global0.x), u_input.b.zzx), u_input.b.ywy >> (vec3<u32>(0u, u_input.c, 0u) % vec3<u32>(32u))), ~(max(u_input.c | 51240u, u_input.b.x) << (countOneBits(56025u) % 32u)), ~3655u);
}

