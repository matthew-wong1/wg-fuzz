struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = u_input.a;
    let var_0 = Struct_2(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 54036u, 4294967295u), arg_0.a), arg_0.b, arg_0.c);
    var var_1 = !vec4<bool>(0u == u_input.b, any(!vec4<bool>(true, true, arg_0.b.x, false)) == false, false, all(select(select(vec2<bool>(arg_1.a.x, false), vec2<bool>(false, arg_0.b.x), false), !vec2<bool>(arg_1.a.x, false), select(vec2<bool>(true, var_0.b.x), arg_0.b.xx, arg_0.b.xx))));
    var var_2 = arg_0.c.x;
    var var_3 = arg_1.b;
    return 0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(41613u, 10464u, u_input.b), vec3<u32>(func_3(Struct_2(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), Struct_1(arg_0, u_input.a.x, global0.x, arg_1.x)), ~u_input.b, u_input.b)), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.b, u_input.b)), 1u, u_input.b)), vec3<bool>(false, false, !(!any(vec2<bool>(arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1518f, 1231f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x)))))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_1.x)));
    global0 = -firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(-20973i, -44323i), global0.x, ~global0.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(17198i, -29683i, 13778i, 2147483647i), vec4<i32>(global0.x, -4606i, var_1, 0i)), -u_input.a)));
    var var_3 = Struct_1(!select(var_0.b.xx, vec2<bool>(25924u > u_input.b, var_0.b.x), arg_0.x), u_input.a.x, firstTrailingBit(~_wgslsmith_sub_i32(max(0i, var_1), -1i)), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - arg_1.x) + 1000f))));
    return select(_wgslsmith_dot_vec4_i32(u_input.a & u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_1, -2147483647i, -4408i, global0.x), vec4<i32>(var_3.b, -32672i, 1i, var_1))) << (var_0.a.x % 32u), _wgslsmith_add_i32(abs(reverseBits(u_input.a.x)), -1i), true) < _wgslsmith_sub_i32(abs(-1i), _wgslsmith_clamp_i32(-min(-2626i, global0.x), min(global0.x >> (u_input.b % 32u), abs(var_3.b)), var_3.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = countOneBits(_wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -u_input.a), vec4<i32>(-1i, ~arg_3 << (1u % 32u), -49357i, _wgslsmith_sub_i32(reverseBits(2147483647i), u_input.a.x & -29508i))));
    let var_0 = -countOneBits(u_input.a.wxz);
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, arg_2, 4294967295u, 9339u), vec4<u32>(arg_2, 1u, 4294967295u, u_input.b), arg_0.x), vec4<u32>(u_input.b, 0u, arg_2, arg_2)) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(-vec4<i32>(-18401i, global0.x, 2147483647i, arg_1), select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, global0.x, var_0.x, arg_1), vec4<i32>(0i, -2147483647i, 1i, var_0.x)), abs(u_input.a), func_2(arg_0.wz, vec2<f32>(637f, -746f)))));
    let var_1 = -1940f;
    global0 = abs(select(~vec4<i32>(var_0.x >> (u_input.b % 32u), var_0.x, _wgslsmith_mod_i32(arg_3, arg_3), 48951i), max(u_input.a, -abs(u_input.a)), arg_0));
    return Struct_1(arg_0.xx, 0i, global0.x >> (abs(u_input.b) % 32u), -2358f);
}

fn func_1() -> Struct_1 {
    let var_0 = -340f;
    global0 = -u_input.a;
    var var_1 = u_input.a.wxw;
    var var_2 = u_input.b;
    global0 = -u_input.a;
    return func_4(select(vec4<bool>(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_div_vec2_f32(vec2<f32>(859f, -1000f), vec2<f32>(494f, -840f))), true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false))), vec4<bool>(select(true, any(vec3<bool>(true, false, false)), true), !any(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, true)), true), (all(vec4<bool>(false, false, false, false)) || true) || (any(vec4<bool>(false, true, true, false)) == all(vec3<bool>(true, false, true)))), 17306i, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 1u)), countOneBits(~vec2<u32>(u_input.b, 35569u))) ^ ~65993u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~(~vec2<u32>(u_input.b, 73237u)))));
    let var_1 = func_1();
    var var_2 = var_1.a.x;
    var var_3 = func_4(select(vec4<bool>(var_1.a.x, any(select(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x))), all(vec4<bool>(var_1.a.x, var_1.a.x, false, false)) | true, all(!vec4<bool>(var_1.a.x, true, true, var_1.a.x))), !select(vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(false, var_1.a.x, true, true), vec4<bool>(true, false, false, var_1.a.x)), true), global0.x, var_0.x, firstLeadingBit(_wgslsmith_div_i32(-3573i, reverseBits(i32(-1i) * -16380i))));
    var_3 = var_1;
    var var_4 = Struct_2(~(vec3<u32>(0u, var_0.x, var_0.x) & ~(~vec3<u32>(var_0.x, 4294967295u, 0u))), vec3<bool>(false, var_1.a.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1368f, var_3.d, -1162f))) * vec3<f32>(-386f, 1000f, var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, 645f, var_3.d) * vec3<f32>(-613f, -705f, var_1.d))), vec3<bool>(var_3.a.x, 1i >= global0.x, !var_1.a.x)))));
    var var_5 = _wgslsmith_f_op_f32(-var_1.d);
    global0 = u_input.a;
    let var_6 = func_4(vec4<bool>(!func_1().a.x, var_1.a.x, var_3.a.x, !all(func_1().a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(15786i, var_3.b, u_input.a.x), vec3<i32>(-28611i, global0.x, 10558i)), -2147483647i ^ var_3.b, 1i), (u_input.a >> (vec4<u32>(0u, u_input.b, 0u, 136273u) % vec4<u32>(32u))) >> (~vec4<u32>(var_0.x, var_4.a.x, var_4.a.x, 1u) % vec4<u32>(32u))), 1u, ~(~(-var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_4.c.x, _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1266f * 215f) + -1000f)))));
}

