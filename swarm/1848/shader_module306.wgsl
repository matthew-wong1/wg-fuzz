struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = _wgslsmith_sub_i32(28632i, 0i);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.xx, -vec2<i32>(2147483647i, 46673i)), vec2<i32>(-u_input.b.x, i32(-1i) * -u_input.d.x)) >> (0u % 32u);
    let var_0 = ~_wgslsmith_div_vec4_u32(countOneBits(countOneBits(arg_0.b.a) >> (~vec4<u32>(91471u, arg_0.b.a.x, arg_0.b.a.x, u_input.e) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, arg_0.b.a.x, arg_0.b.a.x, u_input.a) | arg_0.b.a));
    var var_1 = Struct_1(max(vec3<i32>(-2147483647i, -19263i, 70401i) << (~arg_0.b.a.xzy % vec3<u32>(32u)), u_input.c & vec3<i32>(u_input.b.x, 1i, u_input.d.x)) << (var_0.xzz % vec3<u32>(32u)), _wgslsmith_mult_u32(max(4294967295u, ~var_0.x), arg_0.b.a.x));
    var_1 = Struct_1(_wgslsmith_div_vec3_i32(firstLeadingBit(var_1.a), abs(var_1.a)), var_0.x);
    return firstLeadingBit(u_input.a | var_1.b);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(vec4<u32>(1u, func_3(Struct_4(_wgslsmith_div_f32(1000f, -763f), Struct_3(vec4<u32>(4294967295u, 0u, u_input.a, 0u)))), select(14674u, ~reverseBits(1u), any(vec2<bool>(false, false))), 1u));
    let var_1 = Struct_2(Struct_1(abs(vec3<i32>(-2147483647i, u_input.d.x << (45269u % 32u), ~(-2147483647i))), max(~56145u, u_input.a)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.d.x, ~11046i, _wgslsmith_div_i32(31236i, u_input.d.x)), u_input.c), 10806u));
    var var_2 = var_1.a.a.x;
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i) << (_wgslsmith_clamp_u32(~0u, 19367u, countOneBits(0u)) % 32u), 59261i, 2147483647i), firstLeadingBit(u_input.e & 3104u));
    var_2 = min(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d.x, 12277i, 22921i, 453i), ~u_input.b, any(vec3<bool>(false, true, true))), -vec4<i32>(-1i, u_input.d.x, var_3.a.x, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, var_1.b.a), -var_3.a, select(vec3<i32>(2147483647i, u_input.b.x, -58477i), var_1.a.a, vec3<bool>(true, false, false))), _wgslsmith_add_vec3_i32(u_input.b.ywz & vec3<i32>(var_3.a.x, 14320i, var_3.a.x), vec3<i32>(10005i, -15269i, 30342i) & var_3.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.d.x, var_3.a.x), select(vec3<i32>(u_input.d.x, var_3.a.x, -1i) >> (vec3<u32>(0u, 50892u, 0u) % vec3<u32>(32u)), var_1.a.a, true))));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(ceil(242f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-491f, -248f, false)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1214f)))))), var_0);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_4 {
    global0 = _wgslsmith_mod_i32(min(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(28480i, u_input.d.x, u_input.b.x, 1i)), arg_1), -2147483647i), arg_1.x) & select(~_wgslsmith_clamp_i32(abs(1i), 0i | u_input.d.x, arg_1.x << (arg_0.a.x % 32u)), u_input.d.x, true);
    var var_0 = -1569f;
    var_0 = 783f;
    let var_1 = arg_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_i32(~u_input.c.x, u_input.c.x >> (~firstLeadingBit(u_input.e) % 32u));
    global0 = -((~u_input.d.x & ~1i) & _wgslsmith_add_i32(32978i, _wgslsmith_sub_i32(u_input.c.x, 2147483647i))) << (u_input.a % 32u);
    var var_0 = func_1(Struct_3(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 0u, 14824u, u_input.e) >> (vec4<u32>(u_input.a, u_input.e, u_input.e, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.a, 0u, 28474u))), ~vec4<i32>(1i, _wgslsmith_sub_i32(u_input.d.x, u_input.c.x), u_input.c.x, u_input.b.x));
    var var_1 = -815f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.a.x, ~u_input.a), ~((vec2<u32>(u_input.a, u_input.a) | var_0.b.a.xz) ^ ~vec2<u32>(1u, var_0.b.a.x)), abs(~var_0.b.a.xy)));
}

