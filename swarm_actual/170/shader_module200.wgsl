struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f * 1000f) + var_0.b.x))), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -468f)), var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.x, arg_2)))), Struct_1(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_1.a.x, u_input.b.x, var_0.a.x) << (vec3<u32>(arg_1.d.x, var_0.d.x, arg_0) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(min(vec3<i32>(23422i, 29087i, 1i), u_input.a), -var_0.a))), vec2<bool>(var_0.c.x, !all(var_0.e)));
    let var_2 = vec4<bool>(arg_1.e.x, all(!(!select(var_1.d, vec2<bool>(var_0.c.x, arg_1.c.x), false))), true, var_0.c.x);
    return Struct_1(_wgslsmith_div_f32(-346f, 1350f), var_0.a);
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(-vec3<i32>(-(arg_0.b.x >> (u_input.c % 32u)), u_input.b.x, -2147483647i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(253f, _wgslsmith_f_op_f32(step(-246f, -1000f)), _wgslsmith_f_op_f32(trunc(-1073f)))))), vec3<bool>(false, true, true), ~(~(~select(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(1u, 21598u, u_input.c), false))), select(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, u_input.c <= 45963u), vec3<bool>(8494u > u_input.c, u_input.d.x != -2147483647i, any(vec2<bool>(false, false)))), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), arg_0.a != _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), all(vec2<bool>(true, true))), true));
    var var_1 = func_2(~_wgslsmith_add_u32(countOneBits(6442u ^ var_0.d.x), ~1u ^ _wgslsmith_div_u32(1u, u_input.c)), Struct_2(vec3<i32>(var_0.a.x ^ 1i, var_0.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.x, var_0.b.x, 140f))), true)), var_0.b)), var_0.e, vec3<u32>(39784u, u_input.c, _wgslsmith_sub_u32(var_0.d.x, _wgslsmith_div_u32(u_input.c, var_0.d.x))), select(!vec3<bool>(false, false, var_0.c.x), select(select(var_0.e, var_0.c, vec3<bool>(var_0.e.x, var_0.c.x, var_0.c.x)), var_0.c, vec3<bool>(var_0.e.x, var_0.e.x, true)), false || var_0.e.x)), arg_0.a).b.yx;
    var_1 = vec2<i32>(~var_0.a.x, u_input.d.x) >> (var_0.d.zy % vec2<u32>(32u));
    let var_2 = Struct_3(arg_0, var_0.b.zz, func_2(1u, Struct_2(arg_0.b << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 63533u, var_0.d.x), vec3<u32>(82365u, u_input.c, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, arg_0.a, 2553f)), !select(vec3<bool>(true, true, var_0.e.x), vec3<bool>(true, var_0.c.x, false), vec3<bool>(var_0.e.x, var_0.e.x, false)), vec3<u32>(u_input.c << (30506u % 32u), min(var_0.d.x, u_input.c), ~u_input.c), vec3<bool>(var_0.c.x, all(vec4<bool>(true, false, false, var_0.e.x)), false)), arg_0.a), select(select(select(vec2<bool>(var_0.e.x, true), select(var_0.e.zy, var_0.c.yz, vec2<bool>(var_0.c.x, true)), vec2<bool>(var_0.c.x, var_0.e.x)), vec2<bool>(var_0.c.x, true), true), var_0.e.zx, var_0.e.x));
    let var_3 = select(abs(firstTrailingBit(~(var_0.d & vec3<u32>(53890u, 1420u, u_input.c)))), min(~var_0.d, var_0.d) >> (countOneBits(vec3<u32>(1u, u_input.c, var_0.d.x) | firstTrailingBit(var_0.d)) % vec3<u32>(32u)), vec3<bool>(var_2.a.a < _wgslsmith_f_op_f32(-var_2.c.a), true, !all(vec4<bool>(var_0.e.x, true, false, true))));
    return var_2;
}

fn func_1() -> i32 {
    let var_0 = func_3(func_2(0u, Struct_2(u_input.b.zxx | ~u_input.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1433f, -710f, 929f)))), vec3<bool>(true, true, true), ~(~vec3<u32>(17205u, 57237u, 53550u)), vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1346f, 384f, false)) - -988f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-690f, 842f)) + 973f))));
    global0 = ~4294967295u;
    let var_1 = ~(u_input.c >> (u_input.c % 32u));
    global0 = 48510u;
    let var_2 = 1155u;
    return -(~var_0.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 25049u;
    var var_0 = func_1();
    var_0 = ~u_input.a.x;
    let var_1 = -1746f;
    let var_2 = Struct_3(func_3(func_2(u_input.c, Struct_2(_wgslsmith_mod_vec3_i32(u_input.b.zzz, u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(664f, var_1, var_1), vec3<f32>(-476f, var_1, var_1)), vec3<bool>(false, false, true), min(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(4294967295u, 24932u, u_input.c)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -659f))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, var_1)))))), func_3(func_3(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(83893u, 38195u), vec2<u32>(32651u, 1u)), Struct_2(u_input.a, vec3<f32>(var_1, var_1, -798f), vec3<bool>(false, false, false), vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(var_1 - -392f))).c).a, select(vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true))), true));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-867f, _wgslsmith_f_op_f32(var_1 * 505f))), _wgslsmith_f_op_f32(exp2(func_3(Struct_1(-2037f, u_input.a)).c.a)))), var_2.b.x)) <= var_1;
    let var_4 = var_2;
    var var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(10444u, u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, var_1, 1322f))))), 1i, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-8792i ^ var_2.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c.b.x, -1i, var_4.a.b.x), vec3<i32>(-46204i, var_4.a.b.x, u_input.b.x)), -var_2.a.b.x, 0i)), ~_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(var_2.c.b.x, 2147483647i, var_2.a.b.x, -1i), vec4<i32>(0i, u_input.d.x, var_2.c.b.x, 0i)) & vec4<i32>(1i, _wgslsmith_div_i32(var_4.c.b.x, 7898i), ~var_2.a.b.x, 9338i)));
}

