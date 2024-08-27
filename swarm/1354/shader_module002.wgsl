struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    global0 = array<vec3<i32>, 29>();
    var var_0 = ~vec3<u32>(~1u, ~select(~0u, _wgslsmith_mult_u32(arg_0, 1u), u_input.c.x >= -1i), ~arg_0);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(arg_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -879f));
    var var_2 = -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, -13279i, u_input.c.x, u_input.b.x) ^ vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, 2147483647i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_0, var_0.x), vec4<u32>(arg_0, var_0.x, u_input.a.x, 16317u)) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.b.x), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 33835i, -2147483647i, u_input.c.x), vec4<i32>(0i, 1i, u_input.b.x, u_input.c.x)))));
    var_2 = ~(~(-vec4<i32>(firstTrailingBit(33756i), min(var_2.x, u_input.b.x), 1i & var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_2.x, 0i), vec4<i32>(u_input.b.x, var_2.x, u_input.c.x, var_2.x)))));
    return -10628i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = Struct_2(firstTrailingBit(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(15870u, u_input.a.x), vec2<u32>(5499u, 4294967295u), u_input.a))), Struct_1(false), select(-42663i, -func_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-367f, -500f), vec2<f32>(1052f, -2429f)))), !(~61851u <= u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1818f);
    let var_2 = ~vec2<u32>(max(1u, 1u), 58106u);
    let var_3 = ~(~(~vec4<u32>(~66639u, 36081u, var_0.a.x, var_0.a.x)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_5) -> Struct_2 {
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_0 = arg_3;
    global0 = array<vec3<i32>, 29>();
    let var_1 = func_2(-2147483647i);
    return func_2(arg_1.a.c << (_wgslsmith_mult_u32(~(~4294967295u), arg_3.b.a.x) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> vec4<bool> {
    global0 = array<vec3<i32>, 29>();
    let var_0 = -56419i;
    var var_1 = Struct_4(func_2(func_2(var_0 & -1i).c << (8712u % 32u)), Struct_2(_wgslsmith_add_vec2_u32(arg_0.a, _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_3.b.a.x, 71779u)), ~u_input.a)), Struct_1(any(!vec2<bool>(true, arg_3.a.b.a))), var_0));
    var_1 = Struct_4(func_2(-57316i), var_1.a);
    var_1 = Struct_4(func_2(arg_2.a.c), arg_3.b);
    return !vec4<bool>(!(!any(vec2<bool>(true, arg_0.b.a))), true, false, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(795f, 128f)) * -1435f), -639f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -571f) * -1034f)))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(var_0.x - -1000f);
    var var_2 = select(!func_4(func_1(true, Struct_4(Struct_2(u_input.a, Struct_1(false), u_input.c.x), Struct_2(vec2<u32>(0u, 1u), Struct_1(false), u_input.b.x)), Struct_4(Struct_2(u_input.a, Struct_1(true), 1i), Struct_2(vec2<u32>(u_input.a.x, 15158u), Struct_1(false), u_input.b.x)), Struct_5(vec3<u32>(u_input.a.x, 23058u, u_input.a.x), Struct_2(vec2<u32>(10457u, 4294967295u), Struct_1(true), u_input.c.x), vec3<i32>(u_input.b.x, 18031i, -2147483647i), false, var_0.x)), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), Struct_4(func_2(-1i), func_1(true, Struct_4(Struct_2(vec2<u32>(33077u, u_input.a.x), Struct_1(false), 26905i), Struct_2(u_input.a, Struct_1(true), u_input.b.x)), Struct_4(Struct_2(u_input.a, Struct_1(true), u_input.c.x), Struct_2(u_input.a, Struct_1(true), -2147483647i)), Struct_5(vec3<u32>(46108u, u_input.a.x, 0u), Struct_2(u_input.a, Struct_1(false), 0i), vec3<i32>(u_input.b.x, u_input.c.x, -1i), true, var_0.x))), Struct_4(func_2(u_input.c.x), func_1(true, Struct_4(Struct_2(u_input.a, Struct_1(true), 1i), Struct_2(u_input.a, Struct_1(false), u_input.b.x)), Struct_4(Struct_2(u_input.a, Struct_1(true), u_input.c.x), Struct_2(u_input.a, Struct_1(false), u_input.b.x)), Struct_5(vec3<u32>(42422u, u_input.a.x, 21198u), Struct_2(u_input.a, Struct_1(false), -20947i), vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), false, var_0.x)))), !vec4<bool>(false, false, any(vec4<bool>(false, false, false, false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1032f)))) * 602f) < var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(861f, -736f, var_0.x)) * vec3<f32>(var_0.x, -715f, var_0.x)))))), 4294967295u);
}

