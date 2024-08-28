struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-795f, -1511f, -1867f), vec3<i32>(-1i, 0i, 52936i), -664f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<i32> {
    global0 = vec2<bool>(true, true);
    global0 = !(!vec2<bool>(global0.x, true));
    var var_0 = all(vec4<bool>(!(!all(vec3<bool>(true, global0.x, true))), any(vec4<bool>(u_input.a.x != global1.b.x, all(vec4<bool>(true, global0.x, global0.x, global0.x)), global0.x, -2147483647i <= u_input.a.x)), select(all(vec4<bool>(global0.x, true, true, false)), global0.x, true), false));
    var var_1 = arg_0;
    var_0 = global0.x;
    return abs(vec4<i32>(-(~arg_0.b.x), -19576i, max(u_input.b, ~(-2147483647i)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b), ~(-1i), abs(u_input.a.x)) & (~1i << (select(arg_1.x, 21916u, true) % 32u))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    global1 = arg_0;
    return select(max(reverseBits(abs(vec4<i32>(8035i, u_input.a.x, -20090i, 1i) << (vec4<u32>(85454u, 0u, 49288u, 41910u) % vec4<u32>(32u)))), reverseBits(~vec4<i32>(-33781i, -7361i, global1.b.x, 77759i))), ~(func_3(arg_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 48783u, 11472u), vec4<u32>(3743u, 17936u, 29741u, 1u), vec4<u32>(159109u, 1u, 29720u, 0u))) << (~vec4<u32>(4252u, 4294967295u, 1u, 1u) % vec4<u32>(32u))), any(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), true)) & true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = !select(select(vec2<bool>(global0.x, true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, global0.x)), !vec2<bool>(true, global0.x), any(vec4<bool>(global0.x, true, false, global0.x))), !all(vec3<bool>(global0.x, global0.x, false))), !(!select(vec2<bool>(false, false), vec2<bool>(false, global0.x), vec2<bool>(true, global0.x))), global0.x);
    let var_0 = select(_wgslsmith_mult_vec3_i32(arg_1.yyz, _wgslsmith_div_vec3_i32(vec3<i32>(0i, 40813i, -10450i), vec3<i32>(2147483647i, arg_3.b.x, 39703i) >> (vec3<u32>(51098u, 0u, 0u) % vec3<u32>(32u)))), arg_3.b, global0.x) ^ _wgslsmith_add_vec3_i32(global1.b, reverseBits(firstTrailingBit(vec3<i32>(1i, 0i, arg_0.x))));
    let var_1 = arg_3;
    let var_2 = var_1;
    let var_3 = arg_3.a.yz;
    return reverseBits(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(abs(u_input.b ^ -8691i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, var_2.b.x, arg_1.x), -arg_3.b.x), ~(-var_0.x), var_1.b.x)));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -796f, _wgslsmith_f_op_f32(floor(global1.c))) + arg_0.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-abs(arg_0.b.x), arg_0.b.x, func_4(vec3<i32>(global1.b.x, u_input.b, 1i), func_2(arg_0, -636f), _wgslsmith_f_op_f32(841f - global1.a.x), Struct_1(global1.a, global1.b, global1.a.x))), vec3<i32>(17090i, func_2(Struct_1(vec3<f32>(768f, arg_0.c, arg_0.c), vec3<i32>(-22332i, arg_0.b.x, global1.b.x), arg_0.c), _wgslsmith_f_op_f32(global1.c * -255f)).x, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c, global1.a.x)))));
    let var_1 = ~vec4<i32>(8374i >> (1u % 32u), firstTrailingBit(~(~86i)), 0i, arg_0.b.x);
    global0 = vec2<bool>(false, true);
    global0 = select(!vec2<bool>(all(vec3<bool>(global0.x, global0.x, true)), true), vec2<bool>(select(false, false == all(vec4<bool>(false, global0.x, true, true)), false), all(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(false, true, true), vec3<bool>(global0.x, true, false), global0.x), all(vec4<bool>(global0.x, true, global0.x, global0.x))))), all(!vec3<bool>(global0.x, global0.x && global0.x, global0.x)));
    global1 = var_0;
    return _wgslsmith_div_vec3_i32(vec3<i32>(-func_3(arg_0, vec4<u32>(54788u, 29101u, 1u, 1u)).x, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, var_0.a.x, var_0.a.x)), vec3<i32>(8396i, var_1.x, arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -411f)), -1235f).x, 1i), vec3<i32>(var_0.b.x, max(0i & u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, 0i), vec3<i32>(arg_0.b.x, 42470i, -62098i))) << (1u % 32u), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 395f;
    var var_1 = ~(~0u) >> (_wgslsmith_sub_u32(1u, ~(~1u)) % 32u);
    let var_2 = vec3<i32>(-29490i, u_input.b, abs(~_wgslsmith_mod_i32(~u_input.b, 34380i)));
    global1 = Struct_1(global1.a, -func_1(Struct_1(_wgslsmith_f_op_vec3_f32(abs(global1.a)), var_2, _wgslsmith_f_op_f32(var_0 * -1753f))), _wgslsmith_f_op_f32(floor(625f)));
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c + global1.c)))), var_0, 1747f), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 1022f, 1046f), vec3<f32>(-240f, -137f, -378f))) - global1.a), global1.b, 1295f), vec4<u32>(~(~21320u), 0u, 4294967295u, _wgslsmith_add_u32(8977u << (1u % 32u), ~67101u))).xzy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), var_0, true || !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1i ^ (func_4(min(vec3<i32>(-8653i, var_2.x, -24423i), var_2), vec4<i32>(1i, var_2.x, 30751i, 41958i) & vec4<i32>(var_2.x, -53018i, 76603i, var_2.x), -339f, Struct_1(global1.a, var_2, -1076f)) ^ select(max(1i, u_input.b), 56704i, global0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, var_0, 699f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1505f, 709f, global1.c) - vec3<f32>(-1000f, global1.c, 1479f))), true)))));
}

