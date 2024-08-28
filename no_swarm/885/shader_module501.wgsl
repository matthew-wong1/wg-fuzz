struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(131f - arg_0.x))));
    var var_1 = !(!all(vec2<bool>(any(vec2<bool>(false, true)), any(arg_1.b))));
    var var_2 = 0i;
    let var_3 = arg_2.c;
    var_1 = all(!select(!vec3<bool>(true, arg_1.b.x, false), select(vec3<bool>(arg_1.c.x, arg_2.b.x, arg_1.c.x), !vec3<bool>(arg_2.a, false, true), !arg_2.a), all(!arg_1.b)));
    return arg_2.a;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = any(select(var_0.b.yx, arg_2.zz, !func_3(vec4<f32>(-116f, -877f, -249f, 178f), arg_0, arg_3)));
    var_1 = !(!(~_wgslsmith_add_i32(arg_1, 22448i) >= _wgslsmith_mod_i32(1i, -7245i)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-439f, -2154f)) + _wgslsmith_f_op_f32(1609f - -638f)), _wgslsmith_f_op_f32(abs(-2921f)), 955f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-531f, -1000f, 456f), _wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -429f, -375f) - vec3<f32>(-1000f, -301f, -1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2262f, -422f, -1353f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2068f, 560f, 584f)), true)))));
    return Struct_1(i32(-1i) * -1i);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-643f, 635f, 428f, -607f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-3086f, -868f, 1542f, 908f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(663f)), _wgslsmith_f_op_f32(1000f * 180f), _wgslsmith_f_op_f32(select(-887f, 1633f, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1289f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(715f, -552f, -253f, -1000f), vec4<f32>(346f, 1935f, 116f, 640f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, -316f, -1000f, 536f)))))), true));
    return ~arg_3.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = vec4<i32>(-arg_2.x, _wgslsmith_clamp_i32(-21447i, 2147483647i << (abs(arg_3.x) % 32u), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -2564i), arg_2.yz))), _wgslsmith_clamp_i32(func_4(arg_0, arg_0.b, vec4<i32>(arg_2.x, 50136i, 9763i, arg_2.x) | vec4<i32>(-51669i, 14174i, -47992i, 1i), func_2(Struct_2(false, vec4<bool>(false, true, false, arg_1.x), vec3<bool>(false, arg_0.c.x, false)), -110i, vec3<bool>(arg_0.c.x, arg_0.b.x, true), Struct_3(arg_1.x, vec3<bool>(false, false, true), Struct_1(92914i)))), max(arg_2.x, max(2147483647i, -55140i)), _wgslsmith_mult_i32(arg_2.x, -14210i >> (u_input.b % 32u))) | ~arg_2.x, -2147483647i);
    let var_1 = Struct_1(1i);
    let var_2 = select(vec4<bool>(!(!any(vec4<bool>(false, arg_0.b.x, arg_0.a, arg_0.b.x))), arg_0.a, arg_1.x, !select(true, true, func_3(vec4<f32>(-574f, 1213f, 1499f, 318f), Struct_2(false, vec4<bool>(arg_0.c.x, arg_0.c.x, true, false), arg_0.c), Struct_3(false, vec3<bool>(false, arg_1.x, arg_0.b.x), Struct_1(-34189i))))), arg_0.b, false);
    let var_3 = ~_wgslsmith_sub_u32(countOneBits(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.b);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, -564f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(384f))))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1475f, -2092f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(550f)), _wgslsmith_f_op_f32(491f * -119f))), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1f, _wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_f_op_f32(-var_4.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(246f, var_4.x, var_4.x, -1706f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.x, var_4.x, 2720f, -542f)))))));
}

fn func_5(arg_0: vec4<f32>) -> bool {
    var var_0 = ~((-(vec4<i32>(1i, 7088i, -2147483647i, -1i) << (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(-27186i, -24126i, 2147483647i, -7812i), ~vec4<i32>(-45617i, 25219i, 56486i, 0i))) | vec4<i32>(-2999i, _wgslsmith_clamp_i32(-45877i, 0i, 2147483647i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-32798i, -1i)), vec2<i32>(30140i, -1i)), i32(-1i) * -1i));
    let var_1 = Struct_1(var_0.x);
    let var_2 = Struct_2(true, vec4<bool>(true, true, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, true, false)))), true), select(vec3<bool>(false, true, any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(false, any(vec4<bool>(false, false, false, false)), var_0.x >= var_0.x), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true)));
    var var_3 = Struct_3(true, !select(select(var_2.b.wyx, !var_2.c, vec3<bool>(true, var_2.a, false)), var_2.b.yxw, true), Struct_1(var_0.x));
    var_0 = reverseBits(select(vec4<i32>(var_0.x, func_4(var_2, var_2.b, vec4<i32>(var_3.c.a, -14058i, var_3.c.a, -2147483647i) & vec4<i32>(-1i, var_1.a, -10297i, 2147483647i), var_3.c), reverseBits(-1i), var_1.a), vec4<i32>(~var_3.c.a, var_1.a, _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.c.a, var_1.a), -6315i | var_3.c.a), (0i ^ var_0.x) | ~10843i), vec4<bool>(!(arg_0.x < -1956f), -var_0.x > _wgslsmith_dot_vec4_i32(vec4<i32>(43746i, var_3.c.a, var_3.c.a, 10586i), vec4<i32>(var_1.a, 1260i, 1i, var_1.a)), func_3(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), var_2, Struct_3(false, vec3<bool>(false, var_2.a, false), var_1)), select(1u, 38675u, false) == 13666u)));
    return (var_2.c.x == !func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1317f, arg_0.x, 1262f)), var_2, Struct_3(false, var_3.b, Struct_1(var_3.c.a)))) && (17120u > _wgslsmith_mod_u32(~(u_input.b << (u_input.b % 32u)), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(-19986i, -30206i, 20538i, -2147483647i), vec4<i32>(-3210i, 2147483647i, 5995i, 29102i)), ~(~(-1i))), 1i << (firstTrailingBit(_wgslsmith_div_u32(u_input.b, 33777u)) % 32u), ~(-2147483647i));
    var var_1 = Struct_1(~(~var_0.x));
    var var_2 = true || !func_5(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(false, vec4<bool>(false, false, false, false), vec3<bool>(false, false, false)), vec2<bool>(true, true), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, 65335i), var_0), ~u_input.a.yy)));
    let var_3 = Struct_2(1f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -653f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-345f)) * _wgslsmith_f_op_f32(step(737f, 671f))))), vec4<bool>(true, true, true, true), !vec3<bool>(true, true, all(vec2<bool>(true, true))));
    var var_4 = Struct_2(!func_5(vec4<f32>(-1286f, _wgslsmith_f_op_f32(f32(-1f) * -2092f), _wgslsmith_f_op_vec4_f32(func_1(var_3, var_3.c.xz, var_0, u_input.a.wz)).x, _wgslsmith_f_op_f32(-504f + -632f))), var_3.b, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(1f - -1049f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(var_3, var_4.c.zz, select(var_0, var_0, false), vec2<u32>(0u, 45687u))).x - 250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-604f)), -1135f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1433f, 832f, select(true, var_3.c.x, var_4.b.x)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-1000f))))), ~vec2<u32>(_wgslsmith_sub_u32(8869u, ~u_input.a.x), u_input.a.x), u_input.b, ~var_0.x);
}

