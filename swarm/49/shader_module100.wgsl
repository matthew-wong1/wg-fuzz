struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    return ~(~(max(~vec2<u32>(global0.x, global0.x), ~vec2<u32>(global0.x, 1u)) << (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, 4294967295u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = vec2<u32>(abs(_wgslsmith_dot_vec2_u32(func_3(), vec2<u32>(~arg_1.d.x, ~arg_1.d.x))), _wgslsmith_dot_vec3_u32(firstLeadingBit(~(vec3<u32>(0u, arg_1.d.x, 23220u) >> (vec3<u32>(0u, arg_1.d.x, arg_1.d.x) % vec3<u32>(32u)))), vec3<u32>(reverseBits(arg_1.d.x), ~1u, func_3().x)));
    global0 = vec2<u32>(4294967295u, ~1u);
    global0 = ~arg_1.d;
    global0 = _wgslsmith_div_vec2_u32(func_3(), func_3());
    global0 = countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(1u, 812u), ~vec2<u32>(4294967295u, global0.x), true), ~vec2<u32>(global0.x, arg_1.d.x)), ~_wgslsmith_mod_vec2_u32(~arg_1.d, arg_1.d)));
    return ~abs(arg_1.d);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = arg_0;
    global0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(~func_2(vec3<f32>(-576f, 1697f, -1050f), Struct_1(-258f, arg_2.a.a, vec2<i32>(2147483647i, arg_0.c.x), arg_1)), vec2<u32>(arg_1.x, arg_1.x)) << (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.b, 4294967295u, arg_2.b.b, 4294967295u), vec4<u32>(arg_2.a.d.x, arg_0.d.x, arg_2.b.b, 1u)), 0u) % vec2<u32>(32u)));
    var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_2.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f))), arg_2.a.b, vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.c, var_0.c), var_0.c.x), ~vec2<u32>(1u, select(~0u, 4294967295u, true)));
    var var_2 = max(~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c.x, arg_0.c.x, 1i), ~vec3<i32>(arg_2.a.c.x, -69229i, 0i))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.c.x, 4708i), select(u_input.a, u_input.a, true), firstTrailingBit(var_0.c.x)) ^ reverseBits(vec3<i32>(arg_0.c.x, var_0.c.x, var_0.c.x) ^ vec3<i32>(55514i, var_0.c.x, -12211i)), firstLeadingBit(vec3<i32>(-2147483647i & arg_2.a.c.x, arg_0.c.x, var_1.c.x))));
    return ~vec3<u32>(22058u, arg_0.d.x, abs(countOneBits(~93784u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, global0.x, global0.x)), func_1(Struct_1(274f, 1496f, vec2<i32>(-1i, -15427i), vec2<u32>(global0.x, 1u)), vec2<u32>(11818u, 4294967295u), Struct_3(Struct_1(-633f, -927f, vec2<i32>(0i, 1i), vec2<u32>(0u, 4294967295u)), Struct_2(-1069f, global0.x)))) << (vec3<u32>(4294967295u, 51816u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(42608u, global0.x))) % vec3<u32>(32u)), ~(vec3<u32>(14672u, 0u, 68305u) | vec3<u32>(1u, global0.x, global0.x)));
    var var_1 = Struct_3(Struct_1(1f, -1039f, ~firstTrailingBit(vec2<i32>(u_input.a, u_input.a)) & (vec2<i32>(28683i, u_input.a) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -24272i))), vec2<u32>(~global0.x << (1u % 32u), ~var_0.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-217f, 194f)) + _wgslsmith_div_f32(-1302f, 1f)), global0.x));
    let var_2 = Struct_3(Struct_1(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.a)))), -vec2<i32>(var_1.a.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.a.c.x, u_input.a), vec3<i32>(-15450i, 27268i, var_1.a.c.x))), firstTrailingBit(var_0.xz)), var_1.b);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(977f, var_2.b.a))))), -1893f, -478f);
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_2.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b, _wgslsmith_f_op_f32(var_3.x + var_2.b.a)))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 4294967295u, 30713u), abs(vec3<u32>(4294967295u, var_2.a.d.x, 58725u))), var_0.x, ~var_1.a.d.x), countOneBits(vec4<u32>(var_1.a.d.x & 28964u, 1u, 57319u, ~4294967295u))), vec3<i32>(var_1.a.c.x, var_2.a.c.x, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a, var_1.a.c.x), vec4<i32>(var_1.a.c.x, u_input.a, var_1.a.c.x, 47044i)))));
}

