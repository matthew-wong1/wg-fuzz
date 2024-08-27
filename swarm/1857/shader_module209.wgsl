struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, -4881i), 0u);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(0i, -1i), 1u);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, i32(-2147483648)), 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = vec2<i32>(2147483647i, 2147483647i) & _wgslsmith_sub_vec2_i32(firstLeadingBit(select(vec2<i32>(0i, 44149i), ~global1.a, 1440f <= arg_1)), global1.a);
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = Struct_1(vec2<i32>(~76455i, global2.a.x), abs(u_input.d.x));
    let var_4 = vec3<i32>(var_2.a.x, _wgslsmith_add_i32(i32(-1i) * -(global0.a.x << (32977u % 32u)), _wgslsmith_dot_vec4_i32(-(vec4<i32>(global1.a.x, global2.a.x, var_0.x, 5880i) << (u_input.d % vec4<u32>(32u))), abs(vec4<i32>(59929i, var_0.x, 51099i, -1i)))), -abs(~(var_3.a.x ^ global2.a.x)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(select(-global1.a, vec2<i32>(arg_0.a.x, _wgslsmith_clamp_i32(arg_0.a.x, 0i ^ global0.a.x, -798i)), true | !func_3(arg_0, -1272f)), 0u ^ global2.b);
    global1 = arg_0;
    global0 = arg_0;
    let var_1 = 979f;
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(-arg_1 | arg_0.a, vec2<i32>(select(1i, arg_0.a.x, true), min(8555i, arg_1.x)) >> (firstLeadingBit(vec2<u32>(1u, global2.b)) % vec2<u32>(32u))), 19100u);
    return Struct_1(~firstTrailingBit(max(vec2<i32>(1i, var_0.a.x) >> (vec2<u32>(u_input.b, var_0.b) % vec2<u32>(32u)), vec2<i32>(var_0.a.x, -34898i))), 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(global1.b, _wgslsmith_add_u32(_wgslsmith_add_u32(~(u_input.c << (arg_1.b % 32u)), 1u), u_input.b), global0.b, ~(_wgslsmith_mod_u32(~global1.b, global1.b) | 1u));
    global0 = func_2(arg_1, _wgslsmith_sub_vec2_i32(abs(global0.a), ~vec2<i32>(arg_1.a.x & global2.a.x, 2147483647i)), ~global0.a.x);
    let var_1 = countOneBits(arg_1.a.x);
    var var_2 = Struct_1(-vec2<i32>(-1i, _wgslsmith_mult_i32(reverseBits(-74112i), global1.a.x)), global0.b);
    global0 = func_2(func_2(Struct_1(arg_1.a & reverseBits(var_2.a), var_0.x), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, var_1), _wgslsmith_sub_vec3_i32(vec3<i32>(-7363i, -1i, var_1), vec3<i32>(var_1, global1.a.x, 1i))), 26207i), select(1i, (global0.a.x ^ 0i) | _wgslsmith_mult_i32(var_2.a.x, 2147483647i), any(vec2<bool>(arg_0.x, arg_0.x)))), reverseBits(~vec2<i32>(var_1 | 7152i, 8262i)), var_1);
    return func_2(func_2(func_2(Struct_1(~vec2<i32>(arg_1.a.x, global1.a.x), ~65816u), abs(-arg_1.a), -2147483647i ^ -var_1), vec2<i32>(1i, 1i), global2.a.x), global1.a, -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, 2147483647i, global0.a.x, 7206i)) & (vec4<i32>(var_2.a.x, -14466i, global2.a.x, arg_1.a.x) | vec4<i32>(-26914i, -3309i, var_1, -1i)), vec4<i32>(abs(global2.a.x), global1.a.x, countOneBits(-31456i), 1i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = !select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(any(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true), true)), any(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(false, arg_1.x, true), vec3<bool>(true, true, false))), all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)) && true), vec3<bool>(false, true, true));
    global1 = arg_0;
    var var_1 = ~(u_input.d.x | countOneBits(~_wgslsmith_clamp_u32(u_input.c, 78474u, global2.b)));
    global0 = func_2(Struct_1(global0.a, _wgslsmith_add_u32(u_input.a.x, ~(~9204u))), vec2<i32>(-global2.a.x ^ ~func_1(var_0, Struct_1(vec2<i32>(global2.a.x, global0.a.x), global2.b)).a.x, arg_0.a.x), min(i32(-1i) * -23773i, _wgslsmith_mod_i32(global0.a.x, 14521i) & _wgslsmith_mult_i32(countOneBits(arg_0.a.x), 2147483647i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(687f, -852f, -1547f, 956f), _wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 251f, 993f, 1158f) + vec4<f32>(-451f, 943f, 1196f, -427f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, 264f, 1030f, -841f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(489f, 461f, -112f, -1192f)))))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * 422f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-595f, 230f) + 2118f))), 878f, 1f, _wgslsmith_f_op_f32(step(-948f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -101f)))))));
    return max(~(~abs(global2.b)), 63693u) >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<i32>(global2.a.x, global1.a.x), func_4(func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), Struct_1(vec2<i32>(global0.a.x, 0i) ^ global1.a, countOneBits(global0.b))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_3(Struct_1(global1.a, global1.b), -1000f)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_0 = Struct_1(-_wgslsmith_mult_vec2_i32(abs(global0.a), select(vec2<i32>(global2.a.x, global1.a.x), func_2(Struct_1(vec2<i32>(-2147483647i, global1.a.x), global1.b), global2.a, -104957i).a, all(vec3<bool>(true, false, true)))), 26382u);
    global1 = Struct_1(~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, -7960i), global2.a, global1.a), var_0.a), global1.a), global1.b);
    global2 = var_0;
    global1 = var_0;
    let var_1 = vec4<i32>(global1.a.x, ~abs(1i), 39194i, countOneBits(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_2(Struct_1(vec2<i32>(global0.a.x, 1i), global2.b), vec2<i32>(-6596i, var_0.a.x), global0.a.x)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(58301u, global1.b) >> (_wgslsmith_clamp_u32(918u, max(_wgslsmith_mod_u32(24059u, 13068u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, u_input.b, global1.b), vec3<u32>(0u, var_0.b, 0u))), global0.b) % 32u), vec2<u32>(~global1.b, global2.b), 13416u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2370f, -377f) + vec2<f32>(-1283f, -698f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1152f, 2208f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-306f, -483f))) * vec2<f32>(1000f, -205f)))));
}

