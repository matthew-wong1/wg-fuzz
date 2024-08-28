struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32) -> vec2<bool> {
    return !select(arg_0, vec2<bool>(false, arg_0.x), true);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(~u_input.b, true, _wgslsmith_add_u32(38042u, ~_wgslsmith_mod_u32(u_input.b, ~u_input.a.x)));
    global0 = select((false & ((false || var_0.b) || var_0.b)) & any(!(!vec4<bool>(var_0.b, false, var_0.b, true))), any(!select(!vec4<bool>(false, false, var_0.b, var_0.b), !vec4<bool>(false, false, var_0.b, true), var_0.b && var_0.b)), true);
    var var_1 = vec4<u32>(33344u, max(u_input.b, u_input.b), _wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(u_input.b, u_input.a.x)), 1u);
    var_1 = vec4<u32>(27871u, 1u, u_input.a.x, u_input.b);
    var var_2 = var_0.a;
    return ~abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(arg_0, 2147483647i, 2147483647i), vec3<bool>(true, var_0.b, var_0.b)), vec3<i32>(countOneBits(arg_0), arg_0, 2147483647i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(41659u, 5971u, arg_1.a, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, arg_1.a, arg_1.a), false), vec4<u32>(arg_1.a, 1u, arg_1.c, 0u)) | 44045u, ~(~(arg_1.c << (19576u % 32u))), ~arg_1.c) & max(u_input.a, _wgslsmith_add_vec3_u32(~(vec3<u32>(56179u, arg_1.a, u_input.a.x) & u_input.a), ~u_input.a));
    var var_1 = !arg_0.a.a.x;
    global0 = true;
    var var_2 = Struct_4(Struct_3(!vec2<bool>(select(arg_0.a.a.x, true, false), false), func_3(i32(-1i) * -arg_0.a.b.x, vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(938f * 1670f)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2059f);
    return Struct_1(u_input.a.x, arg_0.a.a.x, ~min(u_input.b ^ 56678u, 0u) | ~1u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(countOneBits(arg_3.a), max(arg_3.a, 39240u)), 0u), 4294967295u << ((u_input.a.x >> (~1u % 32u)) % 32u), 16852u), arg_3.b, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a))));
    global0 = any(select(func_1(func_1(vec2<bool>(arg_3.b, false), vec2<u32>(arg_3.c, arg_3.c), ~11910i), reverseBits(u_input.a.zz), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_1.x, -1i), vec4<i32>(arg_1.x, -1i, 2147483647i, -1i)))), select(vec2<bool>(0u > arg_3.a, true), !select(vec2<bool>(true, true), vec2<bool>(arg_3.b, var_0.b), vec2<bool>(true, false)), select(!vec2<bool>(var_0.b, var_0.b), func_1(vec2<bool>(var_0.b, false), u_input.a.zz, arg_1.x), !arg_3.b)), all(vec4<bool>(true, true, var_0.b, var_0.c == arg_3.c))));
    var var_1 = select(vec2<bool>(!func_1(vec2<bool>(var_0.b, false), vec2<u32>(var_0.a, 1u), -2147483647i).x && true, !all(vec4<bool>(arg_3.b, true, false, var_0.b))), vec2<bool>(true, false), !(!(!(!vec2<bool>(var_0.b, false)))));
    global0 = false;
    var var_2 = !(!vec4<bool>(var_1.x, false, true, func_2(Struct_4(Struct_3(vec2<bool>(true, var_1.x), vec3<i32>(23217i, arg_1.x, 2147483647i))), var_0).b));
    return _wgslsmith_f_op_vec4_f32(-arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(vec2<bool>(true, true), vec2<u32>(u_input.b, u_input.b), 1i)));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1819f, -883f, -561f, 1100f) + vec4<f32>(851f, -207f, 1000f, 2020f)) - _wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(14905i, 1i, 42502i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 12635u) % vec3<u32>(32u)), vec3<i32>(-46494i, -1i, 26150i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, -374f, -1000f, -1877f)), func_2(Struct_4(Struct_3(vec2<bool>(false, true), vec3<i32>(-13021i, 30003i, -55705i))), Struct_1(u_input.a.x, false, 0u))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, -444f, -1411f, -1663f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 548f, -1170f, 424f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1107f, -1000f, 1728f, -1733f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -248f, -130f, 1056f) + vec4<f32>(1013f, 274f, 2633f, 848f)), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1136f, -1191f, 186f, -508f), vec4<f32>(1770f, -351f, -1000f, -2017f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, 1469f, -970f, -120f) * vec4<f32>(484f, -1000f, 571f, 767f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))) - _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, var_0.x, -490f, var_0.x) + var_0) - vec4<f32>(963f, var_0.x, var_0.x, -404f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-803f + 979f));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(u_input.b), max(firstTrailingBit(vec4<i32>(-2147483647i, 13950i, 32136i, 10282i)) << (~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 6298u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-4712i, -2147483647i, abs(-23324i), _wgslsmith_sub_i32(33067i, 0i)))), _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b, 4294967295u, u_input.a.x))), abs(~vec3<u32>(64280u, 1u, u_input.b)) & ~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), 4294967295u);
}

