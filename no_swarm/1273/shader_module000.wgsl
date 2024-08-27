struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_5(Struct_1(0i), abs(i32(-1i) * -_wgslsmith_mod_i32(-31268i, 12719i)), vec2<bool>(true && any(select(vec2<bool>(false, true), arg_0, false)), arg_0.x & !any(vec4<bool>(false, arg_0.x, true, arg_0.x))), max(1i, min(i32(-1i) * -1i, 29129i) << (u_input.c.x % 32u)));
    var var_1 = 30814u;
    var var_2 = vec3<u32>(abs(4294967295u), ~16373u, 0u);
    var_1 = u_input.b.x;
    let var_3 = !select(!vec3<bool>(!var_0.c.x, arg_0.x || arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), var_0.c.x);
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = i32(-1i) * -_wgslsmith_mod_i32(-42299i, ~2147483647i << (func_3(vec2<bool>(arg_1, arg_1), vec2<f32>(arg_2.e, arg_2.e)) % 32u));
    let var_1 = select(!select(vec2<bool>(arg_2.b, !arg_2.d), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(arg_1, true), vec2<bool>(arg_2.d, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_2.b), arg_2.b)), !select(true, true, true)), select(!vec2<bool>(!arg_2.b, u_input.a > 83308u), select(vec2<bool>(any(vec4<bool>(arg_1, false, false, arg_1)), true), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_2.b, arg_1), vec2<bool>(true, arg_2.d), true), true), vec2<bool>(arg_1, false & arg_1)), !(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), arg_1))), !(!select(!vec2<bool>(arg_1, true), vec2<bool>(true, true), !arg_1)));
    var var_2 = -arg_2.a.a;
    var_2 = min(arg_2.c.x, arg_3);
    let var_3 = true;
    return Struct_2(arg_2.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = func_2(u_input.a, false, Struct_3(Struct_1(1i >> (~u_input.c.x % 32u)), any(select(!vec3<bool>(arg_0.x, arg_2, arg_0.x), vec3<bool>(true, arg_2, arg_0.x), vec3<bool>(arg_2, arg_0.x, arg_0.x))), vec4<i32>(26543i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(42363i, -12291i, -1i), vec3<i32>(45655i, -25337i, -2147483647i)) >> (~u_input.b.x % 32u), -2147483647i), true, 1512f), 36742i);
    let var_1 = Struct_4(Struct_3(Struct_1(select(_wgslsmith_mod_i32(-1i, 2147483647i), abs(-16977i), all(arg_0.yw))), arg_0.x, vec4<i32>(1i, 1i, 1i, 1i), false, arg_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 104f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(-197f, _wgslsmith_div_f32(2011f, -310f))))));
    var var_2 = func_2(48417u, u_input.a <= ~1u, Struct_3(var_1.a.a, var_1.a.b, -(~_wgslsmith_add_vec4_i32(var_1.a.c, var_1.a.c)), arg_0.x, arg_1.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(-var_1.a.a.a, 47916i)), var_1.a.c.x));
    let var_3 = var_1;
    let var_4 = var_3.a.c.x;
    return max(u_input.c.x, countOneBits(35332u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(~(-27118i)) << (_wgslsmith_add_u32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_f32(vec3<f32>(951f, 315f, 1000f), vec3<f32>(1375f, 350f, -771f)), true), ~4294967295u >> (~u_input.c.x % 32u)) % 32u));
    var var_1 = -217f;
    var var_2 = -select(vec2<i32>(max(_wgslsmith_mult_i32(1i, var_0.a), var_0.a), var_0.a), vec2<i32>(-50492i, _wgslsmith_mod_i32(-1i, -5177i)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -704f))) + 1148f)));
    var_2 = (vec2<i32>(-1i) * -vec2<i32>(~var_0.a, _wgslsmith_sub_i32(-73984i, -2147483647i))) << (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~firstTrailingBit(u_input.c.yx), select(~u_input.c.xy, firstTrailingBit(u_input.c.xw), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xy, u_input.b.yz, u_input.b.zy), u_input.b.zx)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-927f, reverseBits(_wgslsmith_add_i32(abs(19625i), var_2.x)) << (~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(u_input.b.x, 1u), reverseBits(u_input.b.x)) % 32u), vec3<u32>((u_input.c.x ^ ~u_input.b.x) & u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.a, 1u)) | u_input.a, max(~0u, ~firstTrailingBit(39534u))), max(vec2<u32>(~23437u, 11860u), ~vec2<u32>(~4294967295u, 1u)));
}

