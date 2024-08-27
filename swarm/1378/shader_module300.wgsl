struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_3(arg_1.a.wzz & ~select(arg_1.a.zww, select(u_input.e, vec3<i32>(arg_0.a.x, u_input.d, u_input.e.x), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    global0 = all(select(select(vec4<bool>(any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)), any(vec2<bool>(false, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), all(vec3<bool>(true, true, false))), vec4<bool>(any(vec3<bool>(false, true, false)), !all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, false)) && true, true), true));
    let var_1 = 11834u;
    global0 = true;
    var var_2 = !vec2<bool>(select(any(vec3<bool>(false, true, true)) | select(false, true, true), true, true), true);
    return vec2<bool>(true || all(select(vec3<bool>(false, var_2.x, var_2.x), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, true)), vec3<bool>(var_2.x, true, false))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0);
    global0 = all(select(func_3(Struct_1(_wgslsmith_clamp_vec4_i32(arg_0.a, var_0.a.a, arg_0.a)), Struct_1(arg_0.a), u_input.a, min(3804u, _wgslsmith_mult_u32(16036u, u_input.a))), vec2<bool>(true, all(vec3<bool>(false, true, false))), false));
    global0 = true;
    global0 = ~1u <= abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(1u, u_input.b, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, 43977u, u_input.a)), vec4<u32>(59094u, u_input.b, u_input.b, u_input.a) << (vec4<u32>(u_input.a, 1u, u_input.b, u_input.b) % vec4<u32>(32u))), vec4<u32>(7731u, ~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.a), ~22772u)));
    global0 = true;
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec3<u32> {
    global0 = arg_3;
    var var_0 = arg_2;
    let var_1 = Struct_3(select(arg_1.a.yyz, vec3<i32>(-99545i, _wgslsmith_clamp_i32(52648i, -arg_1.a.x, -42981i), ~u_input.e.x >> (select(7813u, 117567u, arg_3) % 32u)), vec3<bool>(arg_3, true, all(select(vec4<bool>(true, false, arg_3, true), vec4<bool>(false, arg_3, false, arg_3), arg_3)))));
    global0 = true;
    global0 = true;
    return vec3<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u >> ((u_input.a ^ u_input.b) % 32u)), ~_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 4294967295u))), ~(~firstTrailingBit(54900u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> bool {
    let var_0 = func_4(u_input.c, func_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-53876i, u_input.d, u_input.d, u_input.c), vec4<i32>(u_input.d, 9974i, -2147483647i, 0i), vec4<i32>(-2147483647i, -1476i, -91387i, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -176f, -677f, 2268f), vec4<f32>(1508f, -639f, 458f, 1000f))) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(609f))))), arg_1.x) << (vec3<u32>(~(min(u_input.a, 4294967295u) | func_4(2147483647i, Struct_1(vec4<i32>(-1i, 1i, u_input.d, 6519i)), -1638f, arg_0.x).x), ~u_input.b, u_input.b) % vec3<u32>(32u));
    var var_1 = func_2(func_2(Struct_1(vec4<i32>(12767i, 2147483647i, -1i, u_input.c) >> (vec4<u32>(var_0.x, 1u, 1u, var_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1304f, -667f, 893f, 1388f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1325f, -615f, -146f, 425f))), vec4<f32>(875f, 1195f, 1000f, 679f)))) - vec4<f32>(-497f, -310f, -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-741f, -348f))))));
    var var_2 = max(_wgslsmith_add_vec2_u32(var_0.zz, _wgslsmith_sub_vec2_u32(var_0.yy, ~vec2<u32>(u_input.b, u_input.a))), func_4(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.c, var_1.a.x, -1i), vec4<i32>(1i, u_input.c, var_1.a.x, var_1.a.x)), -vec4<i32>(-38421i, var_1.a.x, var_1.a.x, var_1.a.x))), Struct_1(reverseBits(_wgslsmith_sub_vec4_i32(var_1.a, var_1.a))), -619f, true).yz);
    let var_3 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.x, 47075u, 4294967295u, 0u) | ~vec4<u32>(29791u, var_2.x, var_0.x, var_2.x), ~vec4<u32>(~6761u, u_input.a >> (71999u % 32u), 48174u, u_input.a)), vec4<u32>(max(4294967295u, min(44584u, var_2.x ^ var_0.x)), 1u, ~47818u, ~(~(~var_0.x))));
    global0 = any(vec3<bool>(arg_0.x && all(select(vec2<bool>(true, arg_0.x), arg_0, arg_1)), any(vec3<bool>(arg_1.x, func_3(Struct_1(vec4<i32>(-7i, var_1.a.x, -2147483647i, -18198i)), Struct_1(var_1.a), 0u, u_input.a).x, false)), !arg_1.x));
    return !(func_2(func_2(Struct_1(vec4<i32>(u_input.e.x, -2147483647i, -24952i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -114f, 1106f, 2432f))), vec4<f32>(1753f, _wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(f32(-1f) * -769f), 1f)).a.x >= _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.e), -vec3<i32>(-2147483647i, 9121i, u_input.c), var_1.a.zyz), (vec3<i32>(2147483647i, -7120i, -18435i) >> (var_0 % vec3<u32>(32u))) ^ firstTrailingBit(vec3<i32>(9231i, -35379i, -25074i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = any(!vec4<bool>(true, !func_1(vec2<bool>(false, true), vec2<bool>(false, true)), func_3(func_2(Struct_1(vec4<i32>(-12960i, -2147483647i, 0i, u_input.c)), vec4<f32>(1471f, -1000f, 941f, 364f)), func_2(Struct_1(vec4<i32>(-1i, -2147483647i, 1i, u_input.e.x)), vec4<f32>(-1535f, 905f, -1376f, -2035f)), u_input.b | 4294967295u, u_input.b).x, true));
    global0 = true;
    let var_0 = true;
    global0 = any(!vec3<bool>(var_0, var_0 && !var_0, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b) ^ ~1u, vec2<f32>(_wgslsmith_f_op_f32(trunc(994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(769f, 1606f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1132f), -1925f)))));
}

