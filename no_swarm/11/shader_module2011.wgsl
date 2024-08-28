struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 29610u, 65348u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), 0i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = vec2<i32>(-2147483647i, i32(-1i) * -1i);
    var var_1 = countOneBits(vec3<i32>(2147483647i, reverseBits(-1i), max(-(~var_0.x), (i32(-1i) * -54504i) & arg_0.x)));
    global1 = Struct_1(global1.a, -1i ^ _wgslsmith_sub_i32(1i, max(31921i, var_1.x) ^ -33558i));
    var var_2 = ~reverseBits(~(-_wgslsmith_div_vec2_i32(var_0, var_1.xz)));
    var var_3 = var_1.x;
    return ~_wgslsmith_mod_vec3_u32(u_input.a, min(vec3<u32>(u_input.b, u_input.a.x, 1u), ~vec3<u32>(0u, 21775u, u_input.a.x)) >> (select(u_input.a, vec3<u32>(global0.x, 7251u, 38358u) & u_input.a, true) % vec3<u32>(32u)));
}

fn func_2() -> vec4<u32> {
    global0 = func_3(vec2<i32>(~0i, 55592i), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-614f)), _wgslsmith_f_op_f32(f32(-1f) * -1465f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1245f, -324f) + vec2<f32>(-672f, 921f)) + vec2<f32>(880f, 302f)))));
    global1 = Struct_1(select(global1.a, global1.a, false), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global1.b, 1i), -global1.b), countOneBits(-vec2<i32>(u_input.c, global1.b)))));
    global1 = Struct_1(vec3<bool>(any(select(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, true), global1.a.x), false)), global1.a.x, true), -u_input.c);
    global0 = u_input.a;
    global0 = vec3<u32>(_wgslsmith_mult_u32(u_input.b, 75325u), 7907u, ~92107u ^ ~global0.x);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x ^ u_input.b, abs(global0.x)), u_input.a.x, 37346u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.x, global0.x, abs(global0.x)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, global0.x, 28809u), vec4<u32>(24684u, 27835u, u_input.a.x, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, u_input.b, 71129u, 34919u))) % vec4<u32>(32u)), ~(reverseBits(vec4<u32>(22045u, 1u, global0.x, u_input.a.x)) << (vec4<u32>(1u, 98524u, 4294967295u, 1u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = u_input.a;
    let var_2 = reverseBits(0u);
    let var_3 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, global0.x), var_2, _wgslsmith_mod_u32(var_2, var_1.x), min(4294967295u, u_input.a.x)), func_2()) << (~_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_2, var_1.x, 33978u, 0u), vec4<u32>(0u, global0.x, 15947u, global0.x), false), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, global0.x, 4294967295u), vec4<u32>(arg_1.x, var_2, var_1.x, 88830u))) % vec4<u32>(32u)));
    let var_4 = !(!(!arg_3.a));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    global1 = Struct_1(vec3<bool>(func_1(~reverseBits(vec4<i32>(0i, 2147483647i, 32218i, arg_1.b)), ~(~vec2<u32>(u_input.a.x, u_input.a.x)), 1u, Struct_1(global1.a, 30853i)).a.x, false == arg_1.a.x, arg_2.x), ~_wgslsmith_div_i32(12176i, arg_0));
    var var_0 = select(true, true, any(select(!(!arg_1.a.xy), vec2<bool>(global1.a.x || true, true), vec2<bool>(any(arg_1.a), !arg_2.x))));
    global1 = arg_1;
    var var_1 = 4294967295u;
    var var_2 = select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, arg_1.b, 2147483647i, 30565i) ^ ~vec4<i32>(19102i, -2147483647i, u_input.c, u_input.c), -(vec4<i32>(global1.b, -26811i, arg_0, global1.b) & vec4<i32>(arg_0, u_input.c, arg_0, -1i)), vec4<i32>(43978i, -22929i, -199i, -3351i) >> (vec4<u32>(global0.x, 12618u, 125047u, 0u) % vec4<u32>(32u))), -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(25813i, u_input.c), vec2<i32>(arg_1.b, arg_0)), 7537i, u_input.c, arg_1.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, -16200i, global1.b, 9229i), vec4<i32>(2147483647i, 14643i, 2147483647i, global1.b))), false || arg_1.a.x);
    return func_1(vec4<i32>(arg_0, -var_2.x, 2147483647i, _wgslsmith_sub_i32(var_2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_1.b, var_2.x), vec4<i32>(arg_0, u_input.c, 2147483647i, 2147483647i)), abs(vec4<i32>(arg_1.b, 0i, arg_0, -2147483647i))))), _wgslsmith_mod_vec2_u32(global0.yy >> ((u_input.a.xz | u_input.a.xz) % vec2<u32>(32u)), vec2<u32>(~u_input.a.x, 9669u)) << (abs(select(~vec2<u32>(global0.x, 4294967295u), vec2<u32>(1u, global0.x), arg_2.xy)) % vec2<u32>(32u)), 1u, func_1(~vec4<i32>(global1.b, var_2.x, 7060i, var_2.x), _wgslsmith_mod_vec2_u32(global0.zz >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), u_input.a.zy | u_input.a.zy) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, u_input.b)), func_2().xw, select(vec2<u32>(19217u, 4294967295u), global0.yz, arg_1.a.zx)), u_input.a.x, func_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.b, -46940i, u_input.c, u_input.c), vec4<i32>(var_2.x, 1i, global1.b, -77939i)), u_input.a.zy, ~global0.x, Struct_1(arg_1.a, arg_0))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(~select(vec4<i32>(arg_0.b ^ arg_0.b, _wgslsmith_add_i32(2147483647i, u_input.c), -1i, i32(-1i) * -1i), _wgslsmith_sub_vec4_i32(max(vec4<i32>(global1.b, global1.b, u_input.c, u_input.c), vec4<i32>(18332i, u_input.c, -2147483647i, 10837i)), -vec4<i32>(0i, u_input.c, -1i, -48340i)), !global1.a.x));
    global1 = Struct_1(!select(vec3<bool>(!global1.a.x, all(arg_0.a), !arg_0.a.x), func_4(~0i, func_1(var_0, u_input.a.xy, 35421u, Struct_1(vec3<bool>(false, false, arg_0.a.x), var_0.x)), vec4<bool>(arg_0.a.x, global1.a.x, true, global1.a.x), Struct_2(vec2<f32>(arg_1, arg_1))).a, vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), arg_1 >= 290f, global1.a.x)), 1i);
    var var_1 = ~firstTrailingBit(_wgslsmith_div_vec4_u32(~select(vec4<u32>(u_input.b, global0.x, global0.x, u_input.b), vec4<u32>(4294967295u, u_input.a.x, u_input.b, global0.x), true), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global0.x, global0.x, global0.x), vec4<u32>(4294967295u, u_input.a.x, global0.x, u_input.b)), abs(vec4<u32>(1u, 0u, 4294967295u, u_input.a.x)))));
    let var_2 = arg_0.a.x;
    var var_3 = var_1.x;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(789f, arg_1), vec2<f32>(arg_1, 2081f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))), arg_0.a.zz)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global0 = vec3<u32>(select(~(global0.x ^ global0.x), arg_3.x, true), ((u_input.b >> (27329u % 32u)) >> (80659u % 32u)) >> (global0.x % 32u), _wgslsmith_div_u32(u_input.a.x, 4294967295u)) ^ countOneBits(arg_3.ywz & _wgslsmith_mod_vec3_u32(arg_3.xzx, vec3<u32>(1u, global0.x, 17118u)));
    var var_0 = func_5(arg_1, 487f);
    let var_1 = arg_1;
    var var_2 = min(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_3, arg_3), firstTrailingBit(1418u)), u_input.a.x), u_input.b) | (_wgslsmith_div_u32(~25368u, global0.x) << (u_input.a.x % 32u));
    var var_3 = vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), 1u), 11155u) >> (vec2<u32>(min(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 64536u, 0u), u_input.a)), _wgslsmith_dot_vec2_u32(global0.zx, arg_3.yw << (u_input.a.xx % vec2<u32>(32u)))), arg_3.x ^ ~1u) % vec2<u32>(32u));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    global0 = vec3<u32>(func_6(max(-select(vec2<i32>(u_input.c, -34125i), vec2<i32>(7383i, global1.b), global1.a.x), vec2<i32>(u_input.c, global1.b << (9504u % 32u))), Struct_1(vec3<bool>(global1.a.x, true, false | global1.a.x), max(u_input.c, -3174i)), func_5(func_4(~(-34304i), func_1(vec4<i32>(global1.b, -15396i, 0i, 34863i), vec2<u32>(u_input.b, global0.x), 5603u, Struct_1(global1.a, u_input.c)), vec4<bool>(global1.a.x, false, global1.a.x, false), Struct_2(vec2<f32>(1157f, -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-436f + 574f), _wgslsmith_f_op_f32(max(-905f, 287f)), all(global1.a.zz)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 16776u, u_input.a.x, u_input.b), select(select(vec4<u32>(43101u, 76395u, 4294967295u, 3335u), vec4<u32>(7540u, 1u, 4294967295u, u_input.a.x), vec4<bool>(global1.a.x, false, false, global1.a.x)), abs(vec4<u32>(1u, 81421u, 0u, 32631u)), !vec4<bool>(true, global1.a.x, true, true)))), ~(~1760u), 1u);
    global0 = u_input.a;
    global0 = ~(firstTrailingBit(countOneBits(_wgslsmith_add_vec3_u32(u_input.a, u_input.a))) << (vec3<u32>(min(_wgslsmith_clamp_u32(1u, 79944u, u_input.a.x), abs(68210u)), ~(~global0.x), min(4294967295u, u_input.b) << (1u % 32u)) % vec3<u32>(32u)));
    let var_1 = -global1.b;
    global1 = func_4(-8013i, Struct_1(select(!func_1(vec4<i32>(3772i, -2147483647i, -11654i, 1i), global0.zz, 0u, Struct_1(global1.a, 1i)).a, !(!global1.a), global1.a), firstTrailingBit(~0i)), !(!select(select(vec4<bool>(false, global1.a.x, global1.a.x, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), true), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), true)), func_5(Struct_1(!vec3<bool>(true, global1.a.x, true), _wgslsmith_sub_i32(min(u_input.c, global1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, -16966i, global1.b), vec3<i32>(global1.b, var_1, 5501i)))), _wgslsmith_f_op_f32(floor(1f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-363f, -687f, -1000f, -1456f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(735f, -1321f, -1127f, -411f) * vec4<f32>(-1399f, 1845f, 366f, 628f))))) - vec4<f32>(-820f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + 1058f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-873f))), func_5(func_1(vec4<i32>(0i, global1.b, -6092i, u_input.c), global0.zy, 28665u, Struct_1(vec3<bool>(global1.a.x, true, global1.a.x), u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -582f)).a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -2267f, 959f, -706f), vec4<f32>(-1667f, -1502f, -2021f, 361f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -786f, 726f, _wgslsmith_f_op_f32(ceil(-263f)))))));
    let var_3 = func_5(func_4(_wgslsmith_mod_i32(-4919i, global1.b), func_4(firstLeadingBit(-64507i), Struct_1(select(vec3<bool>(false, true, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, true), global1.a.x), _wgslsmith_add_i32(global1.b, u_input.c)), select(select(vec4<bool>(false, global1.a.x, false, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, true), false), select(vec4<bool>(global1.a.x, false, global1.a.x, false), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), true), global1.a.x), func_5(func_4(-1i, Struct_1(global1.a, global1.b), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), Struct_2(vec2<f32>(877f, var_2.x))), _wgslsmith_f_op_f32(-var_2.x))), select(!vec4<bool>(false, false, global1.a.x, false), select(!vec4<bool>(true, global1.a.x, global1.a.x, true), select(vec4<bool>(global1.a.x, true, global1.a.x, true), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, false)), vec4<bool>(global1.a.x, global1.a.x, true, true)), !select(vec4<bool>(global1.a.x, true, false, true), vec4<bool>(global1.a.x, false, false, true), global1.a.x)), func_5(Struct_1(global1.a, global1.b), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)) * -106f) + var_2.x));
    global1 = func_1(select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-13008i, global1.b, var_1, var_1), countOneBits(vec4<i32>(16542i, 1i, 35206i, global1.b))), _wgslsmith_mult_vec4_i32(vec4<i32>(77269i, 19866i, 18559i, global1.b) << (vec4<u32>(34220u, 42303u, 25811u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(1i, 0i, -1i, var_1))), vec4<i32>(_wgslsmith_mult_i32(-7794i, global1.b), 18055i >> (~global0.x % 32u), i32(-1i) * -global1.b, -countOneBits(-17084i)), vec4<bool>(any(!vec2<bool>(global1.a.x, true)), true, 23804i <= _wgslsmith_add_i32(0i, var_1), false)), select(~vec2<u32>(~52984u, u_input.a.x), ~(global0.yx << (global0.xz % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(1u, 1u)), vec2<u32>(17581u, 17105u), u_input.a.yy), !vec2<bool>(global1.a.x, select(global1.a.x, true, global1.a.x))), ~(~u_input.a.x), func_4(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 51526i, 1i, u_input.c), vec4<i32>(global1.b, u_input.c, var_1, u_input.c)), select(vec4<i32>(12398i, 1i, 26117i, var_1), vec4<i32>(-2420i, u_input.c, 14155i, 7703i), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)), var_2.x >= -2246f), -(vec4<i32>(-20921i, 1i, global1.b, u_input.c) | vec4<i32>(u_input.c, 94181i, 19398i, var_1))), func_4(~(2147483647i ^ var_1), func_4(-14155i, Struct_1(vec3<bool>(global1.a.x, false, true), -883i), select(vec4<bool>(false, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), false), var_3), vec4<bool>(true, false, false, any(global1.a.zx)), var_3), !vec4<bool>(true, global1.a.x, any(global1.a.xy), var_3.a.x == 1586f), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(19783u, ~(~u_input.a.x) & reverseBits(select(1u, 17746u, global1.a.x))));
}

