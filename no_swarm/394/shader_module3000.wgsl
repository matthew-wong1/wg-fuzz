struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = !all(select(!vec3<bool>(false, false, global1.x), select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, false), global1.x), !vec3<bool>(global1.x, false, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, global1.x), global1.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zyz));
    let var_2 = Struct_5(Struct_3(!global1.xz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, 1708f, 316f, arg_0.x)) - _wgslsmith_div_vec4_f32(arg_0, arg_0)), vec4<f32>(_wgslsmith_div_f32(-1051f, arg_0.x), 771f, _wgslsmith_f_op_f32(-var_1.x), arg_0.x))), ~firstLeadingBit(~0u));
    let var_3 = Struct_3(select(var_2.a.a, vec2<bool>(firstLeadingBit(0i) > u_input.d, (arg_0.x < -877f) && false), !select(!vec2<bool>(var_2.a.a.x, var_2.a.a.x), vec2<bool>(var_2.a.a.x, true), var_2.a.a.x)), var_2.a.b);
    let var_4 = abs(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(696i, -78066i) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), u_input.c.zw), u_input.c.xz)));
    return vec4<i32>(firstTrailingBit(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_4.x, -17441i, u_input.b, var_4.x), vec4<i32>(u_input.c.x, 2147483647i, 10794i, -2147483647i)), u_input.c)), u_input.c.x, var_4.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_4.x, _wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c)), -1i));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_vec4_i32(~u_input.c, vec4<i32>(-2147483647i, ~33506i, 2147483647i << (u_input.a.x % 32u), max(0i, arg_2.x))), false & global1.x, 21342i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-248f)) - -1370f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, 1302f, -191f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, 1330f, -1015f)))))), Struct_1(~(~_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(arg_0, arg_2.x, -37208i, arg_0))), global1.x, _wgslsmith_dot_vec4_i32(func_3(vec4<f32>(-2244f, 978f, 1860f, 2117f)), vec4<i32>(_wgslsmith_add_i32(32294i, -7427i), ~(-9451i), ~2147483647i, u_input.d)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1432f)) - _wgslsmith_f_op_f32(133f - 692f))), vec3<f32>(1f, 1f, 1f)));
    var var_1 = _wgslsmith_f_op_f32(trunc(168f));
    global1 = vec3<bool>(arg_1.x, var_0.a.b, arg_1.x);
    var var_2 = u_input.c | _wgslsmith_div_vec4_i32(var_0.b.a, arg_2);
    global0 = array<Struct_5, 3>();
    return ~1u;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = ~(~23042u);
    global0 = array<Struct_5, 3>();
    var var_1 = vec3<u32>(17u, ~func_2(-(i32(-1i) * -157i), global1.xy, u_input.c), 126985u);
    var var_2 = global1.yz;
    let var_3 = -u_input.c.wwz & _wgslsmith_sub_vec3_i32(-u_input.c.wxx, u_input.c.wyz);
    return Struct_3(!global1.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, -1703f, 257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(717f, 514f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(vec3<bool>(false, false, !global1.x)));
    var var_1 = vec4<u32>(0u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(3790u, 31518u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)) % 32u), countOneBits(u_input.a.x >> (4294967295u % 32u))), u_input.a), ~(~((6165u & u_input.a.x) | ~23592u)));
    var_1 = firstLeadingBit(~abs(vec4<u32>(u_input.a.x, 0u, 61567u, 3589u))) ^ _wgslsmith_add_vec4_u32(~(vec4<u32>(33338u, u_input.a.x, u_input.a.x, 52264u) | ~vec4<u32>(0u, 30809u, u_input.a.x, var_1.x)), abs(~vec4<u32>(34537u, u_input.a.x, 7081u, 46678u)));
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 39890i, -1i), u_input.c) ^ vec4<i32>(-4340i, u_input.c.x, 40745i, u_input.c.x)) >> (~vec4<u32>(43202u, var_1.x, 1281u, var_1.x) % vec4<u32>(32u)), u_input.c), true, u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -253f))), vec3<f32>(_wgslsmith_f_op_f32(step(-379f, 1876f)), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x * 1650f))))));
    let var_3 = u_input.c.x << (var_1.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(var_1.wxy, min(vec3<u32>(u_input.a.x, 4294967295u, var_1.x), vec3<u32>(29952u, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 88453u, 4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 53449u, 4294967295u), vec4<u32>(39263u, u_input.a.x, 4294967295u, 96006u) | vec4<u32>(u_input.a.x, var_1.x, 29407u, 41540u), ~vec4<u32>(1u, u_input.a.x, var_1.x, 0u))), ~var_1.x), 0u, u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, var_2.d, var_0.b.x), var_0.b.zxy, global1.x)))), _wgslsmith_f_op_vec3_f32(-var_0.b.yyw))));
}

