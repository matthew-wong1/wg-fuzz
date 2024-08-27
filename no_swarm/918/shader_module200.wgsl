struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    return (firstTrailingBit(select(firstLeadingBit(arg_1.d), arg_0.x, false)) ^ arg_1.d) ^ 1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(~(u_input.b.x | -8379i), 0i, arg_0.x, arg_2.d), vec4<i32>(-2147483647i, -2147483647i, ~arg_2.d, ~arg_2.d));
    var var_1 = ~(~(60299u & _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x | arg_2.a.a, u_input.c.x)));
    var var_2 = Struct_2(arg_2.a, arg_1.x, vec2<f32>(arg_2.c.x, 349f), u_input.a.x);
    var_2 = arg_2;
    var_0 = _wgslsmith_mod_i32(~arg_0.x, func_3(u_input.b, arg_2));
    return Struct_1(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 9463u), ~u_input.c.zx) << (arg_2.b % 32u), firstTrailingBit(~arg_1.x)), ~vec2<i32>(~_wgslsmith_clamp_i32(u_input.a.x, arg_2.a.b.x, u_input.b.x), ~_wgslsmith_div_i32(-20818i, arg_2.a.d)), select(vec3<bool>(false & var_2.a.c.x, false, -1425f <= var_2.c.x), arg_2.a.c, arg_2.a.c), _wgslsmith_add_i32(16532i, select(_wgslsmith_sub_i32(u_input.b.x, reverseBits(u_input.b.x)), countOneBits(max(var_2.d, 1i)), all(var_2.a.c.xy))), u_input.c.zx);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, _wgslsmith_f_op_f32(sign(1242f)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -911f)) + vec4<f32>(-697f, arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), 1000f)))));
    var var_1 = func_2(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 1i, 2147483647i), ~vec4<i32>(-1i, 37088i, -36599i, 70685i)), arg_0.a.b.x, -1i), vec4<u32>(u_input.c.x, arg_0.a.e.x, arg_1, min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, arg_0.b), 55721u, ~arg_1), arg_1)), Struct_2(Struct_1(1u | _wgslsmith_mod_u32(0u, arg_0.a.e.x), vec2<i32>(0i, 38876i), !(!vec3<bool>(arg_0.a.c.x, true, true)), ~(~0i), u_input.c.yz), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) + vec2<f32>(arg_0.c.x, var_0.a.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(912f, var_0.a.x) + vec2<f32>(arg_0.c.x, var_0.a.x)))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(14617i, u_input.a.x)), arg_0.a.d, 0i)));
    var var_2 = Struct_3(arg_0.a, arg_0, func_2(select(countOneBits(-vec3<i32>(-6261i, var_1.d, u_input.b.x)), ~abs(vec3<i32>(-32862i, -52269i, 42628i)), !arg_0.a.c.x | false), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(13071u, 4294967295u, arg_1, 43678u), vec4<u32>(arg_1, 1u, var_1.e.x, arg_0.a.a), vec4<bool>(true, false, true, arg_0.a.c.x)), ~vec4<u32>(u_input.c.x, 0u, u_input.c.x, arg_1)), arg_0));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-372f)) - var_0.a.x);
    var var_4 = -func_2(select(abs(reverseBits(vec3<i32>(0i, -39371i, u_input.b.x))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-24898i, 45079i, u_input.b.x), vec3<i32>(-1i, 38008i, 1i)), vec3<i32>(var_2.c.d, var_2.a.d, 1i)), select(select(var_1.c, vec3<bool>(true, true, true), var_1.c.x), vec3<bool>(true, false, false), var_2.b.a.c.x)), _wgslsmith_add_vec4_u32(max(select(vec4<u32>(52130u, 21480u, arg_0.b, var_1.a), vec4<u32>(arg_0.a.a, 32315u, var_1.a, 74933u), var_2.b.a.c.x), select(vec4<u32>(arg_0.a.a, u_input.c.x, var_2.c.a, u_input.c.x), vec4<u32>(32702u, arg_0.b, 29033u, 1u), true)), ~vec4<u32>(31233u, arg_0.a.e.x, arg_1, 33486u)), arg_0).b;
    return vec2<u32>(4294967295u, arg_1);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    let var_0 = vec3<u32>(u_input.c.x, _wgslsmith_div_u32(countOneBits(u_input.c.x), u_input.c.x), u_input.c.x);
    var var_1 = arg_0;
    let var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 3058u >> (_wgslsmith_add_u32(u_input.c.x, 19961u) % 32u)), func_4(Struct_2(func_2(vec3<i32>(-2147483647i, arg_1.x, arg_3), vec4<u32>(212u, 12434u, u_input.c.x, var_0.x), Struct_2(Struct_1(0u, arg_1.zx, arg_2, u_input.a.x, vec2<u32>(38008u, 0u)), var_2, vec2<f32>(-399f, -229f), u_input.b.x)), var_2, vec2<f32>(arg_0.a.x, 1526f), _wgslsmith_add_i32(11139i, u_input.a.x)), var_0.x) ^ ~reverseBits(~vec2<u32>(0u, var_2)));
    let var_4 = select(vec2<bool>(false, arg_2.x), vec2<bool>(all(vec2<bool>(false, arg_2.x)), arg_2.x), vec2<bool>(true, !(abs(arg_3) < firstTrailingBit(0i))));
    return i32(-1i) * -29266i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(func_1(Struct_4(vec4<f32>(-527f, -481f, 1449f, -112f)), -vec3<i32>(u_input.b.x, -40315i, 10454i), vec3<bool>(true, false, false), 0i), -1i), select(vec2<i32>(-(u_input.b.x << (4294967295u % 32u)), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_add_i32(5563i, u_input.b.x))), vec2<i32>(-u_input.a.x, u_input.b.x) & (-vec2<i32>(-1i, 25793i) & abs(vec2<i32>(u_input.b.x, u_input.a.x))), !vec2<bool>(select(true, true, false), true)));
    let var_2 = u_input.c.x;
    var_0 = true;
    var_0 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1127f, 666f, 1035f), vec3<f32>(-1387f, 1000f, -427f)) * vec3<f32>(1000f, -1369f, -340f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, -525f, -410f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, 1000f, -2081f) * vec3<f32>(1000f, 129f, 1023f))))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-348f, 1043f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(109f, 825f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, var_3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1152f, -1151f) + vec2<f32>(427f, var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_3, _wgslsmith_div_vec3_f32(var_3, vec3<f32>(-149f, var_3.x, var_3.x)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 - var_3) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(870f, var_3.x, var_4.x)))))))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u << (u_input.c.x % 32u), 58423u), _wgslsmith_div_u32(4192u, u_input.c.x), var_2), u_input.c), 2017f, _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(u_input.c.x, var_2, 2092u, 57469u) | vec4<u32>(30345u, u_input.c.x, 4294967295u, u_input.c.x))), vec4<u32>(firstTrailingBit(50260u), (var_2 << (0u % 32u)) ^ u_input.c.x, max(53839u, var_2), u_input.c.x >> (~1u % 32u))));
}

