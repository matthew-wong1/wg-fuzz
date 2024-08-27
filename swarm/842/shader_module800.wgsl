struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_3(Struct_2(vec2<bool>(all(!vec4<bool>(false, false, arg_2.b.b.a.x, true)), all(!vec4<bool>(true, arg_2.b.b.d, arg_2.b.a.d, false))), arg_2.b.a.c.a.x, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 30311u), arg_2.b.b.c.a), select(0u, u_input.d.x, arg_2.b.d.a.x)), !vec3<bool>(false, arg_2.b.a.a.x, true), arg_2.b.b.c.c, u_input.d.x, reverseBits(~u_input.b.x)), !(!any(vec4<bool>(false, true, true, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, arg_2.a, 1i, 2147483647i), vec4<i32>(-arg_2.a, 1i, ~(-1i), -14525i))), Struct_2(select(select(vec2<bool>(true, false), arg_2.b.b.a, !arg_2.b.b.d), arg_2.b.a.a, true), arg_2.b.c.a.x, Struct_1(vec2<u32>(~1u, arg_2.b.c.d & 50062u), select(vec3<bool>(false, arg_2.b.c.b.x, true), arg_2.b.c.b, select(arg_2.b.b.c.b, vec3<bool>(arg_2.b.b.d, arg_2.b.d.d, arg_2.b.a.c.b.x), arg_2.b.c.b.x)), ~arg_2.b.a.e, _wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_add_u32(0u, arg_2.b.b.b)), min(arg_2.b.c.c.x, 37442i) >> (abs(32936u) % 32u)), !any(arg_2.b.a.c.b), vec4<i32>(~(-2147483647i), -(~u_input.a.x), -arg_2.b.c.c.x, u_input.c.x)), Struct_1(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.d.x, u_input.d.x)), ~firstTrailingBit(u_input.d)), select(!(!vec3<bool>(true, arg_2.b.c.b.x, arg_2.b.a.c.b.x)), !arg_2.b.a.c.b, !arg_2.b.d.c.b.x), arg_2.b.b.e, ~u_input.d.x, _wgslsmith_add_i32(-u_input.a.x | -37824i, min(arg_2.b.a.c.e, ~(-78257i)))), arg_2.b.b);
    var var_1 = Struct_2(select(vec2<bool>(arg_2.b.b.a.x, !all(vec4<bool>(true, true, arg_2.b.d.d, var_0.d.a.x))), var_0.b.c.b.yz, !select(select(var_0.a.c.b.xz, arg_2.b.d.a, true), vec2<bool>(true, true), vec2<bool>(arg_2.b.d.d, arg_2.b.b.d))), ~firstLeadingBit(var_0.c.d) << (103941u % 32u), Struct_1(countOneBits(arg_2.b.b.c.a), select(!vec3<bool>(var_0.b.a.x, var_0.d.d, false), !(!vec3<bool>(false, arg_2.b.b.d, false)), true), vec4<i32>(-1i, max(21140i, 24447i ^ var_0.b.e.x), -var_0.c.e, -var_0.c.e), 1u, -42849i), any(vec4<bool>(true, max(var_0.b.b, u_input.d.x) >= u_input.d.x, true, !(false || var_0.d.c.b.x))), firstTrailingBit(vec4<i32>(var_0.d.e.x, max(36676i, -23074i) | -arg_2.b.c.c.x, _wgslsmith_dot_vec3_i32(-arg_2.b.b.c.c.yzx, -vec3<i32>(u_input.a.x, 2147483647i, 29324i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.c.e, 2147483647i, 19890i), arg_2.b.b.c.c.wzz | vec3<i32>(-2147483647i, -1i, -2147483647i)))));
    let var_2 = ~max(~vec4<u32>(_wgslsmith_mod_u32(41566u, 1953u), 0u, select(arg_2.b.a.b, 9248u, var_1.d), ~var_1.b), firstLeadingBit(vec4<u32>(abs(arg_2.b.d.b), 0u, abs(u_input.d.x), firstLeadingBit(var_1.b))));
    let var_3 = var_0.c.b.x;
    var_0 = arg_2.b;
    return 0u & (~0u | firstLeadingBit(var_1.c.d));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -396f, -1551f))))));
    var var_1 = !(!((34938u >= u_input.d.x) && arg_0.b.x)) & false;
    var var_2 = Struct_2(select(arg_0.b.xy, vec2<bool>(false, false), vec2<bool>(any(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), true)), u_input.d.x, arg_0, true, vec4<i32>(_wgslsmith_sub_i32(2147483647i, select(-56984i, _wgslsmith_dot_vec2_i32(u_input.c.yz, arg_0.c.wy), arg_0.b.x)), -select(_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(-1i, 5117i, -2147483647i, 1i)), -arg_0.c.x, any(vec3<bool>(true, true, false))), 1i, 1i));
    var var_3 = _wgslsmith_mod_vec3_u32(max(abs(countOneBits(vec3<u32>(0u, arg_0.d, arg_0.d))), ~abs(vec3<u32>(1u, var_2.c.a.x, arg_0.d))), reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.b, u_input.d.x, 1u), vec3<u32>(var_2.b, arg_0.d, 45903u)))) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(35242u, ~var_2.b, ~arg_0.a.x), abs(firstTrailingBit(vec3<u32>(3614u, 1u, 16531u))), ~vec3<u32>(arg_0.a.x, arg_0.d, u_input.d.x) << (vec3<u32>(0u, 0u, u_input.d.x) % vec3<u32>(32u))) | max(vec3<u32>(~11796u, 1u, _wgslsmith_add_u32(arg_0.a.x, arg_0.a.x)), max(vec3<u32>(30027u, u_input.d.x, 1u), vec3<u32>(arg_0.a.x, var_2.c.d, arg_0.a.x)) << (vec3<u32>(36811u, var_2.c.a.x, var_2.b) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_4 = var_2.c.b;
    return select(vec3<bool>(arg_0.d >= ~(var_2.b ^ 20988u), var_2.c.b.x, any(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, var_4.x, arg_0.b.x), vec4<bool>(false, var_2.a.x, arg_0.b.x, false), select(vec4<bool>(arg_0.b.x, var_4.x, false, arg_0.b.x), vec4<bool>(false, var_2.c.b.x, false, var_2.c.b.x), vec4<bool>(false, var_2.a.x, arg_0.b.x, true))))), vec3<bool>(any(select(var_2.c.b, arg_0.b, select(arg_0.b, var_2.c.b, var_4.x))), true, false), vec3<bool>(all(vec4<bool>(true, any(arg_0.b), select(true, var_2.c.b.x, arg_0.b.x), var_2.d)), var_2.a.x, !(!arg_0.b.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = !any(vec2<bool>(true, true));
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(u_input.d, u_input.d), select(func_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 38108u), vec2<u32>(17457u, 23443u)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), ~vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, 0i), func_3(585f, 1105f, Struct_4(2147483647i, Struct_3(Struct_2(vec2<bool>(true, true), 36520u, Struct_1(u_input.d, vec3<bool>(false, false, false), vec4<i32>(u_input.a.x, u_input.c.x, 94925i, 57772i), u_input.d.x, u_input.a.x), true, vec4<i32>(u_input.a.x, -646i, 2322i, -1i)), Struct_2(vec2<bool>(false, true), u_input.d.x, Struct_1(u_input.d, vec3<bool>(false, true, true), vec4<i32>(-12946i, u_input.c.x, u_input.c.x, u_input.b.x), 10104u, 1i), true, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(u_input.d, vec3<bool>(false, true, true), vec4<i32>(u_input.c.x, u_input.c.x, -15924i, u_input.c.x), u_input.d.x, 2147483647i), Struct_2(vec2<bool>(false, false), u_input.d.x, Struct_1(u_input.d, vec3<bool>(false, true, false), vec4<i32>(u_input.b.x, -47870i, -6615i, -2147483647i), 0u, u_input.a.x), true, vec4<i32>(-11812i, u_input.c.x, u_input.c.x, u_input.b.x))))), firstTrailingBit(-1i))), vec3<bool>(false, false, true), vec3<bool>(true, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x) <= 2147483647i, true)), vec4<i32>(-1i) * -vec4<i32>(select(14792i, u_input.a.x, true), u_input.a.x | 39497i, u_input.a.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i)), min(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.d.x), select(u_input.d.x, u_input.d.x, true)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 8716u, u_input.d.x), vec3<u32>(u_input.d.x, 3789u, u_input.d.x)), abs(16608u))), ~_wgslsmith_mult_u32(min(u_input.d.x, 79202u), u_input.d.x)), _wgslsmith_mult_i32(0i, reverseBits(-29366i >> (_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) % 32u))));
    return Struct_3(Struct_2(!func_4(Struct_1(vec2<u32>(4294967295u, u_input.d.x), vec3<bool>(var_1.b.x, var_1.b.x, true), var_1.c, 0u, -69901i)).yy, ~27243u, var_1, true, ~(~vec4<i32>(-38886i, var_1.e, -1i, -37626i))), Struct_2(var_1.b.yx, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.d.x | var_1.d, ~var_1.d)), var_1, true, min(vec4<i32>(-u_input.c.x, -2147483647i, _wgslsmith_clamp_i32(1i, u_input.a.x, u_input.b.x), -var_1.c.x), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -1i), var_1.c)))), Struct_1(vec2<u32>(~_wgslsmith_mult_u32(43061u, 1u), var_1.a.x), vec3<bool>(2147483647i < -var_1.c.x, true, true), reverseBits(vec4<i32>(var_1.e, u_input.b.x, var_1.e, var_1.c.x >> (var_1.d % 32u))), var_1.d, select(var_1.e, -u_input.b.x >> (14735u % 32u), !all(vec2<bool>(false, false)))), Struct_2(var_1.b.yy, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(198f)) - -1325f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-162f)))), Struct_4(_wgslsmith_div_i32(u_input.b.x, var_1.e), Struct_3(Struct_2(vec2<bool>(var_1.b.x, var_1.b.x), var_1.a.x, var_1, false, var_1.c), Struct_2(vec2<bool>(var_1.b.x, true), 1u, var_1, false, vec4<i32>(u_input.c.x, -37608i, u_input.a.x, 2147483647i)), Struct_1(vec2<u32>(u_input.d.x, u_input.d.x), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.c, u_input.d.x, u_input.a.x), Struct_2(var_1.b.zy, u_input.d.x, var_1, false, var_1.c)))), Struct_1(var_1.a, var_1.b, -(~var_1.c), 79379u, _wgslsmith_dot_vec3_i32(min(u_input.c, u_input.c), var_1.c.yyx)), all(select(select(vec4<bool>(var_1.b.x, true, var_1.b.x, false), vec4<bool>(var_1.b.x, false, true, var_1.b.x), true), select(vec4<bool>(true, false, false, var_1.b.x), vec4<bool>(true, true, true, var_1.b.x), vec4<bool>(false, false, var_1.b.x, var_1.b.x)), func_4(Struct_1(u_input.d, vec3<bool>(true, var_1.b.x, var_1.b.x), var_1.c, var_1.a.x, -15796i)).x)), vec4<i32>(~(~u_input.c.x), ~var_1.e | _wgslsmith_clamp_i32(-107i, var_1.e, 9019i), abs(0i), _wgslsmith_clamp_i32(u_input.c.x, ~var_1.c.x, var_1.c.x))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1397f, 1978f, 248f, -314f) + vec4<f32>(-1011f, -250f, -287f, -308f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1181f, -108f, 2117f, 390f), vec4<f32>(565f, 497f, 105f, 844f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, -377f, -1000f, 559f)))))));
    var var_1 = Struct_2(arg_0.b.b.c.b.yy, u_input.d.x, Struct_1(vec2<u32>(arg_1.b.c.a.x ^ 1u, ~firstTrailingBit(arg_1.d.c.d)), arg_0.b.c.b, abs(vec4<i32>(-18020i, -arg_0.a, u_input.a.x, ~(-33091i))), arg_1.d.b, ~_wgslsmith_dot_vec3_i32(arg_0.b.b.e.wxz, _wgslsmith_sub_vec3_i32(arg_1.d.c.c.zyw, vec3<i32>(arg_0.a, 2147483647i, arg_1.b.e.x)))), func_2().d.a.x & true, ~(-(~vec4<i32>(arg_0.a, 2147483647i, -28254i, u_input.c.x))));
    let var_2 = var_1.a.x & (_wgslsmith_f_op_f32(ceil(var_0.x)) != var_0.x);
    let var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 73543u), _wgslsmith_dot_vec2_u32(u_input.d ^ vec2<u32>(135074u, u_input.d.x), ~vec2<u32>(0u, 0u))), arg_1.b.c.a), vec2<u32>(select(select(var_1.c.d, 0u, var_2) << (_wgslsmith_clamp_u32(0u, 0u, u_input.d.x) % 32u), ~(arg_1.c.a.x & arg_0.b.d.c.a.x), (arg_1.c.b.x | var_1.d) || select(false, false, arg_1.c.b.x)), arg_1.d.b ^ ~8163u), vec2<u32>(var_1.b, min(u_input.d.x, arg_0.b.a.b)));
    var var_4 = arg_0;
    return var_4.b.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = abs(-10166i);
    var var_1 = func_5(Struct_4(-_wgslsmith_div_i32(0i, ~u_input.b.x), func_2()), func_2());
    var_0 = arg_1.e;
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(0u), 4294967295u, abs(func_5(Struct_4(u_input.c.x, Struct_3(Struct_2(var_1.c.b.yx, 399u, var_1.c, arg_1.b.x, var_1.c.c), Struct_2(vec2<bool>(true, var_1.d), 45948u, var_1.c, var_1.a.x, arg_1.c), arg_1, Struct_2(vec2<bool>(false, false), arg_1.a.x, arg_1, false, vec4<i32>(u_input.c.x, var_1.e.x, 10372i, -2147483647i)))), Struct_3(Struct_2(vec2<bool>(arg_1.b.x, true), 1u, Struct_1(vec2<u32>(0u, 29181u), vec3<bool>(var_1.a.x, var_1.c.b.x, false), arg_1.c, arg_2, var_1.e.x), arg_1.b.x, vec4<i32>(-23712i, -2147483647i, -2147483647i, 1i)), Struct_2(var_1.c.b.yy, u_input.d.x, Struct_1(vec2<u32>(u_input.d.x, 34225u), vec3<bool>(false, var_1.a.x, false), vec4<i32>(67165i, -13803i, -1i, u_input.a.x), arg_1.d, 2147483647i), false, var_1.e), Struct_1(vec2<u32>(50830u, arg_1.d), vec3<bool>(var_1.c.b.x, false, arg_1.b.x), arg_1.c, var_1.b, u_input.b.x), Struct_2(arg_1.b.xy, arg_2, Struct_1(var_1.c.a, vec3<bool>(arg_1.b.x, arg_1.b.x, true), var_1.e, 1u, arg_1.e), false, vec4<i32>(var_1.c.e, var_1.c.c.x, 78102i, arg_1.c.x)))).c.a.x)), ~vec3<u32>(_wgslsmith_mod_u32(func_3(-620f, 1000f, Struct_4(arg_1.c.x, Struct_3(Struct_2(arg_1.b.zx, var_1.c.d, var_1.c, arg_1.b.x, vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, 0i)), Struct_2(var_1.c.b.xz, var_1.c.d, Struct_1(vec2<u32>(arg_1.a.x, 0u), vec3<bool>(var_1.c.b.x, var_1.c.b.x, var_1.d), var_1.c.c, 4294967295u, u_input.b.x), arg_1.b.x, var_1.e), Struct_1(vec2<u32>(arg_2, 0u), vec3<bool>(false, true, var_1.a.x), vec4<i32>(var_1.c.e, 2572i, 67861i, arg_1.c.x), arg_2, var_1.e.x), Struct_2(vec2<bool>(arg_1.b.x, arg_1.b.x), 1u, arg_1, true, var_1.e)))), 4656u), ~_wgslsmith_div_u32(u_input.d.x, arg_2), _wgslsmith_sub_u32(countOneBits(4294967295u), arg_1.a.x)), ~(select(~vec3<u32>(22334u, arg_1.d, 5573u), ~vec3<u32>(68898u, arg_1.a.x, 29897u), arg_1.b) | ~(~vec3<u32>(u_input.d.x, u_input.d.x, 401u))));
    var_2 = abs(~vec3<u32>(~(~0u), ~(~arg_1.d), _wgslsmith_div_u32(min(arg_2, arg_1.a.x), func_2().a.c.a.x)));
    return func_5(Struct_4(~(~7109i), Struct_3(func_2().d, Struct_2(var_1.c.b.xx, arg_2, func_2().b.c, false, -vec4<i32>(40104i, var_1.c.e, arg_1.e, -2147483647i)), Struct_1(select(vec2<u32>(4294967295u, var_2.x), var_2.zz, vec2<bool>(var_1.a.x, false)), arg_1.b, ~arg_1.c, var_2.x >> (var_1.c.d % 32u), 2147483647i), Struct_2(var_1.a, func_5(Struct_4(u_input.b.x, Struct_3(Struct_2(vec2<bool>(false, false), arg_2, var_1.c, arg_1.b.x, vec4<i32>(arg_1.c.x, -46199i, -54328i, -42325i)), Struct_2(arg_1.b.yx, 0u, var_1.c, false, arg_1.c), arg_1, Struct_2(vec2<bool>(arg_1.b.x, false), 0u, Struct_1(arg_1.a, vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.e, 1u, 2147483647i), true, var_1.c.c))), Struct_3(Struct_2(vec2<bool>(var_1.a.x, true), 1u, arg_1, arg_1.b.x, arg_1.c), Struct_2(vec2<bool>(arg_1.b.x, false), 0u, Struct_1(vec2<u32>(var_2.x, 89871u), vec3<bool>(var_1.c.b.x, false, false), vec4<i32>(0i, arg_1.e, var_1.c.e, -1i), 19767u, var_1.e.x), var_1.d, vec4<i32>(-1i, arg_1.c.x, arg_1.c.x, var_1.e.x)), Struct_1(vec2<u32>(54087u, 60078u), var_1.c.b, vec4<i32>(-66938i, -28679i, var_1.e.x, u_input.b.x), 25328u, arg_1.e), Struct_2(var_1.a, u_input.d.x, var_1.c, false, var_1.c.c))).b, Struct_1(u_input.d, arg_1.b, arg_1.c, u_input.d.x, u_input.b.x), true, vec4<i32>(u_input.b.x, arg_1.e, arg_1.c.x, 0i)))), Struct_3(func_2().b, Struct_2(!select(vec2<bool>(true, arg_1.b.x), arg_1.b.xz, var_1.c.b.x), abs(~arg_2), func_5(Struct_4(-8069i, Struct_3(Struct_2(arg_1.b.zy, 50879u, Struct_1(u_input.d, var_1.c.b, vec4<i32>(u_input.b.x, arg_1.c.x, u_input.c.x, -2147483647i), u_input.d.x, var_1.e.x), false, vec4<i32>(u_input.a.x, var_1.c.c.x, u_input.c.x, arg_1.c.x)), Struct_2(var_1.c.b.xz, var_2.x, var_1.c, true, arg_1.c), Struct_1(u_input.d, vec3<bool>(false, arg_1.b.x, false), vec4<i32>(2147483647i, arg_1.e, u_input.c.x, -2147483647i), u_input.d.x, -16055i), Struct_2(vec2<bool>(false, var_1.d), 0u, Struct_1(arg_1.a, vec3<bool>(true, false, true), vec4<i32>(arg_1.e, -1i, arg_1.c.x, 32053i), 24009u, -21369i), var_1.d, var_1.c.c))), Struct_3(Struct_2(var_1.a, arg_1.a.x, arg_1, var_1.d, var_1.e), Struct_2(var_1.c.b.yz, var_1.b, Struct_1(var_1.c.a, arg_1.b, var_1.c.c, 0u, 0i), true, vec4<i32>(14079i, var_1.e.x, 0i, -37929i)), Struct_1(var_1.c.a, var_1.c.b, vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.d.x, -23337i), Struct_2(arg_1.b.zz, 112989u, arg_1, true, vec4<i32>(41511i, 12233i, arg_1.c.x, -73977i)))).c, true, -(~vec4<i32>(-8851i, -49992i, u_input.b.x, var_1.e.x))), arg_1, func_2().b));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(arg_0.x, Struct_3(func_5(Struct_4(0i, Struct_3(Struct_2(arg_1.a, 0u, arg_1.c, false, arg_1.c.c), arg_1, Struct_1(vec2<u32>(4294967295u, 48345u), arg_1.c.b, vec4<i32>(arg_0.x, 0i, arg_1.e.x, arg_0.x), u_input.d.x, -58118i), arg_1)), func_2()), func_2().d, Struct_1(_wgslsmith_clamp_vec2_u32(~arg_1.c.a, ~vec2<u32>(arg_1.b, 33654u), vec2<u32>(u_input.d.x, arg_1.b) << (arg_1.c.a % vec2<u32>(32u))), select(vec3<bool>(arg_1.a.x, false, false), arg_1.c.b, -1i < arg_1.e.x), min(-arg_1.c.c, arg_1.e), ~(~u_input.d.x), 2147483647i), Struct_2(!func_1(vec2<f32>(-1371f, -262f), Struct_1(u_input.d, vec3<bool>(false, arg_1.c.b.x, false), vec4<i32>(0i, 2147483647i, -2147483647i, u_input.c.x), 0u, -20871i), 12531u).a, arg_1.b, Struct_1(vec2<u32>(arg_1.b, 0u), vec3<bool>(arg_1.d, false, arg_1.a.x), -arg_1.e, 0u, min(arg_0.x, 0i)), _wgslsmith_div_i32(u_input.b.x, u_input.a.x) <= (i32(-1i) * -27823i), vec4<i32>(0i, u_input.b.x, arg_0.x | arg_1.c.c.x, reverseBits(-2147483647i)))));
    let var_1 = select(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(7576i, abs(var_0.b.a.e.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(-33534i, -1i, arg_1.e.x, u_input.c.x), arg_1.c.c))), u_input.a, any(arg_1.c.b.yx));
    var_0 = Struct_4(~_wgslsmith_add_i32(-arg_0.x, _wgslsmith_clamp_i32(arg_0.x, 1i, arg_1.c.c.x)) << (select(max(max(21962u, arg_1.b), abs(arg_1.b)), arg_1.c.a.x << (_wgslsmith_sub_u32(34350u, 3965u) % 32u), all(select(vec4<bool>(false, var_0.b.b.c.b.x, arg_1.a.x, true), vec4<bool>(false, false, true, arg_1.a.x), arg_1.c.b.x))) % 32u), var_0.b);
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(21481u, ~(~4294967295u), ~(~reverseBits(9109u))), countOneBits(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, var_0.b.b.c.a.x, arg_1.c.d), vec3<u32>(28496u, 4294967295u, arg_1.b))), ~vec3<u32>(~(~14804u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(10640u, arg_1.c.d, arg_1.b), 2675u)));
    var_0 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.e, vec4<i32>(firstTrailingBit(2147483647i), arg_1.c.e, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.x), vec2<i32>(3593i, var_1.x)), var_1.x)), -var_0.b.d.c.c), Struct_3(Struct_2(arg_1.c.b.zz, ~arg_1.b, Struct_1(vec2<u32>(18170u, 1u), var_0.b.b.c.b, -var_0.b.c.c, ~0u, -var_1.x), any(vec2<bool>(arg_1.a.x, true)), reverseBits(vec4<i32>(-10897i, var_0.a, arg_0.x, 1i))), Struct_2(select(vec2<bool>(var_0.b.d.c.b.x, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, var_0.b.b.a.x))), 4294967295u, func_5(Struct_4(24250i, Struct_3(arg_1, arg_1, arg_1.c, Struct_2(var_0.b.d.c.b.zy, 109010u, arg_1.c, var_0.b.a.a.x, var_0.b.d.e))), Struct_3(Struct_2(arg_1.a, 4294967295u, var_0.b.b.c, false, arg_1.e), arg_1, Struct_1(var_0.b.b.c.a, vec3<bool>(arg_1.c.b.x, var_0.b.c.b.x, var_0.b.b.a.x), arg_1.e, 59396u, 109865i), arg_1)).c, all(arg_1.c.b), var_0.b.c.c), Struct_1(~(~var_2.yz), var_0.b.c.b, vec4<i32>(u_input.c.x, arg_1.c.c.x, i32(-1i) * -4645i, var_0.b.d.c.e), ~u_input.d.x, ~arg_1.c.c.x), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-924f, -1214f) * vec2<f32>(1000f, 198f))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, 114f)), Struct_1(vec2<u32>(var_2.x, 4294967295u), var_0.b.d.c.b, vec4<i32>(0i, 2147483647i, var_1.x, u_input.c.x), 11474u, -36948i), select(var_2.x, 0u, var_0.b.c.b.x)).c, func_2().a.b)));
    return Struct_3(Struct_2(vec2<bool>(all(!arg_1.c.b), any(!vec4<bool>(arg_1.c.b.x, arg_1.d, true, var_0.b.c.b.x))), 4294967295u, Struct_1(func_5(Struct_4(39341i, var_0.b), var_0.b).c.a, vec3<bool>(func_1(vec2<f32>(562f, 312f), Struct_1(vec2<u32>(var_2.x, arg_1.c.d), vec3<bool>(arg_1.c.b.x, arg_1.d, var_0.b.d.d), vec4<i32>(-42151i, -2147483647i, -1i, -62953i), var_2.x, arg_1.c.e), 1u).d, true, !var_0.b.d.d), vec4<i32>(-arg_0.x, var_1.x, countOneBits(u_input.c.x), -50995i), _wgslsmith_mod_u32(var_2.x, arg_1.b >> (61372u % 32u)), arg_0.x), true, func_2().a.e), Struct_2(var_0.b.d.c.b.xy, ~firstTrailingBit(func_5(Struct_4(-1i, Struct_3(Struct_2(arg_1.a, 0u, arg_1.c, var_0.b.c.b.x, vec4<i32>(10053i, var_1.x, 0i, -8536i)), var_0.b.b, arg_1.c, Struct_2(arg_1.c.b.zy, var_0.b.c.d, arg_1.c, var_0.b.d.a.x, arg_1.c.c))), var_0.b).b), arg_1.c, any(select(select(vec4<bool>(arg_1.c.b.x, false, false, var_0.b.c.b.x), vec4<bool>(false, true, true, var_0.b.c.b.x), arg_1.a.x), !vec4<bool>(arg_1.c.b.x, var_0.b.b.a.x, true, var_0.b.b.a.x), !vec4<bool>(var_0.b.c.b.x, true, arg_1.a.x, arg_1.a.x))), ~(-abs(vec4<i32>(-15433i, -3910i, var_1.x, -1365i)))), arg_1.c, Struct_2(var_0.b.d.a, abs(arg_1.b), func_2().d.c, func_2().c.b.x && arg_1.d, select(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.b.a.c.c, arg_1.c.c, var_0.b.b.c.c), vec4<i32>(22979i, 19509i, 2147483647i, 29359i)), var_0.b.b.e, select(vec4<bool>(true, arg_1.d, true, true), select(vec4<bool>(true, false, false, arg_1.c.b.x), vec4<bool>(var_0.b.a.c.b.x, var_0.b.b.c.b.x, false, true), true), var_1.x > -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(true, true, true));
    var_0 = true;
    var_0 = true;
    var var_1 = Struct_4(~(-2147483647i), func_6(_wgslsmith_sub_vec2_i32(-u_input.a, u_input.a) ^ ((vec2<i32>(2147483647i, 10448i) | u_input.a) ^ vec2<i32>(u_input.c.x, u_input.a.x)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(137f, 371f), vec2<f32>(335f, -137f))) + vec2<f32>(-1790f, 1000f)), Struct_1(~u_input.d, vec3<bool>(true, false, true), vec4<i32>(1i, 9527i, -21894i, u_input.a.x), reverseBits(89229u), u_input.b.x), u_input.d.x)));
    let var_2 = Struct_4(u_input.a.x, func_6(select(vec2<i32>(firstLeadingBit(-8546i), 2147483647i), func_2().a.c.c.zy, false), var_1.b.b));
    var_1 = Struct_4(func_6(select(-u_input.b, ~_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(1i, -1i)), vec2<bool>(!var_1.b.b.a.x, func_5(var_2, Struct_3(Struct_2(var_2.b.d.a, u_input.d.x, var_2.b.c, var_2.b.b.d, vec4<i32>(-18769i, 0i, u_input.a.x, 27542i)), var_2.b.b, var_1.b.b.c, var_1.b.d)).c.b.x)), var_1.b.b).a.e.x, Struct_3(Struct_2(select(vec2<bool>(false, var_1.b.b.d), var_1.b.c.b.xx, vec2<bool>(true, var_2.b.d.d)), ~4294967295u, var_1.b.d.c, any(var_2.b.c.b.zz), ~(vec4<i32>(var_2.b.d.e.x, var_2.a, var_2.a, 2147483647i) | var_2.b.a.e)), Struct_2(vec2<bool>(true | var_1.b.d.c.b.x, true), ~countOneBits(57484u), var_2.b.b.c, true, _wgslsmith_div_vec4_i32(var_1.b.c.c, _wgslsmith_add_vec4_i32(var_2.b.b.e, var_2.b.b.c.c))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1677f, 696f), vec2<f32>(-362f, 1885f))), func_6(vec2<i32>(var_2.a, var_2.b.b.e.x), var_1.b.d).b.c, ~var_2.b.d.b >> (var_1.b.b.b % 32u)).c, Struct_2(select(!var_2.b.d.a, select(vec2<bool>(true, var_1.b.a.c.b.x), vec2<bool>(true, true), var_2.b.d.a.x), var_2.b.a.a.x), 0u, func_6(countOneBits(var_2.b.a.c.c.zx), func_5(Struct_4(2147483647i, var_1.b), var_1.b)).c, var_2.b.d.d, var_2.b.d.c.c)));
    var_1 = var_2;
    let var_3 = var_2;
    let var_4 = var_3.b.a.c.c.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(-916f, _wgslsmith_f_op_f32(-1f), 1824f));
}

