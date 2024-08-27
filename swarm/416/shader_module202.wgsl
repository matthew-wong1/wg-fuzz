struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: vec3<i32> = vec3<i32>(16332i, 22319i, -8896i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    var var_0 = select(select(arg_0, vec3<bool>(arg_2, !arg_0.x, true), true && ((true & arg_2) & (50505u == arg_1.x))), vec3<bool>(!(!all(vec2<bool>(false, arg_0.x))), true, arg_2), (countOneBits(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(23253u, 8260u))) <= 1u) == arg_0.x);
    global1 = -(~min(~_wgslsmith_mod_vec3_i32(u_input.c, u_input.c), abs(select(vec3<i32>(global1.x, global1.x, u_input.c.x), u_input.c, arg_0.x))));
    let var_1 = vec3<u32>(arg_1.x, ~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~firstLeadingBit(1u), ~reverseBits(34973u), 0u), abs(vec4<u32>(9068u, abs(91905u), ~673u, 17132u))));
    var var_2 = arg_1.x;
    global1 = -(~u_input.c);
    return ~arg_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(!all(arg_1), _wgslsmith_f_op_f32(f32(-1f) * -636f), !(!vec3<bool>(arg_0.b.c.x, false, true)), ~(~arg_3.b.d), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(arg_3.b.d.x), arg_3.b.e.x ^ 4294967295u), func_3(select(vec3<bool>(arg_2.a.a, true, arg_1.x), vec3<bool>(arg_0.b.a, true, true), arg_2.a.c), vec2<u32>(arg_3.b.d.x, arg_0.b.d.x), 1u == arg_0.b.e.x))), abs(u_input.b));
    var_0 = arg_2;
    var var_1 = Struct_1(arg_2.a.a | (arg_3.b.d.x >= ~arg_3.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b.b)))))), select(vec3<bool>(!(!arg_1.x), arg_1.x, true), !vec3<bool>(false, var_0.a.b == arg_0.b.b, true), vec3<bool>(select(var_0.b > 0i, true, 12760i == arg_0.a.x), arg_3.b.a, true)), vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(abs(arg_2.a.e.x), ~1u)), arg_3.b.e.x << (_wgslsmith_dot_vec2_u32(arg_0.b.d, vec2<u32>(var_0.a.d.x, 0u)) % 32u)), var_0.a.e << (~(~(vec2<u32>(36435u, var_0.a.e.x) >> (vec2<u32>(35058u, 66765u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_2 = true;
    var_2 = any(var_1.c.xy);
    return arg_3.b.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec4<bool> {
    global0 = array<vec4<i32>, 10>();
    let var_0 = -2147483647i ^ u_input.a.x;
    global1 = ~u_input.c;
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    return select(vec4<bool>(false, countOneBits(_wgslsmith_mult_i32(-7769i, var_0)) >= max(var_0, i32(-1i) * -31448i), arg_0.x, true), vec4<bool>((false & all(vec2<bool>(true, arg_0.x))) || (func_2(Struct_3(vec4<i32>(0i, -14407i, 1i, u_input.c.x), Struct_1(false, arg_1, arg_0, vec2<u32>(4294967295u, 15509u), vec2<u32>(0u, 0u)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(false, arg_0.x, false, arg_0.x), Struct_2(Struct_1(true, 1033f, arg_0, vec2<u32>(26778u, 0u), vec2<u32>(55693u, 42131u)), var_0), Struct_3(global0[_wgslsmith_index_u32(1u, 10u)], Struct_1(arg_0.x, arg_1, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec2<u32>(4294967295u, 71549u), vec2<u32>(0u, 1u)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))) && true), false, true, false), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501f - 600f) - _wgslsmith_f_op_f32(f32(-1f) * -560f)), _wgslsmith_f_op_f32(-1027f - -1000f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(1062f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-130f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) - -2033f))), _wgslsmith_f_op_f32(round(127f)));
    let var_1 = var_0.x;
    let var_2 = func_1(vec3<bool>(true, true, true), var_1);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1)) * -1122f))), -573f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1087f)), var_1));
    let var_4 = _wgslsmith_clamp_i32(u_input.c.x | _wgslsmith_dot_vec2_i32(firstTrailingBit(global1.zy) & _wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.c.x, -19981i)), ~u_input.a), -2147483647i, -38604i);
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(min(vec4<u32>(42722u, 4294967295u, 72335u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~max(~vec4<u32>(28931u, 19651u, 30337u, 1u), vec4<u32>(1308u, 0u, 32995u, 29796u))), ~vec2<i32>(0i, -10019i), abs(countOneBits(4294967295u)));
}

