struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2553u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> u32 {
    return ~(~4294967295u << (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 49099u)), ~(~57018u)) % 32u));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = func_3(_wgslsmith_f_op_f32(round(var_0)));
    global0 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = ~(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 28340u), vec2<u32>(4294967295u, 0u), select(true, true, false)), vec2<u32>(abs(0u), abs(1u))) ^ ~1u);
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)));
    return Struct_1(var_1.xy, true, ~(~1u), vec3<u32>(17011u, ~1u >> (~(~0u) % 32u), ~21853u));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(func_2(reverseBits(~vec4<i32>(18350i, -1i, -5040i, u_input.a))), Struct_1(select(!func_2(vec4<i32>(u_input.a, 18398i, u_input.c.x, -2147483647i)).a, vec2<bool>(true, true), false), false, ~0u, ~vec3<u32>(1u, 1u, firstLeadingBit(1u))));
    global0 = 4294967295u;
    let var_1 = Struct_2(Struct_1(var_0.a.a, var_0.b.a.x, 1u, vec3<u32>(~(~var_0.b.d.x), _wgslsmith_sub_u32(var_0.b.d.x, firstLeadingBit(var_0.b.c)), ~var_0.b.c)), Struct_1(func_2(~(-vec4<i32>(u_input.c.x, u_input.c.x, 1i, -6224i))).a, ~(~79090u) != var_0.b.c, ~1u, ~(~_wgslsmith_add_vec3_u32(var_0.b.d, vec3<u32>(var_0.b.d.x, 1u, var_0.a.c)))));
    global0 = func_2(vec4<i32>(44211i, u_input.a, i32(-1i) * -2147483647i, u_input.a)).d.x | var_1.b.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1787f)) * -132f), 405f)));
    return ~max(var_0.b.d.x, abs(~var_0.a.c | ~var_1.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 15032u, 1u), vec4<u32>(33966u, 6171u, 0u, 4294967295u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 11975u, 4294967295u, 63768u), vec4<u32>(4294967295u, 3047u, 15016u, 5953u))) << ((0u << (~func_1() % 32u)) % 32u);
    let var_0 = select(func_2(min(abs(vec4<i32>(1i, u_input.b, 20087i, u_input.a) >> (vec4<u32>(91648u, 10396u, 46218u, 21034u) % vec4<u32>(32u))), -vec4<i32>(2147483647i, u_input.a, u_input.b, 1i))).a, func_2(min(~vec4<i32>(u_input.c.x, u_input.b, u_input.a, 15119i), vec4<i32>(u_input.b & u_input.b, ~1i, firstLeadingBit(0i), ~u_input.a))).a, vec2<bool>(!(!any(vec2<bool>(true, true))), false));
    let var_1 = 17533u;
    global0 = var_1;
    var var_2 = Struct_2(func_2(select(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(39859i, 1i, u_input.a, -1i), vec4<i32>(u_input.b, -25417i, u_input.a, -33744i))), vec4<i32>(u_input.c.x << (1u % 32u), ~0i, u_input.b, ~u_input.c.x), false)), func_2(~_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, u_input.a, 0i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-8105i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b)))));
    let var_3 = Struct_1(select(var_2.a.a, vec2<bool>(!(4294967295u >= var_2.b.d.x), false), vec2<bool>(all(select(vec4<bool>(true, false, false, var_2.b.b), vec4<bool>(var_2.b.a.x, var_2.b.a.x, true, var_2.b.a.x), vec4<bool>(true, true, true, var_0.x))), true)), true, 32945u | var_2.b.c, ~firstLeadingBit(vec3<u32>(38537u, var_2.b.c, var_2.b.d.x)) | ~var_2.a.d);
    let var_4 = var_3;
    global0 = 41905u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 521f), -1000f, -216f, _wgslsmith_div_f32(-191f, -975f))))));
}

