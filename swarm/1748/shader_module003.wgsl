struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> vec3<bool> {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 18473u, 75u, 1u), vec4<u32>(2386u, 56790u, 0u, arg_2)), vec4<u32>(arg_2, 0u, arg_2, arg_2)), vec4<u32>(arg_2, _wgslsmith_mult_u32(arg_2, arg_2), 40413u ^ arg_2, countOneBits(arg_2))));
    var_0 = vec4<u32>(0u, abs(_wgslsmith_add_u32(4334u, _wgslsmith_mult_u32(arg_2, 1u))), (var_0.x ^ arg_2) ^ 4294967295u, _wgslsmith_mult_u32(var_0.x, ~105114u));
    var var_1 = arg_0;
    var var_2 = select(-vec4<i32>(-13515i, firstTrailingBit(abs(arg_0.a)), u_input.b, countOneBits(1i)), abs(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-65100i, arg_0.a, -12342i, arg_0.a), vec4<i32>(arg_0.a, 5153i, -85132i, var_1.a)), vec4<i32>(35752i, 0i, 19965i, arg_0.a))) & (~vec4<i32>(arg_0.a, var_1.a, 225i, 22398i) & (~vec4<i32>(-7736i, var_1.a, 16009i, var_1.a) | -vec4<i32>(var_1.a, 9110i, var_1.a, u_input.a))), arg_0.b);
    let var_3 = var_1.a;
    return vec3<bool>(871f < var_1.d.x, any(!(!select(vec4<bool>(true, false, var_1.e, false), var_1.b, arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))) != _wgslsmith_f_op_f32(min(var_1.d.x, -1231f)));
}

fn func_2() -> vec3<i32> {
    let var_0 = !select(false, true, true);
    var var_1 = !select(select(!vec3<bool>(true, var_0, false), select(!vec3<bool>(var_0, var_0, false), vec3<bool>(true, false, var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, false, var_0), vec3<bool>(true, true, false))), any(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)))), select(select(!vec3<bool>(var_0, false, var_0), func_3(Struct_2(u_input.a, vec4<bool>(false, false, true, false), true, vec3<f32>(461f, -246f, -1293f), var_0), -1664f, 1u), var_0), !select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), var_0), !vec3<bool>(var_0, true, true)), false);
    let var_2 = ~(~2053u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -2063f, -1454f), vec3<f32>(687f, -940f, -584f), var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1048f, 192f, -504f) * vec3<f32>(-111f, -1786f, -119f))))))), false, u_input.a, true);
    let var_4 = !(!select(vec4<bool>(!var_3.b, var_2 < 0u, any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true))), select(!vec4<bool>(true, false, true, var_3.d), vec4<bool>(var_0, var_3.d, true, false), true), var_3.b));
    return _wgslsmith_add_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(u_input.a, -13707i), 2147483647i, 22600i)), vec3<i32>(_wgslsmith_sub_i32(u_input.b, 47828i ^ var_3.c), firstTrailingBit(12932i), _wgslsmith_div_i32(0i, var_3.c))) >> (~(~(~vec3<u32>(var_2, var_2, var_2))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_1.x;
    let var_1 = 1923f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(527f)) + var_0);
    let var_2 = Struct_1(arg_1.xzx, var_0 <= var_0, 2147483647i, select(arg_0.x, false, arg_0.x));
    let var_3 = arg_3.yx;
    var var_4 = arg_3.zy;
    return countOneBits(var_2.c);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-846f * 1003f), 332f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-926f))), -1039f, 610f));
    var var_1 = firstLeadingBit(vec2<u32>(~(~0u), 90439u >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(132668u, 0u, 751u), vec3<u32>(10009u, 80460u, 4294967295u)) ^ ~1u) % 32u)));
    let var_2 = firstLeadingBit(abs(~vec4<u32>(~4294967295u, 4294967295u, countOneBits(13514u), ~1u)));
    var_1 = var_2.yz;
    var var_3 = func_4(select(!vec3<bool>(false, any(vec2<bool>(true, false)), var_1.x > 13505u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1123f, _wgslsmith_f_op_f32(-1141f * -528f), _wgslsmith_f_op_f32(f32(-1f) * -469f), -616f))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(~0i, u_input.a, -8900i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, -87798i), vec3<i32>(-2147483647i, -10645i, u_input.b)), func_2())), select(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(74056u, var_2.x, 4294967295u)), var_2.yxw), var_2.zyw, (false != func_3(Struct_2(u_input.a, vec4<bool>(false, true, true, false), false, var_0.yxw, true), var_0.x, var_2.x).x) || (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, 0i, u_input.b), vec4<i32>(2147483647i, 0i, -1i, u_input.b)) == ~u_input.b)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(~32071u), _wgslsmith_add_u32(select(~1u, firstLeadingBit(1u), true), 0u)), 10258u, _wgslsmith_clamp_u32(16109u, 1934u, ~func_1()));
    let var_1 = u_input.b;
    var var_2 = -vec2<i32>(-(~0i), -(~54412i));
    var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(min(var_1 ^ var_1, 9461i & u_input.a), var_2.x), abs(-vec2<i32>(-u_input.a, -1i)));
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, func_1(), _wgslsmith_clamp_u32(var_0.x << (1u % 32u), var_0.x ^ 1u, ~4294967295u), ~abs(var_0.x)), ~vec4<u32>(var_0.x << (var_0.x % 32u), ~var_0.x, _wgslsmith_dot_vec2_u32(var_0.yz, var_0.xy), ~var_0.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

