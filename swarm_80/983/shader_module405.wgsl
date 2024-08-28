struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_3 = Struct_3(66631u, Struct_2(Struct_1(vec4<u32>(15090u, 0u, 24556u, 0u), 2147483647i), Struct_1(vec4<u32>(0u, 15931u, 2899u, 90054u), 8826i), 1u), vec3<f32>(671f, 347f, 940f), 0u, 4206i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = select(vec4<bool>(false, any(!arg_0.a.xxy), true, true), !vec4<bool>(true, true | arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-563f - -997f) <= global0.x), arg_0.a.x);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.x, global0.x, global0.x), global2.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_0.b, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.c)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b, global2.c.x, -1904f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(1000f, 938f)), _wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_div_f32(572f, global2.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(318f + -840f), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))))));
    let var_1 = select(var_0, vec4<bool>(!(arg_0.a.x && any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, var_0.x))), _wgslsmith_div_i32(1i, min(global2.b.a.b, -3004i)) == ~_wgslsmith_div_i32(global2.e, global2.b.b.b), true, var_0.x), arg_0.a);
    global1 = array<Struct_1, 16>();
    var var_2 = global2.e;
    return ~firstTrailingBit(~4294967295u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_4(vec4<bool>(!any(vec4<bool>(false, false, arg_3, false)), global2.a == ~(~global2.a), !(!(arg_2.x & arg_3)), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))));
    global1 = array<Struct_1, 16>();
    var var_1 = global2.b.b.a;
    global1 = array<Struct_1, 16>();
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_0.b + 152f), global0.x));
    return global2.a | _wgslsmith_clamp_u32(firstTrailingBit(var_1.x), ~(~0u), global2.d | func_3(var_0));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    let var_0 = vec3<u32>(~global2.b.b.a.x, ~(0u >> (min(4294967295u, global2.a) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.a.a.x, 1u, 68390u) << (min(global2.b.a.a.zyz, global2.b.b.a.wyz) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(global2.b.a.a.wy, global2.b.b.a.yy), 1u, func_2(global2.b.a.b, -421f, vec2<bool>(false, false), true)))) << (~(_wgslsmith_mult_vec3_u32(global2.b.b.a.yyw, global2.b.b.a.xwz) | vec3<u32>(1u, global2.a, ~global2.a)) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(arg_0.b + 1648f)), -688f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-151f, -1488f, -318f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1)))))));
    global2 = Struct_3(abs(~0u), global2.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(exp2(global2.c.x)), global0.x), global2.a, -80691i);
    var var_1 = ~(~firstTrailingBit(firstTrailingBit(-vec2<i32>(global2.b.a.b, u_input.a))));
    let var_2 = min(-_wgslsmith_add_vec3_i32(min(vec3<i32>(global2.b.a.b, -55647i, global2.e), vec3<i32>(-19183i, u_input.a, u_input.a)), vec3<i32>(var_1.x, u_input.a, u_input.a)) ^ reverseBits(vec3<i32>(u_input.a, -351i, -14763i) | -vec3<i32>(u_input.a, global2.e, u_input.a)), _wgslsmith_add_vec3_i32(reverseBits(~(vec3<i32>(var_1.x, var_1.x, global2.e) | vec3<i32>(-8396i, global2.e, var_1.x))), ~(~(vec3<i32>(-1i, u_input.a, global2.b.a.b) & vec3<i32>(var_1.x, 1i, global2.e)))));
    return global2.c.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_2(Struct_1(reverseBits(~(~arg_1.b.b.a)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, 0i, 0i), vec3<i32>(arg_1.b.b.b, 2147483647i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-29360i, u_input.a), -vec2<i32>(arg_1.b.a.b, -2147483647i)))), Struct_1(~countOneBits(vec4<u32>(11942u, global2.b.a.a.x, global2.a, arg_1.d)), 3960i), global2.d);
    global2 = arg_1;
    var var_1 = ~select(max(~_wgslsmith_div_vec4_u32(global2.b.b.a, vec4<u32>(arg_1.b.a.a.x, 18285u, global2.b.a.a.x, 47811u)), vec4<u32>(~var_0.b.a.x, global2.d & arg_1.d, 85822u, 0u)), var_0.b.a, !(_wgslsmith_f_op_f32(694f * -770f) <= _wgslsmith_f_op_f32(arg_0 * arg_1.c.x)));
    global0 = vec3<f32>(142f, arg_0, 283f);
    global1 = array<Struct_1, 16>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(sign(global2.c));
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(global2.a, 28960u), 37194u);
    var var_1 = vec3<u32>(~_wgslsmith_mod_u32(~4294967295u, ~1u), 1u | (global2.a >> (func_4(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<bool>(true, false, false, false), 1190f), global2.c)), Struct_3(var_0.x, global2.b, vec3<f32>(475f, -1091f, 1081f), global2.d, 17744i)) % 32u)), abs(1u));
    let var_2 = min(~vec3<i32>(abs(u_input.a & u_input.a), u_input.a, 1i >> (global2.a % 32u)), vec3<i32>(27915i, abs(_wgslsmith_add_i32(~global2.b.b.b, u_input.a)), firstLeadingBit(firstTrailingBit(u_input.a))));
    var var_3 = abs(~func_4(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, -906f)), Struct_3(1u, global2.b, global2.c, 10789u, global2.e)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.c.x)), 179f)) + _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1276f)), _wgslsmith_f_op_f32(select(global0.x, -356f, any(vec2<bool>(true, true)))), -1208f);
    global2 = Struct_3(~(~(~_wgslsmith_div_u32(var_0.x, 1u))), Struct_2(global2.b.b, global1[_wgslsmith_index_u32(abs(abs(13734u)), 16u)], 4294967295u), _wgslsmith_f_op_vec3_f32(-var_4.zzw), var_0.x, 29756i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * _wgslsmith_f_op_f32(719f + 1000f)) * global2.c.x) * global2.c.x), 49376u, var_4);
}

