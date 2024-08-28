struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<f32>(-526f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f - -569f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-866f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-219f, 1436f), _wgslsmith_f_op_f32(512f + -719f))))), _wgslsmith_f_op_f32(min(771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) - _wgslsmith_f_op_f32(-1655f - 1125f)))));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_1 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 18922u, u_input.c.x), vec3<u32>(1u, 28173u, 0u)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(~(~vec3<u32>(u_input.c.x, 4294967295u, 4294967295u))));
    let var_2 = u_input.b.x;
    return abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, -75295i, -2147483647i), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(var_2, var_2, 8269i, 25360i), vec4<i32>(10615i, var_2, -3827i, u_input.b.x))) << (abs(~vec4<u32>(var_1.x, 47952u, 48980u, u_input.c.x)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(45631u, var_1.x, var_1.x, 59947u), vec4<u32>(var_1.x, var_1.x, 92868u, 1u)), select(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 11938u), vec4<u32>(1u, 0u, 4294967295u, u_input.c.x), vec4<bool>(true, false, true, false)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(u_input.c.x, 39400u)), _wgslsmith_mult_u32(countOneBits(var_1.x), ~u_input.c.x), var_1.x), var_1.x, var_1.x) % vec4<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<f32>(567f, 711f);
    let var_1 = var_0;
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_2 = func_3();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, var_1.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(974f, -1000f, -959f) + vec3<f32>(var_1.x, -1218f, 2309f)), !vec3<bool>(false, arg_0, false)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = arg_3;
    let var_1 = func_2(true);
    global0 = array<Struct_2, 32>();
    let var_2 = func_2(arg_3 || arg_3);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), arg_2.x, arg_2.x, var_1.a.x);
    return any(vec3<bool>(arg_3, false, var_3.x != _wgslsmith_f_op_f32(ceil(1057f)))) || (arg_3 && (u_input.b.x < arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, u_input.c.x == u_input.c.x, !func_1(Struct_1(vec3<f32>(-1000f, -959f, -132f)), -u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-388f, 739f) * vec2<f32>(2503f, 138f)), all(vec4<bool>(true, true, true, false))));
    global0 = array<Struct_2, 32>();
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1362f, _wgslsmith_f_op_f32(779f + -185f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(933f + 248f) + _wgslsmith_f_op_f32(f32(-1f) * -1038f))), 1f, _wgslsmith_f_op_f32(-1489f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f - 414f) - -1158f))), u_input.c.x, vec4<u32>(u_input.c.x << (~1u % 32u), ~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec2_u32(~u_input.c, firstTrailingBit(abs(vec2<u32>(u_input.c.x, u_input.c.x))))));
    var_0 = vec3<bool>(all(!select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), true, var_0.x);
    let var_2 = u_input.a;
    var var_3 = 208f;
    var_3 = var_1.a.x;
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1955f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))), 350f), vec4<i32>(u_input.d, u_input.a.x, ~abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.d), _wgslsmith_clamp_i32(-16376i, -2147483647i, u_input.d), countOneBits(2147483647i), ~u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(836i, 1919i, u_input.b.x, u_input.b.x) | vec4<i32>(-12971i, u_input.b.x, -9123i, -1i), u_input.b))));
}

